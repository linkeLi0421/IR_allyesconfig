; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.virtchnl_fdir_inset_map = type { i32, i32, i64, i64 }
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
%struct.virtchnl_fdir_del = type { i16, i16, i32, i32 }
%struct.virtchnl_fdir_add = type { i16, i16, i32, %struct.virtchnl_fdir_rule, i32 }
%struct.virtchnl_fdir_rule = type { %struct.virtchnl_proto_hdrs, %struct.virtchnl_filter_action_set }
%struct.virtchnl_proto_hdrs = type { i8, [3 x i8], i32, [32 x %struct.virtchnl_proto_hdr] }
%struct.virtchnl_proto_hdr = type { i32, i32, [64 x i8] }
%struct.virtchnl_filter_action_set = type { i32, [8 x %struct.virtchnl_filter_action] }
%struct.virtchnl_filter_action = type { i32, %union.anon.217 }
%union.anon.217 = type { %struct.anon.219, [24 x i8] }
%struct.anon.219 = type { i8, i32 }
%struct.virtchnl_fdir_fltr_conf = type { %struct.ice_fdir_fltr, i32, i64, i32 }
%struct.ice_fdir_fltr = type { %struct.list_head, i32, %union.anon.220, %union.anon.220, %struct.ice_fdir_udp_gtp, %struct.ice_fdir_udp_gtp, %struct.ice_fdir_l2tpv3, %struct.ice_fdir_l2tpv3, %struct.ice_fdir_extra, %struct.ice_fdir_extra, i16, i8, i16, i16, i16, i16, i16, i8, i8, i8, i16, i32, i8, i8 }
%union.anon.220 = type { %struct.ice_fdir_v6 }
%struct.ice_fdir_v6 = type { [4 x i32], [4 x i32], i16, i16, i32, i32, i8, i8, i8 }
%struct.ice_fdir_udp_gtp = type <{ i8, i8, i16, i32, i16, i8, i8, i8, i16, i8, i32, i8, [3 x i8] }>
%struct.ice_fdir_l2tpv3 = type { i32 }
%struct.ice_fdir_extra = type { [6 x i8], [6 x i8], i16, [2 x i32], i16, i16 }
%struct.ice_fltr_desc = type { i64, i64 }
%struct.ice_fdir_v4 = type { i32, i32, i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.ip_auth_hdr = type { i8, i8, i16, i32, i32, [0 x i8] }
%struct.anon.218 = type { i16, i8 }
%struct.ice_fd_hw_prof = type { [2 x ptr], i32, [18 x [2 x i64]], [18 x i16] }

@ice_vc_fdir_irq_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c\00", [45 x i8] zeroinitializer }, align 32
@ice_vc_fdir_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 1323, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VF %d: Unexpected inactive timer!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_vc_fdir_irq_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_vc_fdir_irq_handler._entry_ptr = internal global ptr @ice_vc_fdir_irq_handler._entry, section ".printk_index", align 4
@ice_flush_fdir_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 1605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VF %d: ctrl_vsi irq timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_flush_fdir_ctx\00", [45 x i8] zeroinitializer }, align 32
@ice_flush_fdir_ctx._entry_ptr = internal global ptr @ice_flush_fdir_ctx._entry, section ".printk_index", align 4
@ice_flush_fdir_ctx._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 1618, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VF %d: Unsupported opcode\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_flush_fdir_ctx._entry_ptr.9 = internal global ptr @ice_flush_fdir_ctx._entry.7, section ".printk_index", align 4
@ice_flush_fdir_ctx._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 1630, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ice_flush_fdir_ctx._entry_ptr.11 = internal global ptr @ice_flush_fdir_ctx._entry.10, section ".printk_index", align 4
@ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str, ptr @.str.14, i8 1, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_vc_add_fdir_fltr\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Parameter check for VF %d failed\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_vc_add_fdir_fltr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str, i32 1725, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Init FDIR for VF %d failed, ret:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_vc_add_fdir_fltr._entry_ptr = internal global ptr @ice_vc_add_fdir_fltr._entry, section ".printk_index", align 4
@ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug644 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str, ptr @.str.16, i8 1, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Alloc stat for VF %d failed\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug645 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str, ptr @.str.17, i8 1, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Alloc conf for VF %d failed\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug646 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str, ptr @.str.18, i8 1, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid FDIR filter from VF %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_vc_add_fdir_fltr._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str, i32 1766, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"VF %d: FDIR input set configure failed, ret:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@ice_vc_add_fdir_fltr._entry_ptr.21 = internal global ptr @ice_vc_add_fdir_fltr._entry.19, section ".printk_index", align 4
@ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug647 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str, ptr @.str.22, i8 1, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VF %d: duplicated FDIR rule detected\0A\00", [58 x i8] zeroinitializer }, align 32
@ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug648 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str, ptr @.str.23, i8 1, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VF %d: insert FDIR list failed\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug649 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str, ptr @.str.24, i8 1, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VF %d: set FDIR context failed\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_vc_add_fdir_fltr._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str, i32 1800, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VF %d: writing FDIR rule failed, ret:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@ice_vc_add_fdir_fltr._entry_ptr.27 = internal global ptr @ice_vc_add_fdir_fltr._entry.25, section ".printk_index", align 4
@ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug650 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.28, ptr @.str, ptr @.str.14, i8 1, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_vc_del_fdir_fltr\00", [43 x i8] zeroinitializer }, align 32
@ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug651 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.28, ptr @.str, ptr @.str.16, i8 1, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug652 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.28, ptr @.str, ptr @.str.29, i8 1, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VF %d: FDIR invalid flow_id:0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_vc_del_fdir_fltr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str, i32 1870, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid FDIR ctrl_vsi for VF %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_vc_del_fdir_fltr._entry_ptr = internal global ptr @ice_vc_del_fdir_fltr._entry, section ".printk_index", align 4
@ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug653 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.28, ptr @.str, ptr @.str.24, i8 1, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_vc_del_fdir_fltr._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.28, ptr @.str, i32 1887, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ice_vc_del_fdir_fltr._entry_ptr.32 = internal global ptr @ice_vc_del_fdir_fltr._entry.31, section ".printk_index", align 4
@ice_vf_fdir_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&fdir->ctx_lock\00", [16 x i8] zeroinitializer }, align 32
@ice_vf_verify_rx_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str, i32 1378, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VF %d: Desc Done not set\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_vf_verify_rx_desc\00", [42 x i8] zeroinitializer }, align 32
@ice_vf_verify_rx_desc._entry_ptr = internal global ptr @ice_vf_verify_rx_desc._entry, section ".printk_index", align 4
@ice_vf_verify_rx_desc._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str, i32 1388, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VF %d: Desc show add, but ctx not\00", [62 x i8] zeroinitializer }, align 32
@ice_vf_verify_rx_desc._entry_ptr.38 = internal global ptr @ice_vf_verify_rx_desc._entry.36, section ".printk_index", align 4
@ice_vf_verify_rx_desc._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str, i32 1397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VF %d: Desc show del, but ctx not\00", [62 x i8] zeroinitializer }, align 32
@ice_vf_verify_rx_desc._entry_ptr.41 = internal global ptr @ice_vf_verify_rx_desc._entry.39, section ".printk_index", align 4
@ice_vf_verify_rx_desc._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str, i32 1408, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"VF %d, Failed to add FDIR rule due to no space in the table\00", [36 x i8] zeroinitializer }, align 32
@ice_vf_verify_rx_desc._entry_ptr.44 = internal global ptr @ice_vf_verify_rx_desc._entry.42, section ".printk_index", align 4
@ice_vf_verify_rx_desc._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str, i32 1412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VF %d, Failed to remove FDIR rule, attempt to remove non-existent entry\00", [56 x i8] zeroinitializer }, align 32
@ice_vf_verify_rx_desc._entry_ptr.47 = internal global ptr @ice_vf_verify_rx_desc._entry.45, section ".printk_index", align 4
@ice_vf_verify_rx_desc._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str, i32 1422, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VF %d: Profile matching error\00", [34 x i8] zeroinitializer }, align 32
@ice_vf_verify_rx_desc._entry_ptr.50 = internal global ptr @ice_vf_verify_rx_desc._entry.48, section ".printk_index", align 4
@ice_vf_fdir_dump_info.__UNIQUE_ID_ddebug637 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.51, ptr @.str, ptr @.str.52, i8 1, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_vf_fdir_dump_info\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"VF %d: space allocated: guar:0x%x, be:0x%x, space consumed: guar:0x%x, be:0x%x\00", [49 x i8] zeroinitializer }, align 32
@ice_vc_add_fdir_fltr_post.__UNIQUE_ID_ddebug638 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.53, ptr @.str, ptr @.str.54, i8 1, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_vc_add_fdir_fltr_post\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VF %d: Alloc resp buf fail\00", [37 x i8] zeroinitializer }, align 32
@ice_vc_add_fdir_fltr_post.__UNIQUE_ID_ddebug639 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.53, ptr @.str, ptr @.str.55, i8 1, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VF %d: flow_id:0x%X, FDIR %s success!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"del\00", [28 x i8] zeroinitializer }, align 32
@ice_vc_del_fdir_fltr_post.__UNIQUE_ID_ddebug640 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.58, ptr @.str, ptr @.str.54, i8 1, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_vc_del_fdir_fltr_post\00", [38 x i8] zeroinitializer }, align 32
@ice_vc_del_fdir_fltr_post.__UNIQUE_ID_ddebug641 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.58, ptr @.str, ptr @.str.55, i8 1, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_vf_start_ctrl_vsi.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.59, ptr @.str, ptr @.str.60, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_vf_start_ctrl_vsi\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not setup control VSI for VF %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_vf_start_ctrl_vsi.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.59, ptr @.str, ptr @.str.61, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not open control VSI for VF %d\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ice_vc_fdir_parse_pattern.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.62, ptr @.str, ptr @.str.63, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_vc_fdir_parse_pattern\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid protocol count:0x%x for VF %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_vc_fdir_parse_pattern.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.62, ptr @.str, ptr @.str.64, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid header type 0x:%x for VF %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.65, ptr @.str, ptr @.str.66, i8 0, i8 -15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_vc_fdir_parse_action\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid action numbers:0x%x for VF %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.65, ptr @.str, ptr @.str.67, i8 0, i8 -7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid action type:0x%x for VF %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.65, ptr @.str, ptr @.str.68, i8 0, i8 -5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid destination action for VF %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.65, ptr @.str, ptr @.str.69, i8 0, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Too many mark actions for VF %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.70, ptr @.str, ptr @.str.71, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ice_vc_fdir_config_input_set\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Alloc flow prof for VF %d failed\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.70, ptr @.str, ptr @.str.72, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set flow field for VF %d failed\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.70, ptr @.str, ptr @.str.73, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set flow hdr for VF %d failed\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.70, ptr @.str, ptr @.str.74, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Write flow profile for VF %d failed\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_vc_fdir_set_flow_fld.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.75, ptr @.str, ptr @.str.76, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_vc_fdir_set_flow_fld\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Empty input set for VF %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fdir_inset_map = internal constant { [24 x %struct.virtchnl_fdir_inset_map], [128 x i8] } { [24 x %struct.virtchnl_fdir_inset_map] [%struct.virtchnl_fdir_inset_map { i32 34, i32 4, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 128, i32 11, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 129, i32 12, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 130, i32 5, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 131, i32 7, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 132, i32 8, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 160, i32 13, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 161, i32 14, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 162, i32 6, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 163, i32 9, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 164, i32 10, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 224, i32 17, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 225, i32 18, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 192, i32 15, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 193, i32 16, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 256, i32 19, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 257, i32 20, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 288, i32 31, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 321, i32 33, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 480, i32 39, i64 0, i64 1 }, %struct.virtchnl_fdir_inset_map { i32 480, i32 41, i64 1, i64 1 }, %struct.virtchnl_fdir_inset_map { i32 512, i32 40, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 448, i32 38, i64 0, i64 0 }, %struct.virtchnl_fdir_inset_map { i32 544, i32 18, i64 0, i64 0 }], [128 x i8] zeroinitializer }, align 32
@ice_vc_fdir_set_flow_hdr.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.77, ptr @.str, ptr @.str.78, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_vc_fdir_set_flow_hdr\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid tunnel type 0x%x for VF %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_vc_fdir_set_flow_hdr.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.77, ptr @.str, ptr @.str.79, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid flow type 0x%x for VF %d failed\0A\00", [55 x i8] zeroinitializer }, align 32
@ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.80, ptr @.str, ptr @.str.81, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ice_vc_fdir_write_flow_prof\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Duplicated profile for VF %d!\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.80, ptr @.str, ptr @.str.82, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Input set conflicts for VF %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.80, ptr @.str, ptr @.str.83, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not add VSI flow 0x%x for VF %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.80, ptr @.str, ptr @.str.84, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Could not add flow 0x%x VSI entry for VF %d\0A\00", [51 x i8] zeroinitializer }, align 32
@ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.80, ptr @.str, ptr @.str.85, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Could not add flow 0x%x Ctrl VSI entry for VF %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_vc_fdir_rem_prof.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.86, ptr @.str, ptr @.str.87, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_vc_fdir_rem_prof\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NULL vf %d vsi pointer\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_vc_fdir_set_irq_ctx.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.88, ptr @.str, ptr @.str.89, i8 1, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_vc_fdir_set_irq_ctx\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VF %d: Last request is still in progress\0A\00", [54 x i8] zeroinitializer }, align 32
@ice_vc_fdir_set_irq_ctx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&ctx->rx_tmr)\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ice_vf_fdir_timer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ice_vc_fdir_write_fltr.__UNIQUE_ID_ddebug634 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.91, ptr @.str, ptr @.str.92, i8 1, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_vc_fdir_write_fltr\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid vsi for VF %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ice_vc_fdir_write_fltr.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.91, ptr @.str, ptr @.str.93, i8 1, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid ctrl_vsi for VF %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_vc_fdir_write_fltr.__UNIQUE_ID_ddebug636 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.91, ptr @.str, ptr @.str.94, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Gen training pkt for VF %d ptype %d failed\0A\00", [52 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 47, i64 48]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 47, i64 48]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.100 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.106 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.107 = internal global [27 x i64] [i64 25, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1308, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1323, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1604, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1618, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1630, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1717, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1724, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1732, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1739, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1748, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1765, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1774, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1783, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1791, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1799, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1844, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1861, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1870, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1886, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1915, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1378, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1387, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1396, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1407, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1411, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1422, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1350, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1467, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1483, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1531, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 142, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 149, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 740, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 933, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 964, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 998, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1005, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1011, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 682, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 692, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 698, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 706, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 311, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant [15 x i8] c"fdir_inset_map\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 57, i32 45 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 403, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 463, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 586, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 593, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 608, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 617, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 626, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 498, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1659, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1669, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1209, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1218, i32 3 }
@___asan_gen_.386 = private constant [54 x i8] c"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1229, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 378, i32 2 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @ice_flush_fdir_ctx._entry, ptr @ice_flush_fdir_ctx._entry.10, ptr @ice_flush_fdir_ctx._entry.7, ptr @ice_flush_fdir_ctx._entry_ptr, ptr @ice_flush_fdir_ctx._entry_ptr.11, ptr @ice_flush_fdir_ctx._entry_ptr.9, ptr @ice_vc_add_fdir_fltr._entry, ptr @ice_vc_add_fdir_fltr._entry.19, ptr @ice_vc_add_fdir_fltr._entry.25, ptr @ice_vc_add_fdir_fltr._entry_ptr, ptr @ice_vc_add_fdir_fltr._entry_ptr.21, ptr @ice_vc_add_fdir_fltr._entry_ptr.27, ptr @ice_vc_del_fdir_fltr._entry, ptr @ice_vc_del_fdir_fltr._entry.31, ptr @ice_vc_del_fdir_fltr._entry_ptr, ptr @ice_vc_del_fdir_fltr._entry_ptr.32, ptr @ice_vc_fdir_irq_handler._entry, ptr @ice_vc_fdir_irq_handler._entry_ptr, ptr @ice_vf_verify_rx_desc._entry, ptr @ice_vf_verify_rx_desc._entry.36, ptr @ice_vf_verify_rx_desc._entry.39, ptr @ice_vf_verify_rx_desc._entry.42, ptr @ice_vf_verify_rx_desc._entry.45, ptr @ice_vf_verify_rx_desc._entry.48, ptr @ice_vf_verify_rx_desc._entry_ptr, ptr @ice_vf_verify_rx_desc._entry_ptr.38, ptr @ice_vf_verify_rx_desc._entry_ptr.41, ptr @ice_vf_verify_rx_desc._entry_ptr.44, ptr @ice_vf_verify_rx_desc._entry_ptr.47, ptr @ice_vf_verify_rx_desc._entry_ptr.50, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @ice_vf_fdir_init.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @fdir_inset_map, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @ice_vc_fdir_set_irq_ctx.__key, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @xa_init_flags.__key, ptr @.str.95], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vc_fdir_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_flush_fdir_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_flush_fdir_ctx._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_flush_fdir_ctx._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vc_add_fdir_fltr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vc_add_fdir_fltr._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vc_add_fdir_fltr._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vc_del_fdir_fltr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vc_del_fdir_fltr._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vf_fdir_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vf_verify_rx_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vf_verify_rx_desc._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vf_verify_rx_desc._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vf_verify_rx_desc._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vf_verify_rx_desc._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vf_verify_rx_desc._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdir_inset_map to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_vc_fdir_set_irq_ctx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_vc_fdir_irq_handler(ptr nocapture noundef readonly %ctrl_vsi, ptr nocapture noundef readonly %rx_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %ctrl_vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %vf1 = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %vf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf1, align 4
  %vf_id = getelementptr inbounds %struct.ice_vsi, ptr %ctrl_vsi, i32 0, i32 20
  %4 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vf_id, align 4
  %idxprom = sext i16 %5 to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %ctx_lock = getelementptr %struct.ice_vf, ptr %3, i32 %idxprom, i32 5, i32 5
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #8
  %flags10 = getelementptr %struct.ice_vf, ptr %3, i32 %idxprom, i32 5, i32 6, i32 4
  %8 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags10, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end51

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call7) #8
  %.b95 = load i1, ptr @ice_vc_fdir_irq_handler.__already_done, align 1
  br i1 %.b95, label %if.then.cleanup_crit_edge, label %if.then18, !prof !224

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ice_vc_fdir_irq_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1308, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end51:                                         ; preds = %entry
  %ctx_irq4 = getelementptr %struct.ice_vf, ptr %3, i32 %idxprom, i32 5, i32 6
  %and53 = and i32 %9, -2
  %10 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and53, ptr %flags10, align 8
  %flags54 = getelementptr %struct.ice_vf, ptr %3, i32 %idxprom, i32 5, i32 7, i32 4
  %11 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags54, align 8
  %or = or i32 %12, 1
  store i32 %or, ptr %flags54, align 8
  %conf = getelementptr %struct.ice_vf, ptr %3, i32 %idxprom, i32 5, i32 6, i32 5
  %13 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conf, align 4
  %conf55 = getelementptr %struct.ice_vf, ptr %3, i32 %idxprom, i32 5, i32 7, i32 5
  %15 = ptrtoint ptr %conf55 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %conf55, align 4
  %stat = getelementptr %struct.ice_vf, ptr %3, i32 %idxprom, i32 5, i32 7, i32 2
  %16 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %stat, align 4
  %v_opcode = getelementptr %struct.ice_vf, ptr %3, i32 %idxprom, i32 5, i32 6, i32 1
  %17 = ptrtoint ptr %v_opcode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %v_opcode, align 8
  %v_opcode56 = getelementptr %struct.ice_vf, ptr %3, i32 %idxprom, i32 5, i32 7, i32 1
  %19 = ptrtoint ptr %v_opcode56 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %v_opcode56, align 8
  %rx_desc57 = getelementptr %struct.ice_vf, ptr %3, i32 %idxprom, i32 5, i32 7, i32 3
  %20 = call ptr @memcpy(ptr %rx_desc57, ptr %rx_desc, i32 32)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call7) #8
  %call59 = tail call i32 @del_timer(ptr noundef %ctx_irq4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.end64, label %if.end51.if.end67_crit_edge

if.end51.if.end67_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

do.end64:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id65 = getelementptr %struct.ice_vf, ptr %3, i32 %idxprom, i32 2
  %21 = ptrtoint ptr %vf_id65 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vf_id65, align 8
  %conv66 = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.1, i32 noundef %conv66) #11
  br label %if.end67

