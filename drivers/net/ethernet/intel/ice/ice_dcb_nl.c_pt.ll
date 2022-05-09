; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_dcb_nl.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_dcb_nl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dcb_app = type { i8, i8, i16 }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.list_head = type { ptr, ptr }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.178 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.178 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ice_ptp = type { %struct.ice_ptp_port, %struct.kthread_delayed_work, %struct.kthread_work, i64, i8, i8, ptr, [4 x %struct.ice_perout_channel], %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, i64 }
%struct.ice_ptp_port = type { %struct.ice_ptp_tx, %struct.kthread_delayed_work, %struct.mutex, i8, i8, i8 }
%struct.ice_ptp_tx = type { %struct.kthread_work, %struct.spinlock, ptr, ptr, i8, i8, i8, i8, i8 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ice_perout_channel = type { i8, i32, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.hlist_head = type { ptr }
%struct.ice_link_default_override_tlv = type { i8, i8, i8, i8, i64, i64 }
%struct.ice_switchdev_info = type { ptr, ptr, i8 }
%struct.ice_agg_node = type { i32, i32, i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.195, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.195 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.194, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.194 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }

@dcbnl_ops = internal constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr @ice_dcbnl_getets, ptr @ice_dcbnl_setets, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ice_dcbnl_getpfc, ptr @ice_dcbnl_setpfc, ptr null, ptr @ice_dcbnl_setapp, ptr @ice_dcbnl_delapp, ptr null, ptr null, ptr @ice_dcbnl_getstate, ptr @ice_dcbnl_setstate, ptr @ice_dcbnl_get_perm_hw_addr, ptr @ice_dcbnl_set_pg_tc_cfg_tx, ptr @ice_dcbnl_set_pg_bwg_cfg_tx, ptr @ice_dcbnl_set_pg_tc_cfg_rx, ptr @ice_dcbnl_set_pg_bwg_cfg_rx, ptr @ice_dcbnl_get_pg_tc_cfg_tx, ptr @ice_dcbnl_get_pg_bwg_cfg_tx, ptr @ice_dcbnl_get_pg_tc_cfg_rx, ptr @ice_dcbnl_get_pg_bwg_cfg_rx, ptr @ice_dcbnl_set_pfc_cfg, ptr @ice_dcbnl_get_pfc_cfg, ptr @ice_dcbnl_cee_set_all, ptr @ice_dcbnl_get_cap, ptr @ice_dcbnl_getnumtcs, ptr null, ptr @ice_dcbnl_getpfcstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ice_dcbnl_getapp, ptr null, ptr null, ptr @ice_dcbnl_getdcbx, ptr @ice_dcbnl_setdcbx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ice_dcbnl_vsi_del_app.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_dcbnl_vsi_del_app\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/intel/ice/ice_dcb_nl.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Deleting app for VSI idx=%d err=%d sel=%d proto=0x%x, prio=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"can't delete DSCP netlink app when FW DCB agent is active\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set VLAN PFC mode %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Switched QoS to L2 VLAN mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"can't do DSCP QoS when FW DCB agent active\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DSCP value 0x%04X out of range\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TC %d out of range, max TC %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DSCP value 0x%04X already user mapped\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to delete re-mapping TLV\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set DSCP PFC mode %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Switched QoS to L3 DSCP mode\0A\00", [34 x i8] zeroinitializer }, align 32
@ice_dcbnl_getstate.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_dcbnl_getstate\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DCB enabled state = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_dcbnl_set_pg_tc_cfg_rx.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_dcbnl_set_pg_tc_cfg_rx\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Rx TC PG Config Not Supported.\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_dcbnl_set_pg_bwg_cfg_rx.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ice_dcbnl_set_pg_bwg_cfg_rx\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Rx BWG PG Config Not Supported.\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_dcbnl_get_pg_tc_cfg_tx.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_dcbnl_get_pg_tc_cfg_tx\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Get PG config prio=%d tc=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_dcbnl_get_pg_bwg_cfg_tx.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ice_dcbnl_get_pg_bwg_cfg_tx\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Get PG BW config tc=%d bw_pct=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_dcbnl_set_pfc_cfg.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_dcbnl_set_pfc_cfg\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Set PFC config UP:%d set:%d pfcena:0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@ice_dcbnl_get_pfc_cfg.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_dcbnl_get_pfc_cfg\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Get PFC Config up=%d, setting=%d, pfcenable=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_dcbnl_get_cap.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_dcbnl_get_cap\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DCBX Get Capability cap=%d capval=0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_dcbnl_setdcbx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 186, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DCBx mode = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_dcbnl_setdcbx\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_dcbnl_setdcbx._entry_ptr = internal global ptr @ice_dcbnl_setdcbx._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"dcbnl_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 950, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1049, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 835, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 895, i32 24 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 899, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 712, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 723, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 730, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 746, i32 22 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 750, i32 23 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 767, i32 23 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 771, i32 23 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 365, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 562, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 598, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 424, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 485, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 334, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 304, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 644, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [47 x i8] c"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 186, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @ice_dcbnl_setdcbx._entry, ptr @ice_dcbnl_setdcbx._entry_ptr, ptr @dcbnl_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcbnl_setdcbx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_dcbnl_set_all(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  %sapp = alloca %struct.dcb_app, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sapp) #10
  %2 = getelementptr inbounds %struct.dcb_app, ptr %sapp, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dcb_app, ptr %sapp, i32 0, i32 2
  %tobool.not = icmp eq ptr %1, null
  %4 = ptrtoint ptr %sapp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %sapp, align 4
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %back.i, align 8
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %8, i32 0, i32 58, i32 3
  %9 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_info, align 4
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %8, i32 0, i32 61
  %11 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dcbx_cap, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool2.not = icmp eq i16 %13, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ice_pf, ptr %8, i32 0, i32 21
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %qos_cfg = getelementptr inbounds %struct.ice_port_info, ptr %10, i32 0, i32 17
  %17 = ptrtoint ptr %qos_cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qos_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp47.not = icmp eq i32 %18, 0
  br i1 %cmp47.not, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %ena_tc = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 56, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end25.for.body_crit_edge ]
  %priority = getelementptr %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 0, i32 6, i32 %i.048, i32 1
  %19 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %priority, align 2
  %idxprom = zext i8 %20 to i32
  %arrayidx10 = getelementptr %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 0, i32 2, i32 3, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %22 to i32
  %shl = shl nuw i32 1, %conv11
  %conv13 = and i32 %shl, 255
  %23 = ptrtoint ptr %ena_tc to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ena_tc, align 2
  %conv14 = zext i16 %24 to i32
  %and15 = and i32 %conv13, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %for.body.if.end25_crit_edge, label %if.then17

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 0, i32 6, i32 %i.048
  %selector = getelementptr %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 0, i32 6, i32 %i.048, i32 2
  %25 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %selector, align 1
  %27 = ptrtoint ptr %sapp to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %sapp, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %3, align 2
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %20, ptr %2, align 1
  %call24 = call i32 @dcb_ieee_setapp(ptr noundef nonnull %1, ptr noundef nonnull %sapp) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %for.body.if.end25_crit_edge
  %inc = add nuw i32 %i.048, 1
  %32 = ptrtoint ptr %qos_cfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qos_cfg, align 4
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %if.end25.for.body_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %if.end8.for.end_crit_edge
  %call26 = call i32 @dcbnl_ieee_notify(ptr noundef nonnull %1, i32 noundef 79, i32 noundef 20, i32 noundef 0, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sapp) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_setapp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcbnl_ieee_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_dcbnl_flush_apps(ptr nocapture noundef readonly %pf, ptr nocapture noundef readonly %old_cfg, ptr nocapture noundef readonly %new_cfg) local_unnamed_addr #0 align 64 {
entry:
  %sapp.i = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %0 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ice_get_main_vsi.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ice_get_main_vsi.exit:                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ice_get_main_vsi.exit.cleanup_crit_edge, label %for.cond.preheader

ice_get_main_vsi.exit.cleanup_crit_edge:          ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %ice_get_main_vsi.exit
  %4 = ptrtoint ptr %old_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22.not = icmp eq i32 %5, 0
  br i1 %cmp22.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = getelementptr inbounds %struct.dcb_app, ptr %sapp.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dcb_app, ptr %sapp.i, i32 0, i32 2
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 2
  %idx.i = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end4.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_dcbx_cfg, ptr %old_cfg, i32 0, i32 6, i32 %i.023
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %app.sroa.0.0.extract.shift = lshr i32 %9, 16
  %app.sroa.0.0.extract.trunc = trunc i32 %app.sroa.0.0.extract.shift to i16
  %app.sroa.7.0.extract.shift = lshr i32 %9, 8
  %app.sroa.7.0.extract.trunc = trunc i32 %app.sroa.7.0.extract.shift to i8
  %app.sroa.11.0.extract.trunc = trunc i32 %9 to i8
  %10 = ptrtoint ptr %new_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %new_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp30.not.i = icmp eq i32 %11, 0
  br i1 %cmp30.not.i, label %for.body.if.then3_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.if.then3_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %cmp33.i = phi i1 [ %cmp.i, %for.inc.i.for.body.i_crit_edge ], [ true, %for.body.for.body.i_crit_edge ]
  %i.031.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %selector2.i = getelementptr %struct.ice_dcbx_cfg, ptr %new_cfg, i32 0, i32 6, i32 %i.031.i, i32 2
  %12 = ptrtoint ptr %selector2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %selector2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %app.sroa.11.0.extract.trunc)
  %cmp4.i = icmp eq i8 %13, %app.sroa.11.0.extract.trunc
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.ice_dcbx_cfg, ptr %new_cfg, i32 0, i32 6, i32 %i.031.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %app.sroa.0.0.extract.trunc)
  %cmp11.i = icmp eq i16 %15, %app.sroa.0.0.extract.trunc
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %priority17.i = getelementptr %struct.ice_dcbx_cfg, ptr %new_cfg, i32 0, i32 6, i32 %i.031.i, i32 1
  %16 = ptrtoint ptr %priority17.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %priority17.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %app.sroa.7.0.extract.trunc)
  %cmp19.i = icmp eq i8 %17, %app.sroa.7.0.extract.trunc
  br i1 %cmp19.i, label %land.lhs.true13.i.ice_dcbnl_find_app.exit_crit_edge, label %land.lhs.true13.i.for.inc.i_crit_edge

