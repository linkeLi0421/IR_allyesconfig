; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_repr.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_repr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.194, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.203, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.203 = type { ptr }
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
%struct.ice_vf = type { ptr, %struct.mutex, i16, i16, i16, %struct.ice_vf_fdir, i32, ptr, %struct.virtchnl_version_info, i32, %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr, %struct.ice_time_mac, [1 x i32], [1 x i32], i16, i8, i16, i32, i32, [1 x i32], i32, i8, i16, i16, %struct.ice_mdd_vf_events, %struct.ice_mdd_vf_events, [2 x i32], ptr, %struct.ice_vc_vf_ops, %struct.devlink_port }
%struct.ice_vf_fdir = type { [28 x [2 x i16]], [28 x [2 x i32]], ptr, %struct.idr, %struct.list_head, %struct.spinlock, %struct.ice_vf_fdir_ctx, %struct.ice_vf_fdir_ctx }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ice_vf_fdir_ctx = type { %struct.timer_list, i32, i32, %union.ice_32b_rx_flex_desc, i32, ptr }
%union.ice_32b_rx_flex_desc = type { %struct.anon.196 }
%struct.anon.196 = type { i64, i64, i64, i64 }
%struct.virtchnl_version_info = type { i32, i32 }
%struct.virtchnl_ether_addr = type { [6 x i8], i8, i8 }
%struct.ice_time_mac = type { i32, [6 x i8] }
%struct.ice_mdd_vf_events = type { i16, i16 }
%struct.ice_vc_vf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ice_repr = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
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
%struct.ice_netdev_priv = type { ptr, ptr, %struct.list_head }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }

@ice_repr_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ice_repr_open, ptr @ice_repr_stop, ptr @ice_eswitch_port_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ice_repr_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ice_repr_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ice_repr_get_phys_port_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ice_repr_get_devlink_port, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ice_repr_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ice_repr_block_cb_list, ptr @ice_repr_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pf%dvfr%d\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"ice_repr_netdev_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 194, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"ice_repr_block_cb_list\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 174, i32 8 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [45 x i8] c"../drivers/net/ethernet/intel/ice/ice_repr.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 36, i32 27 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @ice_repr_netdev_ops, ptr @ice_repr_block_cb_list, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_repr_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_repr_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ice_netdev_to_repr(ptr nocapture noundef readonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %repr = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %repr, align 4
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_is_port_repr_netdev(ptr noundef readonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %netdev, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %1, @ice_repr_netdev_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_repr_add_for_all_vfs(ptr nocapture noundef readonly %pf) local_unnamed_addr #2 align 64 {
entry:
  %addr.i.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_alloc_vfs = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 13
  %0 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_alloc_vfs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp108.not = icmp eq i16 %1, 0
  br i1 %cmp108.not, label %entry.cleanup14_crit_edge, label %for.body.lr.ph

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

for.body.lr.ph:                                   ; preds = %entry
  %vf2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf2, align 4
  %arrayidx = getelementptr %struct.ice_vf, ptr %3, i32 %i.0109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i75.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 6) #12
  %mac_rule.i = getelementptr inbounds %struct.ice_repr, ptr %call7.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %mac_rule.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i75.i, ptr %mac_rule.i, align 4
  %tobool3.not.i = icmp eq ptr %call7.i.i75.i, null
  br i1 %tobool3.not.i, label %if.end.i.err_alloc_rule.i_crit_edge, label %if.end5.i

if.end.i.err_alloc_rule.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_alloc_rule.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call ptr @alloc_etherdev_mqs(i32 noundef 16, i32 noundef 1, i32 noundef 1) #9
  %netdev.i = getelementptr inbounds %struct.ice_repr, ptr %call7.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %netdev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6.i, ptr %netdev.i, align 4
  %tobool8.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not.i, label %if.end5.i.err_alloc.i_crit_edge, label %if.end10.i

if.end5.i.err_alloc.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_alloc.i