if.end67:                                         ; preds = %do.end64, %if.end51.if.end67_crit_edge
  %state = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 30, ptr noundef %state) #8
  tail call void @ice_service_task_schedule(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then18, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_service_task_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_flush_fdir_ctx(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 20
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 30, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup149_crit_edge, label %for.cond.preheader

entry.cleanup149_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

for.cond.preheader:                               ; preds = %entry
  %num_alloc_vfs = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 13
  %0 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_alloc_vfs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp204.not = icmp eq i16 %1, 0
  br i1 %cmp204.not, label %for.cond.preheader.cleanup149_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup149_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vf3 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0205 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %vf3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf3, align 4
  %arrayidx = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205
  %vf_states = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 20
  %6 = ptrtoint ptr %vf_states to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %vf_states, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %for.body.cleanup_crit_edge, label %if.end8

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %ctrl_vsi_idx = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 4
  %9 = ptrtoint ptr %ctrl_vsi_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ctrl_vsi_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp10 = icmp eq i16 %10, -1
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %ctx_done = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 5, i32 7
  %ctx_lock = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 5, i32 5
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #8
  %flags22 = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 5, i32 7, i32 4
  %11 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags22, align 8
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call19) #8
  br i1 %tobool23.not, label %if.end13.cleanup_crit_edge, label %if.end27

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end13
  %stat = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 5, i32 7, i32 2
  %13 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp30 = icmp eq i32 %14, 0
  br i1 %cmp30, label %do.end43, label %if.end27.if.end49_crit_edge, !prof !225

if.end27.if.end49_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.end43:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1601, i32 noundef 9, ptr noundef null) #8
  %15 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %stat, align 4
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end27.if.end49_crit_edge
  %16 = phi i32 [ %.pr, %do.end43 ], [ %14, %if.end27.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp58 = icmp eq i32 %16, 2
  br i1 %cmp58, label %if.then60, label %if.end65

if.then60:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 2
  %17 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vf_id, align 8
  %conv64 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.5, i32 noundef %conv64) #11
  br label %err_exit

if.end65:                                         ; preds = %if.end49
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %status_error0.i = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 5, i32 7, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %status_error0.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %status_error0.i, align 8
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #8
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp.not.not.i = icmp eq i16 %26, 0
  br i1 %cmp.not.not.i, label %if.end65.ice_vf_verify_rx_desc.exit_crit_edge, label %if.end.i

if.end65.ice_vf_verify_rx_desc.exit_crit_edge:    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vf_verify_rx_desc.exit

if.end.i:                                         ; preds = %if.end65
  %27 = lshr i16 %25, 1
  %trunc.i = trunc i16 %27 to i2
  %28 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i, label %if.end.i.if.end34.i_crit_edge [
    i2 0, label %land.lhs.true.i
    i2 1, label %land.lhs.true24.i
  ]

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %v_opcode.i = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 5, i32 7, i32 1
  %29 = ptrtoint ptr %v_opcode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %v_opcode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %30)
  %cmp12.not.i = icmp eq i32 %30, 47
  br i1 %cmp12.not.i, label %if.end34.thread.i, label %land.lhs.true.i.ice_vf_verify_rx_desc.exit_crit_edge

land.lhs.true.i.ice_vf_verify_rx_desc.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vf_verify_rx_desc.exit

land.lhs.true24.i:                                ; preds = %if.end.i
  %v_opcode25.i = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 5, i32 7, i32 1
  %31 = ptrtoint ptr %v_opcode25.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %v_opcode25.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %32)
  %cmp26.not.i = icmp eq i32 %32, 48
  br i1 %cmp26.not.i, label %land.lhs.true24.i.if.end34.i_crit_edge, label %land.lhs.true24.i.ice_vf_verify_rx_desc.exit_crit_edge

land.lhs.true24.i.ice_vf_verify_rx_desc.exit_crit_edge: ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vf_verify_rx_desc.exit

land.lhs.true24.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.end34.i:                                       ; preds = %land.lhs.true24.i.if.end34.i_crit_edge, %if.end.i.if.end34.i_crit_edge
  %33 = and i16 %25, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp40.not.i = icmp eq i16 %33, 0
  br i1 %cmp40.not.i, label %if.end34.i.if.end58.i_crit_edge, label %if.end34.i.ice_vf_verify_rx_desc.exit_crit_edge

if.end34.i.ice_vf_verify_rx_desc.exit_crit_edge:  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vf_verify_rx_desc.exit

if.end34.i.if.end58.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.end34.thread.i:                                ; preds = %land.lhs.true.i
  %34 = and i16 %25, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp40.not104.i = icmp eq i16 %34, 0
  br i1 %cmp40.not104.i, label %if.end34.thread.i.if.end58.i_crit_edge, label %if.end34.thread.i.ice_vf_verify_rx_desc.exit_crit_edge

if.end34.thread.i.ice_vf_verify_rx_desc.exit_crit_edge: ; preds = %if.end34.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vf_verify_rx_desc.exit

if.end34.thread.i.if.end58.i_crit_edge:           ; preds = %if.end34.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end34.thread.i.if.end58.i_crit_edge, %if.end34.i.if.end58.i_crit_edge
  %35 = and i16 %25, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp64.not.i = icmp eq i16 %35, 0
  br i1 %cmp64.not.i, label %if.end69, label %if.end58.i.ice_vf_verify_rx_desc.exit_crit_edge

if.end58.i.ice_vf_verify_rx_desc.exit_crit_edge:  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vf_verify_rx_desc.exit

ice_vf_verify_rx_desc.exit:                       ; preds = %if.end58.i.ice_vf_verify_rx_desc.exit_crit_edge, %if.end34.thread.i.ice_vf_verify_rx_desc.exit_crit_edge, %if.end34.i.ice_vf_verify_rx_desc.exit_crit_edge, %land.lhs.true24.i.ice_vf_verify_rx_desc.exit_crit_edge, %land.lhs.true.i.ice_vf_verify_rx_desc.exit_crit_edge, %if.end65.ice_vf_verify_rx_desc.exit_crit_edge
  %.str.34.sink = phi ptr [ @.str.34, %if.end65.ice_vf_verify_rx_desc.exit_crit_edge ], [ @.str.37, %land.lhs.true.i.ice_vf_verify_rx_desc.exit_crit_edge ], [ @.str.40, %land.lhs.true24.i.ice_vf_verify_rx_desc.exit_crit_edge ], [ @.str.43, %if.end34.thread.i.ice_vf_verify_rx_desc.exit_crit_edge ], [ @.str.46, %if.end34.i.ice_vf_verify_rx_desc.exit_crit_edge ], [ @.str.49, %if.end58.i.ice_vf_verify_rx_desc.exit_crit_edge ]
  %status.0 = phi i32 [ 1, %if.end65.ice_vf_verify_rx_desc.exit_crit_edge ], [ 5, %land.lhs.true.i.ice_vf_verify_rx_desc.exit_crit_edge ], [ 5, %land.lhs.true24.i.ice_vf_verify_rx_desc.exit_crit_edge ], [ 1, %if.end34.thread.i.ice_vf_verify_rx_desc.exit_crit_edge ], [ 4, %if.end34.i.ice_vf_verify_rx_desc.exit_crit_edge ], [ 1, %if.end58.i.ice_vf_verify_rx_desc.exit_crit_edge ]
  %vf_id.i = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 2
  %36 = ptrtoint ptr %vf_id.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vf_id.i, align 8
  %conv4.i = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull %.str.34.sink, i32 noundef %conv4.i) #11
  tail call fastcc void @ice_vf_fdir_dump_info(ptr noundef %arrayidx) #8
  br label %err_exit

if.end69:                                         ; preds = %if.end58.i
  %v_opcode = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 5, i32 7, i32 1
  %38 = ptrtoint ptr %v_opcode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %v_opcode, align 8
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %39, label %do.end82 [
    i32 47, label %if.then72
    i32 48, label %if.then77
  ]

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ice_vc_add_fdir_fltr_post(ptr noundef %arrayidx, ptr noundef %ctx_done, i32 noundef 0, i1 noundef zeroext true)
  br label %cleanup.sink.split

if.then77:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ice_vc_del_fdir_fltr_post(ptr noundef %arrayidx, ptr noundef %ctx_done, i32 noundef 0, i1 noundef zeroext true)
  br label %cleanup.sink.split

do.end82:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id83 = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 2
  %41 = ptrtoint ptr %vf_id83 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vf_id83, align 8
  %conv84 = zext i16 %42 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.8, i32 noundef %conv84) #11
  br label %cleanup.sink.split

err_exit:                                         ; preds = %ice_vf_verify_rx_desc.exit, %if.then60
  %status.2 = phi i32 [ 6, %if.then60 ], [ %status.0, %ice_vf_verify_rx_desc.exit ]
  %v_opcode106 = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 5, i32 7, i32 1
  %43 = ptrtoint ptr %v_opcode106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %v_opcode106, align 8
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %44, label %do.end120 [
    i32 47, label %if.then109
    i32 48, label %if.then115
  ]

if.then109:                                       ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ice_vc_add_fdir_fltr_post(ptr noundef %arrayidx, ptr noundef %ctx_done, i32 noundef %status.2, i1 noundef zeroext false)
  br label %cleanup.sink.split

if.then115:                                       ; preds = %err_exit
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i194, label %if.end9.i

if.then.i194:                                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_del_fdir_fltr_post.__UNIQUE_ID_ddebug640, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_flush_fdir_ctx, %err_exit.thread.i)) #8
          to label %ice_vc_del_fdir_fltr_post.exit [label %err_exit.thread.i], !srcloc !226

err_exit.thread.i:                                ; preds = %if.then.i194
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id.i195 = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 2
  %51 = ptrtoint ptr %vf_id.i195 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vf_id.i195, align 8
  %conv.i = zext i16 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_del_fdir_fltr_post.__UNIQUE_ID_ddebug640, ptr noundef %dev2.i, ptr noundef nonnull @.str.54, i32 noundef %conv.i) #8
  br label %ice_vc_del_fdir_fltr_post.exit

if.end9.i:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  %status13.i = getelementptr inbounds %struct.virtchnl_fdir_del, ptr %call7.i.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %status13.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %status.2, ptr %status13.i, align 8
  br label %ice_vc_del_fdir_fltr_post.exit

ice_vc_del_fdir_fltr_post.exit:                   ; preds = %if.end9.i, %err_exit.thread.i, %if.then.i194
  %len.0818.i = phi i16 [ 12, %if.end9.i ], [ 0, %err_exit.thread.i ], [ 0, %if.then.i194 ]
  %v_ret.0917.i = phi i32 [ 0, %if.end9.i ], [ -18, %err_exit.thread.i ], [ -18, %if.then.i194 ]
  %54 = ptrtoint ptr %v_opcode106 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %v_opcode106, align 8
  %call47.i = tail call i32 @ice_vc_send_msg_to_vf(ptr noundef %arrayidx, i32 noundef %55, i32 noundef %v_ret.0917.i, ptr noundef %call7.i.i.i, i16 noundef zeroext %len.0818.i) #8
  tail call void @kfree(ptr noundef %call7.i.i.i) #8
  br label %cleanup.sink.split

do.end120:                                        ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id121 = getelementptr %struct.ice_vf, ptr %5, i32 %i.0205, i32 2
  %56 = ptrtoint ptr %vf_id121 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vf_id121, align 8
  %conv122 = zext i16 %57 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.8, i32 noundef %conv122) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end120, %ice_vc_del_fdir_fltr_post.exit, %if.then109, %do.end82, %if.then77, %if.then72
  %call135 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #8
  %58 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags22, align 8
  %and141 = and i32 %59, -2
  store i32 %and141, ptr %flags22, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call135) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0205, 1
  %60 = ptrtoint ptr %num_alloc_vfs to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %num_alloc_vfs, align 8
  %conv = zext i16 %61 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup149_crit_edge

cleanup.cleanup149_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup149:                                       ; preds = %cleanup.cleanup149_crit_edge, %for.cond.preheader.cleanup149_crit_edge, %entry.cleanup149_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_vc_add_fdir_fltr_post(ptr noundef %vf, ptr nocapture noundef readonly %ctx, i32 noundef %status, i1 noundef zeroext %success) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conf1 = getelementptr inbounds %struct.ice_vf_fdir_ctx, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %conf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf1, align 4
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2616) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_add_fdir_fltr_post.__UNIQUE_ID_ddebug638, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_add_fdir_fltr_post, %err_exit.thread)) #8
          to label %if.end42 [label %err_exit.thread], !srcloc !226

err_exit.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %7 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_add_fdir_fltr_post.__UNIQUE_ID_ddebug638, ptr noundef %dev2, ptr noundef nonnull @.str.54, i32 noundef %conv) #8
  br label %if.end42

if.end9:                                          ; preds = %entry
  %status13 = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %status13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %status, ptr %status13, align 4
  br i1 %success, label %if.end12, label %if.end9.if.end42_crit_edge

if.end9.if.end42_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %flow_id = getelementptr inbounds %struct.virtchnl_fdir_fltr_conf, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flow_id, align 8
  %flow_id14 = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %flow_id14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %flow_id14, align 4
  %fdir = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5
  %flow_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flow_type, align 8
  %arrayidx = getelementptr [28 x [2 x i16]], ptr %fdir, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 2
  %inc = add i16 %16, 1
  store i16 %inc, ptr %arrayidx, align 2
  %v_opcode = getelementptr inbounds %struct.ice_vf_fdir_ctx, ptr %ctx, i32 0, i32 1
  %17 = ptrtoint ptr %v_opcode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %v_opcode, align 8
  %call17 = tail call i32 @ice_vc_send_msg_to_vf(ptr noundef %vf, i32 noundef %18, i32 noundef 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2616) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_add_fdir_fltr_post.__UNIQUE_ID_ddebug639, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_add_fdir_fltr_post, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !226

if.then30:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id31 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %19 = ptrtoint ptr %vf_id31 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vf_id31, align 8
  %conv32 = zext i16 %20 to i32
  %21 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flow_id, align 8
  %23 = ptrtoint ptr %v_opcode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %v_opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %24)
  %cmp = icmp eq i32 %24, 47
  %cond = select i1 %cmp, ptr @.str.56, ptr @.str.57
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_add_fdir_fltr_post.__UNIQUE_ID_ddebug639, ptr noundef %dev2, ptr noundef nonnull @.str.55, i32 noundef %conv32, i32 noundef %22, ptr noundef nonnull %cond) #8
  br label %cleanup

if.end42:                                         ; preds = %if.end9.if.end42_crit_edge, %err_exit.thread, %if.then
  %v_ret.09 = phi i32 [ -18, %err_exit.thread ], [ -18, %if.then ], [ 0, %if.end9.if.end42_crit_edge ]
  %len.08 = phi i16 [ 0, %err_exit.thread ], [ 0, %if.then ], [ 2616, %if.end9.if.end42_crit_edge ]
  %flow_id43 = getelementptr inbounds %struct.virtchnl_fdir_fltr_conf, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %flow_id43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flow_id43, align 8
  %fdir_rule_idr.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 3
  %call.i = tail call ptr @idr_remove(ptr noundef %fdir_rule_idr.i, i32 noundef %26) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end42.ice_vc_fdir_remove_entry.exit_crit_edge

if.end42.ice_vc_fdir_remove_entry.exit_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vc_fdir_remove_entry.exit

if.end.i.i.i:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %ice_vc_fdir_remove_entry.exit

ice_vc_fdir_remove_entry.exit:                    ; preds = %if.end.i.i.i, %if.end42.ice_vc_fdir_remove_entry.exit_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @devm_kfree(ptr noundef %dev2, ptr noundef %1) #8
  %v_opcode44 = getelementptr inbounds %struct.ice_vf_fdir_ctx, ptr %ctx, i32 0, i32 1
  %35 = ptrtoint ptr %v_opcode44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %v_opcode44, align 8
  %call46 = tail call i32 @ice_vc_send_msg_to_vf(ptr noundef %vf, i32 noundef %36, i32 noundef %v_ret.09, ptr noundef %call7.i.i, i16 noundef zeroext %len.08) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ice_vc_fdir_remove_entry.exit, %if.then30, %if.end12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_vc_del_fdir_fltr_post(ptr noundef %vf, ptr nocapture noundef readonly %ctx, i32 noundef %status, i1 noundef zeroext %success) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conf1 = getelementptr inbounds %struct.ice_vf_fdir_ctx, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %conf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf1, align 4
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_del_fdir_fltr_post.__UNIQUE_ID_ddebug640, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_del_fdir_fltr_post, %err_exit.thread)) #8
          to label %if.end41 [label %err_exit.thread], !srcloc !226

err_exit.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %7 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_del_fdir_fltr_post.__UNIQUE_ID_ddebug640, ptr noundef %dev2, ptr noundef nonnull @.str.54, i32 noundef %conv) #8
  br label %if.end41

if.end9:                                          ; preds = %entry
  %status13 = getelementptr inbounds %struct.virtchnl_fdir_del, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %status13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %status, ptr %status13, align 8
  br i1 %success, label %if.end12, label %if.end9.if.end44_crit_edge

if.end9.if.end44_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end12:                                         ; preds = %if.end9
  %flow_id = getelementptr inbounds %struct.virtchnl_fdir_fltr_conf, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flow_id, align 8
  %fdir_rule_idr.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 3
  %call.i = tail call ptr @idr_remove(ptr noundef %fdir_rule_idr.i, i32 noundef %11) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end12.ice_vc_fdir_remove_entry.exit_crit_edge

if.end12.ice_vc_fdir_remove_entry.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vc_fdir_remove_entry.exit

if.end.i.i.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %ice_vc_fdir_remove_entry.exit

ice_vc_fdir_remove_entry.exit:                    ; preds = %if.end.i.i.i, %if.end12.ice_vc_fdir_remove_entry.exit_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %fdir = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5
  %flow_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flow_type, align 8
  %arrayidx = getelementptr [28 x [2 x i16]], ptr %fdir, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  %dec = add i16 %23, -1
  store i16 %dec, ptr %arrayidx, align 2
  %v_opcode = getelementptr inbounds %struct.ice_vf_fdir_ctx, ptr %ctx, i32 0, i32 1
  %24 = ptrtoint ptr %v_opcode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %v_opcode, align 8
  %call16 = tail call i32 @ice_vc_send_msg_to_vf(ptr noundef %vf, i32 noundef %25, i32 noundef 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 12) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_del_fdir_fltr_post.__UNIQUE_ID_ddebug641, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_del_fdir_fltr_post, %if.then29)) #8
          to label %do.end37 [label %if.then29], !srcloc !226

if.then29:                                        ; preds = %ice_vc_fdir_remove_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id30 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %26 = ptrtoint ptr %vf_id30 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vf_id30, align 8
  %conv31 = zext i16 %27 to i32
  %28 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flow_id, align 8
  %30 = ptrtoint ptr %v_opcode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %v_opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %31)
  %cmp = icmp eq i32 %31, 47
  %cond = select i1 %cmp, ptr @.str.56, ptr @.str.57
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_del_fdir_fltr_post.__UNIQUE_ID_ddebug641, ptr noundef %dev2, ptr noundef nonnull @.str.55, i32 noundef %conv31, i32 noundef %29, ptr noundef nonnull %cond) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then29, %ice_vc_fdir_remove_entry.exit
  tail call void @devm_kfree(ptr noundef %dev2, ptr noundef %1) #8
  br label %cleanup