land.lhs.true13.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true13.i.ice_dcbnl_find_app.exit_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_dcbnl_find_app.exit

for.inc.i:                                        ; preds = %land.lhs.true13.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.031.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %11)
  %cmp.i = icmp ult i32 %inc.i, %11
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.ice_dcbnl_find_app.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.ice_dcbnl_find_app.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_dcbnl_find_app.exit

ice_dcbnl_find_app.exit:                          ; preds = %for.inc.i.ice_dcbnl_find_app.exit_crit_edge, %land.lhs.true13.i.ice_dcbnl_find_app.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %for.inc.i.ice_dcbnl_find_app.exit_crit_edge ], [ %cmp33.i, %land.lhs.true13.i.ice_dcbnl_find_app.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %ice_dcbnl_find_app.exit.if.end4_crit_edge, label %ice_dcbnl_find_app.exit.if.then3_crit_edge

ice_dcbnl_find_app.exit.if.then3_crit_edge:       ; preds = %ice_dcbnl_find_app.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

ice_dcbnl_find_app.exit.if.end4_crit_edge:        ; preds = %ice_dcbnl_find_app.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %ice_dcbnl_find_app.exit.if.then3_crit_edge, %for.body.if.then3_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sapp.i) #10
  %18 = ptrtoint ptr %sapp.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %app.sroa.11.0.extract.trunc, ptr %sapp.i, align 2
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %app.sroa.0.0.extract.trunc, ptr %7, align 2
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %app.sroa.7.0.extract.trunc, ptr %6, align 1
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 128
  %call.i = call i32 @ice_dcbnl_delapp(ptr noundef %22, ptr noundef nonnull %sapp.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcbnl_vsi_del_app.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcbnl_flush_apps, %if.then.i12)) #10
          to label %ice_dcbnl_vsi_del_app.exit [label %if.then.i12], !srcloc !76

if.then.i12:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %back.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %idx.i, align 2
  %conv.i = zext i16 %28 to i32
  %conv7.i = and i32 %9, 255
  %conv11.i = and i32 %app.sroa.7.0.extract.shift, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcbnl_vsi_del_app.__UNIQUE_ID_ddebug621, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %conv.i, i32 noundef %call.i, i32 noundef %conv7.i, i32 noundef %app.sroa.0.0.extract.shift, i32 noundef %conv11.i) #10
  br label %ice_dcbnl_vsi_del_app.exit

ice_dcbnl_vsi_del_app.exit:                       ; preds = %if.then.i12, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sapp.i) #10
  br label %if.end4

if.end4:                                          ; preds = %ice_dcbnl_vsi_del_app.exit, %ice_dcbnl_find_app.exit.if.end4_crit_edge
  %inc = add nuw i32 %i.023, 1
  %29 = ptrtoint ptr %old_cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %old_cfg, align 4
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %if.end4.for.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %ice_get_main_vsi.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_dcbnl_setup(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 128
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back.i, align 8
  %flags = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dcbnl_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 139
  %9 = ptrtoint ptr %dcbnl_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dcbnl_ops, ptr %dcbnl_ops, align 16
  tail call void @ice_dcbnl_set_all(ptr noundef %vsi)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_dcbnl_delapp(ptr noundef %netdev, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tc_mutex = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %tc_mutex, i32 noundef 0) #10
  %hw = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %7 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_info, align 4
  %call1 = tail call i32 @dcb_ieee_delapp(ptr noundef %netdev, ptr noundef %app) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.delapp_out_crit_edge

if.end.delapp_out_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %delapp_out

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_info, align 4
  %desired_dcbx_cfg = getelementptr inbounds %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %desired_dcbx_cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desired_dcbx_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp183.not = icmp eq i32 %12, 0
  br i1 %cmp183.not, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %13 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %app, align 2
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %priority = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 1, i32 6, i32 %i.0184
  %selector11 = getelementptr %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 1, i32 6, i32 %i.0184, i32 2
  %15 = ptrtoint ptr %selector11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %selector11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp13 = icmp eq i8 %14, %16
  br i1 %cmp13, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %protocol, align 2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp19 = icmp eq i16 %18, %20
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true21:                                  ; preds = %land.lhs.true
  %21 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %priority, align 1
  %priority25 = getelementptr %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 1, i32 6, i32 %i.0184, i32 1
  %23 = ptrtoint ptr %priority25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %priority25, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp27 = icmp eq i8 %22, %24
  br i1 %cmp27, label %if.then29, label %land.lhs.true21.for.inc_crit_edge

land.lhs.true21.for.inc_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then29:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true21.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0184, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then29, %if.end4.for.end_crit_edge
  %i.0182 = phi i32 [ %i.0184, %if.then29 ], [ 0, %if.end4.for.end_crit_edge ], [ %12, %for.inc.for.end_crit_edge ]
  %26 = ptrtoint ptr %desired_dcbx_cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %desired_dcbx_cfg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0182, i32 %27)
  %cmp41 = icmp eq i32 %i.0182, %27
  br i1 %cmp41, label %for.end.delapp_out_crit_edge, label %if.end44

for.end.delapp_out_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %delapp_out

if.end44:                                         ; preds = %for.end
  %dec = add i32 %27, -1
  %28 = ptrtoint ptr %desired_dcbx_cfg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %dec, ptr %desired_dcbx_cfg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0182, i32 %dec)
  %cmp48186 = icmp ult i32 %i.0182, %dec
  br i1 %cmp48186, label %if.end44.for.body50_crit_edge, label %if.end44.for.end73_crit_edge

if.end44.for.end73_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end73