if.end10.i:                                       ; preds = %if.end5.i
  %call11.i = call ptr @ice_get_vf_vsi(ptr noundef %arrayidx) #9
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11.i, ptr %call7.i.i.i, align 8
  %vf12.i = getelementptr inbounds %struct.ice_repr, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %vf12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %vf12.i, align 4
  %repr13.i = getelementptr %struct.ice_vf, ptr %3, i32 %i.0109, i32 28
  %10 = ptrtoint ptr %repr13.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %repr13.i, align 8
  %11 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev.i, align 4
  %repr16.i = getelementptr i8, ptr %12, i32 2308
  %13 = ptrtoint ptr %repr16.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %repr16.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i76.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 640) #12
  %tobool18.not.i = icmp eq ptr %call7.i.i76.i, null
  br i1 %tobool18.not.i, label %if.end10.i.err_alloc_q_vector.i_crit_edge, label %if.end20.i

if.end10.i.err_alloc_q_vector.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_alloc_q_vector.i

if.end20.i:                                       ; preds = %if.end10.i
  %q_vector21.i = getelementptr inbounds %struct.ice_repr, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %q_vector21.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i76.i, ptr %q_vector21.i, align 8
  %call22.i = call i32 @ice_devlink_create_vf_port(ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end20.i.err_devlink.i_crit_edge

if.end20.i.err_devlink.i_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_devlink.i

if.end25.i:                                       ; preds = %if.end20.i
  %16 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev.i, align 4
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 30
  %18 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 68, ptr %min_mtu.i, align 8
  %19 = load ptr, ptr %netdev.i, align 4
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 31
  %20 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 9702, ptr %max_mtu.i, align 4
  %21 = load ptr, ptr %netdev.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i.i) #9
  %22 = call ptr @memset(ptr %addr.i.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i.i, i32 noundef 6) #9
  %23 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %addr.i.i.i, align 1
  %25 = and i8 %24, -4
  %26 = or i8 %25, 2
  store i8 %26, ptr %addr.i.i.i, align 1
  call void @dev_addr_mod(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %addr.i.i.i, i32 noundef 6) #9
  %addr_assign_type.i.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 55
  %27 = ptrtoint ptr %addr_assign_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %addr_assign_type.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i.i) #9
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 16
  %28 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ice_repr_netdev_ops, ptr %netdev_ops.i.i, align 8
  call void @ice_set_ethtool_repr_ops(ptr noundef %21) #9
  %hw_features.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 24
  %29 = ptrtoint ptr %hw_features.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %hw_features.i.i, align 8
  %or.i.i = or i64 %30, 562949953421312
  store i64 %or.i.i, ptr %hw_features.i.i, align 8
  call void @netif_carrier_off(ptr noundef %21) #9
  call void @netif_tx_stop_all_queues(ptr noundef %21) #9
  %call.i.i = call i32 @register_netdev(ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool30.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool30.not.i, label %for.inc, label %err_netdev.i

err_netdev.i:                                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ice_devlink_destroy_vf_port(ptr noundef %arrayidx) #9
  br label %err_devlink.i

err_devlink.i:                                    ; preds = %err_netdev.i, %if.end20.i.err_devlink.i_crit_edge
  %err.0.i = phi i32 [ %call.i.i, %err_netdev.i ], [ %call22.i, %if.end20.i.err_devlink.i_crit_edge ]
  %q_vector21.i216 = getelementptr inbounds %struct.ice_repr, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %q_vector21.i216 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %q_vector21.i216, align 8
  call void @kfree(ptr noundef %32) #9
  %33 = ptrtoint ptr %repr13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %repr13.i, align 8
  %q_vector36.i = getelementptr inbounds %struct.ice_repr, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %q_vector36.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %q_vector36.i, align 4
  br label %err_alloc_q_vector.i

err_alloc_q_vector.i:                             ; preds = %err_devlink.i, %if.end10.i.err_alloc_q_vector.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %err_devlink.i ], [ -12, %if.end10.i.err_alloc_q_vector.i_crit_edge ]
  %36 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev.i, align 4
  call void @free_netdev(ptr noundef %37) #9
  %38 = ptrtoint ptr %netdev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %netdev.i, align 4
  br label %err_alloc.i