if.end41:                                         ; preds = %err_exit.thread, %if.then
  br i1 %success, label %if.then43, label %if.end41.if.end44_crit_edge

if.end41.if.end44_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devm_kfree(ptr noundef %dev2, ptr noundef %1) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end41.if.end44_crit_edge, %if.end9.if.end44_crit_edge
  %len.0818 = phi i16 [ 0, %if.then43 ], [ 0, %if.end41.if.end44_crit_edge ], [ 12, %if.end9.if.end44_crit_edge ]
  %v_ret.0917 = phi i32 [ -18, %if.then43 ], [ -18, %if.end41.if.end44_crit_edge ], [ 0, %if.end9.if.end44_crit_edge ]
  %v_opcode45 = getelementptr inbounds %struct.ice_vf_fdir_ctx, ptr %ctx, i32 0, i32 1
  %32 = ptrtoint ptr %v_opcode45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %v_opcode45, align 8
  %call47 = tail call i32 @ice_vc_send_msg_to_vf(ptr noundef %vf, i32 noundef %33, i32 noundef %v_ret.0917, ptr noundef %call7.i.i, i16 noundef zeroext %len.0818) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_vc_add_fdir_fltr(ptr noundef %vf, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msg, align 4
  %flags.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %entry
  %vf_states.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 20
  %9 = ptrtoint ptr %vf_states.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %vf_states.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp eq i32 %11, 0
  br i1 %tobool4.not.i, label %if.end.i.if.then_crit_edge, label %if.end6.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end6.i:                                        ; preds = %if.end.i
  %driver_caps.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 9
  %12 = ptrtoint ptr %driver_caps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_caps.i, align 8
  %and.i = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.then_crit_edge, label %if.end9.i

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end9.i:                                        ; preds = %if.end6.i
  %lan_vsi_num.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 17
  %14 = ptrtoint ptr %lan_vsi_num.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %lan_vsi_num.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %5)
  %cmp.not.i = icmp eq i16 %15, %5
  br i1 %cmp.not.i, label %if.end13.i, label %if.end9.i.if.then_crit_edge

if.end9.i.if.then_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end13.i:                                       ; preds = %if.end9.i
  %call14.i = tail call zeroext i1 @ice_vc_isvalid_vsi_id(ptr noundef %vf, i16 noundef zeroext %5) #8
  br i1 %call14.i, label %if.end16.i, label %if.end13.i.if.then_crit_edge

if.end13.i.if.then_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end16.i:                                       ; preds = %if.end13.i
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vsi.i, align 8
  %lan_vsi_idx.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 3
  %18 = ptrtoint ptr %lan_vsi_idx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %lan_vsi_idx.i, align 2
  %idxprom.i = zext i16 %19 to i32
  %arrayidx.i = getelementptr ptr, ptr %17, i32 %idxprom.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool17.not.i = icmp eq ptr %21, null
  br i1 %tobool17.not.i, label %if.end16.i.if.then_crit_edge, label %if.end8

if.end16.i.if.then_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %if.end16.i.if.then_crit_edge, %if.end13.i.if.then_crit_edge, %if.end9.i.if.then_crit_edge, %if.end6.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_add_fdir_fltr, %if.then7)) #8
          to label %err_exit [label %if.then7], !srcloc !226

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %22 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug643, ptr noundef %dev2, ptr noundef nonnull @.str.14, i32 noundef %conv) #8
  br label %err_exit

if.end8:                                          ; preds = %if.end16.i
  %call9 = tail call fastcc i32 @ice_vf_start_ctrl_vsi(ptr noundef %vf)
  %24 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call9, label %if.then12 [
    i32 0, label %if.end8.if.end18_crit_edge
    i32 -17, label %if.end8.if.end18_crit_edge302
  ]

if.end8.if.end18_crit_edge302:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id16 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %25 = ptrtoint ptr %vf_id16 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vf_id16, align 8
  %conv17 = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15, i32 noundef %conv17, i32 noundef %call9) #11
  br label %err_exit

if.end18:                                         ; preds = %if.end8.if.end18_crit_edge, %if.end8.if.end18_crit_edge302
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 2616) #12
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.then21, label %if.end40

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_add_fdir_fltr, %if.then34)) #8
          to label %err_exit [label %if.then34], !srcloc !226

if.then34:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id35 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %28 = ptrtoint ptr %vf_id35 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vf_id35, align 8
  %conv36 = zext i16 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug644, ptr noundef %dev2, ptr noundef nonnull @.str.16, i32 noundef %conv36) #8
  br label %err_exit

if.end40:                                         ; preds = %if.end18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 272, i32 noundef 3520) #8
  %tobool42.not = icmp eq ptr %call.i, null
  br i1 %tobool42.not, label %if.then43, label %if.end62

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug645, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_add_fdir_fltr, %if.then56)) #8
          to label %err_exit [label %if.then56], !srcloc !226

if.then56:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id57 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %30 = ptrtoint ptr %vf_id57 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vf_id57, align 8
  %conv58 = zext i16 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug645, ptr noundef %dev2, ptr noundef nonnull @.str.17, i32 noundef %conv58) #8
  br label %err_exit

if.end62:                                         ; preds = %if.end40
  %rule_cfg.i = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %msg, i32 0, i32 3
  %call.i287 = tail call zeroext i1 @ice_vc_validate_pattern(ptr noundef %vf, ptr noundef %rule_cfg.i) #8
  br i1 %call.i287, label %if.end.i289, label %if.end62.if.then65_crit_edge

if.end62.if.then65_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.end.i289:                                      ; preds = %if.end62
  %call1.i = tail call fastcc i32 @ice_vc_fdir_parse_pattern(ptr noundef %vf, ptr noundef %msg, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i288 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i288, label %ice_vc_validate_fdir_fltr.exit, label %if.end.i289.if.then65_crit_edge

if.end.i289.if.then65_crit_edge:                  ; preds = %if.end.i289
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

ice_vc_validate_fdir_fltr.exit:                   ; preds = %if.end.i289
  %call4.i = tail call fastcc i32 @ice_vc_fdir_parse_action(ptr noundef %vf, ptr noundef %msg, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool64.not = icmp eq i32 %call4.i, 0
  br i1 %tobool64.not, label %if.end84, label %ice_vc_validate_fdir_fltr.exit.if.then65_crit_edge

ice_vc_validate_fdir_fltr.exit.if.then65_crit_edge: ; preds = %ice_vc_validate_fdir_fltr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.then65:                                        ; preds = %ice_vc_validate_fdir_fltr.exit.if.then65_crit_edge, %if.end.i289.if.then65_crit_edge, %if.end62.if.then65_crit_edge
  %status = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %call7.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug646, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_add_fdir_fltr, %if.then78)) #8
          to label %err_free_conf [label %if.then78], !srcloc !226

if.then78:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id79 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %33 = ptrtoint ptr %vf_id79 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vf_id79, align 8
  %conv80 = zext i16 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug646, ptr noundef %dev2, ptr noundef nonnull @.str.18, i32 noundef %conv80) #8
  br label %err_free_conf

if.end84:                                         ; preds = %ice_vc_validate_fdir_fltr.exit
  %validate_only = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %msg, i32 0, i32 1
  %35 = ptrtoint ptr %validate_only to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %validate_only, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool85.not = icmp eq i16 %36, 0
  br i1 %tobool85.not, label %if.end90, label %if.then86

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %status87 = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %call7.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %status87 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %status87, align 4
  tail call void @devm_kfree(ptr noundef %dev2, ptr noundef nonnull %call.i) #8
  %call89 = tail call i32 @ice_vc_send_msg_to_vf(ptr noundef %vf, i32 noundef 47, i32 noundef 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2616) #8
  br label %exit

if.end90:                                         ; preds = %if.end84
  %call91 = tail call fastcc i32 @ice_vc_fdir_config_input_set(ptr noundef %vf, ptr noundef %msg, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end100, label %if.then93

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %status94 = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %call7.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %status94 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %status94, align 4
  %vf_id98 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %39 = ptrtoint ptr %vf_id98 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vf_id98, align 8
  %conv99 = zext i16 %40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.20, i32 noundef %conv99, i32 noundef %call91) #11
  br label %err_free_conf

if.end100:                                        ; preds = %if.end90
  %call101 = tail call fastcc zeroext i1 @ice_vc_fdir_is_dup_fltr(ptr noundef %vf, ptr noundef nonnull %call.i)
  br i1 %call101, label %if.then104, label %if.end124

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %status105 = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %call7.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %status105 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %status105, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug647, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_add_fdir_fltr, %if.then118)) #8
          to label %err_free_conf [label %if.then118], !srcloc !226

if.then118:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id119 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %42 = ptrtoint ptr %vf_id119 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vf_id119, align 8
  %conv120 = zext i16 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug647, ptr noundef %dev2, ptr noundef nonnull @.str.22, i32 noundef %conv120) #8
  br label %err_free_conf

if.end124:                                        ; preds = %if.end100
  %flow_id = getelementptr inbounds %struct.virtchnl_fdir_fltr_conf, ptr %call.i, i32 0, i32 3
  %call125 = tail call fastcc i32 @ice_vc_fdir_insert_entry(ptr noundef %vf, ptr noundef nonnull %call.i, ptr noundef %flow_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end147, label %if.then127

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  %status128 = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %call7.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %status128 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %status128, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug648, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_add_fdir_fltr, %if.then141)) #8
          to label %err_free_conf [label %if.then141], !srcloc !226

if.then141:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id142 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %45 = ptrtoint ptr %vf_id142 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vf_id142, align 8
  %conv143 = zext i16 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug648, ptr noundef %dev2, ptr noundef nonnull @.str.23, i32 noundef %conv143) #8
  br label %err_free_conf

if.end147:                                        ; preds = %if.end124
  %call148 = tail call fastcc i32 @ice_vc_fdir_set_irq_ctx(ptr noundef %vf, ptr noundef nonnull %call.i, i32 noundef 47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end170, label %if.then150

if.then150:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  %status151 = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %call7.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %status151 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %status151, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug649, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_add_fdir_fltr, %if.then164)) #8
          to label %err_free_conf [label %if.then164], !srcloc !226

if.then164:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id165 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %48 = ptrtoint ptr %vf_id165 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vf_id165, align 8
  %conv166 = zext i16 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug649, ptr noundef %dev2, ptr noundef nonnull @.str.24, i32 noundef %conv166) #8
  br label %err_free_conf

if.end170:                                        ; preds = %if.end147
  %call172 = tail call fastcc i32 @ice_vc_fdir_write_fltr(ptr noundef %vf, ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end170.exit_crit_edge, label %if.then174

if.end170.exit_crit_edge:                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then174:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %status175 = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %call7.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %status175 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %status175, align 4
  %vf_id179 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %51 = ptrtoint ptr %vf_id179 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vf_id179, align 8
  %conv180 = zext i16 %52 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.26, i32 noundef %conv180, i32 noundef %call172) #11
  tail call fastcc void @ice_vc_fdir_clear_irq_ctx(ptr noundef %vf)
  %53 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flow_id, align 8
  tail call fastcc void @ice_vc_fdir_remove_entry(ptr noundef %vf, ptr noundef nonnull %call.i, i32 noundef %54)
  br label %err_free_conf

exit:                                             ; preds = %if.end170.exit_crit_edge, %if.then86
  %ret.0 = phi i32 [ %call89, %if.then86 ], [ 0, %if.end170.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

err_free_conf:                                    ; preds = %if.then174, %if.then164, %if.then150, %if.then141, %if.then127, %if.then118, %if.then104, %if.then93, %if.then78, %if.then65
  tail call void @devm_kfree(ptr noundef %dev2, ptr noundef nonnull %call.i) #8
  br label %err_exit

err_exit:                                         ; preds = %err_free_conf, %if.then56, %if.then43, %if.then34, %if.then21, %if.then12, %if.then7, %if.then
  %len.0 = phi i16 [ 0, %if.then7 ], [ 0, %if.then12 ], [ 2616, %err_free_conf ], [ 0, %if.then56 ], [ 0, %if.then34 ], [ 0, %if.then ], [ 0, %if.then21 ], [ 0, %if.then43 ]
  %v_ret.1 = phi i32 [ -5, %if.then7 ], [ -5, %if.then12 ], [ 0, %err_free_conf ], [ -18, %if.then56 ], [ -18, %if.then34 ], [ -5, %if.then ], [ -18, %if.then21 ], [ -18, %if.then43 ]
  %stat.0 = phi ptr [ null, %if.then7 ], [ null, %if.then12 ], [ %call7.i.i, %err_free_conf ], [ %call7.i.i, %if.then56 ], [ null, %if.then34 ], [ null, %if.then ], [ null, %if.then21 ], [ %call7.i.i, %if.then43 ]
  %call184 = tail call i32 @ice_vc_send_msg_to_vf(ptr noundef %vf, i32 noundef 47, i32 noundef %v_ret.1, ptr noundef %stat.0, i16 noundef zeroext %len.0) #8
  tail call void @kfree(ptr noundef %stat.0) #8
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %exit
  %retval.0 = phi i32 [ %call184, %err_exit ], [ %ret.0, %exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vf_start_ctrl_vsi(ptr noundef %vf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %ctrl_vsi_idx = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 4
  %4 = ptrtoint ptr %ctrl_vsi_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ctrl_vsi_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp.not = icmp eq i16 %5, -1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @ice_vf_ctrl_vsi_setup(ptr noundef %vf) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vf_start_ctrl_vsi.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vf_start_ctrl_vsi, %if.then9)) #8
          to label %cleanup [label %if.then9], !srcloc !226

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %6 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vf_id, align 8
  %conv10 = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vf_start_ctrl_vsi.__UNIQUE_ID_ddebug613, ptr noundef %dev2, ptr noundef nonnull @.str.60, i32 noundef %conv10) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @ice_vsi_open_ctrl(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %do.body16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body16:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vf_start_ctrl_vsi.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vf_start_ctrl_vsi, %if.then28)) #8
          to label %err_vsi_open [label %if.then28], !srcloc !226

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id29 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %8 = ptrtoint ptr %vf_id29 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vf_id29, align 8
  %conv30 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vf_start_ctrl_vsi.__UNIQUE_ID_ddebug614, ptr noundef %dev2, ptr noundef nonnull @.str.61, i32 noundef %conv30) #8
  br label %err_vsi_open

err_vsi_open:                                     ; preds = %if.then28, %do.body16
  %call35 = tail call i32 @ice_vsi_release(ptr noundef nonnull %call) #8
  %10 = ptrtoint ptr %ctrl_vsi_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ctrl_vsi_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp38.not = icmp eq i16 %11, -1
  br i1 %cmp38.not, label %err_vsi_open.cleanup_crit_edge, label %if.then40

err_vsi_open.cleanup_crit_edge:                   ; preds = %err_vsi_open
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then40:                                        ; preds = %err_vsi_open
  call void @__sanitizer_cov_trace_pc() #10
  %conv37 = zext i16 %11 to i32
  %vsi = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vsi, align 8
  %arrayidx = getelementptr ptr, ptr %13, i32 %conv37
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %ctrl_vsi_idx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %ctrl_vsi_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %err_vsi_open.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then9, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %entry.cleanup_crit_edge ], [ -12, %if.then9 ], [ 0, %if.end12.cleanup_crit_edge ], [ %call13, %if.then40 ], [ %call13, %err_vsi_open.cleanup_crit_edge ], [ -12, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vc_send_msg_to_vf(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vc_fdir_config_input_set(ptr nocapture noundef %vf, ptr nocapture noundef readonly %fltr, ptr nocapture noundef readonly %conf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %flow_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 1
  %4 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flow_type, align 4
  %fdir_prof.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fdir_prof.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end6.i_crit_edge

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 112, i32 noundef 3520) #8
  %8 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i.i, ptr %fdir_prof.i, align 8
  %tobool4.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool4.not.i, label %if.then.i.do.body_crit_edge, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %9 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fdir_prof.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %12, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end6.i.if.end8_crit_edge

if.end6.i.if.end8_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then9.i:                                       ; preds = %if.end6.i
  %13 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vf, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev12.i, i32 noundef 344, i32 noundef 3520) #8
  %17 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fdir_prof.i, align 8
  %arrayidx15.i = getelementptr ptr, ptr %18, i32 %5
  %19 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %arrayidx15.i, align 4
  %20 = load ptr, ptr %fdir_prof.i, align 8
  %arrayidx17.i = getelementptr ptr, ptr %20, i32 %5
  %21 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx17.i, align 4
  %tobool18.not.i = icmp eq ptr %22, null
  br i1 %tobool18.not.i, label %if.then9.i.do.body_crit_edge, label %if.then9.i.if.end8_crit_edge

if.then9.i.if.end8_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then9.i.do.body_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.then9.i.do.body_crit_edge, %if.then.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_config_input_set, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !226

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %23 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug624, ptr noundef %dev2, ptr noundef nonnull @.str.71, i32 noundef %conv) #8
  br label %cleanup

if.end8:                                          ; preds = %if.then9.i.if.end8_crit_edge, %if.end6.i.if.end8_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 1096, i32 noundef 3520) #8
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @ice_vc_fdir_set_flow_fld(ptr noundef %vf, ptr noundef %fltr, ptr noundef %conf, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end34, label %do.body16

do.body16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_config_input_set, %if.then28)) #8
          to label %err_exit [label %if.then28], !srcloc !226

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id29 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %25 = ptrtoint ptr %vf_id29 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vf_id29, align 8
  %conv30 = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug625, ptr noundef %dev2, ptr noundef nonnull @.str.72, i32 noundef %conv30) #8
  br label %err_exit

if.end34:                                         ; preds = %if.end12
  %call35 = tail call fastcc i32 @ice_vc_fdir_set_flow_hdr(ptr noundef %vf, ptr noundef %conf, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end56, label %do.body38

do.body38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_config_input_set, %if.then50)) #8
          to label %err_exit [label %if.then50], !srcloc !226

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id51 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %27 = ptrtoint ptr %vf_id51 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vf_id51, align 8
  %conv52 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug626, ptr noundef %dev2, ptr noundef nonnull @.str.73, i32 noundef %conv52) #8
  br label %err_exit

if.end56:                                         ; preds = %if.end34
  %call57 = tail call fastcc i32 @ice_vc_fdir_write_flow_prof(ptr noundef %vf, i32 noundef %5, ptr noundef nonnull %call.i)
  %29 = zext i32 %call57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call57, label %do.body62 [
    i32 -17, label %if.then59
    i32 0, label %if.end56.cleanup_crit_edge
  ]

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devm_kfree(ptr noundef %dev2, ptr noundef nonnull %call.i) #8
  br label %cleanup

do.body62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_config_input_set, %if.then74)) #8
          to label %err_exit [label %if.then74], !srcloc !226

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id75 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %30 = ptrtoint ptr %vf_id75 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vf_id75, align 8
  %conv76 = zext i16 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug627, ptr noundef %dev2, ptr noundef nonnull @.str.74, i32 noundef %conv76) #8
  br label %err_exit