if.end44.for.body50_crit_edge:                    ; preds = %if.end44
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %if.end44.for.body50_crit_edge
  %j.0187 = phi i32 [ %add, %for.body50.for.body50_crit_edge ], [ %i.0182, %if.end44.for.body50_crit_edge ]
  %add = add nuw i32 %j.0187, 1
  %arrayidx52 = getelementptr %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 0, i32 6, i32 %add
  %selector53 = getelementptr %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 0, i32 6, i32 %add, i32 2
  %29 = ptrtoint ptr %selector53 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %selector53, align 1
  %arrayidx55 = getelementptr %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 1, i32 6, i32 %j.0187
  %selector56 = getelementptr %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 1, i32 6, i32 %j.0187, i32 2
  %31 = ptrtoint ptr %selector56 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %selector56, align 1
  %32 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx52, align 4
  %34 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx55, align 4
  %priority67 = getelementptr %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 0, i32 6, i32 %add, i32 1
  %35 = ptrtoint ptr %priority67 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %priority67, align 2
  %priority70 = getelementptr %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 1, i32 6, i32 %j.0187, i32 1
  %37 = ptrtoint ptr %priority70 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %priority70, align 2
  %38 = ptrtoint ptr %desired_dcbx_cfg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %desired_dcbx_cfg, align 4
  %cmp48 = icmp ult i32 %add, %39
  br i1 %cmp48, label %for.body50.for.body50_crit_edge, label %for.body50.for.end73_crit_edge

for.body50.for.end73_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end73

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body50

for.end73:                                        ; preds = %for.body50.for.end73_crit_edge, %if.end44.for.end73_crit_edge
  %40 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %41)
  %cmp76.not = icmp eq i8 %41, 5
  br i1 %cmp76.not, label %lor.lhs.false, label %for.end73.delapp_out_crit_edge

for.end73.delapp_out_crit_edge:                   ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %delapp_out

lor.lhs.false:                                    ; preds = %for.end73
  %call78 = tail call zeroext i1 @ice_is_feature_supported(ptr noundef %3, i32 noundef 0) #10
  br i1 %call78, label %if.end80, label %lor.lhs.false.delapp_out_crit_edge

lor.lhs.false.delapp_out_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %delapp_out

if.end80:                                         ; preds = %lor.lhs.false
  %protocol81 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %42 = ptrtoint ptr %protocol81 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %protocol81, align 2
  %conv82 = zext i16 %43 to i32
  %dscp_mapped = getelementptr inbounds %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 1, i32 7
  tail call void @_clear_bit(i32 noundef %conv82, ptr noundef %dscp_mapped) #10
  %44 = ptrtoint ptr %protocol81 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %protocol81, align 2
  %conv84 = zext i16 %45 to i32
  %46 = trunc i16 %45 to i8
  %conv85 = and i8 %46, 7
  %arrayidx87 = getelementptr %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 1, i32 8, i32 %conv84
  %47 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv85, ptr %arrayidx87, align 1
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %dscp_mapped, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 64
  br i1 %cmp4.i, label %land.lhs.true92, label %if.end80.if.else_crit_edge

if.end80.if.else_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true92:                                  ; preds = %if.end80
  %pfc_mode = getelementptr inbounds %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 1, i32 5
  %48 = ptrtoint ptr %pfc_mode to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pfc_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp94 = icmp eq i8 %49, 1
  br i1 %cmp94, label %if.then96, label %land.lhs.true92.if.else_crit_edge

land.lhs.true92.if.else_crit_edge:                ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then96:                                        ; preds = %land.lhs.true92
  %call98 = tail call i32 @ice_aq_set_pfc_mode(ptr noundef %hw, i8 noundef zeroext 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.5, i32 noundef %call98) #13
  br label %delapp_out

if.end101:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.6) #13
  %50 = ptrtoint ptr %pfc_mode to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %pfc_mode, align 2
  %call103 = tail call i32 @ice_dcb_sw_dflt_cfg(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext true) #10
  br label %if.end105

if.else:                                          ; preds = %land.lhs.true92.if.else_crit_edge, %if.end80.if.else_crit_edge
  %call104 = tail call i32 @ice_pf_dcb_cfg(ptr noundef %3, ptr noundef %desired_dcbx_cfg, i1 noundef zeroext true) #10
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.end101
  %ret.0 = phi i32 [ %call103, %if.end101 ], [ %call104, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp106 = icmp eq i32 %ret.0, 0
  br i1 %cmp106, label %if.then108, label %if.end105.if.end109_crit_edge

if.end105.if.end109_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ice_dcbnl_devreset(ptr noundef %netdev)
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end105.if.end109_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0)
  %cmp110 = icmp eq i32 %ret.0, 1
  %spec.store.select = select i1 %cmp110, i32 2, i32 %ret.0
  br label %delapp_out