err_alloc.i:                                      ; preds = %err_alloc_q_vector.i, %if.end5.i.err_alloc.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %err_alloc_q_vector.i ], [ -12, %if.end5.i.err_alloc.i_crit_edge ]
  %mac_rule.i199 = getelementptr inbounds %struct.ice_repr, ptr %call7.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %mac_rule.i199 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mac_rule.i199, align 4
  call void @kfree(ptr noundef %40) #9
  %41 = ptrtoint ptr %mac_rule.i199 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %mac_rule.i199, align 4
  br label %err_alloc_rule.i

err_alloc_rule.i:                                 ; preds = %err_alloc.i, %if.end.i.err_alloc_rule.i_crit_edge
  %err.3.i = phi i32 [ %err.2.i, %err_alloc.i ], [ -12, %if.end.i.err_alloc_rule.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  %repr41.i = getelementptr %struct.ice_vf, ptr %3, i32 %i.0109, i32 28
  %42 = ptrtoint ptr %repr41.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %repr41.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_rule.i, %for.body.cleanup_crit_edge
  %retval.0.i.ph = phi i32 [ %err.3.i, %err_alloc_rule.i ], [ -12, %for.body.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0109)
  %cmp5111.not = icmp eq i32 %i.0109, 0
  br i1 %cmp5111.not, label %cleanup.cleanup14_crit_edge, label %cleanup.for.body7_crit_edge

cleanup.for.body7_crit_edge:                      ; preds = %cleanup
  br label %for.body7

cleanup.cleanup14_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

for.inc:                                          ; preds = %if.end25.i
  %devlink_port.i = getelementptr %struct.ice_vf, ptr %3, i32 %i.0109, i32 30
  %43 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev.i, align 4
  call void @devlink_port_type_eth_set(ptr noundef %devlink_port.i, ptr noundef %44) #9
  %vc_ops = getelementptr %struct.ice_vf, ptr %3, i32 %i.0109, i32 29
  call void @ice_vc_change_ops_to_repr(ptr noundef %vc_ops) #9
  %inc = add nuw nsw i32 %i.0109, 1
  %45 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %num_alloc_vfs, align 8
  %conv = zext i16 %46 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup14_crit_edge

for.inc.cleanup14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %cleanup.for.body7_crit_edge
  %i.1112.in = phi i32 [ %i.1112, %for.body7.for.body7_crit_edge ], [ %i.0109, %cleanup.for.body7_crit_edge ]
  %i.1112 = add nsw i32 %i.1112.in, -1
  %47 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vf2, align 4
  %arrayidx10 = getelementptr %struct.ice_vf, ptr %48, i32 %i.1112
  call void @ice_devlink_destroy_vf_port(ptr noundef %arrayidx10) #9
  %repr.i = getelementptr %struct.ice_vf, ptr %48, i32 %i.1112, i32 28
  %49 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %repr.i, align 8
  %q_vector.i = getelementptr inbounds %struct.ice_repr, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %q_vector.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %q_vector.i, align 4
  call void @kfree(ptr noundef %52) #9
  %53 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %repr.i, align 8
  %q_vector2.i = getelementptr inbounds %struct.ice_repr, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %q_vector2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %q_vector2.i, align 4
  %56 = load ptr, ptr %repr.i, align 8
  %netdev.i27 = getelementptr inbounds %struct.ice_repr, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %netdev.i27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %netdev.i27, align 4
  call void @unregister_netdev(ptr noundef %58) #9
  %59 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %repr.i, align 8
  %netdev5.i = getelementptr inbounds %struct.ice_repr, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %netdev5.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %netdev5.i, align 4
  call void @free_netdev(ptr noundef %62) #9
  %63 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %repr.i, align 8
  %netdev7.i = getelementptr inbounds %struct.ice_repr, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %netdev7.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %netdev7.i, align 4
  %66 = load ptr, ptr %repr.i, align 8
  %mac_rule.i28 = getelementptr inbounds %struct.ice_repr, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %mac_rule.i28 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mac_rule.i28, align 4
  call void @kfree(ptr noundef %68) #9
  %69 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %repr.i, align 8
  %mac_rule10.i = getelementptr inbounds %struct.ice_repr, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %mac_rule10.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %mac_rule10.i, align 4
  %72 = load ptr, ptr %repr.i, align 8
  call void @kfree(ptr noundef %72) #9
  %73 = ptrtoint ptr %repr.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %repr.i, align 8
  %vc_ops11 = getelementptr %struct.ice_vf, ptr %48, i32 %i.1112, i32 29
  call void @ice_vc_set_dflt_vf_ops(ptr noundef %vc_ops11) #9
  %cmp5 = icmp sgt i32 %i.1112.in, 1
  br i1 %cmp5, label %for.body7.for.body7_crit_edge, label %for.body7.cleanup14_crit_edge

for.body7.cleanup14_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

cleanup14:                                        ; preds = %for.body7.cleanup14_crit_edge, %for.inc.cleanup14_crit_edge, %cleanup.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %cleanup.cleanup14_crit_edge ], [ 0, %entry.cleanup14_crit_edge ], [ %retval.0.i.ph, %for.body7.cleanup14_crit_edge ], [ 0, %for.inc.cleanup14_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_vc_change_ops_to_repr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_vc_set_dflt_vf_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_repr_rem_from_all_vfs(ptr nocapture noundef readonly %pf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_alloc_vfs = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 13
  %0 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_alloc_vfs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp8.not = icmp eq i16 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vf2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf2, align 4
  %arrayidx = getelementptr %struct.ice_vf, ptr %3, i32 %i.09
  tail call void @ice_devlink_destroy_vf_port(ptr noundef %arrayidx) #9
  %repr.i = getelementptr %struct.ice_vf, ptr %3, i32 %i.09, i32 28
  %4 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %repr.i, align 8
  %q_vector.i = getelementptr inbounds %struct.ice_repr, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %q_vector.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q_vector.i, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %repr.i, align 8
  %q_vector2.i = getelementptr inbounds %struct.ice_repr, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %q_vector2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %q_vector2.i, align 4
  %11 = load ptr, ptr %repr.i, align 8
  %netdev.i = getelementptr inbounds %struct.ice_repr, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev.i, align 4
  tail call void @unregister_netdev(ptr noundef %13) #9
  %14 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %repr.i, align 8
  %netdev5.i = getelementptr inbounds %struct.ice_repr, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %netdev5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev5.i, align 4
  tail call void @free_netdev(ptr noundef %17) #9
  %18 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %repr.i, align 8
  %netdev7.i = getelementptr inbounds %struct.ice_repr, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %netdev7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %netdev7.i, align 4
  %21 = load ptr, ptr %repr.i, align 8
  %mac_rule.i = getelementptr inbounds %struct.ice_repr, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %mac_rule.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mac_rule.i, align 4
  tail call void @kfree(ptr noundef %23) #9
  %24 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %repr.i, align 8
  %mac_rule10.i = getelementptr inbounds %struct.ice_repr, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %mac_rule10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %mac_rule10.i, align 4
  %27 = load ptr, ptr %repr.i, align 8
  tail call void @kfree(ptr noundef %27) #9
  %28 = ptrtoint ptr %repr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %repr.i, align 8
  %vc_ops = getelementptr %struct.ice_vf, ptr %3, i32 %i.09, i32 29
  tail call void @ice_vc_set_dflt_vf_ops(ptr noundef %vc_ops) #9
  %inc = add nuw nsw i32 %i.09, 1
  %29 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_alloc_vfs, align 8
  %conv = zext i16 %30 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_repr_start_tx_queues(ptr nocapture noundef readonly %repr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.ice_repr, ptr %repr, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void @netif_carrier_on(ptr noundef %1) #9
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not.i = icmp eq i32 %5, 0
  br i1 %cmp4.not.i, label %entry.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_start_all_queues.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %inc.i = add nuw i32 %i.05.i, 1
  %8 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_start_all_queues.exit_crit_edge

for.body.i.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_tx_start_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i.netif_tx_start_all_queues.exit_crit_edge, %entry.netif_tx_start_all_queues.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_repr_stop_tx_queues(ptr nocapture noundef readonly %repr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.ice_repr, ptr %repr, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void @netif_carrier_off(ptr noundef %1) #9
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void @netif_tx_stop_all_queues(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ice_repr_set_traffic_vsi(ptr nocapture noundef readonly %repr, ptr noundef %vsi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.ice_repr, ptr %repr, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %vsi, ptr %add.ptr.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_repr_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %repr.i = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %repr.i, align 4
  %vf1 = getelementptr inbounds %struct.ice_repr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf1, align 4
  %link_forced = getelementptr inbounds %struct.ice_vf, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %link_forced to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %link_forced, align 2
  %bf.set4 = or i8 %bf.load, 24
  store i8 %bf.set4, ptr %link_forced, align 2
  tail call void @ice_vc_notify_vf_link_state(ptr noundef %3) #9
  tail call void @netif_carrier_on(ptr noundef %netdev) #9
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %5 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.not.i = icmp eq i32 %6, 0
  br i1 %cmp4.not.i, label %entry.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_start_all_queues.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %8, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %inc.i = add nuw i32 %i.05.i, 1
  %9 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_start_all_queues.exit_crit_edge

for.body.i.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_tx_start_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i.netif_tx_start_all_queues.exit_crit_edge, %entry.netif_tx_start_all_queues.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_repr_stop(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %repr.i = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %repr.i, align 4
  %vf1 = getelementptr inbounds %struct.ice_repr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf1, align 4
  %link_forced = getelementptr inbounds %struct.ice_vf, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %link_forced to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %link_forced, align 2
  %bf.set = and i8 %bf.load, -25
  %bf.clear3 = or i8 %bf.set, 16
  store i8 %bf.clear3, ptr %link_forced, align 2
  tail call void @ice_vc_notify_vf_link_state(ptr noundef %3) #9
  tail call void @netif_carrier_off(ptr noundef %netdev) #9
  tail call void @netif_tx_stop_all_queues(ptr noundef %netdev) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_eswitch_port_start_xmit(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_repr_get_stats64(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %repr = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %repr, align 4
  %vf = getelementptr inbounds %struct.ice_repr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf, align 4
  %call1 = tail call zeroext i1 @ice_is_vf_disabled(ptr noundef %3) #9
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %repr, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @ice_update_vsi_stats(ptr noundef %7) #9
  %eth_stats3 = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 37
  %tx_unicast = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 37, i32 7
  %8 = ptrtoint ptr %tx_unicast to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_unicast, align 8
  %tx_broadcast = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 37, i32 9
  %10 = ptrtoint ptr %tx_broadcast to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_broadcast, align 8
  %add = add i64 %11, %9
  %tx_multicast = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 37, i32 8
  %12 = ptrtoint ptr %tx_multicast to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_multicast, align 8
  %add4 = add i64 %add, %13
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %14 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add4, ptr %tx_packets, align 8
  %rx_unicast = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 37, i32 1
  %15 = ptrtoint ptr %rx_unicast to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_unicast, align 8
  %rx_broadcast = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 37, i32 3
  %17 = ptrtoint ptr %rx_broadcast to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rx_broadcast, align 8
  %add5 = add i64 %18, %16
  %rx_multicast = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 37, i32 2
  %19 = ptrtoint ptr %rx_multicast to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_multicast, align 8
  %add6 = add i64 %add5, %20
  %21 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add6, ptr %stats, align 8
  %tx_bytes = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 37, i32 6
  %22 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tx_bytes, align 8
  %tx_bytes7 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %24 = ptrtoint ptr %tx_bytes7 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %tx_bytes7, align 8
  %25 = ptrtoint ptr %eth_stats3 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %eth_stats3, align 8
  %rx_bytes8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %27 = ptrtoint ptr %rx_bytes8 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %rx_bytes8, align 8
  %28 = load i64, ptr %rx_multicast, align 8
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %29 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %multicast, align 8
  %tx_errors = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 37, i32 11
  %30 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tx_errors, align 8
  %tx_errors10 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %32 = ptrtoint ptr %tx_errors10 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %tx_errors10, align 8
  %tx_discards = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 37, i32 10
  %33 = ptrtoint ptr %tx_discards to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %tx_discards, align 8
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %35 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %tx_dropped, align 8
  %rx_discards = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 37, i32 4
  %36 = ptrtoint ptr %rx_discards to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rx_discards, align 8
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %38 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %rx_dropped, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_repr_setup_tc(ptr noundef %netdev, i32 noundef %type, ptr noundef %type_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cond = icmp eq i32 %type, 5
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @flow_block_cb_setup_simple(ptr noundef %type_data, ptr noundef nonnull @ice_repr_block_cb_list, ptr noundef nonnull @ice_repr_setup_tc_block_cb, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_repr_get_phys_port_name(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %buf, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %repr1 = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %repr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %repr1, align 4
  %vf = getelementptr inbounds %struct.ice_repr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf, align 4
  %devlink = getelementptr inbounds %struct.ice_vf, ptr %3, i32 0, i32 30, i32 3
  %4 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %port_info.i = getelementptr inbounds %struct.ice_pf, ptr %7, i32 0, i32 58, i32 3
  %8 = ptrtoint ptr %port_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_info.i, align 4
  %lport.i = getelementptr inbounds %struct.ice_port_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %lport.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lport.i, align 1
  %conv.i = zext i8 %11 to i32
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %13 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str, i32 noundef %conv.i, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.inv = icmp sgt i32 %call4, 0
  %. = select i1 %cmp.inv, i32 0, i32 -95
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ice_repr_get_devlink_port(ptr nocapture noundef readonly %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %repr.i = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %repr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %repr.i, align 4
  %vf = getelementptr inbounds %struct.ice_repr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf, align 4
  %devlink_port = getelementptr inbounds %struct.ice_vf, ptr %3, i32 0, i32 30
  ret ptr %devlink_port
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_vc_notify_vf_link_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_vf_disabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_update_vsi_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_setup_simple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_repr_setup_tc_block_cb(i32 noundef %type, ptr noundef %type_data, ptr nocapture noundef readonly %cb_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cond = icmp eq i32 %type, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %repr = getelementptr inbounds %struct.ice_netdev_priv, ptr %cb_priv, i32 0, i32 1
  %0 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %repr, align 4
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %2 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %command.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i = getelementptr inbounds %struct.ice_repr, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @ice_add_cls_flower(ptr noundef %6, ptr noundef %8, ptr noundef %type_data) #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call3.i = tail call i32 @ice_del_cls_flower(ptr noundef %10, ptr noundef %type_data) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1.i, %sw.bb.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call3.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_add_cls_flower(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_del_cls_flower(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_get_vf_vsi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_devlink_create_vf_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_eth_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_devlink_destroy_vf_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_set_ethtool_repr_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @ice_repr_netdev_ops, !1, !"ice_repr_netdev_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_repr.c", i32 194, i32 36}
!2 = !{ptr @ice_repr_block_cb_list, !3, !"ice_repr_block_cb_list", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ice/ice_repr.c", i32 174, i32 8}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ice/ice_repr.c", i32 36, i32 27}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