err_exit:                                         ; preds = %if.then74, %do.body62, %if.then50, %do.body38, %if.then28, %do.body16
  %ret.0 = phi i32 [ %call13, %if.then28 ], [ %call35, %if.then50 ], [ %call57, %if.then74 ], [ %call13, %do.body16 ], [ %call35, %do.body38 ], [ %call57, %do.body62 ]
  tail call void @devm_kfree(ptr noundef %dev2, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %if.then59, %if.end56.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ %ret.0, %err_exit ], [ -12, %if.then7 ], [ -12, %if.end8.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ 0, %if.then59 ], [ -12, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ice_vc_fdir_is_dup_fltr(ptr noundef readonly %vf, ptr nocapture noundef readonly %conf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_rule_list = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %fdir_rule_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %desc.016 = load ptr, ptr %fdir_rule_list, align 4
  %cmp.not17 = icmp eq ptr %desc.016, %fdir_rule_list
  br i1 %cmp.not17, label %entry.cleanup11_crit_edge, label %for.body.lr.ph

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

for.body.lr.ph:                                   ; preds = %entry
  %ttype2.i = getelementptr inbounds %struct.virtchnl_fdir_fltr_conf, ptr %conf, i32 0, i32 1
  %1 = ptrtoint ptr %ttype2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ttype2.i, align 8
  %flow_type3.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 1
  %ip7.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 2
  %mask10.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 3
  %gtpu_data15.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 4
  %gtpu_mask20.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 5
  %l2tpv3_data25.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 6
  %l2tpv3_mask30.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 7
  %ext_data35.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 8
  %ext_mask40.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %desc.018 = phi ptr [ %desc.016, %for.body.lr.ph ], [ %desc.0, %for.cond.backedge.for.body_crit_edge ]
  %ttype.i = getelementptr inbounds %struct.virtchnl_fdir_fltr_conf, ptr %desc.018, i32 0, i32 1
  %3 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ttype.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp.not.i = icmp eq i32 %4, %2
  br i1 %cmp.not.i, label %if.end.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end.i:                                         ; preds = %for.body
  %flow_type.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %desc.018, i32 0, i32 1
  %5 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flow_type.i, align 4
  %7 = ptrtoint ptr %flow_type3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flow_type3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp4.not.i = icmp eq i32 %6, %8
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end.i.for.cond.backedge_crit_edge

if.end.i.for.cond.backedge_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end6.i:                                        ; preds = %if.end.i
  %ip.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %desc.018, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(48) %ip.i, ptr noundef dereferenceable(48) %ip7.i, i32 48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.end6.i.for.cond.backedge_crit_edge

if.end6.i.for.cond.backedge_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end9.i:                                        ; preds = %if.end6.i
  %mask.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %desc.018, i32 0, i32 3
  %bcmp64.i = tail call i32 @bcmp(ptr noundef dereferenceable(48) %mask.i, ptr noundef dereferenceable(48) %mask10.i, i32 48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp64.i)
  %tobool12.not.i = icmp eq i32 %bcmp64.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.for.cond.backedge_crit_edge

if.end9.i.for.cond.backedge_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end14.i:                                       ; preds = %if.end9.i
  %gtpu_data.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %desc.018, i32 0, i32 4
  %bcmp65.i = tail call i32 @bcmp(ptr noundef dereferenceable(24) %gtpu_data.i, ptr noundef dereferenceable(24) %gtpu_data15.i, i32 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp65.i)
  %tobool17.not.i = icmp eq i32 %bcmp65.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end14.i.for.cond.backedge_crit_edge

if.end14.i.for.cond.backedge_crit_edge:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end19.i:                                       ; preds = %if.end14.i
  %gtpu_mask.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %desc.018, i32 0, i32 5
  %bcmp66.i = tail call i32 @bcmp(ptr noundef dereferenceable(24) %gtpu_mask.i, ptr noundef dereferenceable(24) %gtpu_mask20.i, i32 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp66.i)
  %tobool22.not.i = icmp eq i32 %bcmp66.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end19.i.for.cond.backedge_crit_edge

if.end19.i.for.cond.backedge_crit_edge:           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end24.i:                                       ; preds = %if.end19.i
  %l2tpv3_data.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %desc.018, i32 0, i32 6
  %bcmp67.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %l2tpv3_data.i, ptr noundef dereferenceable(4) %l2tpv3_data25.i, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp67.i)
  %tobool27.not.i = icmp eq i32 %bcmp67.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end24.i.for.cond.backedge_crit_edge

if.end24.i.for.cond.backedge_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end29.i:                                       ; preds = %if.end24.i
  %l2tpv3_mask.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %desc.018, i32 0, i32 7
  %bcmp68.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %l2tpv3_mask.i, ptr noundef dereferenceable(4) %l2tpv3_mask30.i, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp68.i)
  %tobool32.not.i = icmp eq i32 %bcmp68.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end29.i.for.cond.backedge_crit_edge

if.end29.i.for.cond.backedge_crit_edge:           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end34.i:                                       ; preds = %if.end29.i
  %ext_data.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %desc.018, i32 0, i32 8
  %bcmp69.i = tail call i32 @bcmp(ptr noundef dereferenceable(28) %ext_data.i, ptr noundef dereferenceable(28) %ext_data35.i, i32 28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp69.i)
  %tobool37.not.i = icmp eq i32 %bcmp69.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end34.i.for.cond.backedge_crit_edge

if.end34.i.for.cond.backedge_crit_edge:           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end39.i:                                       ; preds = %if.end34.i
  %ext_mask.i = getelementptr inbounds %struct.ice_fdir_fltr, ptr %desc.018, i32 0, i32 9
  %bcmp70.i = tail call i32 @bcmp(ptr noundef dereferenceable(28) %ext_mask.i, ptr noundef dereferenceable(28) %ext_mask40.i, i32 28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp70.i)
  %tobool42.not.i = icmp eq i32 %bcmp70.i, 0
  br i1 %tobool42.not.i, label %if.end39.i.cleanup11_crit_edge, label %if.end39.i.for.cond.backedge_crit_edge

if.end39.i.for.cond.backedge_crit_edge:           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end39.i.cleanup11_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

for.cond.backedge:                                ; preds = %if.end39.i.for.cond.backedge_crit_edge, %if.end34.i.for.cond.backedge_crit_edge, %if.end29.i.for.cond.backedge_crit_edge, %if.end24.i.for.cond.backedge_crit_edge, %if.end19.i.for.cond.backedge_crit_edge, %if.end14.i.for.cond.backedge_crit_edge, %if.end9.i.for.cond.backedge_crit_edge, %if.end6.i.for.cond.backedge_crit_edge, %if.end.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %9 = ptrtoint ptr %desc.018 to i32
  call void @__asan_load4_noabort(i32 %9)
  %desc.0 = load ptr, ptr %desc.018, align 4
  %cmp.not = icmp eq ptr %desc.0, %fdir_rule_list
  br i1 %cmp.not, label %for.cond.backedge.cleanup11_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.backedge.cleanup11_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

cleanup11:                                        ; preds = %for.cond.backedge.cleanup11_crit_edge, %if.end39.i.cleanup11_crit_edge, %entry.cleanup11_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %entry.cleanup11_crit_edge ], [ true, %if.end39.i.cleanup11_crit_edge ], [ false, %for.cond.backedge.cleanup11_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vc_fdir_insert_entry(ptr noundef %vf, ptr noundef %conf, ptr nocapture noundef writeonly %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_rule_idr = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 3
  %call = tail call i32 @idr_alloc(ptr noundef %fdir_rule_idr, ptr noundef %conf, i32 noundef 0, i32 noundef 16384, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %id, align 4
  %fdir_rule_list = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 4
  %1 = ptrtoint ptr %fdir_rule_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fdir_rule_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %conf, ptr noundef %fdir_rule_list, ptr noundef %2) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %conf, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %conf, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %conf, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fdir_rule_list, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %fdir_rule_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %conf, ptr %fdir_rule_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vc_fdir_set_irq_ctx(ptr noundef %vf, ptr noundef %conf, i32 noundef %v_opcode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %ctx_irq = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 6
  %ctx_lock = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #8
  %flags9 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 6, i32 4
  %4 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags9, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %flags11 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 7, i32 4
  %6 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags11, align 8
  %and12 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end26, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call4) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_set_irq_ctx.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_set_irq_ctx, %if.then22)) #8
          to label %cleanup [label %if.then22], !srcloc !226

if.then22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %8 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vf_id, align 8
  %conv23 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_set_irq_ctx.__UNIQUE_ID_ddebug642, ptr noundef %dev1, ptr noundef nonnull @.str.89, i32 noundef %conv23) #8
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %5, 1
  %10 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %flags9, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call4) #8
  %conf30 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 6, i32 5
  %11 = ptrtoint ptr %conf30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %conf, ptr %conf30, align 4
  %v_opcode31 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 6, i32 1
  %12 = ptrtoint ptr %v_opcode31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %v_opcode, ptr %v_opcode31, align 8
  %stat = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 6, i32 2
  %13 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %stat, align 4
  tail call void @init_timer_key(ptr noundef %ctx_irq, ptr noundef nonnull @ice_vf_fdir_timer, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull @ice_vc_fdir_set_irq_ctx.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 1
  %call37 = tail call i32 @round_jiffies(i32 noundef %add) #8
  %call38 = tail call i32 @mod_timer(ptr noundef %ctx_irq, i32 noundef %call37) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then22, %if.then
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -16, %if.then22 ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vc_fdir_write_fltr(ptr nocapture noundef readonly %vf, ptr noundef %conf, i1 noundef zeroext %add) unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_fltr_desc, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc) #8
  %0 = call ptr @memset(ptr %desc, i32 255, i32 16)
  %1 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vf, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %hw5 = getelementptr inbounds %struct.ice_pf, ptr %2, i32 0, i32 58
  %vsi6 = getelementptr inbounds %struct.ice_pf, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %vsi6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vsi6, align 8
  %lan_vsi_idx = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 3
  %7 = ptrtoint ptr %lan_vsi_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %lan_vsi_idx, align 2
  %idxprom = zext i16 %8 to i32
  %arrayidx = getelementptr ptr, ptr %6, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_write_fltr.__UNIQUE_ID_ddebug634, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_write_fltr, %if.then11)) #8
          to label %cleanup [label %if.then11], !srcloc !226

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %11 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_write_fltr.__UNIQUE_ID_ddebug634, ptr noundef %dev4, ptr noundef nonnull @.str.92, i32 noundef %conv) #8
  br label %cleanup

if.end12:                                         ; preds = %entry
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %10, i32 0, i32 19
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idx, align 2
  %dest_vsi = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 16
  %15 = ptrtoint ptr %dest_vsi to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %dest_vsi, align 4
  %comp_report = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 23
  %16 = ptrtoint ptr %comp_report to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %comp_report, align 1
  %17 = ptrtoint ptr %vsi6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vsi6, align 8
  %ctrl_vsi_idx = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 4
  %19 = ptrtoint ptr %ctrl_vsi_idx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ctrl_vsi_idx, align 4
  %idxprom14 = zext i16 %20 to i32
  %arrayidx15 = getelementptr ptr, ptr %18, i32 %idxprom14
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %22, null
  br i1 %tobool16.not, label %do.body18, label %if.end36

do.body18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_write_fltr.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_write_fltr, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !226

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id31 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %23 = ptrtoint ptr %vf_id31 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vf_id31, align 8
  %conv32 = zext i16 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_write_fltr.__UNIQUE_ID_ddebug635, ptr noundef %dev4, ptr noundef nonnull @.str.93, i32 noundef %conv32) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end12
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev4, i32 noundef 562, i32 noundef 3520) #8
  %tobool38.not = icmp eq ptr %call.i, null
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  call void @ice_fdir_get_prgm_desc(ptr noundef %hw5, ptr noundef %conf, ptr noundef nonnull %desc, i1 noundef zeroext %add) #8
  %call43 = call i32 @ice_fdir_get_gen_prgm_pkt(ptr noundef %hw5, ptr noundef %conf, ptr noundef nonnull %call.i, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end64, label %do.body46

do.body46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_write_fltr.__UNIQUE_ID_ddebug636, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_write_fltr, %if.then58)) #8
          to label %err_free_pkt [label %if.then58], !srcloc !226

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id59 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %25 = ptrtoint ptr %vf_id59 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vf_id59, align 8
  %conv60 = zext i16 %26 to i32
  %flow_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 1
  %27 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flow_type, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_write_fltr.__UNIQUE_ID_ddebug636, ptr noundef %dev4, ptr noundef nonnull @.str.94, i32 noundef %conv60, i32 noundef %28) #8
  br label %err_free_pkt

if.end64:                                         ; preds = %if.end40
  %call65 = call i32 @ice_prgm_fdir_fltr(ptr noundef nonnull %22, ptr noundef nonnull %desc, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end64.cleanup_crit_edge, label %if.end64.err_free_pkt_crit_edge

if.end64.err_free_pkt_crit_edge:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_pkt

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free_pkt:                                     ; preds = %if.end64.err_free_pkt_crit_edge, %if.then58, %do.body46
  %ret.0 = phi i32 [ %call43, %if.then58 ], [ %call65, %if.end64.err_free_pkt_crit_edge ], [ %call43, %do.body46 ]
  call void @devm_kfree(ptr noundef %dev4, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_pkt, %if.end64.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then30, %do.body18, %if.then11, %do.body
  %retval.0 = phi i32 [ %ret.0, %err_free_pkt ], [ -22, %if.then11 ], [ -22, %if.then30 ], [ -12, %if.end36.cleanup_crit_edge ], [ 0, %if.end64.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_vc_fdir_clear_irq_ctx(ptr noundef %vf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_irq = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 6
  %call = tail call i32 @del_timer(ptr noundef %ctx_irq) #8
  %ctx_lock = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #8
  %flags7 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 6, i32 4
  %0 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags7, align 8
  %and = and i32 %1, -2
  store i32 %and, ptr %flags7, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_vc_fdir_remove_entry(ptr noundef %vf, ptr noundef %conf, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_rule_idr = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 3
  %call = tail call ptr @idr_remove(ptr noundef %fdir_rule_idr, i32 noundef %id) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %conf) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %conf, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %conf, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %conf, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_vc_del_fdir_fltr(ptr noundef %vf, ptr nocapture noundef readonly %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msg, align 4
  %flags.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %entry
  %vf_states.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 20
  %9 = ptrtoint ptr %vf_states.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %vf_states.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp eq i32 %11, 0
  br i1 %tobool4.not.i, label %if.end.i.if.then_crit_edge, label %if.end6.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end6.i:                                        ; preds = %if.end.i
  %driver_caps.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 9
  %12 = ptrtoint ptr %driver_caps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_caps.i, align 8
  %and.i = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.then_crit_edge, label %if.end9.i

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end9.i:                                        ; preds = %if.end6.i
  %lan_vsi_num.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 17
  %14 = ptrtoint ptr %lan_vsi_num.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %lan_vsi_num.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %5)
  %cmp.not.i = icmp eq i16 %15, %5
  br i1 %cmp.not.i, label %if.end13.i, label %if.end9.i.if.then_crit_edge

if.end9.i.if.then_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end13.i:                                       ; preds = %if.end9.i
  %call14.i = tail call zeroext i1 @ice_vc_isvalid_vsi_id(ptr noundef %vf, i16 noundef zeroext %5) #8
  br i1 %call14.i, label %if.end16.i, label %if.end13.i.if.then_crit_edge

if.end13.i.if.then_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end16.i:                                       ; preds = %if.end13.i
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vsi.i, align 8
  %lan_vsi_idx.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 3
  %18 = ptrtoint ptr %lan_vsi_idx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %lan_vsi_idx.i, align 2
  %idxprom.i = zext i16 %19 to i32
  %arrayidx.i = getelementptr ptr, ptr %17, i32 %idxprom.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool17.not.i = icmp eq ptr %21, null
  br i1 %tobool17.not.i, label %if.end16.i.if.then_crit_edge, label %if.end8

if.end16.i.if.then_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %if.end16.i.if.then_crit_edge, %if.end13.i.if.then_crit_edge, %if.end9.i.if.then_crit_edge, %if.end6.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug650, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_del_fdir_fltr, %if.then7)) #8
          to label %err_exit [label %if.then7], !srcloc !226

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %22 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug650, ptr noundef %dev2, ptr noundef nonnull @.str.14, i32 noundef %conv) #8
  br label %err_exit

if.end8:                                          ; preds = %if.end16.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 12) #12
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end30

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug651, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_del_fdir_fltr, %if.then24)) #8
          to label %err_exit [label %if.then24], !srcloc !226

if.then24:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id25 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %25 = ptrtoint ptr %vf_id25 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vf_id25, align 8
  %conv26 = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug651, ptr noundef %dev2, ptr noundef nonnull @.str.16, i32 noundef %conv26) #8
  br label %err_exit

if.end30:                                         ; preds = %if.end8
  %flow_id = getelementptr inbounds %struct.virtchnl_fdir_del, ptr %msg, i32 0, i32 2
  %27 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flow_id, align 4
  %fdir_rule_idr.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 3
  %call.i = tail call ptr @idr_find(ptr noundef %fdir_rule_idr.i, i32 noundef %28) #8
  %tobool32.not = icmp eq ptr %call.i, null
  br i1 %tobool32.not, label %if.then33, label %if.end53

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.virtchnl_fdir_del, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %status, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug652, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_del_fdir_fltr, %if.then46)) #8
          to label %err_exit [label %if.then46], !srcloc !226

if.then46:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id47 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %30 = ptrtoint ptr %vf_id47 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vf_id47, align 8
  %conv48 = zext i16 %31 to i32
  %32 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flow_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug652, ptr noundef %dev2, ptr noundef nonnull @.str.29, i32 noundef %conv48, i32 noundef %33) #8
  br label %err_exit

if.end53:                                         ; preds = %if.end30
  %ctrl_vsi_idx = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 4
  %34 = ptrtoint ptr %ctrl_vsi_idx to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ctrl_vsi_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %35)
  %cmp = icmp eq i16 %35, -1
  br i1 %cmp, label %if.then56, label %if.end63

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %status57 = getelementptr inbounds %struct.virtchnl_fdir_del, ptr %call7.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %status57 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %status57, align 8
  %vf_id61 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %37 = ptrtoint ptr %vf_id61 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vf_id61, align 8
  %conv62 = zext i16 %38 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.30, i32 noundef %conv62) #11
  br label %err_exit

if.end63:                                         ; preds = %if.end53
  %call64 = tail call fastcc i32 @ice_vc_fdir_set_irq_ctx(ptr noundef %vf, ptr noundef nonnull %call.i, i32 noundef 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end86, label %if.then66

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %status67 = getelementptr inbounds %struct.virtchnl_fdir_del, ptr %call7.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %status67 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %status67, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug653, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_del_fdir_fltr, %if.then80)) #8
          to label %err_exit [label %if.then80], !srcloc !226

if.then80:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id81 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %40 = ptrtoint ptr %vf_id81 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vf_id81, align 8
  %conv82 = zext i16 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug653, ptr noundef %dev2, ptr noundef nonnull @.str.24, i32 noundef %conv82) #8
  br label %err_exit

if.end86:                                         ; preds = %if.end63
  %call88 = tail call fastcc i32 @ice_vc_fdir_write_fltr(ptr noundef %vf, ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end97, label %if.then90

if.then90:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %status91 = getelementptr inbounds %struct.virtchnl_fdir_del, ptr %call7.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %status91 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %status91, align 8
  %vf_id95 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %43 = ptrtoint ptr %vf_id95 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vf_id95, align 8
  %conv96 = zext i16 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.26, i32 noundef %conv96, i32 noundef %call88) #11
  tail call fastcc void @ice_vc_fdir_clear_irq_ctx(ptr noundef %vf)
  br label %err_exit

if.end97:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