delapp_out:                                       ; preds = %if.end109, %if.then100, %lor.lhs.false.delapp_out_crit_edge, %for.end73.delapp_out_crit_edge, %for.end.delapp_out_crit_edge, %if.end.delapp_out_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.delapp_out_crit_edge ], [ %call98, %if.then100 ], [ %spec.store.select, %if.end109 ], [ -22, %for.end.delapp_out_crit_edge ], [ 2, %lor.lhs.false.delapp_out_crit_edge ], [ 2, %for.end73.delapp_out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %tc_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %delapp_out, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %ret.1, %delapp_out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_delapp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_feature_supported(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_set_pfc_mode(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_dcb_sw_dflt_cfg(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_pf_dcb_cfg(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_dcbnl_devreset(ptr noundef %netdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %state = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 20
  %call17 = tail call zeroext i1 @ice_is_reset_in_progress(ptr noundef %state) #10
  br i1 %call17, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %call1 = tail call zeroext i1 @ice_is_reset_in_progress(ptr noundef %state) #10
  br i1 %call1, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @dev_close(ptr noundef %netdev) #10
  tail call void @netdev_state_change(ptr noundef %netdev) #10
  %call2 = tail call i32 @dev_open(ptr noundef %netdev, ptr noundef null) #10
  tail call void @netdev_state_change(ptr noundef %netdev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_reset_in_progress(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ice_dcbnl_getets(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ets) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %4 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_info, align 4
  %etscfg = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 2
  %6 = ptrtoint ptr %etscfg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %etscfg, align 4
  %8 = ptrtoint ptr %ets to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %ets, align 1
  %maxtcs = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %maxtcs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %maxtcs, align 2
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %11 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ets_cap, align 1
  %cbs = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %cbs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cbs, align 1
  %cbs4 = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 2
  %14 = ptrtoint ptr %cbs4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %cbs4, align 1
  %tc_tx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 3
  %tcbwtable = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %tcbwtable to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %tcbwtable, align 1
  %17 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %tc_tx_bw, align 1
  %tc_rx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 4
  %18 = load i64, ptr %tcbwtable, align 1
  %19 = ptrtoint ptr %tc_rx_bw to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %tc_rx_bw, align 1
  %tc_tsa = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 5
  %tsatable = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 2, i32 5
  %20 = ptrtoint ptr %tsatable to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %tsatable, align 1
  %22 = ptrtoint ptr %tc_tsa to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %tc_tsa, align 1
  %prio_tc = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 6
  %prio_table = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %prio_table to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %prio_table, align 1
  %25 = ptrtoint ptr %prio_tc to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %prio_tc, align 1
  %tc_reco_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 7
  %tcbwtable18 = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %tcbwtable18 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %tcbwtable18, align 1
  %28 = ptrtoint ptr %tc_reco_bw to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %tc_reco_bw, align 1
  %tc_reco_tsa = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 8
  %tsatable22 = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 3, i32 5
  %29 = ptrtoint ptr %tsatable22 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %tsatable22, align 1
  %31 = ptrtoint ptr %tc_reco_tsa to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %tc_reco_tsa, align 1
  %reco_prio_tc = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 9
  %32 = load i64, ptr %prio_table, align 1
  %33 = ptrtoint ptr %reco_prio_tc to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %reco_prio_tc, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_dcbnl_setets(ptr noundef %netdev, ptr nocapture noundef readonly %ets) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %.not = icmp eq i16 %6, 8
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %7 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_info, align 4
  %tc_mutex = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %tc_mutex, i32 noundef 0) #10
  %9 = ptrtoint ptr %ets to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ets, align 1
  %etscfg = getelementptr inbounds %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 2
  %11 = ptrtoint ptr %etscfg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %etscfg, align 4
  %cbs = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 2
  %12 = ptrtoint ptr %cbs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cbs, align 1
  %cbs7 = getelementptr inbounds %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 2, i32 1
  %14 = ptrtoint ptr %cbs7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %cbs7, align 1
  %pfc_mode = getelementptr inbounds %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %if.end
  %i.0125 = phi i32 [ 0, %if.end ], [ %inc, %if.end27.for.body_crit_edge ]
  %bwrec.0124 = phi i32 [ 0, %if.end ], [ %add35, %if.end27.for.body_crit_edge ]
  %bwcfg.0123 = phi i32 [ 0, %if.end ], [ %add, %if.end27.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.0125
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %arrayidx10 = getelementptr %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 2, i32 4, i32 %i.0125
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx10, align 1
  %18 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %18 to i32
  %add = add i32 %bwcfg.0123, %conv13
  %arrayidx14 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.0125
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 2, i32 5, i32 %i.0125
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx16, align 1
  %22 = ptrtoint ptr %pfc_mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pfc_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp18 = icmp eq i8 %23, 0
  br i1 %cmp18, label %if.then20, label %for.body.if.end27_crit_edge

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx21 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 %i.0125
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx21, align 1
  %arrayidx23 = getelementptr %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 2, i32 3, i32 %i.0125
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx23, align 1
  %arrayidx24 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 9, i32 %i.0125
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx24, align 1
  %arrayidx26 = getelementptr %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 3, i32 3, i32 %i.0125
  %29 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx26, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %for.body.if.end27_crit_edge
  %arrayidx28 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 7, i32 %i.0125
  %30 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx28, align 1
  %arrayidx31 = getelementptr %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 3, i32 4, i32 %i.0125
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx31, align 1
  %33 = load i8, ptr %arrayidx28, align 1
  %conv34 = zext i8 %33 to i32
  %add35 = add i32 %bwrec.0124, %conv34
  %arrayidx36 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 8, i32 %i.0125
  %34 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx36, align 1
  %arrayidx39 = getelementptr %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 3, i32 5, i32 %i.0125
  %36 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx39, align 1
  %inc = add nuw nsw i32 %i.0125, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end27
  %desired_dcbx_cfg = getelementptr inbounds %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1
  %call40 = tail call i32 @ice_dcb_bwchk(ptr noundef %3, ptr noundef %desired_dcbx_cfg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %for.end.ets_out_crit_edge

for.end.ets_out_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ets_out

if.end43:                                         ; preds = %for.end
  %maxtc = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 28, i32 0, i32 2
  %37 = ptrtoint ptr %maxtc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %maxtc, align 8
  %conv45 = trunc i32 %38 to i8
  %maxtcs = getelementptr inbounds %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 2, i32 2
  %39 = ptrtoint ptr %maxtcs to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv45, ptr %maxtcs, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool47.not = icmp eq i32 %add, 0
  br i1 %tobool47.not, label %if.then48, label %if.end43.if.end52_crit_edge

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %tcbwtable50 = getelementptr inbounds %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 2, i32 4
  %40 = ptrtoint ptr %tcbwtable50 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 100, ptr %tcbwtable50, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end43.if.end52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add35)
  %tobool53.not = icmp eq i32 %add35, 0
  br i1 %tobool53.not, label %if.then54, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %tcbwtable56 = getelementptr inbounds %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 3, i32 4
  %41 = ptrtoint ptr %tcbwtable56 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 100, ptr %tcbwtable56, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end52.if.end58_crit_edge
  %call59 = tail call i32 @ice_pf_dcb_cfg(ptr noundef %3, ptr noundef %desired_dcbx_cfg, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.end58.if.end63_crit_edge

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ice_dcbnl_devreset(ptr noundef %netdev)
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end58.if.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call59)
  %cmp64 = icmp eq i32 %call59, 1
  %spec.store.select = select i1 %cmp64, i32 0, i32 %call59
  br label %ets_out

ets_out:                                          ; preds = %if.end63, %for.end.ets_out_crit_edge
  %err.0 = phi i32 [ %spec.store.select, %if.end63 ], [ -22, %for.end.ets_out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %tc_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %ets_out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %ets_out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_dcbnl_getpfc(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %hw = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %4 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_info, align 4
  %pfccap = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %pfccap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfccap, align 2
  %8 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %pfc, align 8
  %pfcena = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %pfcena to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pfcena, align 1
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %11 = ptrtoint ptr %pfc_en to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %pfc_en, align 1
  %mbc = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %mbc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mbc, align 1
  %mbc4 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 2
  %14 = ptrtoint ptr %mbc4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %mbc4, align 2
  %delay = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 3
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 536576
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !78
  %18 = and i32 %17, 65535
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %shr.i = lshr exact i32 %19, 16
  %conv.i = trunc i32 %shr.i to i16
  %20 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %delay, align 2
  %arrayidx = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 15, i32 0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx, align 8
  %arrayidx6 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 0
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 13, i32 0
  %24 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx8, align 8
  %arrayidx9 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 0
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx9, align 8
  %arrayidx.1 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 15, i32 1
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx.1, align 8
  %arrayidx6.1 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx6.1, align 8
  %arrayidx8.1 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 13, i32 1
  %30 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx8.1, align 8
  %arrayidx9.1 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx9.1, align 8
  %arrayidx.2 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 15, i32 2
  %33 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.2, align 8
  %arrayidx6.2 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx6.2, align 8
  %arrayidx8.2 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 13, i32 2
  %36 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx8.2, align 8
  %arrayidx9.2 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx9.2, align 8
  %arrayidx.3 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 15, i32 3
  %39 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx.3, align 8
  %arrayidx6.3 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 3
  %41 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx6.3, align 8
  %arrayidx8.3 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 13, i32 3
  %42 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx8.3, align 8
  %arrayidx9.3 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 3
  %44 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx9.3, align 8
  %arrayidx.4 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 15, i32 4
  %45 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx.4, align 8
  %arrayidx6.4 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 4
  %47 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx6.4, align 8
  %arrayidx8.4 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 13, i32 4
  %48 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx8.4, align 8
  %arrayidx9.4 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 4
  %50 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %arrayidx9.4, align 8
  %arrayidx.5 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 15, i32 5
  %51 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx.5, align 8
  %arrayidx6.5 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 5
  %53 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx6.5, align 8
  %arrayidx8.5 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 13, i32 5
  %54 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx8.5, align 8
  %arrayidx9.5 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 5
  %56 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx9.5, align 8
  %arrayidx.6 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 15, i32 6
  %57 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx.6, align 8
  %arrayidx6.6 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 6
  %59 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx6.6, align 8
  %arrayidx8.6 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 13, i32 6
  %60 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx8.6, align 8
  %arrayidx9.6 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 6
  %62 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %arrayidx9.6, align 8
  %arrayidx.7 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 15, i32 7
  %63 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx.7, align 8
  %arrayidx6.7 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 7
  %65 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %arrayidx6.7, align 8
  %arrayidx8.7 = getelementptr %struct.ice_pf, ptr %3, i32 0, i32 56, i32 13, i32 7
  %66 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx8.7, align 8
  %arrayidx9.7 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 7
  %68 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx9.7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_dcbnl_setpfc(ptr noundef %netdev, ptr nocapture noundef readonly %pfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %.not = icmp eq i16 %6, 8
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tc_mutex = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %tc_mutex, i32 noundef 0) #10
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %7 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_info, align 4
  %desired_dcbx_cfg = getelementptr inbounds %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %pfc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pfc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %if.else, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %maxtc = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 28, i32 0, i32 2
  %11 = ptrtoint ptr %maxtc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %maxtc, align 8
  %conv10 = trunc i32 %12 to i8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end.if.end13_crit_edge
  %.sink = phi i8 [ %conv10, %if.else ], [ %10, %if.end.if.end13_crit_edge ]
  %13 = getelementptr inbounds %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 4, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %13, align 2
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %15 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pfc_en, align 1
  %pfcena = getelementptr inbounds %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1, i32 4, i32 3
  %17 = ptrtoint ptr %pfcena to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %pfcena, align 1
  %call15 = tail call i32 @ice_pf_dcb_cfg(ptr noundef %3, ptr noundef %desired_dcbx_cfg, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp eq i32 %call15, 0
  br i1 %cmp, label %if.then17, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ice_dcbnl_devreset(ptr noundef %netdev)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp19 = icmp eq i32 %call15, 1
  %spec.store.select = select i1 %cmp19, i32 0, i32 %call15
  tail call void @mutex_unlock(ptr noundef %tc_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end18 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_dcbnl_setapp(ptr noundef %netdev, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %4 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp.not = icmp eq i8 %5, 5
  br i1 %cmp.not, label %if.end, label %entry.cleanup130_crit_edge

entry.cleanup130_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup130

if.end:                                           ; preds = %entry
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %6 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dcbx_cap, align 2
  %conv2 = zext i16 %7 to i32
  %and = and i32 %conv2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.7) #13
  br label %cleanup130

if.end4:                                          ; preds = %if.end
  %and7 = and i32 %conv2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end4.cleanup130_crit_edge, label %if.end10

if.end4.cleanup130_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup130

if.end10:                                         ; preds = %if.end4
  %call11 = tail call zeroext i1 @ice_is_feature_supported(ptr noundef %3, i32 noundef 0) #10
  br i1 %call11, label %if.end13, label %if.end10.cleanup130_crit_edge

if.end10.cleanup130_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup130

if.end13:                                         ; preds = %if.end10
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %9)
  %cmp15 = icmp ugt i16 %9, 63
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %conv14 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.8, i32 noundef %conv14) #13
  br label %cleanup130

if.end20:                                         ; preds = %if.end13
  %hw = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58
  %maxtc = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 28, i32 0, i32 2
  %10 = ptrtoint ptr %maxtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxtc, align 8
  %conv21 = trunc i32 %11 to i8
  %priority = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %12 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %priority, align 1
  %conv22 = zext i8 %13 to i32
  %conv23 = and i32 %11, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23, i32 %conv22)
  %cmp24.not = icmp ugt i32 %conv23, %conv22
  br i1 %cmp24.not, label %if.end30, label %if.then26

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.9, i32 noundef %conv22, i32 noundef %conv23) #13
  br label %cleanup130

if.end30:                                         ; preds = %if.end20
  %tc_mutex = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %tc_mutex, i32 noundef 0) #10
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %14 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_info, align 4
  %desired_dcbx_cfg = getelementptr inbounds %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1
  %call35 = tail call i32 @dcb_ieee_setapp(ptr noundef %netdev, ptr noundef %app) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end30.setapp_out_crit_edge

if.end30.setapp_out_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %setapp_out

if.end38:                                         ; preds = %if.end30
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %protocol, align 2
  %conv40 = zext i16 %17 to i32
  %dscp_mapped = getelementptr inbounds %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 7
  %call41 = tail call i32 @_test_and_set_bit(i32 noundef %conv40, ptr noundef %dscp_mapped) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end50, label %if.then43

if.then43:                                        ; preds = %if.end38
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %protocol, align 2
  %conv45 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.10, i32 noundef %conv45) #13
  %call46 = tail call i32 @dcb_ieee_delapp(ptr noundef %netdev, ptr noundef %app) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then43.setapp_out_crit_edge, label %if.then48

if.then43.setapp_out_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %setapp_out

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.11) #13
  br label %setapp_out

if.end50:                                         ; preds = %if.end38
  %20 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %app, align 2
  %22 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %protocol, align 2
  %24 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %priority, align 1
  %pfc_mode = getelementptr inbounds %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 0, i32 5
  %26 = ptrtoint ptr %pfc_mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pfc_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp57 = icmp eq i8 %27, 0
  br i1 %cmp57, label %if.then59, label %if.end50.if.end116_crit_edge

if.end50.if.end116_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then59:                                        ; preds = %if.end50
  %call61 = tail call i32 @ice_aq_set_pfc_mode(ptr noundef %hw, i8 noundef zeroext 2, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.cond71.preheader.preheader, label %cleanup

for.cond71.preheader.preheader:                   ; preds = %if.then59
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.13) #13
  %pfc_mode65 = getelementptr inbounds %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 5
  %28 = ptrtoint ptr %pfc_mode65 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %pfc_mode65, align 2
  %etscfg = getelementptr inbounds %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 2
  %29 = ptrtoint ptr %etscfg to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %etscfg, align 4
  %pfc = getelementptr inbounds %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 4
  %pfccap = getelementptr inbounds %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 4, i32 2
  %30 = ptrtoint ptr %pfccap to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv21, ptr %pfccap, align 2
  %31 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %pfc, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv23)
  %cmp80 = icmp ult i32 %conv23, 8
  %mul77 = shl nuw nsw i32 %conv23, 3
  br label %for.cond71.preheader

for.cond71.preheader:                             ; preds = %if.end87.7.for.cond71.preheader_crit_edge, %for.cond71.preheader.preheader
  %i.0214 = phi i32 [ %inc89, %if.end87.7.for.cond71.preheader_crit_edge ], [ 0, %for.cond71.preheader.preheader ]
  %mul = mul nuw nsw i32 %i.0214, %conv23
  %conv78 = trunc i32 %i.0214 to i8
  %arrayidx = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %mul
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv78, ptr %arrayidx, align 1
  br i1 %cmp80, label %if.then82.7, label %if.end87.6

if.end87.6:                                       ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %add.1 = add nuw nsw i32 %mul, 1
  %arrayidx.1 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.1
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv78, ptr %arrayidx.1, align 1
  %add.2 = add nuw nsw i32 %mul, 2
  %arrayidx.2 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.2
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv78, ptr %arrayidx.2, align 1
  %add.3 = add nuw nsw i32 %mul, 3
  %arrayidx.3 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.3
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv78, ptr %arrayidx.3, align 1
  %add.4 = add nuw nsw i32 %mul, 4
  %arrayidx.4 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.4
  %36 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv78, ptr %arrayidx.4, align 1
  %add.5 = add nuw nsw i32 %mul, 5
  %arrayidx.5 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.5
  %37 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv78, ptr %arrayidx.5, align 1
  %add.6 = add nuw nsw i32 %mul, 6
  %arrayidx.6 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.6
  %38 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv78, ptr %arrayidx.6, align 1
  %add.7 = add nuw nsw i32 %mul, 7
  br label %if.end87.7

if.then82.7:                                      ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %add85 = add nuw nsw i32 %mul, %mul77
  %arrayidx86 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add85
  %39 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv78, ptr %arrayidx86, align 1
  %add.1218 = add nuw nsw i32 %mul, 1
  %arrayidx.1219 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.1218
  %40 = ptrtoint ptr %arrayidx.1219 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv78, ptr %arrayidx.1219, align 1
  %add85.1 = add nuw nsw i32 %add.1218, %mul77
  %arrayidx86.1 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add85.1
  %41 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv78, ptr %arrayidx86.1, align 1
  %add.2221 = add nuw nsw i32 %mul, 2
  %arrayidx.2222 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.2221
  %42 = ptrtoint ptr %arrayidx.2222 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv78, ptr %arrayidx.2222, align 1
  %add85.2 = add nuw nsw i32 %add.2221, %mul77
  %arrayidx86.2 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add85.2
  %43 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv78, ptr %arrayidx86.2, align 1
  %add.3224 = add nuw nsw i32 %mul, 3
  %arrayidx.3225 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.3224
  %44 = ptrtoint ptr %arrayidx.3225 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv78, ptr %arrayidx.3225, align 1
  %add85.3 = add nuw nsw i32 %add.3224, %mul77
  %arrayidx86.3 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add85.3
  %45 = ptrtoint ptr %arrayidx86.3 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv78, ptr %arrayidx86.3, align 1
  %add.4227 = add nuw nsw i32 %mul, 4
  %arrayidx.4228 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.4227
  %46 = ptrtoint ptr %arrayidx.4228 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv78, ptr %arrayidx.4228, align 1
  %add85.4 = add nuw nsw i32 %add.4227, %mul77
  %arrayidx86.4 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add85.4
  %47 = ptrtoint ptr %arrayidx86.4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv78, ptr %arrayidx86.4, align 1
  %add.5230 = add nuw nsw i32 %mul, 5
  %arrayidx.5231 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.5230
  %48 = ptrtoint ptr %arrayidx.5231 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv78, ptr %arrayidx.5231, align 1
  %add85.5 = add nuw nsw i32 %add.5230, %mul77
  %arrayidx86.5 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add85.5
  %49 = ptrtoint ptr %arrayidx86.5 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv78, ptr %arrayidx86.5, align 1
  %add.6233 = add nuw nsw i32 %mul, 6
  %arrayidx.6234 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.6233
  %50 = ptrtoint ptr %arrayidx.6234 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv78, ptr %arrayidx.6234, align 1
  %add85.6 = add nuw nsw i32 %add.6233, %mul77
  %arrayidx86.6 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add85.6
  %51 = ptrtoint ptr %arrayidx86.6 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv78, ptr %arrayidx86.6, align 1
  %add.7236 = add nuw nsw i32 %mul, 7
  %arrayidx.7237 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.7236
  %52 = ptrtoint ptr %arrayidx.7237 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv78, ptr %arrayidx.7237, align 1
  %add85.7 = add nuw nsw i32 %add.7236, %mul77
  br label %if.end87.7

if.end87.7:                                       ; preds = %if.then82.7, %if.end87.6
  %add.7.sink = phi i32 [ %add.7, %if.end87.6 ], [ %add85.7, %if.then82.7 ]
  %arrayidx.7 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %add.7.sink
  %53 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv78, ptr %arrayidx.7, align 1
  %inc89 = add nuw nsw i32 %i.0214, 1
  %exitcond.not = icmp eq i32 %inc89, %conv23
  br i1 %exitcond.not, label %for.end90, label %if.end87.7.for.cond71.preheader_crit_edge

if.end87.7.for.cond71.preheader_crit_edge:        ; preds = %if.end87.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond71.preheader

for.end90:                                        ; preds = %if.end87.7
  %tcbwtable = getelementptr inbounds %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 2, i32 4
  %54 = ptrtoint ptr %tcbwtable to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 100, ptr %tcbwtable, align 1
  %tsatable = getelementptr inbounds %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 2, i32 5
  %55 = ptrtoint ptr %tsatable to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %tsatable, align 1
  %prio_table = getelementptr inbounds %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 2, i32 3
  %56 = ptrtoint ptr %prio_table to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %prio_table, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv23)
  %cmp99215 = icmp ugt i32 %conv23, 1
  br i1 %cmp99215, label %for.end90.for.body101_crit_edge, label %for.end90.if.end116_crit_edge

for.end90.if.end116_crit_edge:                    ; preds = %for.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

for.end90.for.body101_crit_edge:                  ; preds = %for.end90
  br label %for.body101

for.body101:                                      ; preds = %for.body101.for.body101_crit_edge, %for.end90.for.body101_crit_edge
  %i.1216 = phi i32 [ %inc113, %for.body101.for.body101_crit_edge ], [ 1, %for.end90.for.body101_crit_edge ]
  %arrayidx104 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 2, i32 4, i32 %i.1216
  %57 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx104, align 1
  %arrayidx107 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 2, i32 5, i32 %i.1216
  %58 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 2, ptr %arrayidx107, align 1
  %conv108 = trunc i32 %i.1216 to i8
  %arrayidx111 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 2, i32 3, i32 %i.1216
  %59 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv108, ptr %arrayidx111, align 1
  %inc113 = add nuw nsw i32 %i.1216, 1
  %exitcond217.not = icmp eq i32 %inc113, %conv23
  br i1 %exitcond217.not, label %for.body101.if.end116_crit_edge, label %for.body101.for.body101_crit_edge

for.body101.for.body101_crit_edge:                ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body101

for.body101.if.end116_crit_edge:                  ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

cleanup:                                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.12, i32 noundef %call61) #13
  br label %setapp_out

if.end116:                                        ; preds = %for.body101.if.end116_crit_edge, %for.end90.if.end116_crit_edge, %if.end50.if.end116_crit_edge
  %60 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %priority, align 1
  %62 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %protocol, align 2
  %idxprom = zext i16 %63 to i32
  %arrayidx120 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 8, i32 %idxprom
  %64 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %61, ptr %arrayidx120, align 1
  %65 = ptrtoint ptr %desired_dcbx_cfg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %desired_dcbx_cfg, align 4
  %inc122 = add i32 %66, 1
  store i32 %inc122, ptr %desired_dcbx_cfg, align 4
  %arrayidx123 = getelementptr %struct.ice_port_info, ptr %15, i32 0, i32 17, i32 1, i32 6, i32 %66
  %67 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %23, ptr %arrayidx123, align 4
  %new_app.sroa.5.0.arrayidx123.sroa_idx = getelementptr inbounds i8, ptr %arrayidx123, i32 2
  %68 = ptrtoint ptr %new_app.sroa.5.0.arrayidx123.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %25, ptr %new_app.sroa.5.0.arrayidx123.sroa_idx, align 2
  %new_app.sroa.7.0.arrayidx123.sroa_idx = getelementptr inbounds i8, ptr %arrayidx123, i32 3
  %69 = ptrtoint ptr %new_app.sroa.7.0.arrayidx123.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %21, ptr %new_app.sroa.7.0.arrayidx123.sroa_idx, align 1
  %call124 = tail call i32 @ice_pf_dcb_cfg(ptr noundef %3, ptr noundef %desired_dcbx_cfg, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then127, label %if.end116.setapp_out_crit_edge

if.end116.setapp_out_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %setapp_out

if.then127:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ice_dcbnl_devreset(ptr noundef %netdev)
  br label %setapp_out

setapp_out:                                       ; preds = %if.then127, %if.end116.setapp_out_crit_edge, %cleanup, %if.then48, %if.then43.setapp_out_crit_edge, %if.end30.setapp_out_crit_edge
  %ret.0 = phi i32 [ %call35, %if.end30.setapp_out_crit_edge ], [ %call61, %cleanup ], [ 0, %if.then127 ], [ -22, %if.then48 ], [ -22, %if.then43.setapp_out_crit_edge ], [ 1, %if.end116.setapp_out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %tc_mutex) #10
  br label %cleanup130

cleanup130:                                       ; preds = %setapp_out, %if.then26, %if.then17, %if.end10.cleanup130_crit_edge, %if.end4.cleanup130_crit_edge, %if.then3, %entry.cleanup130_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -22, %if.then17 ], [ -22, %if.then26 ], [ %ret.0, %setapp_out ], [ -22, %entry.cleanup130_crit_edge ], [ -22, %if.end4.cleanup130_crit_edge ], [ -95, %if.end10.cleanup130_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ice_dcbnl_getstate(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
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
  %shr.i = lshr i32 %5, 5
  %and1.i = and i32 %shr.i, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcbnl_getstate.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcbnl_getstate, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !76

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcbnl_getstate.__UNIQUE_ID_ddebug615, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %and1.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = trunc i32 %and1.i to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ice_dcbnl_setstate(ptr nocapture noundef readonly %netdev, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %.not = icmp eq i16 %6, 4
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool5 = icmp ne i8 %state, 0
  %flags = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  %cmp = xor i1 %tobool5, %10
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  br i1 %tobool5, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #10
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %11 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_info, align 4
  %qos_cfg = getelementptr inbounds %struct.ice_port_info, ptr %12, i32 0, i32 17
  %desired_dcbx_cfg = getelementptr inbounds %struct.ice_port_info, ptr %12, i32 0, i32 17, i32 1
  %13 = call ptr @memcpy(ptr %desired_dcbx_cfg, ptr %qos_cfg, i32 400)
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 2, %if.else ], [ 2, %if.then12 ]
  ret i8 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_dcbnl_get_perm_hw_addr(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %perm_addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %4 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_info, align 4
  %6 = call ptr @memset(ptr %perm_addr, i32 255, i32 32)
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %7 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp31.not = icmp eq i8 %8, 0
  br i1 %cmp31.not, label %entry.for.end17_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end17

for.cond4.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp734.not = icmp eq i8 %13, 0
  br i1 %cmp734.not, label %for.cond4.preheader.for.end17_crit_edge, label %for.cond4.preheader.for.body9_crit_edge

for.cond4.preheader.for.body9_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body9

for.cond4.preheader.for.end17_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end17

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_port_info, ptr %5, i32 0, i32 12, i32 1, i32 %i.032
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr i8, ptr %perm_addr, i32 %i.032
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx3, align 1
  %inc = add nuw nsw i32 %i.032, 1
  %12 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond4.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond4.preheader.for.body9_crit_edge
  %j.036 = phi i32 [ %inc15, %for.body9.for.body9_crit_edge ], [ 0, %for.cond4.preheader.for.body9_crit_edge ]
  %i.135 = phi i32 [ %inc16, %for.body9.for.body9_crit_edge ], [ %inc, %for.cond4.preheader.for.body9_crit_edge ]
  %arrayidx12 = getelementptr %struct.ice_port_info, ptr %5, i32 0, i32 12, i32 1, i32 %j.036
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr i8, ptr %perm_addr, i32 %i.135
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx13, align 1
  %inc15 = add nuw nsw i32 %j.036, 1
  %inc16 = add nuw nsw i32 %i.135, 1
  %17 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %addr_len, align 1
  %conv6 = zext i8 %18 to i32
  %cmp7 = icmp ult i32 %inc15, %conv6
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.body9.for.end17_crit_edge

for.body9.for.end17_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end17

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.end17:                                        ; preds = %for.body9.for.end17_crit_edge, %for.cond4.preheader.for.end17_crit_edge, %entry.for.end17_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_dcbnl_set_pg_tc_cfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %tc, i8 noundef zeroext %prio_type, i8 noundef zeroext %bwg_id, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %tc)
  %cmp = icmp sgt i32 %tc, 7
  %or.cond28 = or i1 %cmp, %7
  br i1 %or.cond28, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %8 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_info, align 4
  %conv10 = zext i8 %up_map to i32
  %conv14 = trunc i32 %tc to i8
  %and11 = and i32 %conv10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end7.for.inc_crit_edge, label %if.then13

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 2, i32 3, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv14, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end7.for.inc_crit_edge
  %and11.1 = and i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.1)
  %tobool12.not.1 = icmp eq i32 %and11.1, 0
  br i1 %tobool12.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then13.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then13.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.1 = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 2, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv14, ptr %arrayidx.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then13.1, %for.inc.for.inc.1_crit_edge
  %and11.2 = and i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.2)
  %tobool12.not.2 = icmp eq i32 %and11.2, 0
  br i1 %tobool12.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then13.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then13.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.2 = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 2, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv14, ptr %arrayidx.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then13.2, %for.inc.1.for.inc.2_crit_edge
  %and11.3 = and i32 %conv10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.3)
  %tobool12.not.3 = icmp eq i32 %and11.3, 0
  br i1 %tobool12.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then13.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then13.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.3 = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 2, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv14, ptr %arrayidx.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then13.3, %for.inc.2.for.inc.3_crit_edge
  %and11.4 = and i32 %conv10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.4)
  %tobool12.not.4 = icmp eq i32 %and11.4, 0
  br i1 %tobool12.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then13.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then13.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.4 = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 2, i32 3, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv14, ptr %arrayidx.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then13.4, %for.inc.3.for.inc.4_crit_edge
  %and11.5 = and i32 %conv10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.5)
  %tobool12.not.5 = icmp eq i32 %and11.5, 0
  br i1 %tobool12.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then13.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then13.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.5 = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 2, i32 3, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv14, ptr %arrayidx.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then13.5, %for.inc.4.for.inc.5_crit_edge
  %and11.6 = and i32 %conv10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.6)
  %tobool12.not.6 = icmp eq i32 %and11.6, 0
  br i1 %tobool12.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then13.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then13.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.6 = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 2, i32 3, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv14, ptr %arrayidx.6, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then13.6, %for.inc.5.for.inc.6_crit_edge
  %and11.7 = and i32 %conv10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.7)
  %tobool12.not.7 = icmp eq i32 %and11.7, 0
  br i1 %tobool12.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then13.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.then13.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.7 = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 2, i32 3, i32 7
  %17 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv14, ptr %arrayidx.7, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then13.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx17 = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 2, i32 5, i32 %tc
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %arrayidx17, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ice_dcbnl_set_pg_bwg_cfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pgid)
  %cmp = icmp sgt i32 %pgid, 7
  %or.cond12 = or i1 %cmp, %7
  br i1 %or.cond12, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %8 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_info, align 4
  %arrayidx = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 2, i32 4, i32 %pgid
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bw_pct, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_dcbnl_set_pg_tc_cfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, i8 noundef zeroext %prio_type, i8 noundef zeroext %pgid, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcbnl_set_pg_tc_cfg_rx.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcbnl_set_pg_tc_cfg_rx, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !76

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcbnl_set_pg_tc_cfg_rx.__UNIQUE_ID_ddebug618, ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_dcbnl_set_pg_bwg_cfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcbnl_set_pg_bwg_cfg_rx.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcbnl_set_pg_bwg_cfg_rx, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !76

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcbnl_set_pg_bwg_cfg_rx.__UNIQUE_ID_ddebug619, ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_dcbnl_get_pg_tc_cfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr nocapture noundef readnone %prio_type, ptr nocapture noundef %pgid, ptr nocapture noundef readnone %bw_pct, ptr nocapture noundef readnone %up_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp sgt i32 %prio, 7
  %or.cond22 = or i1 %cmp, %7
  br i1 %or.cond22, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %8 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_info, align 4
  %arrayidx = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 0, i32 2, i32 3, i32 %prio
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %pgid, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcbnl_get_pg_tc_cfg_tx.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcbnl_get_pg_tc_cfg_tx, %if.then12)) #10
          to label %cleanup [label %if.then12], !srcloc !76

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %pgid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pgid, align 1
  %conv13 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcbnl_get_pg_tc_cfg_tx.__UNIQUE_ID_ddebug616, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %prio, i32 noundef %conv13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_dcbnl_get_pg_bwg_cfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, ptr nocapture noundef %bw_pct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pgid)
  %cmp = icmp sgt i32 %pgid, 7
  %or.cond22 = or i1 %cmp, %7
  br i1 %or.cond22, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %8 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_info, align 4
  %arrayidx = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 0, i32 2, i32 4, i32 %pgid
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %bw_pct, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcbnl_get_pg_bwg_cfg_tx.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcbnl_get_pg_bwg_cfg_tx, %if.then12)) #10
          to label %cleanup [label %if.then12], !srcloc !76

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %bw_pct to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bw_pct, align 1
  %conv13 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcbnl_get_pg_bwg_cfg_tx.__UNIQUE_ID_ddebug617, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %pgid, i32 noundef %conv13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ice_dcbnl_get_pg_tc_cfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr nocapture noundef readnone %prio_type, ptr nocapture noundef writeonly %pgid, ptr nocapture noundef readnone %bw_pct, ptr nocapture noundef readnone %up_map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp sgt i32 %prio, 7
  %or.cond12 = or i1 %cmp, %7
  br i1 %or.cond12, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %8 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_info, align 4
  %arrayidx = getelementptr %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 0, i32 2, i32 3, i32 %prio
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %pgid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ice_dcbnl_get_pg_bwg_cfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, ptr nocapture noundef writeonly %bw_pct) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %.not = icmp eq i16 %6, 4
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bw_pct, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_dcbnl_set_pfc_cfg(ptr nocapture noundef readonly %netdev, i32 noundef %prio, i8 noundef zeroext %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp sgt i32 %prio, 7
  %or.cond44 = or i1 %cmp, %7
  br i1 %or.cond44, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %8 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_info, align 4
  %maxtc = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 28, i32 0, i32 2
  %10 = ptrtoint ptr %maxtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxtc, align 8
  %conv9 = trunc i32 %11 to i8
  %pfccap = getelementptr inbounds %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 4, i32 2
  %12 = ptrtoint ptr %pfccap to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9, ptr %pfccap, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %set)
  %tobool10.not = icmp eq i8 %set, 0
  %shl15 = shl nuw nsw i32 1, %prio
  %pfcena17 = getelementptr inbounds %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 4, i32 3
  %13 = ptrtoint ptr %pfcena17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pfcena17, align 1
  %15 = trunc i32 %shl15 to i8
  %conv14 = or i8 %14, %15
  %16 = xor i8 %15, -1
  %conv20 = and i8 %14, %16
  %conv14.sink = select i1 %tobool10.not, i8 %conv20, i8 %conv14
  store i8 %conv14.sink, ptr %pfcena17, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcbnl_set_pfc_cfg.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcbnl_set_pfc_cfg, %if.then26)) #10
          to label %cleanup [label %if.then26], !srcloc !76