err_exit:                                         ; preds = %if.then90, %if.then80, %if.then66, %if.then56, %if.then46, %if.then33, %if.then24, %if.then11, %if.then7, %if.then
  %len.0 = phi i16 [ 0, %if.then7 ], [ 12, %if.then56 ], [ 12, %if.then80 ], [ 12, %if.then90 ], [ 12, %if.then46 ], [ 0, %if.then24 ], [ 0, %if.then ], [ 0, %if.then11 ], [ 12, %if.then33 ], [ 12, %if.then66 ]
  %v_ret.0 = phi i32 [ -5, %if.then7 ], [ 0, %if.then56 ], [ 0, %if.then80 ], [ 0, %if.then90 ], [ 0, %if.then46 ], [ -18, %if.then24 ], [ -5, %if.then ], [ -18, %if.then11 ], [ 0, %if.then33 ], [ 0, %if.then66 ]
  %stat.0 = phi ptr [ null, %if.then7 ], [ %call7.i.i, %if.then56 ], [ %call7.i.i, %if.then80 ], [ %call7.i.i, %if.then90 ], [ %call7.i.i, %if.then46 ], [ null, %if.then24 ], [ null, %if.then ], [ null, %if.then11 ], [ %call7.i.i, %if.then33 ], [ %call7.i.i, %if.then66 ]
  %call99 = tail call i32 @ice_vc_send_msg_to_vf(ptr noundef %vf, i32 noundef 48, i32 noundef %v_ret.0, ptr noundef %stat.0, i16 noundef zeroext %len.0) #8
  tail call void @kfree(ptr noundef %stat.0) #8
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %if.end97
  %retval.0 = phi i32 [ %call99, %err_exit ], [ 0, %if.end97 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_vf_fdir_init(ptr noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_rule_idr = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %fdir_rule_idr, ptr noundef nonnull @.str.95, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i.i.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 3, i32 0, i32 2
  %1 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 3, i32 1
  %2 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 3, i32 2
  %3 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %idr_next.i.i, align 4
  %fdir_rule_list = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %fdir_rule_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %fdir_rule_list, ptr %fdir_rule_list, align 4
  %prev.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fdir_rule_list, ptr %prev.i, align 4
  %ctx_lock = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %ctx_lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @ice_vf_fdir_init.__key, i16 noundef signext 3) #8
  %flags = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 6, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 8
  %flags2 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 7, i32 4
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_vf_fdir_exit(ptr noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir_rule_list.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %fdir_rule_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdir_rule_list.i, align 8
  %cmp.not23.i = icmp eq ptr %1, %fdir_rule_list.i
  br i1 %cmp.not23.i, label %entry.ice_vc_fdir_flush_entry.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ice_vc_fdir_flush_entry.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vc_fdir_flush_entry.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %desc.024.i = phi ptr [ %temp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %desc.024.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %temp.0.i = load ptr, ptr %desc.024.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %desc.024.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %desc.024.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %desc.024.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc.024.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %desc.024.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %desc.024.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %desc.024.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vf, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i, ptr noundef %desc.024.i) #8
  %cmp.not.i = icmp eq ptr %temp.0.i, %fdir_rule_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.ice_vc_fdir_flush_entry.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.ice_vc_fdir_flush_entry.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vc_fdir_flush_entry.exit

ice_vc_fdir_flush_entry.exit:                     ; preds = %list_del.exit.i.ice_vc_fdir_flush_entry.exit_crit_edge, %entry.ice_vc_fdir_flush_entry.exit_crit_edge
  %fdir_rule_idr = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 3
  tail call void @idr_destroy(ptr noundef %fdir_rule_idr) #8
  br label %for.body.i4

for.body.i4:                                      ; preds = %for.body.i4.for.body.i4_crit_edge, %ice_vc_fdir_flush_entry.exit
  %flow.05.i = phi i32 [ 0, %ice_vc_fdir_flush_entry.exit ], [ %inc.i, %for.body.i4.for.body.i4_crit_edge ]
  tail call fastcc void @ice_vc_fdir_rem_prof(ptr noundef %vf, i32 noundef %flow.05.i, i32 noundef 0) #8
  tail call fastcc void @ice_vc_fdir_rem_prof(ptr noundef %vf, i32 noundef %flow.05.i, i32 noundef 1) #8
  %inc.i = add nuw nsw i32 %flow.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 28
  br i1 %exitcond.not.i, label %ice_vc_fdir_rem_prof_all.exit, label %for.body.i4.for.body.i4_crit_edge

for.body.i4.for.body.i4_crit_edge:                ; preds = %for.body.i4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i4

ice_vc_fdir_rem_prof_all.exit:                    ; preds = %for.body.i4
  %fdir_prof.i = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fdir_prof.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %ice_vc_fdir_rem_prof_all.exit.ice_vc_fdir_free_prof_all.exit_crit_edge, label %ice_vc_fdir_rem_prof_all.exit.for.body.i5_crit_edge

ice_vc_fdir_rem_prof_all.exit.for.body.i5_crit_edge: ; preds = %ice_vc_fdir_rem_prof_all.exit
  br label %for.body.i5

ice_vc_fdir_rem_prof_all.exit.ice_vc_fdir_free_prof_all.exit_crit_edge: ; preds = %ice_vc_fdir_rem_prof_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vc_fdir_free_prof_all.exit

for.bodythread-pre-split.i:                       ; preds = %ice_vc_fdir_free_prof.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr.i = load ptr, ptr %fdir_prof.i, align 8
  br label %for.body.i5

for.body.i5:                                      ; preds = %for.bodythread-pre-split.i, %ice_vc_fdir_rem_prof_all.exit.for.body.i5_crit_edge
  %18 = phi ptr [ %.pr.i, %for.bodythread-pre-split.i ], [ %16, %ice_vc_fdir_rem_prof_all.exit.for.body.i5_crit_edge ]
  %flow.011.i = phi i32 [ %inc.i6, %for.bodythread-pre-split.i ], [ 0, %ice_vc_fdir_rem_prof_all.exit.for.body.i5_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %for.body.i5.ice_vc_fdir_free_prof.exit.i_crit_edge, label %if.end.i.i

for.body.i5.ice_vc_fdir_free_prof.exit.i_crit_edge: ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vc_fdir_free_prof.exit.i

if.end.i.i:                                       ; preds = %for.body.i5
  %arrayidx.i.i = getelementptr ptr, ptr %18, i32 %flow.011.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.ice_vc_fdir_free_prof.exit.i_crit_edge, label %if.end5.i.i

if.end.i.i.ice_vc_fdir_free_prof.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_vc_fdir_free_prof.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vf, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i.i, ptr noundef nonnull %20) #8
  %25 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fdir_prof.i, align 8
  %arrayidx9.i.i = getelementptr ptr, ptr %26, i32 %flow.011.i
  %27 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx9.i.i, align 4
  br label %ice_vc_fdir_free_prof.exit.i

ice_vc_fdir_free_prof.exit.i:                     ; preds = %if.end5.i.i, %if.end.i.i.ice_vc_fdir_free_prof.exit.i_crit_edge, %for.body.i5.ice_vc_fdir_free_prof.exit.i_crit_edge
  %inc.i6 = add nuw nsw i32 %flow.011.i, 1
  %exitcond.not.i7 = icmp eq i32 %inc.i6, 28
  br i1 %exitcond.not.i7, label %for.end.i, label %for.bodythread-pre-split.i

for.end.i:                                        ; preds = %ice_vc_fdir_free_prof.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vf, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %dev.i8 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fdir_prof.i, align 8
  tail call void @devm_kfree(ptr noundef %dev.i8, ptr noundef %33) #8
  %34 = ptrtoint ptr %fdir_prof.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %fdir_prof.i, align 8
  br label %ice_vc_fdir_free_prof_all.exit

ice_vc_fdir_free_prof_all.exit:                   ; preds = %for.end.i, %ice_vc_fdir_rem_prof_all.exit.ice_vc_fdir_free_prof_all.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_vf_fdir_dump_info(ptr nocapture noundef readonly %vf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vsi = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsi, align 8
  %lan_vsi_idx = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 3
  %6 = ptrtoint ptr %lan_vsi_idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %lan_vsi_idx, align 2
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr ptr, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idx, align 2
  %call = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw2, i16 noundef zeroext %11) #8
  %12 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw2, align 8
  %conv = zext i16 %call to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 4595712
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %15 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw2, align 8
  %add11 = add nuw nsw i32 %mul, 4603904
  %add.ptr12 = getelementptr i8, ptr %16, i32 %add11
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vf_fdir_dump_info.__UNIQUE_ID_ddebug637, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vf_fdir_dump_info, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !226

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = tail call i32 @llvm.bswap.i32(i32 %14)
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %20 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vf_id, align 8
  %conv20 = zext i16 %21 to i32
  %and = and i32 %19, 16383
  %and21 = lshr i32 %19, 16
  %shr22 = and i32 %and21, 16383
  %and23 = and i32 %18, 16383
  %and25 = lshr i32 %18, 16
  %shr26 = and i32 %and25, 16383
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vf_fdir_dump_info.__UNIQUE_ID_ddebug637, ptr noundef %dev3, ptr noundef nonnull @.str.52, i32 noundef %conv20, i32 noundef %and, i32 noundef %shr22, i32 noundef %and23, i32 noundef %shr26) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ice_get_hw_vsi_num(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_vc_isvalid_vsi_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_vf_ctrl_vsi_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_open_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_vc_validate_pattern(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vc_fdir_parse_pattern(ptr nocapture noundef readonly %vf, ptr noundef readonly %fltr, ptr noundef %conf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %count = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 2
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp = icmp sgt i32 %5, 32
  br i1 %cmp, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9570 = icmp sgt i32 %7, 0
  br i1 %cmp9570, label %for.body.lr.ph, label %for.cond.preheader.cleanup394_crit_edge

for.cond.preheader.cleanup394_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup394

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %qfi = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 4, i32 8
  %ttype364 = getelementptr inbounds %struct.virtchnl_fdir_fltr_conf, ptr %conf, i32 0, i32 1
  %flow_type344 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 1
  %teid = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 4, i32 3
  %dst_port337 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 2, i32 0, i32 2
  %dst_port331 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 2, i32 0, i32 0, i32 2
  %sec_parm_idx267 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 2, i32 0, i32 1
  %sec_parm_idx274 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 2, i32 0, i32 5
  %l2tpv3_data = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 6
  %ip147 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 2
  %src_port148 = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip147, i32 0, i32 3
  %src_port158 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 2, i32 0, i32 3
  %tc = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 2, i32 0, i32 6
  %proto51 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 2, i32 0, i32 7
  %src_ip = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 2, i32 0, i32 0, i32 1
  %tos23 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 2, i32 0, i32 1, i32 1
  %proto25 = getelementptr inbounds %struct.ice_fdir_v4, ptr %ip147, i32 0, i32 8
  %ether_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 8, i32 2
  br label %for.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_parse_pattern.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_parse_pattern, %if.then5)) #8
          to label %cleanup394 [label %if.then5], !srcloc !226

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %10 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_parse_pattern.__UNIQUE_ID_ddebug628, ptr noundef %dev1, ptr noundef nonnull @.str.63, i32 noundef %9, i32 noundef %conv) #8
  br label %cleanup394

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %l3.0575 = phi i32 [ 0, %for.body.lr.ph ], [ %l3.2.ph, %for.inc.for.body_crit_edge ]
  %i.0571 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %13, label %do.body365 [
    i32 1, label %sw.bb
    i32 4, label %sw.bb14
    i32 5, label %sw.bb27
    i32 6, label %sw.bb53
    i32 7, label %sw.bb87
    i32 8, label %sw.bb126
    i32 14, label %sw.bb165
    i32 15, label %sw.bb183
    i32 16, label %sw.bb245
    i32 17, label %sw.bb278
    i32 9, label %sw.bb341
    i32 10, label %sw.bb350
  ]

sw.bb:                                            ; preds = %for.body
  %15 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 22, ptr %flow_type344, align 4
  %field_selector = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %16 = ptrtoint ptr %field_selector to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field_selector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %sw.bb.for.inc_crit_edge, label %if.then12

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %h_proto = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 2, i32 12
  %18 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %h_proto, align 1
  %20 = ptrtoint ptr %ether_type to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %ether_type, align 4
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  %21 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %flow_type344, align 4
  %field_selector18 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %22 = ptrtoint ptr %field_selector18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %field_selector18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool19.not = icmp eq i32 %23, 0
  br i1 %tobool19.not, label %sw.bb14.for.inc_crit_edge, label %if.then20

sw.bb14.for.inc_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then20:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %buffer15 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 2
  %saddr = getelementptr inbounds %struct.iphdr, ptr %buffer15, i32 0, i32 8
  %24 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saddr, align 4
  %26 = ptrtoint ptr %src_ip to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %src_ip, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %buffer15, i32 0, i32 9
  %27 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %daddr, align 4
  %29 = ptrtoint ptr %ip147 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ip147, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %buffer15, i32 0, i32 1
  %30 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos, align 1
  %32 = ptrtoint ptr %tos23 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %tos23, align 4
  %protocol = getelementptr inbounds %struct.iphdr, ptr %buffer15, i32 0, i32 6
  %33 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %protocol, align 1
  %35 = ptrtoint ptr %proto25 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %proto25, align 2
  br label %for.inc

sw.bb27:                                          ; preds = %for.body
  %36 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 27, ptr %flow_type344, align 4
  %field_selector31 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %37 = ptrtoint ptr %field_selector31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %field_selector31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool32.not = icmp eq i32 %38, 0
  br i1 %tobool32.not, label %sw.bb27.for.inc_crit_edge, label %if.then33

sw.bb27.for.inc_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then33:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %buffer28 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 2
  %saddr37 = getelementptr inbounds %struct.ipv6hdr, ptr %buffer28, i32 0, i32 5
  %39 = call ptr @memcpy(ptr %sec_parm_idx267, ptr %saddr37, i32 16)
  %daddr42 = getelementptr inbounds %struct.ipv6hdr, ptr %buffer28, i32 0, i32 6
  %40 = call ptr @memcpy(ptr %ip147, ptr %daddr42, i32 16)
  %41 = ptrtoint ptr %buffer28 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %buffer28, align 4
  %flow_lbl = getelementptr inbounds %struct.ipv6hdr, ptr %buffer28, i32 0, i32 1
  %42 = ptrtoint ptr %flow_lbl to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flow_lbl, align 1
  %or544 = tail call i8 @llvm.fshl.i8(i8 %bf.load, i8 %43, i8 4)
  %44 = ptrtoint ptr %tc to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %or544, ptr %tc, align 4
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %buffer28, i32 0, i32 3
  %45 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %nexthdr, align 2
  %47 = ptrtoint ptr %proto51 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %proto51, align 1
  br label %for.inc

sw.bb53:                                          ; preds = %for.body
  %buffer54 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 2
  %48 = zext i32 %l3.0575 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %l3.0575, label %sw.bb53.for.inc_crit_edge [
    i32 4, label %if.end65.thread
    i32 5, label %if.end65
  ]

sw.bb53.for.inc_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end65:                                         ; preds = %sw.bb53
  %49 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 25, ptr %flow_type344, align 4
  %field_selector66 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %50 = ptrtoint ptr %field_selector66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %field_selector66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool67.not.not = icmp eq i32 %51, 0
  br i1 %tobool67.not.not, label %if.end65.for.inc_crit_edge, label %if.then77

if.end65.for.inc_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end65.thread:                                  ; preds = %sw.bb53
  %52 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %flow_type344, align 4
  %field_selector66552 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %53 = ptrtoint ptr %field_selector66552 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %field_selector66552, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool67.not553 = icmp eq i32 %54, 0
  br i1 %tobool67.not553, label %if.end65.thread.for.inc_crit_edge, label %if.then71

if.end65.thread.for.inc_crit_edge:                ; preds = %if.end65.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then71:                                        ; preds = %if.end65.thread
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %buffer54 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %buffer54, align 4
  %57 = ptrtoint ptr %src_port148 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %src_port148, align 2
  %dest = getelementptr inbounds %struct.tcphdr, ptr %buffer54, i32 0, i32 1
  %58 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %dest, align 2
  %60 = ptrtoint ptr %dst_port331 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %dst_port331, align 4
  br label %for.inc

if.then77:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %buffer54 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %buffer54, align 4
  %63 = ptrtoint ptr %src_port158 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %src_port158, align 2
  %dest81 = getelementptr inbounds %struct.tcphdr, ptr %buffer54, i32 0, i32 1
  %64 = ptrtoint ptr %dest81 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %dest81, align 2
  %66 = ptrtoint ptr %dst_port337 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %dst_port337, align 4
  br label %for.inc

sw.bb87:                                          ; preds = %for.body
  %buffer88 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 2
  %67 = zext i32 %l3.0575 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %l3.0575, label %sw.bb87.for.inc_crit_edge [
    i32 4, label %if.end100.thread
    i32 5, label %if.end100
  ]

sw.bb87.for.inc_crit_edge:                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end100:                                        ; preds = %sw.bb87
  %68 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 24, ptr %flow_type344, align 4
  %field_selector101 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %69 = ptrtoint ptr %field_selector101 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %field_selector101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool102.not.not = icmp eq i32 %70, 0
  br i1 %tobool102.not.not, label %if.end100.for.inc_crit_edge, label %if.then116

if.end100.for.inc_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end100.thread:                                 ; preds = %sw.bb87
  %71 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %flow_type344, align 4
  %field_selector101554 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %72 = ptrtoint ptr %field_selector101554 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %field_selector101554, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool102.not555 = icmp eq i32 %73, 0
  br i1 %tobool102.not555, label %if.end100.thread.for.inc_crit_edge, label %if.then106

if.end100.thread.for.inc_crit_edge:               ; preds = %if.end100.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then106:                                       ; preds = %if.end100.thread
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %buffer88 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %buffer88, align 2
  %76 = ptrtoint ptr %src_port148 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %src_port148, align 2
  %dest110 = getelementptr inbounds %struct.udphdr, ptr %buffer88, i32 0, i32 1
  %77 = ptrtoint ptr %dest110 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %dest110, align 2
  %79 = ptrtoint ptr %dst_port331 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %dst_port331, align 4
  br label %for.inc

if.then116:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %buffer88 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %buffer88, align 2
  %82 = ptrtoint ptr %src_port158 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %src_port158, align 2
  %dest120 = getelementptr inbounds %struct.udphdr, ptr %buffer88, i32 0, i32 1
  %83 = ptrtoint ptr %dest120 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %dest120, align 2
  %85 = ptrtoint ptr %dst_port337 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %dst_port337, align 4
  br label %for.inc

sw.bb126:                                         ; preds = %for.body
  %buffer127 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 2
  %86 = zext i32 %l3.0575 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %l3.0575, label %sw.bb126.for.inc_crit_edge [
    i32 4, label %if.end139.thread
    i32 5, label %if.end139
  ]

sw.bb126.for.inc_crit_edge:                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end139:                                        ; preds = %sw.bb126
  %87 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 26, ptr %flow_type344, align 4
  %field_selector140 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %88 = ptrtoint ptr %field_selector140 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %field_selector140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool141.not.not = icmp eq i32 %89, 0
  br i1 %tobool141.not.not, label %if.end139.for.inc_crit_edge, label %if.then155

if.end139.for.inc_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end139.thread:                                 ; preds = %sw.bb126
  %90 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3, ptr %flow_type344, align 4
  %field_selector140556 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %91 = ptrtoint ptr %field_selector140556 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %field_selector140556, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool141.not557 = icmp eq i32 %92, 0
  br i1 %tobool141.not557, label %if.end139.thread.for.inc_crit_edge, label %if.then145

if.end139.thread.for.inc_crit_edge:               ; preds = %if.end139.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then145:                                       ; preds = %if.end139.thread
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %buffer127 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %buffer127, align 4
  %95 = ptrtoint ptr %src_port148 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %src_port148, align 2
  %dest149 = getelementptr inbounds %struct.sctphdr, ptr %buffer127, i32 0, i32 1
  %96 = ptrtoint ptr %dest149 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %dest149, align 2
  %98 = ptrtoint ptr %dst_port331 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %dst_port331, align 4
  br label %for.inc

if.then155:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %buffer127 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %buffer127, align 4
  %101 = ptrtoint ptr %src_port158 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %src_port158, align 2
  %dest159 = getelementptr inbounds %struct.sctphdr, ptr %buffer127, i32 0, i32 1
  %102 = ptrtoint ptr %dest159 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %dest159, align 2
  %104 = ptrtoint ptr %dst_port337 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %dst_port337, align 4
  br label %for.inc

sw.bb165:                                         ; preds = %for.body
  %105 = zext i32 %l3.0575 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %l3.0575, label %sw.bb165.if.end176_crit_edge [
    i32 4, label %sw.bb165.if.end176.sink.split_crit_edge
    i32 5, label %if.then173
  ]

sw.bb165.if.end176.sink.split_crit_edge:          ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176.sink.split

sw.bb165.if.end176_crit_edge:                     ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.then173:                                       ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176.sink.split

if.end176.sink.split:                             ; preds = %if.then173, %sw.bb165.if.end176.sink.split_crit_edge
  %.sink = phi i32 [ 11, %if.then173 ], [ 10, %sw.bb165.if.end176.sink.split_crit_edge ]
  %106 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %.sink, ptr %flow_type344, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.end176.sink.split, %sw.bb165.if.end176_crit_edge
  %field_selector177 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %107 = ptrtoint ptr %field_selector177 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %field_selector177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool178.not = icmp eq i32 %108, 0
  br i1 %tobool178.not, label %if.end176.for.inc_crit_edge, label %if.then179

if.end176.for.inc_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then179:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  %buffer180 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 2
  %109 = ptrtoint ptr %buffer180 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %buffer180, align 4
  %111 = ptrtoint ptr %l2tpv3_data to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %l2tpv3_data, align 4
  br label %for.inc

sw.bb183:                                         ; preds = %for.body
  %buffer184 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %l3.0575)
  %cmp186 = icmp eq i32 %l3.0575, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %l3.0575)
  %cmp193 = icmp eq i32 %l3.0575, 5
  br i1 %cmp186, label %if.end227.thread, label %if.else208

if.else208:                                       ; preds = %sw.bb183
  br i1 %cmp193, label %if.end227, label %if.else208.for.inc_crit_edge

if.else208.for.inc_crit_edge:                     ; preds = %if.else208
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end227:                                        ; preds = %if.else208
  %112 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 13, ptr %flow_type344, align 4
  %field_selector228 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %113 = ptrtoint ptr %field_selector228 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %field_selector228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool229.not = icmp eq i32 %114, 0
  %cmp193.not = xor i1 %cmp193, true
  %brmerge = select i1 %tobool229.not, i1 true, i1 %cmp193.not
  br i1 %brmerge, label %if.end227.for.inc_crit_edge, label %if.then238

if.end227.for.inc_crit_edge:                      ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end227.thread:                                 ; preds = %sw.bb183
  %115 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 12, ptr %flow_type344, align 4
  %field_selector228558 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %116 = ptrtoint ptr %field_selector228558 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %field_selector228558, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool229.not559 = icmp eq i32 %117, 0
  br i1 %tobool229.not559, label %if.end227.thread.for.inc_crit_edge, label %if.then233

if.end227.thread.for.inc_crit_edge:               ; preds = %if.end227.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then233:                                       ; preds = %if.end227.thread
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %buffer184 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %buffer184, align 4
  %120 = ptrtoint ptr %sec_parm_idx267 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %sec_parm_idx267, align 4
  br label %for.inc

if.then238:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %buffer184 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %buffer184, align 4
  %123 = ptrtoint ptr %sec_parm_idx274 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %sec_parm_idx274, align 4
  br label %for.inc

sw.bb245:                                         ; preds = %for.body
  %buffer246 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 2
  %124 = zext i32 %l3.0575 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %l3.0575, label %sw.bb245.for.inc_crit_edge [
    i32 4, label %if.end258.thread
    i32 5, label %if.end258
  ]

sw.bb245.for.inc_crit_edge:                       ; preds = %sw.bb245
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end258:                                        ; preds = %sw.bb245
  %125 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 15, ptr %flow_type344, align 4
  %field_selector259 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %126 = ptrtoint ptr %field_selector259 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %field_selector259, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool260.not.not = icmp eq i32 %127, 0
  br i1 %tobool260.not.not, label %if.end258.for.inc_crit_edge, label %if.then271

if.end258.for.inc_crit_edge:                      ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end258.thread:                                 ; preds = %sw.bb245
  %128 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 14, ptr %flow_type344, align 4
  %field_selector259560 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %129 = ptrtoint ptr %field_selector259560 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %field_selector259560, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool260.not561 = icmp eq i32 %130, 0
  br i1 %tobool260.not561, label %if.end258.thread.for.inc_crit_edge, label %if.then264

if.end258.thread.for.inc_crit_edge:               ; preds = %if.end258.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then264:                                       ; preds = %if.end258.thread
  call void @__sanitizer_cov_trace_pc() #10
  %spi265 = getelementptr inbounds %struct.ip_auth_hdr, ptr %buffer246, i32 0, i32 3
  %131 = ptrtoint ptr %spi265 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %spi265, align 4
  %133 = ptrtoint ptr %sec_parm_idx267 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %sec_parm_idx267, align 4
  br label %for.inc

if.then271:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #10
  %spi272 = getelementptr inbounds %struct.ip_auth_hdr, ptr %buffer246, i32 0, i32 3
  %134 = ptrtoint ptr %spi272 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %spi272, align 4
  %136 = ptrtoint ptr %sec_parm_idx274 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %sec_parm_idx274, align 4
  br label %for.inc

sw.bb278:                                         ; preds = %for.body
  %buffer279 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 2
  %137 = ptrtoint ptr %buffer279 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %buffer279, align 1
  %139 = and i8 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %l3.0575)
  %cmp285 = icmp eq i32 %l3.0575, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp289 = icmp eq i8 %139, 0
  %or.cond = select i1 %cmp285, i1 %cmp289, i1 false
  br i1 %or.cond, label %sw.bb278.if.end323.sink.split_crit_edge, label %if.else293

sw.bb278.if.end323.sink.split_crit_edge:          ; preds = %sw.bb278
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end323.sink.split

if.else293:                                       ; preds = %sw.bb278
  %cmp285.not = xor i1 %cmp285, true
  %or.cond545 = select i1 %cmp285.not, i1 true, i1 %cmp289
  br i1 %or.cond545, label %if.else302, label %if.else293.if.end323.sink.split_crit_edge

if.else293.if.end323.sink.split_crit_edge:        ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end323.sink.split

if.else302:                                       ; preds = %if.else293
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %l3.0575)
  %cmp303 = icmp eq i32 %l3.0575, 5
  %or.cond546 = select i1 %cmp303, i1 %cmp289, i1 false
  br i1 %or.cond546, label %if.else302.if.end323.sink.split_crit_edge, label %if.else311

if.else302.if.end323.sink.split_crit_edge:        ; preds = %if.else302
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end323.sink.split

if.else311:                                       ; preds = %if.else302
  %cmp303.not = xor i1 %cmp303, true
  %or.cond547 = select i1 %cmp303.not, i1 true, i1 %cmp289
  br i1 %or.cond547, label %if.else311.if.end323_crit_edge, label %if.else311.if.end323.sink.split_crit_edge

if.else311.if.end323.sink.split_crit_edge:        ; preds = %if.else311
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end323.sink.split

if.else311.if.end323_crit_edge:                   ; preds = %if.else311
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end323

if.end323.sink.split:                             ; preds = %if.else311.if.end323.sink.split_crit_edge, %if.else302.if.end323.sink.split_crit_edge, %if.else293.if.end323.sink.split_crit_edge, %sw.bb278.if.end323.sink.split_crit_edge
  %.sink603 = phi i32 [ 18, %sw.bb278.if.end323.sink.split_crit_edge ], [ 19, %if.else293.if.end323.sink.split_crit_edge ], [ 20, %if.else302.if.end323.sink.split_crit_edge ], [ 21, %if.else311.if.end323.sink.split_crit_edge ]
  %140 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %.sink603, ptr %flow_type344, align 4
  br label %if.end323

if.end323:                                        ; preds = %if.end323.sink.split, %if.else311.if.end323_crit_edge
  %field_selector324 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %141 = ptrtoint ptr %field_selector324 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %field_selector324, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool325.not = icmp eq i32 %142, 0
  br i1 %tobool325.not, label %if.end323.for.inc_crit_edge, label %if.then326

if.end323.for.inc_crit_edge:                      ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then326:                                       ; preds = %if.end323
  br i1 %cmp285, label %if.then329, label %if.else332

if.then329:                                       ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %dst_port331 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 8805, ptr %dst_port331, align 4
  br label %for.inc

if.else332:                                       ; preds = %if.then326
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %l3.0575)
  %cmp333 = icmp eq i32 %l3.0575, 5
  br i1 %cmp333, label %if.then335, label %if.else332.for.inc_crit_edge

if.else332.for.inc_crit_edge:                     ; preds = %if.else332
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then335:                                       ; preds = %if.else332
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %dst_port337 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 8805, ptr %dst_port337, align 4
  br label %for.inc

sw.bb341:                                         ; preds = %for.body
  %145 = ptrtoint ptr %flow_type344 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 8, ptr %flow_type344, align 4
  %field_selector345 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %146 = ptrtoint ptr %field_selector345 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %field_selector345, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool346.not = icmp eq i32 %147, 0
  br i1 %tobool346.not, label %sw.bb341.if.end349_crit_edge, label %if.then347

sw.bb341.if.end349_crit_edge:                     ; preds = %sw.bb341
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end349

if.then347:                                       ; preds = %sw.bb341
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx348 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 2, i32 4
  %148 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx348, align 4
  %150 = ptrtoint ptr %teid to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %teid, align 4
  br label %if.end349

if.end349:                                        ; preds = %if.then347, %sw.bb341.if.end349_crit_edge
  %151 = ptrtoint ptr %ttype364 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 1, ptr %ttype364, align 8
  br label %for.inc

sw.bb350:                                         ; preds = %for.body
  %field_selector353 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 1
  %152 = ptrtoint ptr %field_selector353 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %field_selector353, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool354.not = icmp eq i32 %153, 0
  br i1 %tobool354.not, label %sw.bb350.if.end363_crit_edge, label %if.then355

sw.bb350.if.end363_crit_edge:                     ; preds = %sw.bb350
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end363

if.then355:                                       ; preds = %sw.bb350
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx356 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.0571, i32 2, i32 1
  %154 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx356, align 1
  %156 = ptrtoint ptr %qfi to i32
  call void @__asan_loadN_noabort(i32 %156, i32 2)
  %bf.load361 = load i16, ptr %qfi, align 1
  %157 = and i8 %155, 63
  %bf.value = zext i8 %157 to i16
  %bf.clear362 = and i16 %bf.load361, -64
  %bf.set = or i16 %bf.clear362, %bf.value
  store i16 %bf.set, ptr %qfi, align 1
  br label %if.end363

if.end363:                                        ; preds = %if.then355, %sw.bb350.if.end363_crit_edge
  %158 = ptrtoint ptr %ttype364 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 2, ptr %ttype364, align 8
  br label %for.inc

do.body365:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_parse_pattern.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_parse_pattern, %if.then377)) #8
          to label %cleanup394 [label %if.then377], !srcloc !226

if.then377:                                       ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx, align 4
  %vf_id379 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %161 = ptrtoint ptr %vf_id379 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %vf_id379, align 8
  %conv380 = zext i16 %162 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_parse_pattern.__UNIQUE_ID_ddebug629, ptr noundef %dev1, ptr noundef nonnull @.str.64, i32 noundef %160, i32 noundef %conv380) #8
  br label %cleanup394

for.inc:                                          ; preds = %if.end363, %if.end349, %if.then335, %if.else332.for.inc_crit_edge, %if.then329, %if.end323.for.inc_crit_edge, %if.then271, %if.then264, %if.end258.thread.for.inc_crit_edge, %if.end258.for.inc_crit_edge, %sw.bb245.for.inc_crit_edge, %if.then238, %if.then233, %if.end227.thread.for.inc_crit_edge, %if.end227.for.inc_crit_edge, %if.else208.for.inc_crit_edge, %if.then179, %if.end176.for.inc_crit_edge, %if.then155, %if.then145, %if.end139.thread.for.inc_crit_edge, %if.end139.for.inc_crit_edge, %sw.bb126.for.inc_crit_edge, %if.then116, %if.then106, %if.end100.thread.for.inc_crit_edge, %if.end100.for.inc_crit_edge, %sw.bb87.for.inc_crit_edge, %if.then77, %if.then71, %if.end65.thread.for.inc_crit_edge, %if.end65.for.inc_crit_edge, %sw.bb53.for.inc_crit_edge, %if.then33, %sw.bb27.for.inc_crit_edge, %if.then20, %sw.bb14.for.inc_crit_edge, %if.then12, %sw.bb.for.inc_crit_edge
  %l3.2.ph = phi i32 [ 4, %if.end258.thread.for.inc_crit_edge ], [ 4, %if.end227.thread.for.inc_crit_edge ], [ 4, %if.end139.thread.for.inc_crit_edge ], [ 4, %if.end100.thread.for.inc_crit_edge ], [ 4, %if.end65.thread.for.inc_crit_edge ], [ %l3.0575, %sw.bb.for.inc_crit_edge ], [ %l3.0575, %if.then12 ], [ 4, %sw.bb14.for.inc_crit_edge ], [ 4, %if.then20 ], [ 5, %sw.bb27.for.inc_crit_edge ], [ 5, %if.then33 ], [ 5, %if.end65.for.inc_crit_edge ], [ 5, %if.then77 ], [ 4, %if.then71 ], [ 5, %if.end100.for.inc_crit_edge ], [ 5, %if.then116 ], [ 4, %if.then106 ], [ 5, %if.end139.for.inc_crit_edge ], [ 5, %if.then155 ], [ 4, %if.then145 ], [ %l3.0575, %if.end176.for.inc_crit_edge ], [ %l3.0575, %if.then179 ], [ 5, %if.end227.for.inc_crit_edge ], [ 5, %if.then238 ], [ 4, %if.then233 ], [ 5, %if.end258.for.inc_crit_edge ], [ 5, %if.then271 ], [ 4, %if.then264 ], [ %l3.0575, %if.end323.for.inc_crit_edge ], [ %l3.0575, %if.else332.for.inc_crit_edge ], [ 5, %if.then335 ], [ 4, %if.then329 ], [ %l3.0575, %if.end349 ], [ %l3.0575, %if.end363 ], [ %l3.0575, %sw.bb53.for.inc_crit_edge ], [ %l3.0575, %sw.bb87.for.inc_crit_edge ], [ %l3.0575, %sw.bb126.for.inc_crit_edge ], [ %l3.0575, %if.else208.for.inc_crit_edge ], [ %l3.0575, %sw.bb245.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0571, 1
  %163 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %count, align 4
  %cmp9 = icmp slt i32 %inc, %164
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.inc.cleanup394_crit_edge

for.inc.cleanup394_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup394

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup394:                                       ; preds = %for.inc.cleanup394_crit_edge, %if.then377, %do.body365, %if.then5, %do.body, %for.cond.preheader.cleanup394_crit_edge
  %retval.2 = phi i32 [ -22, %if.then5 ], [ -22, %do.body ], [ -22, %do.body365 ], [ -22, %if.then377 ], [ 0, %for.cond.preheader.cleanup394_crit_edge ], [ 0, %for.inc.cleanup394_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vc_fdir_parse_action(ptr nocapture noundef readonly %vf, ptr nocapture noundef readonly %fltr, ptr nocapture noundef writeonly %conf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %action_set = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %action_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %action_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp sgt i32 %5, 8
  br i1 %cmp, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %action_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %action_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9151 = icmp sgt i32 %7, 0
  br i1 %cmp9151, label %for.body.lr.ph, label %for.cond.preheader.do.body52_crit_edge

for.cond.preheader.do.body52_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body52

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fltr_id = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 21
  %fdid_prio = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 22
  %dest_ctl19 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 17
  %q_index22 = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 14
  %q_region = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 11
  br label %for.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_parse_action, %if.then5)) #8
          to label %cleanup93 [label %if.then5], !srcloc !226

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %action_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %action_set, align 4
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %10 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug630, ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %9, i32 noundef %conv) #8
  br label %cleanup93

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dest_num.0155 = phi i32 [ 0, %for.body.lr.ph ], [ %dest_num.2.ph, %for.inc.for.body_crit_edge ]
  %mark_num.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %mark_num.2.ph, %for.inc.for.body_crit_edge ]
  %i.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc46, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 1, i32 1, i32 %i.0152
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %13, label %do.body27 [
    i32 2, label %sw.bb
    i32 0, label %sw.bb11
    i32 3, label %sw.bb14
    i32 4, label %sw.bb17
    i32 5, label %sw.bb24
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %dest_num.0155, 1
  %15 = ptrtoint ptr %dest_ctl19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %dest_ctl19, align 2
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc12 = add i32 %dest_num.0155, 1
  %16 = ptrtoint ptr %dest_ctl19 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %dest_ctl19, align 2
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc15 = add i32 %dest_num.0155, 1
  %17 = ptrtoint ptr %dest_ctl19 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %dest_ctl19, align 2
  %act_conf = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 1, i32 1, i32 %i.0152, i32 1
  %18 = ptrtoint ptr %act_conf to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %act_conf, align 4
  %20 = ptrtoint ptr %q_index22 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %q_index22, align 4
  br label %for.inc

sw.bb17:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc18 = add i32 %dest_num.0155, 1
  %21 = ptrtoint ptr %dest_ctl19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %dest_ctl19, align 2
  %act_conf20 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 1, i32 1, i32 %i.0152, i32 1
  %22 = ptrtoint ptr %act_conf20 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %act_conf20, align 4
  %24 = ptrtoint ptr %q_index22 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %q_index22, align 4
  %region = getelementptr inbounds %struct.anon.218, ptr %act_conf20, i32 0, i32 1
  %25 = ptrtoint ptr %region to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %region, align 2
  %27 = ptrtoint ptr %q_region to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %q_region, align 2
  br label %for.inc

sw.bb24:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc25 = add i32 %mark_num.0154, 1
  %act_conf26 = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 1, i32 1, i32 %i.0152, i32 1
  %28 = ptrtoint ptr %act_conf26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %act_conf26, align 4
  %30 = ptrtoint ptr %fltr_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %fltr_id, align 4
  %31 = ptrtoint ptr %fdid_prio to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %fdid_prio, align 4
  br label %for.inc

do.body27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_parse_action, %if.then39)) #8
          to label %cleanup93 [label %if.then39], !srcloc !226

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %vf_id41 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %34 = ptrtoint ptr %vf_id41 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vf_id41, align 8
  %conv42 = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug631, ptr noundef %dev1, ptr noundef nonnull @.str.67, i32 noundef %33, i32 noundef %conv42) #8
  br label %cleanup93

for.inc:                                          ; preds = %sw.bb24, %sw.bb17, %sw.bb14, %sw.bb11, %sw.bb
  %mark_num.2.ph = phi i32 [ %mark_num.0154, %sw.bb ], [ %mark_num.0154, %sw.bb11 ], [ %mark_num.0154, %sw.bb14 ], [ %mark_num.0154, %sw.bb17 ], [ %inc25, %sw.bb24 ]
  %dest_num.2.ph = phi i32 [ %inc, %sw.bb ], [ %inc12, %sw.bb11 ], [ %inc15, %sw.bb14 ], [ %inc18, %sw.bb17 ], [ %dest_num.0155, %sw.bb24 ]
  %inc46 = add nuw nsw i32 %i.0152, 1
  %36 = ptrtoint ptr %action_set to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %action_set, align 4
  %cmp9 = icmp slt i32 %inc46, %37
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dest_num.2.ph)
  %cond130 = icmp eq i32 %dest_num.2.ph, 1
  br i1 %cond130, label %if.end70, label %for.end.do.body52_crit_edge

for.end.do.body52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body52

do.body52:                                        ; preds = %for.end.do.body52_crit_edge, %for.cond.preheader.do.body52_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_parse_action, %if.then64)) #8
          to label %cleanup93 [label %if.then64], !srcloc !226

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id65 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %38 = ptrtoint ptr %vf_id65 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vf_id65, align 8
  %conv66 = zext i16 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug632, ptr noundef %dev1, ptr noundef nonnull @.str.68, i32 noundef %conv66) #8
  br label %cleanup93