if.then26:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %conv27 = zext i8 %set to i32
  %pfcena29 = getelementptr inbounds %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 1, i32 4, i32 3
  %19 = ptrtoint ptr %pfcena29 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pfcena29, align 1
  %conv30 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcbnl_set_pfc_cfg.__UNIQUE_ID_ddebug614, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %prio, i32 noundef %conv27, i32 noundef %conv30) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_dcbnl_get_pfc_cfg(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr nocapture noundef %setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp sgt i32 %prio, 7
  %or.cond31 = or i1 %cmp, %7
  br i1 %or.cond31, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %8 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_info, align 4
  %pfcena = getelementptr inbounds %struct.ice_port_info, ptr %9, i32 0, i32 17, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %pfcena to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pfcena, align 1
  %conv8 = zext i8 %11 to i32
  %shr = lshr i32 %conv8, %prio
  %12 = trunc i32 %shr to i8
  %conv10 = and i8 %12, 1
  %13 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %setting, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcbnl_get_pfc_cfg.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcbnl_get_pfc_cfg, %if.then15)) #10
          to label %cleanup [label %if.then15], !srcloc !76

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %setting to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %setting, align 1
  %conv16 = zext i8 %17 to i32
  %18 = ptrtoint ptr %pfcena to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pfcena, align 1
  %conv21 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcbnl_get_pfc_cfg.__UNIQUE_ID_ddebug613, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %prio, i32 noundef %conv16, i32 noundef %conv21) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ice_dcbnl_cee_set_all(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %.not = icmp eq i16 %6, 4
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %7 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_info, align 4
  %desired_dcbx_cfg = getelementptr inbounds %struct.ice_port_info, ptr %8, i32 0, i32 17, i32 1
  %tc_mutex = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %tc_mutex, i32 noundef 0) #10
  %call5 = tail call i32 @ice_pf_dcb_cfg(ptr noundef %3, ptr noundef %desired_dcbx_cfg, i1 noundef zeroext true) #10
  tail call void @mutex_unlock(ptr noundef %tc_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp ne i32 %call5, 0
  %spec.select = zext i1 %cmp.not to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %spec.select, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ice_dcbnl_get_cap(ptr nocapture noundef readonly %netdev, i32 noundef %capid, ptr nocapture noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
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
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i32 %capid to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %capid, label %sw.default [
    i32 2, label %if.end.do.body_crit_edge
    i32 3, label %if.end.do.body_crit_edge29
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 8, label %sw.bb7
    i32 9, label %sw.bb8
  ]

if.end.do.body_crit_edge29:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %8 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dcbx_cap, align 2
  %conv = trunc i16 %9 to i8
  br label %do.body

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %sw.default, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %if.end.do.body_crit_edge, %if.end.do.body_crit_edge29
  %.sink = phi i8 [ 0, %sw.bb3 ], [ -128, %sw.bb4 ], [ -128, %sw.bb5 ], [ 0, %sw.bb6 ], [ 0, %sw.bb7 ], [ %conv, %sw.bb8 ], [ 0, %sw.default ], [ 1, %if.end.do.body_crit_edge ], [ 1, %if.end.do.body_crit_edge29 ]
  %10 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %cap, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcbnl_get_cap.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcbnl_get_cap, %if.then13)) #10
          to label %cleanup [label %if.then13], !srcloc !76

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cap, align 1
  %conv14 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcbnl_get_cap.__UNIQUE_ID_ddebug620, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %capid, i32 noundef %conv14) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %do.body ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ice_dcbnl_getnumtcs(ptr nocapture noundef readonly %dev, i32 noundef %tcid, ptr nocapture noundef writeonly %num) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %maxtc = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 28, i32 0, i32 2
  %7 = ptrtoint ptr %maxtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %maxtc, align 8
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %num, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ice_dcbnl_getpfcstate(ptr nocapture noundef readonly %netdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %4 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_info, align 4
  %pfcena = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %pfcena to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfcena, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp ne i8 %7, 0
  %. = zext i1 %tobool.not to i8
  ret i8 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_dcbnl_getapp(ptr noundef %netdev, i8 noundef zeroext %idtype, i16 noundef zeroext %id) #0 align 64 {
entry:
  %app = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app) #10
  %4 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %6 = ptrtoint ptr %app to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %idtype, ptr %app, align 2
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %id, ptr %5, align 2
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %9 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dcbx_cap, align 2
  %11 = and i16 %10, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %.not = icmp eq i16 %11, 4
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = call zeroext i8 @dcb_getapp(ptr noundef %netdev, ptr noundef nonnull %app) #10
  %conv6 = zext i8 %call5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv6, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ice_dcbnl_getdcbx(ptr nocapture noundef readonly %netdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 2
  %conv = trunc i16 %5 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ice_dcbnl_setdcbx(ptr nocapture noundef readonly %netdev, i8 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
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
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %mode to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %and7 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %7 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %.not = icmp eq i32 %7, 12
  %and11 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond51 = or i1 %.not, %tobool12.not
  br i1 %or.cond51, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 61
  %8 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dcbx_cap, align 2
  %10 = zext i8 %mode to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %10)
  %cmp = icmp eq i16 %9, %10
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 3
  %11 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_info, align 4
  %pfc_mode = getelementptr inbounds %struct.ice_port_info, ptr %12, i32 0, i32 17, i32 0, i32 5
  %13 = ptrtoint ptr %pfc_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pfc_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp22 = icmp eq i8 %14, 1
  br i1 %cmp22, label %if.end19.cleanup_crit_edge, label %if.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %10, ptr %dcbx_cap, align 2
  %spec.select = select i1 %tobool8.not, i8 2, i8 1
  %16 = getelementptr inbounds %struct.ice_port_info, ptr %12, i32 0, i32 17, i32 0, i32 9
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %16, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end25 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end14.cleanup_crit_edge ], [ 1, %if.end19.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_dcb_bwchk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_getapp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 1049, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ice_dcbnl_vsi_del_app.__UNIQUE_ID_ddebug621, !1, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 835, i32 22}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 895, i32 24}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 899, i32 23}
!12 = !{ptr @dcbnl_ops, !13, !"dcbnl_ops", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 950, i32 36}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 712, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 723, i32 22}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 730, i32 22}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 746, i32 22}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 750, i32 23}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 767, i32 23}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 771, i32 23}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 365, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ice_dcbnl_getstate.__UNIQUE_ID_ddebug615, !29, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 562, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ice_dcbnl_set_pg_tc_cfg_rx.__UNIQUE_ID_ddebug618, !33, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 598, i32 2}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ice_dcbnl_set_pg_bwg_cfg_rx.__UNIQUE_ID_ddebug619, !37, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 424, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ice_dcbnl_get_pg_tc_cfg_tx.__UNIQUE_ID_ddebug616, !41, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 485, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ice_dcbnl_get_pg_bwg_cfg_tx.__UNIQUE_ID_ddebug617, !45, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 334, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ice_dcbnl_set_pfc_cfg.__UNIQUE_ID_ddebug614, !49, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 304, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ice_dcbnl_get_pfc_cfg.__UNIQUE_ID_ddebug613, !53, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 644, i32 2}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ice_dcbnl_get_cap.__UNIQUE_ID_ddebug620, !57, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_nl.c", i32 186, i32 2}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ice_dcbnl_setdcbx._entry, !61, !"_entry", i1 false, i1 false}
!66 = !{ptr @ice_dcbnl_setdcbx._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2148747674, i64 2148747679, i64 2148747692, i64 2148747736, i64 2148747770, i64 2148747791}
!77 = !{i64 6767316}
!78 = !{i64 2160102513}