if.end70:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mark_num.2.ph)
  %cmp71 = icmp ugt i32 %mark_num.2.ph, 1
  br i1 %cmp71, label %do.body74, label %if.end70.cleanup93_crit_edge

if.end70.cleanup93_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup93

do.body74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_parse_action, %if.then86)) #8
          to label %cleanup93 [label %if.then86], !srcloc !226

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id87 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %40 = ptrtoint ptr %vf_id87 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vf_id87, align 8
  %conv88 = zext i16 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug633, ptr noundef %dev1, ptr noundef nonnull @.str.69, i32 noundef %conv88) #8
  br label %cleanup93

cleanup93:                                        ; preds = %if.then86, %do.body74, %if.end70.cleanup93_crit_edge, %if.then64, %do.body52, %if.then39, %do.body27, %if.then5, %do.body
  %retval.2 = phi i32 [ -22, %if.then5 ], [ -22, %if.then64 ], [ -22, %if.then86 ], [ 0, %if.end70.cleanup93_crit_edge ], [ -22, %do.body ], [ -22, %do.body27 ], [ -22, %if.then39 ], [ -22, %do.body52 ], [ -22, %do.body74 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vc_fdir_set_flow_fld(ptr nocapture noundef readonly %vf, ptr nocapture noundef readonly %fltr, ptr nocapture noundef readonly %conf, ptr noundef %seg) unnamed_addr #0 align 64 {
entry:
  %fld = alloca [42 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %fld) #8
  %0 = call ptr @memset(ptr %fld, i32 255, i32 168)
  %1 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vf, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %count = getelementptr inbounds %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 2
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp47 = icmp sgt i32 %6, 0
  br i1 %cmp47, label %for.body.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %inset_flag.i = getelementptr inbounds %struct.virtchnl_fdir_fltr_conf, ptr %conf, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %fld_cnt.048 = phi i32 [ 0, %for.body.lr.ph ], [ %fld_cnt.3.ph, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.virtchnl_fdir_add, ptr %fltr, i32 0, i32 3, i32 0, i32 3, i32 %i.049
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %hdr.sroa.0.0.copyload.i = load i32, ptr %arrayidx, align 4
  %hdr.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %8 = ptrtoint ptr %hdr.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %hdr.sroa.5.0.copyload.i = load i32, ptr %hdr.sroa.5.0..sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hdr.sroa.5.0.copyload.i)
  %tobool.not44.i = icmp eq i32 %hdr.sroa.5.0.copyload.i, 0
  br i1 %tobool.not44.i, label %for.body.for.inc_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %fld_cnt.1 = phi i32 [ %fld_cnt.2, %for.inc.i.for.body.i_crit_edge ], [ %fld_cnt.048, %for.body.for.body.i_crit_edge ]
  %i.047.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %hdr.sroa.5.045.i = phi i32 [ %hdr.sroa.5.1.i, %for.inc.i.for.body.i_crit_edge ], [ %hdr.sroa.5.0.copyload.i, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [24 x %struct.virtchnl_fdir_inset_map], ptr @fdir_inset_map, i32 0, i32 %i.047.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  %shr.i = lshr i32 %10, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %hdr.sroa.0.0.copyload.i, i32 %shr.i)
  %cmp1.i = icmp eq i32 %hdr.sroa.0.0.copyload.i, %shr.i
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %and.i = and i32 %10, 31
  %shl.i = shl nuw i32 1, %and.i
  %and5.i = and i32 %shl.i, %hdr.sroa.5.045.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %11 = add nsw i32 %i.047.i, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %11)
  %12 = icmp ult i32 %11, -2
  br i1 %12, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true9.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %if.then.i
  %mask.i = getelementptr [24 x %struct.virtchnl_fdir_inset_map], ptr @fdir_inset_map, i32 0, i32 %i.047.i, i32 3
  %13 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %mask.i, align 8
  %15 = ptrtoint ptr %inset_flag.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %inset_flag.i, align 8
  %and12.i = and i64 %16, %14
  %flag.i = getelementptr [24 x %struct.virtchnl_fdir_inset_map], ptr @fdir_inset_map, i32 0, i32 %i.047.i, i32 2
  %17 = ptrtoint ptr %flag.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %flag.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and12.i, i64 %18)
  %cmp14.not.i = icmp eq i64 %and12.i, %18
  br i1 %cmp14.not.i, label %land.lhs.true9.i.if.end.i_crit_edge, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true9.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %fld17.i = getelementptr [24 x %struct.virtchnl_fdir_inset_map], ptr @fdir_inset_map, i32 0, i32 %i.047.i, i32 1
  %19 = ptrtoint ptr %fld17.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fld17.i, align 4
  %arrayidx18.i = getelementptr i32, ptr %fld, i32 %fld_cnt.1
  %21 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx18.i, align 4
  %add.i = add i32 %fld_cnt.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %add.i)
  %cmp19.i = icmp sgt i32 %add.i, 41
  br i1 %cmp19.i, label %if.end.i.cleanup20_crit_edge, label %if.end21.i

if.end.i.cleanup20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %shl.i, -1
  %and27.i = and i32 %hdr.sroa.5.045.i, %neg.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end21.i, %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %fld_cnt.2 = phi i32 [ %fld_cnt.1, %land.lhs.true.i.for.inc.i_crit_edge ], [ %add.i, %if.end21.i ], [ %fld_cnt.1, %land.lhs.true9.i.for.inc.i_crit_edge ], [ %fld_cnt.1, %for.body.i.for.inc.i_crit_edge ]
  %hdr.sroa.5.1.i = phi i32 [ %hdr.sroa.5.045.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %and27.i, %if.end21.i ], [ %hdr.sroa.5.045.i, %land.lhs.true9.i.for.inc.i_crit_edge ], [ %hdr.sroa.5.045.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.047.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %i.047.i)
  %cmp.i = icmp ugt i32 %i.047.i, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hdr.sroa.5.1.i)
  %tobool.not.i = icmp eq i32 %hdr.sroa.5.1.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %for.inc.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %fld_cnt.3.ph = phi i32 [ %fld_cnt.048, %for.body.for.inc_crit_edge ], [ %fld_cnt.2, %for.inc.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fld_cnt.3.ph)
  %cmp3 = icmp eq i32 %fld_cnt.3.ph, 0
  br i1 %cmp3, label %for.end.do.body_crit_edge, label %for.cond12.preheader

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond12.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fld_cnt.3.ph)
  %cmp1350 = icmp sgt i32 %fld_cnt.3.ph, 0
  br i1 %cmp1350, label %for.cond12.preheader.for.body15_crit_edge, label %for.cond12.preheader.cleanup20_crit_edge

for.cond12.preheader.cleanup20_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

for.cond12.preheader.for.body15_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body15

do.body:                                          ; preds = %for.end.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_set_flow_fld.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_set_flow_fld, %if.then9)) #8
          to label %cleanup20 [label %if.then9], !srcloc !226

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %22 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_set_flow_fld.__UNIQUE_ID_ddebug615, ptr noundef %dev1, ptr noundef nonnull @.str.76, i32 noundef %conv) #8
  br label %cleanup20

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond12.preheader.for.body15_crit_edge
  %i.151 = phi i32 [ %inc18, %for.body15.for.body15_crit_edge ], [ 0, %for.cond12.preheader.for.body15_crit_edge ]
  %arrayidx16 = getelementptr [42 x i32], ptr %fld, i32 0, i32 %i.151
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16, align 4
  tail call void @ice_flow_set_fld(ptr noundef %seg, i32 noundef %25, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1, i1 noundef zeroext false) #8
  %inc18 = add nuw nsw i32 %i.151, 1
  %exitcond53.not = icmp eq i32 %inc18, %fld_cnt.3.ph
  br i1 %exitcond53.not, label %for.body15.cleanup20_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.body15.cleanup20_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

cleanup20:                                        ; preds = %for.body15.cleanup20_crit_edge, %if.then9, %do.body, %for.cond12.preheader.cleanup20_crit_edge, %if.end.i.cleanup20_crit_edge
  %retval.2 = phi i32 [ -22, %if.then9 ], [ -22, %do.body ], [ 0, %for.cond12.preheader.cleanup20_crit_edge ], [ 0, %for.body15.cleanup20_crit_edge ], [ -22, %if.end.i.cleanup20_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %fld) #8
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vc_fdir_set_flow_hdr(ptr nocapture noundef readonly %vf, ptr nocapture noundef readonly %conf, ptr noundef %seg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flow_type = getelementptr inbounds %struct.ice_fdir_fltr, ptr %conf, i32 0, i32 1
  %0 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flow_type, align 8
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %1, label %do.body76 [
    i32 22, label %sw.bb
    i32 10, label %sw.bb3
    i32 12, label %sw.bb6
    i32 14, label %sw.bb9
    i32 16, label %sw.bb12
    i32 18, label %sw.bb15
    i32 19, label %sw.bb18
    i32 4, label %sw.bb21
    i32 2, label %sw.bb24
    i32 1, label %sw.bb27
    i32 5, label %entry.sw.bb30_crit_edge
    i32 6, label %entry.sw.bb30_crit_edge130
    i32 7, label %entry.sw.bb30_crit_edge131
    i32 8, label %entry.sw.bb30_crit_edge132
    i32 3, label %sw.bb43
    i32 11, label %sw.bb46
    i32 13, label %sw.bb49
    i32 15, label %sw.bb52
    i32 17, label %sw.bb55
    i32 20, label %sw.bb58
    i32 21, label %sw.bb61
    i32 27, label %sw.bb64
    i32 25, label %sw.bb67
    i32 24, label %sw.bb70
    i32 26, label %sw.bb73
  ]

entry.sw.bb30_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

entry.sw.bb30_crit_edge131:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

entry.sw.bb30_crit_edge130:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

entry.sw.bb30_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seg, align 8
  %or = or i32 %8, 8388608
  store i32 %or, ptr %seg, align 8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seg, align 8
  %or5 = or i32 %10, 537395204
  store i32 %or5, ptr %seg, align 8
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seg, align 8
  %or8 = or i32 %12, 537919492
  store i32 %or8, ptr %seg, align 8
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seg, align 8
  %or11 = or i32 %14, 538968068
  store i32 %or11, ptr %seg, align 8
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seg, align 8
  %or14 = or i32 %16, 541065220
  store i32 %or14, ptr %seg, align 8
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seg, align 8
  %or17 = or i32 %18, 537001988
  store i32 %or17, ptr %seg, align 8
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seg, align 8
  %or20 = or i32 %20, 537133060
  store i32 %or20, ptr %seg, align 8
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %seg, align 8
  %or23 = or i32 %22, 536870916
  store i32 %or23, ptr %seg, align 8
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %seg, align 8
  %or26 = or i32 %24, 536870980
  store i32 %or26, ptr %seg, align 8
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %seg, align 8
  %or29 = or i32 %26, 536871044
  store i32 %or29, ptr %seg, align 8
  br label %cleanup

sw.bb30:                                          ; preds = %entry.sw.bb30_crit_edge, %entry.sw.bb30_crit_edge130, %entry.sw.bb30_crit_edge131, %entry.sw.bb30_crit_edge132
  %ttype1 = getelementptr inbounds %struct.virtchnl_fdir_fltr_conf, ptr %conf, i32 0, i32 1
  %27 = ptrtoint ptr %ttype1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ttype1, align 8
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %28, label %do.body [
    i32 1, label %if.then
    i32 2, label %if.then34
  ]

if.then:                                          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %seg, align 8
  %or32 = or i32 %31, 536875012
  store i32 %or32, ptr %seg, align 8
  br label %cleanup

if.then34:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %seg, align 8
  %or36 = or i32 %33, 536883204
  store i32 %or36, ptr %seg, align 8
  br label %cleanup

do.body:                                          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_set_flow_hdr.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_set_flow_hdr, %if.then40)) #8
          to label %cleanup [label %if.then40], !srcloc !226

if.then40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %34 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_set_flow_hdr.__UNIQUE_ID_ddebug616, ptr noundef %dev2, ptr noundef nonnull @.str.78, i32 noundef %1, i32 noundef %conv) #8
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %seg, align 8
  %or45 = or i32 %37, 536871172
  store i32 %or45, ptr %seg, align 8
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %seg, align 8
  %or48 = or i32 %39, 537395208
  store i32 %or48, ptr %seg, align 8
  br label %cleanup

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %seg, align 8
  %or51 = or i32 %41, 537919496
  store i32 %or51, ptr %seg, align 8
  br label %cleanup

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %seg, align 8
  %or54 = or i32 %43, 538968072
  store i32 %or54, ptr %seg, align 8
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %seg, align 8
  %or57 = or i32 %45, 541065224
  store i32 %or57, ptr %seg, align 8
  br label %cleanup

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %seg, align 8
  %or60 = or i32 %47, 537001992
  store i32 %or60, ptr %seg, align 8
  br label %cleanup

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %seg, align 8
  %or63 = or i32 %49, 537133064
  store i32 %or63, ptr %seg, align 8
  br label %cleanup

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %seg, align 8
  %or66 = or i32 %51, 536870920
  store i32 %or66, ptr %seg, align 8
  br label %cleanup

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %seg, align 8
  %or69 = or i32 %53, 536870984
  store i32 %or69, ptr %seg, align 8
  br label %cleanup

sw.bb70:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %seg, align 8
  %or72 = or i32 %55, 536871048
  store i32 %or72, ptr %seg, align 8
  br label %cleanup

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %seg, align 8
  %or75 = or i32 %57, 536871176
  store i32 %or75, ptr %seg, align 8
  br label %cleanup

do.body76:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_set_flow_hdr.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_set_flow_hdr, %if.then88)) #8
          to label %cleanup [label %if.then88], !srcloc !226

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id89 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %58 = ptrtoint ptr %vf_id89 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vf_id89, align 8
  %conv90 = zext i16 %59 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_set_flow_hdr.__UNIQUE_ID_ddebug617, ptr noundef %dev2, ptr noundef nonnull @.str.79, i32 noundef %1, i32 noundef %conv90) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %do.body76, %sw.bb73, %sw.bb70, %sw.bb67, %sw.bb64, %sw.bb61, %sw.bb58, %sw.bb55, %sw.bb52, %sw.bb49, %sw.bb46, %sw.bb43, %if.then40, %do.body, %if.then34, %if.then, %sw.bb27, %sw.bb24, %sw.bb21, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb
  %retval.0 = phi i32 [ -22, %if.then40 ], [ -22, %if.then88 ], [ 0, %if.then ], [ 0, %if.then34 ], [ 0, %sw.bb73 ], [ 0, %sw.bb70 ], [ 0, %sw.bb67 ], [ 0, %sw.bb64 ], [ 0, %sw.bb61 ], [ 0, %sw.bb58 ], [ 0, %sw.bb55 ], [ 0, %sw.bb52 ], [ 0, %sw.bb49 ], [ 0, %sw.bb46 ], [ 0, %sw.bb43 ], [ 0, %sw.bb27 ], [ 0, %sw.bb24 ], [ 0, %sw.bb21 ], [ 0, %sw.bb18 ], [ 0, %sw.bb15 ], [ 0, %sw.bb12 ], [ 0, %sw.bb9 ], [ 0, %sw.bb6 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ -22, %do.body ], [ -22, %do.body76 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_vc_fdir_write_flow_prof(ptr nocapture noundef %vf, i32 noundef %flow, ptr noundef %seg) unnamed_addr #0 align 64 {
entry:
  %prof = alloca ptr, align 4
  %entry1_h = alloca i64, align 8
  %entry2_h = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fdir1 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prof) #8
  %0 = ptrtoint ptr %prof to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %prof, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry1_h) #8
  %1 = ptrtoint ptr %entry1_h to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %entry1_h, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry2_h) #8
  %2 = ptrtoint ptr %entry2_h to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %entry2_h, align 8
  %3 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vf, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %hw4 = getelementptr inbounds %struct.ice_pf, ptr %4, i32 0, i32 58
  %vsi = getelementptr inbounds %struct.ice_pf, ptr %4, i32 0, i32 9
  %7 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vsi, align 8
  %lan_vsi_idx = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 3
  %9 = ptrtoint ptr %lan_vsi_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %lan_vsi_idx, align 2
  %idxprom = zext i16 %10 to i32
  %arrayidx = getelementptr ptr, ptr %8, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_vsi_idx = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 4
  %13 = ptrtoint ptr %ctrl_vsi_idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ctrl_vsi_idx, align 4
  %idxprom6 = zext i16 %14 to i32
  %arrayidx7 = getelementptr ptr, ptr %8, i32 %idxprom6
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %fdir_prof = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %fdir_prof to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fdir_prof, align 8
  %arrayidx11 = getelementptr ptr, ptr %18, i32 %flow
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool13.not = icmp eq ptr %22, null
  br i1 %tobool13.not, label %if.end10.if.end47_crit_edge, label %if.then14

if.end10.if.end47_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then14:                                        ; preds = %if.end10
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1096) %22, ptr noundef dereferenceable(1096) %seg, i32 1096) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool15.not = icmp eq i32 %bcmp, 0
  br i1 %tobool15.not, label %do.body, label %if.end23

do.body:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_write_flow_prof, %if.then21)) #8
          to label %cleanup [label %if.then21], !srcloc !226

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %23 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug619, ptr noundef %dev3, ptr noundef nonnull @.str.81, i32 noundef %conv) #8
  br label %cleanup

if.end23:                                         ; preds = %if.then14
  %arrayidx24 = getelementptr [28 x [2 x i16]], ptr %fdir1, i32 0, i32 %flow
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool26.not = icmp eq i16 %26, 0
  br i1 %tobool26.not, label %if.end46, label %if.then27

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_write_flow_prof, %if.then40)) #8
          to label %cleanup [label %if.then40], !srcloc !226

if.then40:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id41 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %27 = ptrtoint ptr %vf_id41 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vf_id41, align 8
  %conv42 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug620, ptr noundef %dev3, ptr noundef nonnull @.str.82, i32 noundef %conv42) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ice_vc_fdir_rem_prof(ptr noundef %vf, i32 noundef %flow, i32 noundef 0)
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end10.if.end47_crit_edge
  %conv49 = zext i32 %flow to i64
  %vsi_num = getelementptr inbounds %struct.ice_vsi, ptr %12, i32 0, i32 18
  %29 = ptrtoint ptr %vsi_num to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vsi_num, align 8
  %conv50 = zext i16 %30 to i64
  %shl = shl nuw nsw i64 %conv50, 32
  %or = or i64 %shl, %conv49
  %call54 = call i32 @ice_flow_add_prof(ptr noundef %hw4, i32 noundef 2, i32 noundef 2, i64 noundef %or, ptr noundef %seg, i8 noundef zeroext 1, ptr noundef nonnull %prof) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end75, label %do.body57

do.body57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_write_flow_prof, %if.then69)) #8
          to label %cleanup [label %if.then69], !srcloc !226

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id70 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %31 = ptrtoint ptr %vf_id70 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vf_id70, align 8
  %conv71 = zext i16 %32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug621, ptr noundef %dev3, ptr noundef nonnull @.str.83, i32 noundef %flow, i32 noundef %conv71) #8
  br label %cleanup

if.end75:                                         ; preds = %if.end47
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %12, i32 0, i32 19
  %33 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %idx, align 2
  %conv76 = zext i16 %34 to i64
  %call78 = call i32 @ice_flow_add_entry(ptr noundef %hw4, i32 noundef 2, i64 noundef %or, i64 noundef %conv76, i16 noundef zeroext %34, i32 noundef 1, ptr noundef %seg, ptr noundef nonnull %entry1_h) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end99, label %do.body81

do.body81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_write_flow_prof, %if.then93)) #8
          to label %err_prof [label %if.then93], !srcloc !226

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id94 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %35 = ptrtoint ptr %vf_id94 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vf_id94, align 8
  %conv95 = zext i16 %36 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug622, ptr noundef %dev3, ptr noundef nonnull @.str.84, i32 noundef %flow, i32 noundef %conv95) #8
  br label %err_prof

if.end99:                                         ; preds = %if.end75
  %37 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %idx, align 2
  %conv101 = zext i16 %38 to i64
  %idx102 = getelementptr inbounds %struct.ice_vsi, ptr %16, i32 0, i32 19
  %39 = ptrtoint ptr %idx102 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %idx102, align 2
  %call103 = call i32 @ice_flow_add_entry(ptr noundef %hw4, i32 noundef 2, i64 noundef %or, i64 noundef %conv101, i16 noundef zeroext %40, i32 noundef 1, ptr noundef %seg, ptr noundef nonnull %entry2_h) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end124, label %do.body106

do.body106:                                       ; preds = %if.end99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_write_flow_prof, %if.then118)) #8
          to label %err_entry_1 [label %if.then118], !srcloc !226

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id119 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %41 = ptrtoint ptr %vf_id119 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vf_id119, align 8
  %conv120 = zext i16 %42 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug623, ptr noundef %dev3, ptr noundef nonnull @.str.85, i32 noundef %flow, i32 noundef %conv120) #8
  br label %err_entry_1

if.end124:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %seg, ptr %20, align 4
  %cnt = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %20, i32 0, i32 1
  %44 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cnt, align 8
  %arrayidx127 = getelementptr %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 1, i32 %flow
  %45 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx127, align 4
  %46 = ptrtoint ptr %entry1_h to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %entry1_h, align 8
  %48 = load i32, ptr %cnt, align 8
  %arrayidx130 = getelementptr %struct.ice_fd_hw_prof, ptr %20, i32 0, i32 2, i32 %48
  %49 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %47, ptr %arrayidx130, align 8
  %50 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %idx, align 2
  %arrayidx134 = getelementptr %struct.ice_fd_hw_prof, ptr %20, i32 0, i32 3, i32 %48
  %52 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %arrayidx134, align 2
  %53 = load i32, ptr %cnt, align 8
  %inc = add i32 %53, 1
  store i32 %inc, ptr %cnt, align 8
  %54 = load i32, ptr %arrayidx127, align 4
  %inc139 = add i32 %54, 1
  store i32 %inc139, ptr %arrayidx127, align 4
  %55 = ptrtoint ptr %entry2_h to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %entry2_h, align 8
  %57 = load i32, ptr %cnt, align 8
  %arrayidx142 = getelementptr %struct.ice_fd_hw_prof, ptr %20, i32 0, i32 2, i32 %57
  %58 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %56, ptr %arrayidx142, align 8
  %59 = ptrtoint ptr %idx102 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %idx102, align 2
  %arrayidx147 = getelementptr %struct.ice_fd_hw_prof, ptr %20, i32 0, i32 3, i32 %57
  %61 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %arrayidx147, align 2
  %62 = load i32, ptr %cnt, align 8
  %inc149 = add i32 %62, 1
  store i32 %inc149, ptr %cnt, align 8
  %63 = load i32, ptr %arrayidx127, align 4
  %inc153 = add i32 %63, 1
  store i32 %inc153, ptr %arrayidx127, align 4
  br label %cleanup

err_entry_1:                                      ; preds = %if.then118, %do.body106
  %64 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %idx, align 2
  %call155 = call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw4, i16 noundef zeroext %65) #8
  %call156 = call i32 @ice_rem_prof_id_flow(ptr noundef %hw4, i32 noundef 2, i16 noundef zeroext %call155, i64 noundef %or) #8
  %66 = ptrtoint ptr %entry1_h to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %entry1_h, align 8
  %call157 = call i32 @ice_flow_rem_entry(ptr noundef %hw4, i32 noundef 2, i64 noundef %67) #8
  br label %err_prof

err_prof:                                         ; preds = %err_entry_1, %if.then93, %do.body81
  %ret.0 = phi i32 [ %call78, %if.then93 ], [ %call103, %err_entry_1 ], [ %call78, %do.body81 ]
  %call158 = call i32 @ice_flow_rem_prof(ptr noundef %hw4, i32 noundef 2, i64 noundef %or) #8
  br label %cleanup

cleanup:                                          ; preds = %err_prof, %if.end124, %if.then69, %do.body57, %if.then40, %if.then27, %if.then21, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end124 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -17, %if.then21 ], [ -22, %if.then40 ], [ %call54, %if.then69 ], [ %ret.0, %err_prof ], [ -17, %do.body ], [ -22, %if.then27 ], [ %call54, %do.body57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry2_h) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry1_h) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prof) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_flow_set_fld(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_vc_fdir_rem_prof(ptr nocapture noundef %vf, i32 noundef %flow, i32 noundef %tun) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %hw4 = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %fdir_prof = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %fdir_prof to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdir_prof, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %5, i32 %flow
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vsi = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsi, align 8
  %lan_vsi_idx = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 3
  %10 = ptrtoint ptr %lan_vsi_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %lan_vsi_idx, align 2
  %idxprom = zext i16 %11 to i32
  %arrayidx9 = getelementptr ptr, ptr %9, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %do.body, label %if.end17

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_vc_fdir_rem_prof.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_vc_fdir_rem_prof, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !226

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %14 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vf_id, align 8
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_vc_fdir_rem_prof.__UNIQUE_ID_ddebug618, ptr noundef %dev3, ptr noundef nonnull @.str.87, i32 noundef %conv) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %arrayidx19 = getelementptr %struct.ice_vf, ptr %vf, i32 0, i32 5, i32 1, i32 %flow, i32 %tun
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp eq i32 %17, 0
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tun)
  %tobool23.not = icmp eq i32 %tun, 0
  %cond = select i1 %tobool23.not, i32 0, i32 28
  %add = add i32 %cond, %flow
  %conv24 = zext i32 %add to i64
  %vsi_num = getelementptr inbounds %struct.ice_vsi, ptr %13, i32 0, i32 18
  %18 = ptrtoint ptr %vsi_num to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vsi_num, align 8
  %conv25 = zext i16 %19 to i64
  %shl = shl nuw nsw i64 %conv25, 32
  %or = or i64 %shl, %conv24
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp117 = icmp sgt i32 %21, 0
  br i1 %cmp117, label %if.end22.for.body_crit_edge, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end22.for.body_crit_edge
  %i.0118 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end22.for.body_crit_edge ]
  %arrayidx32 = getelementptr %struct.ice_fd_hw_prof, ptr %7, i32 0, i32 2, i32 %i.0118, i32 %tun
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx32, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool33.not = icmp eq i64 %23, 0
  br i1 %tobool33.not, label %for.body.for.inc_crit_edge, label %if.then34

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx36 = getelementptr %struct.ice_fd_hw_prof, ptr %7, i32 0, i32 3, i32 %i.0118
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx36, align 2
  %call37 = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw4, i16 noundef zeroext %25) #8
  %call38 = tail call i32 @ice_rem_prof_id_flow(ptr noundef %hw4, i32 noundef 2, i16 noundef zeroext %call37, i64 noundef %or) #8
  %26 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx32, align 8
  %call42 = tail call i32 @ice_flow_rem_entry(ptr noundef %hw4, i32 noundef 2, i64 noundef %27) #8
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %arrayidx32, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0118, 1
  %29 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx19, align 4
  %cmp = icmp slt i32 %inc, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge
  %call47 = tail call i32 @ice_flow_rem_prof(ptr noundef %hw4, i32 noundef 2, i64 noundef %or) #8
  %arrayidx48 = getelementptr [2 x ptr], ptr %7, i32 0, i32 %tun
  %31 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx48, align 4
  tail call void @devm_kfree(ptr noundef %dev3, ptr noundef %32) #8
  %33 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx48, align 4
  %cnt = getelementptr inbounds %struct.ice_fd_hw_prof, ptr %7, i32 0, i32 1
  %34 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp52120 = icmp sgt i32 %35, 0
  br i1 %cmp52120, label %for.end.for.body54_crit_edge, label %for.end.for.end59_crit_edge

for.end.for.end59_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end59

for.end.for.body54_crit_edge:                     ; preds = %for.end
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %for.end.for.body54_crit_edge
  %i.1121 = phi i32 [ %inc58, %for.body54.for.body54_crit_edge ], [ 0, %for.end.for.body54_crit_edge ]
  %arrayidx56 = getelementptr %struct.ice_fd_hw_prof, ptr %7, i32 0, i32 3, i32 %i.1121
  %36 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %arrayidx56, align 2
  %inc58 = add nuw nsw i32 %i.1121, 1
  %37 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cnt, align 8
  %cmp52 = icmp slt i32 %inc58, %38
  br i1 %cmp52, label %for.body54.for.body54_crit_edge, label %for.body54.for.end59_crit_edge

for.body54.for.end59_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end59

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.end59:                                        ; preds = %for.body54.for.end59_crit_edge, %for.end.for.end59_crit_edge
  %39 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx19, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end59, %if.end17.cleanup_crit_edge, %if.then15, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_flow_add_prof(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_flow_add_entry(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_rem_prof_id_flow(ptr noundef, i32 noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_flow_rem_entry(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_flow_rem_prof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_vf_fdir_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr6 = getelementptr i8, ptr %t, i32 -560
  %0 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr6, align 8
  %ctx_lock = getelementptr i8, ptr %t, i32 -48
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #8
  %flags14 = getelementptr inbounds %struct.ice_vf_fdir_ctx, ptr %t, i32 0, i32 4
  %2 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags14, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end55

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call11) #8
  %.b82 = load i1, ptr @ice_vf_fdir_timer.__already_done, align 1
  br i1 %.b82, label %if.then.cleanup_crit_edge, label %if.then22, !prof !224

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ice_vf_fdir_timer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1265, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end55:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and57 = and i32 %3, -2
  %4 = ptrtoint ptr %flags14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and57, ptr %flags14, align 8
  %flags58 = getelementptr i8, ptr %t, i32 184
  %5 = ptrtoint ptr %flags58 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags58, align 8
  %or = or i32 %6, 1
  store i32 %or, ptr %flags58, align 8
  %conf = getelementptr inbounds %struct.ice_vf_fdir_ctx, ptr %t, i32 0, i32 5
  %7 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conf, align 4
  %conf59 = getelementptr i8, ptr %t, i32 188
  %9 = ptrtoint ptr %conf59 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %conf59, align 4
  %stat = getelementptr i8, ptr %t, i32 148
  %10 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %stat, align 4
  %v_opcode = getelementptr inbounds %struct.ice_vf_fdir_ctx, ptr %t, i32 0, i32 1
  %11 = ptrtoint ptr %v_opcode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v_opcode, align 8
  %v_opcode60 = getelementptr i8, ptr %t, i32 144
  %13 = ptrtoint ptr %v_opcode60 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %v_opcode60, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call11) #8
  %state = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 30, ptr noundef %state) #8
  tail call void @ice_service_task_schedule(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then22, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fdir_get_prgm_desc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_fdir_get_gen_prgm_pkt(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_prgm_fdir_fltr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59, !60, !62, !64, !65, !67, !68, !69, !71, !73, !74, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !120, !122, !123, !124, !126, !127, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !164, !166, !168, !169, !170, !172, !173, !175, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !204, !205, !206, !208, !209, !211, !212, !214}
!llvm.module.flags = !{!215, !216, !217, !218, !219, !220, !221, !222}
!llvm.ident = !{!223}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1308, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1323, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ice_vc_fdir_irq_handler._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @ice_vc_fdir_irq_handler._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1604, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ice_flush_fdir_ctx._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @ice_flush_fdir_ctx._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1618, i32 4}
!17 = !{ptr @ice_flush_fdir_ctx._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @ice_flush_fdir_ctx._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @ice_flush_fdir_ctx._entry.10, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1630, i32 4}
!21 = !{ptr @ice_flush_fdir_ctx._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1717, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug643, !23, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1724, i32 3}
!29 = !{ptr @ice_vc_add_fdir_fltr._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ice_vc_add_fdir_fltr._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1732, i32 3}
!33 = !{ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug644, !32, !"__UNIQUE_ID_ddebug644", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1739, i32 3}
!36 = !{ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug645, !35, !"__UNIQUE_ID_ddebug645", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1748, i32 3}
!39 = !{ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug646, !38, !"__UNIQUE_ID_ddebug646", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1765, i32 3}
!42 = !{ptr @ice_vc_add_fdir_fltr._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ice_vc_add_fdir_fltr._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1774, i32 3}
!46 = !{ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug647, !45, !"__UNIQUE_ID_ddebug647", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1783, i32 3}
!49 = !{ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug648, !48, !"__UNIQUE_ID_ddebug648", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1791, i32 3}
!52 = !{ptr @ice_vc_add_fdir_fltr.__UNIQUE_ID_ddebug649, !51, !"__UNIQUE_ID_ddebug649", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1799, i32 3}
!55 = !{ptr @ice_vc_add_fdir_fltr._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ice_vc_add_fdir_fltr._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1844, i32 3}
!59 = !{ptr @ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug650, !58, !"__UNIQUE_ID_ddebug650", i1 false, i1 false}
!60 = !{ptr @ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug651, !61, !"__UNIQUE_ID_ddebug651", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1851, i32 3}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1861, i32 3}
!64 = !{ptr @ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug652, !63, !"__UNIQUE_ID_ddebug652", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1870, i32 3}
!67 = !{ptr @ice_vc_del_fdir_fltr._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ice_vc_del_fdir_fltr._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @ice_vc_del_fdir_fltr.__UNIQUE_ID_ddebug653, !70, !"__UNIQUE_ID_ddebug653", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1878, i32 3}
!71 = !{ptr @ice_vc_del_fdir_fltr._entry.31, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1886, i32 3}
!73 = !{ptr @ice_vc_del_fdir_fltr._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @ice_vf_fdir_init.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1915, i32 2}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1378, i32 3}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ice_vf_verify_rx_desc._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @ice_vf_verify_rx_desc._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1387, i32 3}
!84 = !{ptr @ice_vf_verify_rx_desc._entry.36, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ice_vf_verify_rx_desc._entry_ptr.38, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1396, i32 3}
!88 = !{ptr @ice_vf_verify_rx_desc._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ice_vf_verify_rx_desc._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1407, i32 4}
!92 = !{ptr @ice_vf_verify_rx_desc._entry.42, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ice_vf_verify_rx_desc._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1411, i32 4}
!96 = !{ptr @ice_vf_verify_rx_desc._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ice_vf_verify_rx_desc._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1422, i32 3}
!100 = !{ptr @ice_vf_verify_rx_desc._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ice_vf_verify_rx_desc._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1350, i32 2}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ice_vf_fdir_dump_info.__UNIQUE_ID_ddebug637, !103, !"__UNIQUE_ID_ddebug637", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1467, i32 3}
!108 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ice_vc_add_fdir_fltr_post.__UNIQUE_ID_ddebug638, !107, !"__UNIQUE_ID_ddebug638", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1483, i32 2}
!112 = !{ptr @ice_vc_add_fdir_fltr_post.__UNIQUE_ID_ddebug639, !111, !"__UNIQUE_ID_ddebug639", i1 false, i1 false}
!113 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1531, i32 3}
!117 = !{ptr @ice_vc_del_fdir_fltr_post.__UNIQUE_ID_ddebug640, !116, !"__UNIQUE_ID_ddebug640", i1 false, i1 false}
!118 = !{ptr @ice_vc_del_fdir_fltr_post.__UNIQUE_ID_ddebug641, !119, !"__UNIQUE_ID_ddebug641", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1547, i32 2}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 142, i32 3}
!122 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @ice_vf_start_ctrl_vsi.__UNIQUE_ID_ddebug613, !121, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 149, i32 3}
!126 = !{ptr @ice_vf_start_ctrl_vsi.__UNIQUE_ID_ddebug614, !125, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 740, i32 3}
!129 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ice_vc_fdir_parse_pattern.__UNIQUE_ID_ddebug628, !128, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 933, i32 4}
!133 = !{ptr @ice_vc_fdir_parse_pattern.__UNIQUE_ID_ddebug629, !132, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 964, i32 3}
!136 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug630, !135, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 998, i32 4}
!140 = !{ptr @ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug631, !139, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1005, i32 3}
!143 = !{ptr @ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug632, !142, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1011, i32 3}
!146 = !{ptr @ice_vc_fdir_parse_action.__UNIQUE_ID_ddebug633, !145, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 682, i32 3}
!149 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug624, !148, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 692, i32 3}
!153 = !{ptr @ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug625, !152, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 698, i32 3}
!156 = !{ptr @ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug626, !155, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 706, i32 3}
!159 = !{ptr @ice_vc_fdir_config_input_set.__UNIQUE_ID_ddebug627, !158, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 311, i32 3}
!162 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @ice_vc_fdir_set_flow_fld.__UNIQUE_ID_ddebug615, !161, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!164 = !{ptr @fdir_inset_map, !165, !"fdir_inset_map", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 57, i32 45}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 403, i32 4}
!168 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @ice_vc_fdir_set_flow_hdr.__UNIQUE_ID_ddebug616, !167, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 463, i32 3}
!172 = !{ptr @ice_vc_fdir_set_flow_hdr.__UNIQUE_ID_ddebug617, !171, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 586, i32 4}
!175 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug619, !174, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 593, i32 4}
!179 = !{ptr @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug620, !178, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 608, i32 3}
!182 = !{ptr @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug621, !181, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 617, i32 3}
!185 = !{ptr @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug622, !184, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 626, i32 3}
!188 = !{ptr @ice_vc_fdir_write_flow_prof.__UNIQUE_ID_ddebug623, !187, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!189 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 498, i32 3}
!191 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @ice_vc_fdir_rem_prof.__UNIQUE_ID_ddebug618, !190, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!193 = !{ptr @.str.88, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1659, i32 3}
!195 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @ice_vc_fdir_set_irq_ctx.__UNIQUE_ID_ddebug642, !194, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!197 = !{ptr @ice_vc_fdir_set_irq_ctx.__key, !198, !"__key", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1669, i32 2}
!199 = !{ptr @.str.90, !198, !"<string literal>", i1 false, i1 false}
!200 = distinct !{null, !201, !"__already_done", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1265, i32 3}
!202 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1209, i32 3}
!204 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @ice_vc_fdir_write_fltr.__UNIQUE_ID_ddebug634, !203, !"__UNIQUE_ID_ddebug634", i1 false, i1 false}
!206 = !{ptr @.str.93, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1218, i32 3}
!208 = !{ptr @ice_vc_fdir_write_fltr.__UNIQUE_ID_ddebug635, !207, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c", i32 1229, i32 3}
!211 = !{ptr @ice_vc_fdir_write_fltr.__UNIQUE_ID_ddebug636, !210, !"__UNIQUE_ID_ddebug636", i1 false, i1 false}
!212 = !{ptr @xa_init_flags.__key, !213, !"__key", i1 false, i1 false}
!213 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!214 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!215 = !{i32 1, !"wchar_size", i32 2}
!216 = !{i32 1, !"min_enum_size", i32 4}
!217 = !{i32 8, !"branch-target-enforcement", i32 0}
!218 = !{i32 8, !"sign-return-address", i32 0}
!219 = !{i32 8, !"sign-return-address-all", i32 0}
!220 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!221 = !{i32 7, !"uwtable", i32 1}
!222 = !{i32 7, !"frame-pointer", i32 2}
!223 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!224 = !{!"branch_weights", i32 2000, i32 1}
!225 = !{!"branch_weights", i32 1, i32 2000}
!226 = !{i64 2148772190, i64 2148772195, i64 2148772208, i64 2148772252, i64 2148772286, i64 2148772307}
!227 = !{i64 6791832}
!228 = !{i64 2160208981}
!229 = !{i64 2160209715}
