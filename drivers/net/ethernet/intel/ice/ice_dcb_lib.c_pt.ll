; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_dcb_lib.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_dcb_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.ice_aqc_port_ets_elem = type { i8, [3 x i8], i32, [8 x i8], i32, i32, i32, [4 x i8], [8 x i32] }
%struct.ice_tx_buf = type { ptr, %union.anon.200, i32, i16, i32, i32, i32 }
%union.anon.200 = type { ptr }
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
%struct.ice_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.218 }
%union.anon.218 = type { %struct.ice_aqc_generic }
%struct.ice_aqc_generic = type { i32, i32, i32, i32 }

@ice_dcb_get_num_tc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Non-contiguous TCs - Disabling DCB\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_dcb_get_num_tc\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/ice/ice_dcb_lib.c\00", [51 x i8] zeroinitializer }, align 32
@ice_dcb_get_num_tc._entry_ptr = internal global ptr @ice_dcb_get_num_tc._entry, section ".printk_index", align 4
@ice_dcb_bwchk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 336, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid config, total bandwidth must equal 100\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ice_dcb_bwchk\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_dcb_bwchk._entry_ptr = internal global ptr @ice_dcb_bwchk._entry, section ".printk_index", align 4
@ice_pf_dcb_cfg.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ice_pf_dcb_cfg\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DCB tagging enabled (num TC > 1)\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_pf_dcb_cfg.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DCB tagging disabled (num TC = 1)\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_pf_dcb_cfg.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No change in DCB config required\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_pf_dcb_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 386, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Commit DCB Configuration to the hardware\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ice_pf_dcb_cfg._entry_ptr = internal global ptr @ice_pf_dcb_cfg._entry, section ".printk_index", align 4
@ice_pf_dcb_cfg.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.14, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PF VSI doesn't exist\0A\00", [42 x i8] zeroinitializer }, align 32
@ice_pf_dcb_cfg._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 424, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Set DCB Config failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ice_pf_dcb_cfg._entry_ptr.17 = internal global ptr @ice_pf_dcb_cfg._entry.15, section ".printk_index", align 4
@ice_pf_dcb_cfg._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.2, i32 433, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Query Port ETS failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ice_pf_dcb_cfg._entry_ptr.20 = internal global ptr @ice_pf_dcb_cfg._entry.18, section ".printk_index", align 4
@ice_dcb_rebuild._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.21, ptr @.str.2, i32 535, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_dcb_rebuild\00", [16 x i8] zeroinitializer }, align 32
@ice_dcb_rebuild._entry_ptr = internal global ptr @ice_dcb_rebuild._entry, section ".printk_index", align 4
@ice_dcb_rebuild._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 546, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set DCB config in rebuild\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_dcb_rebuild._entry_ptr.24 = internal global ptr @ice_dcb_rebuild._entry.22, section ".printk_index", align 4
@ice_dcb_rebuild._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 553, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register for MIB changes\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_dcb_rebuild._entry_ptr.27 = internal global ptr @ice_dcb_rebuild._entry.25, section ".printk_index", align 4
@ice_dcb_rebuild._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 558, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DCB info restored\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_dcb_rebuild._entry_ptr.30 = internal global ptr @ice_dcb_rebuild._entry.28, section ".printk_index", align 4
@ice_dcb_rebuild._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.21, ptr @.str.2, i32 561, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ice_dcb_rebuild._entry_ptr.32 = internal global ptr @ice_dcb_rebuild._entry.31, section ".printk_index", align 4
@ice_dcb_rebuild._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.21, ptr @.str.2, i32 570, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Disabling DCB until new settings occur\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_dcb_rebuild._entry_ptr.35 = internal global ptr @ice_dcb_rebuild._entry.33, section ".printk_index", align 4
@ice_pf_dcb_recfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 765, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to config TC for VSI index: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ice_pf_dcb_recfg\00", [47 x i8] zeroinitializer }, align 32
@ice_pf_dcb_recfg._entry_ptr = internal global ptr @ice_pf_dcb_recfg._entry, section ".printk_index", align 4
@ice_init_pf_dcb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 805, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error initializing DCB %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_init_pf_dcb\00", [16 x i8] zeroinitializer }, align 32
@ice_init_pf_dcb._entry_ptr = internal global ptr @ice_init_pf_dcb._entry, section ".printk_index", align 4
@ice_init_pf_dcb._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 810, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"DCB is enabled in the hardware, max number of TCs supported on this port are %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_init_pf_dcb._entry_ptr.42 = internal global ptr @ice_init_pf_dcb._entry.40, section ".printk_index", align 4
@ice_init_pf_dcb._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 815, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"FW LLDP is disabled, DCBx/LLDP in SW mode.\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_init_pf_dcb._entry_ptr.45 = internal global ptr @ice_init_pf_dcb._entry.43, section ".printk_index", align 4
@ice_init_pf_dcb._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 820, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set VLAN PFC mode\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_init_pf_dcb._entry_ptr.48 = internal global ptr @ice_init_pf_dcb._entry.46, section ".printk_index", align 4
@ice_init_pf_dcb._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 825, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set local DCB config %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_init_pf_dcb._entry_ptr.51 = internal global ptr @ice_init_pf_dcb._entry.49, section ".printk_index", align 4
@ice_init_pf_dcb._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.39, ptr @.str.2, i32 835, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set local DCB config\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_init_pf_dcb._entry_ptr.54 = internal global ptr @ice_init_pf_dcb._entry.52, section ".printk_index", align 4
@ice_init_pf_dcb._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.39, ptr @.str.2, i32 858, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DCB init failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_init_pf_dcb._entry_ptr.57 = internal global ptr @ice_init_pf_dcb._entry.55, section ".printk_index", align 4
@ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ice_dcb_process_lldp_set_mib_change\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MIB Change Event in HOST mode\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 0, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LLDP event MIB bridge type 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.2, ptr @.str.61, i8 0, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LLDP event mib type %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remote\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@ice_dcb_process_lldp_set_mib_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.58, ptr @.str.2, i32 977, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get remote DCB config\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_dcb_process_lldp_set_mib_change._entry_ptr = internal global ptr @ice_dcb_process_lldp_set_mib_change._entry, section ".printk_index", align 4
@ice_dcb_process_lldp_set_mib_change._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.2, i32 994, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get DCB config\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_dcb_process_lldp_set_mib_change._entry_ptr.67 = internal global ptr @ice_dcb_process_lldp_set_mib_change._entry.65, section ".printk_index", align 4
@ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.2, ptr @.str.68, i8 0, i8 -6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No change detected in DCBX configuration.\0A\00", [53 x i8] zeroinitializer }, align 32
@ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.2, ptr @.str.9, i8 0, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.2, ptr @.str.10, i8 0, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_dcb_process_lldp_set_mib_change._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.58, ptr @.str.2, i32 1028, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ice_dcb_process_lldp_set_mib_change._entry_ptr.70 = internal global ptr @ice_dcb_process_lldp_set_mib_change._entry.69, section ".printk_index", align 4
@ice_get_first_droptc.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_get_first_droptc\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"first drop tc = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_get_first_droptc.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.71, ptr @.str.2, ptr @.str.73, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"first drop tc = 0\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ice_dcb_noncontig_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.74, ptr @.str.2, i32 711, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_dcb_noncontig_cfg\00", [42 x i8] zeroinitializer }, align 32
@ice_dcb_noncontig_cfg._entry_ptr = internal global ptr @ice_dcb_noncontig_cfg._entry, section ".printk_index", align 4
@ice_dcb_noncontig_cfg._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 719, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set DCB to unwilling\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_dcb_noncontig_cfg._entry_ptr.77 = internal global ptr @ice_dcb_noncontig_cfg._entry.75, section ".printk_index", align 4
@ice_dcb_init_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 612, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Configuring initial DCB values\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ice_dcb_init_cfg\00", [47 x i8] zeroinitializer }, align 32
@ice_dcb_init_cfg._entry_ptr = internal global ptr @ice_dcb_init_cfg._entry, section ".printk_index", align 4
@ice_dcb_need_recfg.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_dcb_need_recfg\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ETS UP2TC changed.\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_dcb_need_recfg.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.80, ptr @.str.2, ptr @.str.82, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ETS TC BW Table changed.\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_dcb_need_recfg.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.80, ptr @.str.2, ptr @.str.83, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ETS TSA Table changed.\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_dcb_need_recfg.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.80, ptr @.str.2, ptr @.str.84, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PFC config change detected.\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_dcb_need_recfg.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.80, ptr @.str.2, ptr @.str.85, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"APP Table change detected.\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_dcb_need_recfg.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.80, ptr @.str.2, ptr @.str.86, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dcb need_reconfig=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 100]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 100]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 7]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 7]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 7]
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 124, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 336, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 366, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 369, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 374, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 386, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 389, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 424, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 433, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 535, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 546, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 553, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 558, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 561, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 570, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 764, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 805, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 809, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 815, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 820, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 824, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 835, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 858, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 955, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 964, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 970, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 977, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 994, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1001, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 1028, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 166, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 171, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 711, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 719, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 612, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 492, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 498, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 503, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 509, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 515, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private constant [48 x i8] c"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 518, i32 2 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @ice_dcb_bwchk._entry, ptr @ice_dcb_bwchk._entry_ptr, ptr @ice_dcb_get_num_tc._entry, ptr @ice_dcb_get_num_tc._entry_ptr, ptr @ice_dcb_init_cfg._entry, ptr @ice_dcb_init_cfg._entry_ptr, ptr @ice_dcb_noncontig_cfg._entry, ptr @ice_dcb_noncontig_cfg._entry.75, ptr @ice_dcb_noncontig_cfg._entry_ptr, ptr @ice_dcb_noncontig_cfg._entry_ptr.77, ptr @ice_dcb_process_lldp_set_mib_change._entry, ptr @ice_dcb_process_lldp_set_mib_change._entry.65, ptr @ice_dcb_process_lldp_set_mib_change._entry.69, ptr @ice_dcb_process_lldp_set_mib_change._entry_ptr, ptr @ice_dcb_process_lldp_set_mib_change._entry_ptr.67, ptr @ice_dcb_process_lldp_set_mib_change._entry_ptr.70, ptr @ice_dcb_rebuild._entry, ptr @ice_dcb_rebuild._entry.22, ptr @ice_dcb_rebuild._entry.25, ptr @ice_dcb_rebuild._entry.28, ptr @ice_dcb_rebuild._entry.31, ptr @ice_dcb_rebuild._entry.33, ptr @ice_dcb_rebuild._entry_ptr, ptr @ice_dcb_rebuild._entry_ptr.24, ptr @ice_dcb_rebuild._entry_ptr.27, ptr @ice_dcb_rebuild._entry_ptr.30, ptr @ice_dcb_rebuild._entry_ptr.32, ptr @ice_dcb_rebuild._entry_ptr.35, ptr @ice_init_pf_dcb._entry, ptr @ice_init_pf_dcb._entry.40, ptr @ice_init_pf_dcb._entry.43, ptr @ice_init_pf_dcb._entry.46, ptr @ice_init_pf_dcb._entry.49, ptr @ice_init_pf_dcb._entry.52, ptr @ice_init_pf_dcb._entry.55, ptr @ice_init_pf_dcb._entry_ptr, ptr @ice_init_pf_dcb._entry_ptr.42, ptr @ice_init_pf_dcb._entry_ptr.45, ptr @ice_init_pf_dcb._entry_ptr.48, ptr @ice_init_pf_dcb._entry_ptr.51, ptr @ice_init_pf_dcb._entry_ptr.54, ptr @ice_init_pf_dcb._entry_ptr.57, ptr @ice_pf_dcb_cfg._entry, ptr @ice_pf_dcb_cfg._entry.15, ptr @ice_pf_dcb_cfg._entry.18, ptr @ice_pf_dcb_cfg._entry_ptr, ptr @ice_pf_dcb_cfg._entry_ptr.17, ptr @ice_pf_dcb_cfg._entry_ptr.20, ptr @ice_pf_dcb_recfg._entry, ptr @ice_pf_dcb_recfg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_get_num_tc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_bwchk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_pf_dcb_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_pf_dcb_cfg._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_pf_dcb_cfg._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_rebuild._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_rebuild._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_rebuild._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_rebuild._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_rebuild._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_rebuild._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_pf_dcb_recfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_pf_dcb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_pf_dcb._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_pf_dcb._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_pf_dcb._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_pf_dcb._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_pf_dcb._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_pf_dcb._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_process_lldp_set_mib_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_process_lldp_set_mib_change._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_process_lldp_set_mib_change._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_noncontig_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_noncontig_cfg._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_dcb_init_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_is_pfc_causing_hung_q(ptr noundef %pf, i32 noundef %txqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %0 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ice_get_main_vsi.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ice_get_main_vsi.exit:                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ice_get_main_vsi.exit.cleanup_crit_edge, label %for.cond.preheader

ice_get_main_vsi.exit.cleanup_crit_edge:          ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %ice_get_main_vsi.exit
  %ena_tc = getelementptr inbounds %struct.ice_vsi, ptr %3, i32 0, i32 56, i32 1
  %4 = ptrtoint ptr %ena_tc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ena_tc, align 2
  %6 = trunc i16 %5 to i8
  %7 = and i8 %6, 1
  %8 = trunc i16 %5 to i8
  %9 = lshr i8 %8, 1
  %10 = and i8 %9, 1
  %spec.select.1 = add nuw nsw i8 %7, %10
  %11 = trunc i16 %5 to i8
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 1
  %spec.select.2 = add nuw nsw i8 %spec.select.1, %13
  %14 = trunc i16 %5 to i8
  %15 = lshr i8 %14, 3
  %16 = and i8 %15, 1
  %spec.select.3 = add nuw nsw i8 %spec.select.2, %16
  %17 = trunc i16 %5 to i8
  %18 = lshr i8 %17, 4
  %19 = and i8 %18, 1
  %spec.select.4 = add nuw nsw i8 %spec.select.3, %19
  %20 = trunc i16 %5 to i8
  %21 = lshr i8 %20, 5
  %22 = and i8 %21, 1
  %spec.select.5 = add nuw nsw i8 %spec.select.4, %22
  %23 = trunc i16 %5 to i8
  %24 = lshr i8 %23, 6
  %25 = and i8 %24, 1
  %spec.select.6 = add nuw nsw i8 %spec.select.5, %25
  %26 = trunc i16 %5 to i8
  %27 = lshr i8 %26, 7
  %spec.select.7 = add nuw nsw i8 %spec.select.6, %27
  %conv10 = zext i8 %spec.select.7 to i32
  %sub = add nsw i32 %conv10, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %spec.select.7)
  %cmp11134 = icmp ugt i8 %spec.select.7, 1
  br i1 %cmp11134, label %for.cond.preheader.for.body13_crit_edge, label %for.cond.preheader.for.end25_crit_edge

for.cond.preheader.for.end25_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.cond.preheader.for.body13_crit_edge:          ; preds = %for.cond.preheader
  br label %for.body13

for.cond8:                                        ; preds = %for.body13
  %inc24 = add i8 %tc.0135, 1
  %conv9 = zext i8 %inc24 to i32
  %cmp11 = icmp sgt i32 %sub, %conv9
  br i1 %cmp11, label %for.cond8.for.body13_crit_edge, label %for.cond8.for.end25_crit_edge

for.cond8.for.end25_crit_edge:                    ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.cond8.for.body13_crit_edge:                   ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13

for.body13:                                       ; preds = %for.cond8.for.body13_crit_edge, %for.cond.preheader.for.body13_crit_edge
  %conv9136 = phi i32 [ %conv9, %for.cond8.for.body13_crit_edge ], [ 0, %for.cond.preheader.for.body13_crit_edge ]
  %tc.0135 = phi i8 [ %inc24, %for.cond8.for.body13_crit_edge ], [ 0, %for.cond.preheader.for.body13_crit_edge ]
  %arrayidx = getelementptr %struct.ice_vsi, ptr %3, i32 0, i32 56, i32 2, i32 %conv9136
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %conv9136, 1
  %arrayidx18 = getelementptr %struct.ice_vsi, ptr %3, i32 0, i32 56, i32 2, i32 %add
  %30 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx18, align 4
  %conv.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %txqueue)
  %cmp.not.i = icmp ule i32 %conv.i, %txqueue
  %conv2.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %txqueue)
  %cmp3.i = icmp ugt i32 %conv2.i, %txqueue
  %32 = and i1 %cmp.not.i, %cmp3.i
  br i1 %32, label %for.body13.for.end25_crit_edge, label %for.cond8

for.body13.for.end25_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.end25:                                        ; preds = %for.body13.for.end25_crit_edge, %for.cond8.for.end25_crit_edge, %for.cond.preheader.for.end25_crit_edge
  %conv9.lcssa = phi i32 [ 0, %for.cond.preheader.for.end25_crit_edge ], [ %conv9136, %for.body13.for.end25_crit_edge ], [ %conv9, %for.cond8.for.end25_crit_edge ]
  %hw = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %34, i32 1910464
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !175
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  %conv35 = and i32 %36, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35, i32 %conv9.lcssa)
  %cmp38 = icmp eq i32 %conv35, %conv9.lcssa
  %shr.1 = lshr i32 %36, 3
  %conv35.1 = and i32 %shr.1, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35.1, i32 %conv9.lcssa)
  %cmp38.1 = icmp eq i32 %conv35.1, %conv9.lcssa
  %shr.2 = lshr i32 %36, 6
  %conv35.2 = and i32 %shr.2, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35.2, i32 %conv9.lcssa)
  %cmp38.2 = icmp eq i32 %conv35.2, %conv9.lcssa
  %shr.3 = lshr i32 %36, 9
  %conv35.3 = and i32 %shr.3, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35.3, i32 %conv9.lcssa)
  %cmp38.3 = icmp eq i32 %conv35.3, %conv9.lcssa
  %shr.4 = lshr i32 %36, 12
  %conv35.4 = and i32 %shr.4, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35.4, i32 %conv9.lcssa)
  %cmp38.4 = icmp eq i32 %conv35.4, %conv9.lcssa
  %shr.5 = lshr i32 %36, 15
  %conv35.5 = and i32 %shr.5, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35.5, i32 %conv9.lcssa)
  %cmp38.5.not = icmp eq i32 %conv35.5, %conv9.lcssa
  %shr.6 = lshr i32 %36, 18
  %conv35.6 = and i32 %shr.6, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35.6, i32 %conv9.lcssa)
  %cmp38.6.not = icmp eq i32 %conv35.6, %conv9.lcssa
  %shr.7 = lshr i32 %36, 21
  %conv35.7 = and i32 %shr.7, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35.7, i32 %conv9.lcssa)
  %cmp38.7.not = icmp eq i32 %conv35.7, %conv9.lcssa
  br i1 %cmp38, label %if.then59, label %for.end25.for.inc65_crit_edge

for.end25.for.inc65_crit_edge:                    ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65

if.then59:                                        ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx61 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 0
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx61, align 8
  br label %for.inc65

for.inc65:                                        ; preds = %if.then59, %for.end25.for.inc65_crit_edge
  %ref_prio_xoff.sroa.0.0 = phi i64 [ -1, %for.end25.for.inc65_crit_edge ], [ %38, %if.then59 ]
  br i1 %cmp38.1, label %if.then59.1, label %for.inc65.for.inc65.1_crit_edge

for.inc65.for.inc65.1_crit_edge:                  ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.1

if.then59.1:                                      ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx61.1 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 1
  %39 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx61.1, align 8
  br label %for.inc65.1

for.inc65.1:                                      ; preds = %if.then59.1, %for.inc65.for.inc65.1_crit_edge
  %ref_prio_xoff.sroa.5.0 = phi i64 [ -1, %for.inc65.for.inc65.1_crit_edge ], [ %40, %if.then59.1 ]
  br i1 %cmp38.2, label %if.then59.2, label %for.inc65.1.for.inc65.2_crit_edge

for.inc65.1.for.inc65.2_crit_edge:                ; preds = %for.inc65.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.2

if.then59.2:                                      ; preds = %for.inc65.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx61.2 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 2
  %41 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx61.2, align 8
  br label %for.inc65.2

for.inc65.2:                                      ; preds = %if.then59.2, %for.inc65.1.for.inc65.2_crit_edge
  %ref_prio_xoff.sroa.7.0 = phi i64 [ -1, %for.inc65.1.for.inc65.2_crit_edge ], [ %42, %if.then59.2 ]
  br i1 %cmp38.3, label %if.then59.3, label %for.inc65.2.for.inc65.3_crit_edge

for.inc65.2.for.inc65.3_crit_edge:                ; preds = %for.inc65.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.3

if.then59.3:                                      ; preds = %for.inc65.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx61.3 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 3
  %43 = ptrtoint ptr %arrayidx61.3 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx61.3, align 8
  br label %for.inc65.3

for.inc65.3:                                      ; preds = %if.then59.3, %for.inc65.2.for.inc65.3_crit_edge
  %ref_prio_xoff.sroa.9.0 = phi i64 [ -1, %for.inc65.2.for.inc65.3_crit_edge ], [ %44, %if.then59.3 ]
  br i1 %cmp38.4, label %if.then59.4, label %for.inc65.3.for.inc65.4_crit_edge

for.inc65.3.for.inc65.4_crit_edge:                ; preds = %for.inc65.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.4

if.then59.4:                                      ; preds = %for.inc65.3
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx61.4 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 4
  %45 = ptrtoint ptr %arrayidx61.4 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx61.4, align 8
  br label %for.inc65.4

for.inc65.4:                                      ; preds = %if.then59.4, %for.inc65.3.for.inc65.4_crit_edge
  %ref_prio_xoff.sroa.11.0 = phi i64 [ -1, %for.inc65.3.for.inc65.4_crit_edge ], [ %46, %if.then59.4 ]
  br i1 %cmp38.5.not, label %if.then59.5, label %for.inc65.4.for.inc65.5_crit_edge

for.inc65.4.for.inc65.5_crit_edge:                ; preds = %for.inc65.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.5

if.then59.5:                                      ; preds = %for.inc65.4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx61.5 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 5
  %47 = ptrtoint ptr %arrayidx61.5 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx61.5, align 8
  br label %for.inc65.5

for.inc65.5:                                      ; preds = %if.then59.5, %for.inc65.4.for.inc65.5_crit_edge
  %ref_prio_xoff.sroa.13.0 = phi i64 [ -1, %for.inc65.4.for.inc65.5_crit_edge ], [ %48, %if.then59.5 ]
  br i1 %cmp38.6.not, label %if.then59.6, label %for.inc65.5.for.inc65.6_crit_edge

for.inc65.5.for.inc65.6_crit_edge:                ; preds = %for.inc65.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.6

if.then59.6:                                      ; preds = %for.inc65.5
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx61.6 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 6
  %49 = ptrtoint ptr %arrayidx61.6 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx61.6, align 8
  br label %for.inc65.6

for.inc65.6:                                      ; preds = %if.then59.6, %for.inc65.5.for.inc65.6_crit_edge
  %ref_prio_xoff.sroa.15.0 = phi i64 [ -1, %for.inc65.5.for.inc65.6_crit_edge ], [ %50, %if.then59.6 ]
  br i1 %cmp38.7.not, label %if.then59.7, label %for.inc65.6.for.inc65.7_crit_edge

for.inc65.6.for.inc65.7_crit_edge:                ; preds = %for.inc65.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.7

if.then59.7:                                      ; preds = %for.inc65.6
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx61.7 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 7
  %51 = ptrtoint ptr %arrayidx61.7 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx61.7, align 8
  br label %for.inc65.7

for.inc65.7:                                      ; preds = %if.then59.7, %for.inc65.6.for.inc65.7_crit_edge
  %ref_prio_xoff.sroa.17.0 = phi i64 [ -1, %for.inc65.6.for.inc65.7_crit_edge ], [ %52, %if.then59.7 ]
  tail call void @ice_update_dcb_stats(ptr noundef %pf)
  br i1 %cmp38, label %if.then78, label %for.inc65.7.for.inc90_crit_edge

for.inc65.7.for.inc90_crit_edge:                  ; preds = %for.inc65.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90

if.then78:                                        ; preds = %for.inc65.7
  %arrayidx82 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 0
  %53 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx82, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %ref_prio_xoff.sroa.0.0)
  %cmp85 = icmp ugt i64 %54, %ref_prio_xoff.sroa.0.0
  br i1 %cmp85, label %if.then78.cleanup_crit_edge, label %if.then78.for.inc90_crit_edge

if.then78.for.inc90_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc90:                                        ; preds = %if.then78.for.inc90_crit_edge, %for.inc65.7.for.inc90_crit_edge
  br i1 %cmp38.1, label %if.then78.1, label %for.inc90.for.inc90.1_crit_edge

for.inc90.for.inc90.1_crit_edge:                  ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.1

if.then78.1:                                      ; preds = %for.inc90
  %arrayidx82.1 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 1
  %55 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx82.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %ref_prio_xoff.sroa.5.0)
  %cmp85.1 = icmp ugt i64 %56, %ref_prio_xoff.sroa.5.0
  br i1 %cmp85.1, label %if.then78.1.cleanup_crit_edge, label %if.then78.1.for.inc90.1_crit_edge

if.then78.1.for.inc90.1_crit_edge:                ; preds = %if.then78.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.1

if.then78.1.cleanup_crit_edge:                    ; preds = %if.then78.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc90.1:                                      ; preds = %if.then78.1.for.inc90.1_crit_edge, %for.inc90.for.inc90.1_crit_edge
  br i1 %cmp38.2, label %if.then78.2, label %for.inc90.1.for.inc90.2_crit_edge

for.inc90.1.for.inc90.2_crit_edge:                ; preds = %for.inc90.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.2

if.then78.2:                                      ; preds = %for.inc90.1
  %arrayidx82.2 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 2
  %57 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx82.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %ref_prio_xoff.sroa.7.0)
  %cmp85.2 = icmp ugt i64 %58, %ref_prio_xoff.sroa.7.0
  br i1 %cmp85.2, label %if.then78.2.cleanup_crit_edge, label %if.then78.2.for.inc90.2_crit_edge

if.then78.2.for.inc90.2_crit_edge:                ; preds = %if.then78.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.2

if.then78.2.cleanup_crit_edge:                    ; preds = %if.then78.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc90.2:                                      ; preds = %if.then78.2.for.inc90.2_crit_edge, %for.inc90.1.for.inc90.2_crit_edge
  br i1 %cmp38.3, label %if.then78.3, label %for.inc90.2.for.inc90.3_crit_edge

for.inc90.2.for.inc90.3_crit_edge:                ; preds = %for.inc90.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.3

if.then78.3:                                      ; preds = %for.inc90.2
  %arrayidx82.3 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 3
  %59 = ptrtoint ptr %arrayidx82.3 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx82.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %ref_prio_xoff.sroa.9.0)
  %cmp85.3 = icmp ugt i64 %60, %ref_prio_xoff.sroa.9.0
  br i1 %cmp85.3, label %if.then78.3.cleanup_crit_edge, label %if.then78.3.for.inc90.3_crit_edge

if.then78.3.for.inc90.3_crit_edge:                ; preds = %if.then78.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.3

if.then78.3.cleanup_crit_edge:                    ; preds = %if.then78.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc90.3:                                      ; preds = %if.then78.3.for.inc90.3_crit_edge, %for.inc90.2.for.inc90.3_crit_edge
  br i1 %cmp38.4, label %if.then78.4, label %for.inc90.3.for.inc90.4_crit_edge

for.inc90.3.for.inc90.4_crit_edge:                ; preds = %for.inc90.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.4

if.then78.4:                                      ; preds = %for.inc90.3
  %arrayidx82.4 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 4
  %61 = ptrtoint ptr %arrayidx82.4 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx82.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %ref_prio_xoff.sroa.11.0)
  %cmp85.4 = icmp ugt i64 %62, %ref_prio_xoff.sroa.11.0
  br i1 %cmp85.4, label %if.then78.4.cleanup_crit_edge, label %if.then78.4.for.inc90.4_crit_edge

if.then78.4.for.inc90.4_crit_edge:                ; preds = %if.then78.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.4

if.then78.4.cleanup_crit_edge:                    ; preds = %if.then78.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc90.4:                                      ; preds = %if.then78.4.for.inc90.4_crit_edge, %for.inc90.3.for.inc90.4_crit_edge
  br i1 %cmp38.5.not, label %if.then78.5, label %for.inc90.4.for.inc90.5_crit_edge

for.inc90.4.for.inc90.5_crit_edge:                ; preds = %for.inc90.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.5

if.then78.5:                                      ; preds = %for.inc90.4
  %arrayidx82.5 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 5
  %63 = ptrtoint ptr %arrayidx82.5 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx82.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %ref_prio_xoff.sroa.13.0)
  %cmp85.5 = icmp ugt i64 %64, %ref_prio_xoff.sroa.13.0
  br i1 %cmp85.5, label %if.then78.5.cleanup_crit_edge, label %if.then78.5.for.inc90.5_crit_edge

if.then78.5.for.inc90.5_crit_edge:                ; preds = %if.then78.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.5

if.then78.5.cleanup_crit_edge:                    ; preds = %if.then78.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc90.5:                                      ; preds = %if.then78.5.for.inc90.5_crit_edge, %for.inc90.4.for.inc90.5_crit_edge
  br i1 %cmp38.6.not, label %if.then78.6, label %for.inc90.5.for.inc90.6_crit_edge

for.inc90.5.for.inc90.6_crit_edge:                ; preds = %for.inc90.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.6

if.then78.6:                                      ; preds = %for.inc90.5
  %arrayidx82.6 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 6
  %65 = ptrtoint ptr %arrayidx82.6 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx82.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %ref_prio_xoff.sroa.15.0)
  %cmp85.6 = icmp ugt i64 %66, %ref_prio_xoff.sroa.15.0
  br i1 %cmp85.6, label %if.then78.6.cleanup_crit_edge, label %if.then78.6.for.inc90.6_crit_edge

if.then78.6.for.inc90.6_crit_edge:                ; preds = %if.then78.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.6

if.then78.6.cleanup_crit_edge:                    ; preds = %if.then78.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc90.6:                                      ; preds = %if.then78.6.for.inc90.6_crit_edge, %for.inc90.5.for.inc90.6_crit_edge
  br i1 %cmp38.7.not, label %if.then78.7, label %for.inc90.6.for.inc90.7_crit_edge

for.inc90.6.for.inc90.7_crit_edge:                ; preds = %for.inc90.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.7

if.then78.7:                                      ; preds = %for.inc90.6
  %arrayidx82.7 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 7
  %67 = ptrtoint ptr %arrayidx82.7 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx82.7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %ref_prio_xoff.sroa.17.0)
  %cmp85.7 = icmp ugt i64 %68, %ref_prio_xoff.sroa.17.0
  br i1 %cmp85.7, label %if.then78.7.cleanup_crit_edge, label %if.then78.7.for.inc90.7_crit_edge

if.then78.7.for.inc90.7_crit_edge:                ; preds = %if.then78.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.7

if.then78.7.cleanup_crit_edge:                    ; preds = %if.then78.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc90.7:                                      ; preds = %if.then78.7.for.inc90.7_crit_edge, %for.inc90.6.for.inc90.7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc90.7, %if.then78.7.cleanup_crit_edge, %if.then78.6.cleanup_crit_edge, %if.then78.5.cleanup_crit_edge, %if.then78.4.cleanup_crit_edge, %if.then78.3.cleanup_crit_edge, %if.then78.2.cleanup_crit_edge, %if.then78.1.cleanup_crit_edge, %if.then78.cleanup_crit_edge, %ice_get_main_vsi.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %ice_get_main_vsi.exit.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %if.then78.cleanup_crit_edge ], [ true, %if.then78.1.cleanup_crit_edge ], [ true, %if.then78.2.cleanup_crit_edge ], [ true, %if.then78.3.cleanup_crit_edge ], [ true, %if.then78.4.cleanup_crit_edge ], [ true, %if.then78.5.cleanup_crit_edge ], [ true, %if.then78.6.cleanup_crit_edge ], [ true, %if.then78.7.cleanup_crit_edge ], [ false, %for.inc90.7 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_update_dcb_stats(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 3
  %0 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_info, align 4
  %lport = getelementptr inbounds %struct.ice_port_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %lport to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lport, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %stat_prev_loaded = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 59
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.094 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul2 = shl i32 %i.094, 6
  %add = add nuw nsw i32 %mul2, %mul
  %add3 = add nuw nsw i32 %add, 3671296
  %4 = ptrtoint ptr %stat_prev_loaded to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %stat_prev_loaded, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %arrayidx = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 57, i32 13, i32 %i.094
  %arrayidx5 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 13, i32 %i.094
  tail call void @ice_stat_update32(ptr noundef %hw1, i32 noundef %add3, i1 noundef zeroext %tobool, ptr noundef %arrayidx, ptr noundef %arrayidx5) #9
  %add10 = add nuw nsw i32 %add, 3670784
  %5 = ptrtoint ptr %stat_prev_loaded to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load12 = load i8, ptr %stat_prev_loaded, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load12)
  %tobool14 = icmp slt i8 %bf.load12, 0
  %arrayidx15 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 57, i32 12, i32 %i.094
  %arrayidx17 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 12, i32 %i.094
  tail call void @ice_stat_update32(ptr noundef %hw1, i32 noundef %add10, i1 noundef zeroext %tobool14, ptr noundef %arrayidx15, ptr noundef %arrayidx17) #9
  %add22 = add nuw nsw i32 %add, 3673408
  %6 = ptrtoint ptr %stat_prev_loaded to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load24 = load i8, ptr %stat_prev_loaded, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load24)
  %tobool26 = icmp slt i8 %bf.load24, 0
  %arrayidx27 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 57, i32 14, i32 %i.094
  %arrayidx29 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 14, i32 %i.094
  tail call void @ice_stat_update32(ptr noundef %hw1, i32 noundef %add22, i1 noundef zeroext %tobool26, ptr noundef %arrayidx27, ptr noundef %arrayidx29) #9
  %add34 = add nuw nsw i32 %add, 3673920
  %7 = ptrtoint ptr %stat_prev_loaded to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load36 = load i8, ptr %stat_prev_loaded, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load36)
  %tobool38 = icmp slt i8 %bf.load36, 0
  %arrayidx39 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 57, i32 15, i32 %i.094
  %arrayidx41 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 15, i32 %i.094
  tail call void @ice_stat_update32(ptr noundef %hw1, i32 noundef %add34, i1 noundef zeroext %tobool38, ptr noundef %arrayidx39, ptr noundef %arrayidx41) #9
  %add46 = add nuw nsw i32 %add, 3671808
  %8 = ptrtoint ptr %stat_prev_loaded to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load48 = load i8, ptr %stat_prev_loaded, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load48)
  %tobool50 = icmp slt i8 %bf.load48, 0
  %arrayidx51 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 57, i32 16, i32 %i.094
  %arrayidx53 = getelementptr %struct.ice_pf, ptr %pf, i32 0, i32 56, i32 16, i32 %i.094
  tail call void @ice_stat_update32(ptr noundef %hw1, i32 noundef %add46, i1 noundef zeroext %tobool50, ptr noundef %arrayidx51, ptr noundef %arrayidx53) #9
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ice_dcb_get_num_tc(ptr nocapture noundef readonly %dcbcfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %arrayidx.1 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %3 to i32
  %shl.1 = shl nuw i32 1, %conv.1
  %shl.masked.138 = or i32 %shl.1, %shl
  %arrayidx.2 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %5 to i32
  %shl.2 = shl nuw i32 1, %conv.2
  %shl.masked.239 = or i32 %shl.2, %shl.masked.138
  %arrayidx.3 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %7 to i32
  %shl.3 = shl nuw i32 1, %conv.3
  %shl.masked.340 = or i32 %shl.3, %shl.masked.239
  %arrayidx.4 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %9 to i32
  %shl.4 = shl nuw i32 1, %conv.4
  %shl.masked.441 = or i32 %shl.4, %shl.masked.340
  %arrayidx.5 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %11 to i32
  %shl.5 = shl nuw i32 1, %conv.5
  %shl.masked.542 = or i32 %shl.5, %shl.masked.441
  %arrayidx.6 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %13 to i32
  %shl.6 = shl nuw i32 1, %conv.6
  %shl.masked.643 = or i32 %shl.6, %shl.masked.542
  %arrayidx.7 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %15 to i32
  %shl.7 = shl nuw i32 1, %conv.7
  %shl.masked.744 = or i32 %shl.7, %shl.masked.643
  %and = and i32 %shl.masked.744, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.1 = and i32 %shl.masked.744, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not, label %for.inc14, label %for.inc14.thread

do.end:                                           ; preds = %for.inc14.6.do.end_crit_edge, %if.then.6.do.end_crit_edge, %for.inc14.4.do.end_crit_edge, %if.then.4.do.end_crit_edge, %for.inc14.2.do.end_crit_edge, %if.then.2.do.end_crit_edge, %for.inc14.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

for.inc14:                                        ; preds = %entry
  br i1 %tobool.not.1, label %for.inc14.for.inc14.1_crit_edge, label %for.inc14.do.end_crit_edge

for.inc14.do.end_crit_edge:                       ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc14.for.inc14.1_crit_edge:                  ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.1

for.inc14.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select81 = select i1 %tobool.not.1, i8 1, i8 2
  br label %for.inc14.1

for.inc14.1:                                      ; preds = %for.inc14.thread, %for.inc14.for.inc14.1_crit_edge
  %tobool.not.150 = phi i1 [ true, %for.inc14.for.inc14.1_crit_edge ], [ %tobool.not.1, %for.inc14.thread ]
  %ret.1.1 = phi i8 [ 0, %for.inc14.for.inc14.1_crit_edge ], [ %spec.select81, %for.inc14.thread ]
  %and.2 = and i32 %shl.masked.744, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc14.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc14.1
  br i1 %tobool.not.150, label %if.then.2.do.end_crit_edge, label %for.inc14.2.thread

if.then.2.do.end_crit_edge:                       ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc14.2:                                      ; preds = %for.inc14.1
  %and.3 = and i32 %shl.masked.744, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc14.2.for.inc14.3_crit_edge, label %for.inc14.2.do.end_crit_edge

for.inc14.2.do.end_crit_edge:                     ; preds = %for.inc14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc14.2.for.inc14.3_crit_edge:                ; preds = %for.inc14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.3

for.inc14.2.thread:                               ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #11
  %and.356 = and i32 %shl.masked.744, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.356)
  %tobool.not.357 = icmp eq i32 %and.356, 0
  %spec.select83.v = select i1 %tobool.not.357, i8 1, i8 2
  %spec.select83 = add nuw nsw i8 %ret.1.1, %spec.select83.v
  br label %for.inc14.3

for.inc14.3:                                      ; preds = %for.inc14.2.thread, %for.inc14.2.for.inc14.3_crit_edge
  %tobool.not.360 = phi i1 [ true, %for.inc14.2.for.inc14.3_crit_edge ], [ %tobool.not.357, %for.inc14.2.thread ]
  %ret.1.3 = phi i8 [ %ret.1.1, %for.inc14.2.for.inc14.3_crit_edge ], [ %spec.select83, %for.inc14.2.thread ]
  %and.4 = and i32 %shl.masked.744, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc14.4, label %if.then.4

if.then.4:                                        ; preds = %for.inc14.3
  br i1 %tobool.not.360, label %if.then.4.do.end_crit_edge, label %for.inc14.4.thread

if.then.4.do.end_crit_edge:                       ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc14.4:                                      ; preds = %for.inc14.3
  %and.5 = and i32 %shl.masked.744, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc14.4.for.inc14.5_crit_edge, label %for.inc14.4.do.end_crit_edge

for.inc14.4.do.end_crit_edge:                     ; preds = %for.inc14.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc14.4.for.inc14.5_crit_edge:                ; preds = %for.inc14.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.5

for.inc14.4.thread:                               ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #11
  %and.566 = and i32 %shl.masked.744, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.566)
  %tobool.not.567 = icmp eq i32 %and.566, 0
  %spec.select85.v = select i1 %tobool.not.567, i8 1, i8 2
  %spec.select85 = add nuw nsw i8 %ret.1.3, %spec.select85.v
  br label %for.inc14.5

for.inc14.5:                                      ; preds = %for.inc14.4.thread, %for.inc14.4.for.inc14.5_crit_edge
  %tobool.not.570 = phi i1 [ true, %for.inc14.4.for.inc14.5_crit_edge ], [ %tobool.not.567, %for.inc14.4.thread ]
  %ret.1.5 = phi i8 [ %ret.1.3, %for.inc14.4.for.inc14.5_crit_edge ], [ %spec.select85, %for.inc14.4.thread ]
  %and.6 = and i32 %shl.masked.744, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc14.6, label %if.then.6

if.then.6:                                        ; preds = %for.inc14.5
  br i1 %tobool.not.570, label %if.then.6.do.end_crit_edge, label %for.inc14.6.thread

if.then.6.do.end_crit_edge:                       ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc14.6:                                      ; preds = %for.inc14.5
  %and.7 = and i32 %shl.masked.744, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc14.6.for.inc14.7_crit_edge, label %for.inc14.6.do.end_crit_edge

for.inc14.6.do.end_crit_edge:                     ; preds = %for.inc14.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc14.6.for.inc14.7_crit_edge:                ; preds = %for.inc14.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.7

for.inc14.6.thread:                               ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #11
  %and.776 = and i32 %shl.masked.744, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.776)
  %tobool.not.777 = icmp eq i32 %and.776, 0
  %spec.select86.v = select i1 %tobool.not.777, i8 1, i8 2
  %spec.select86 = add nuw nsw i8 %ret.1.5, %spec.select86.v
  br label %for.inc14.7

for.inc14.7:                                      ; preds = %for.inc14.6.thread, %for.inc14.6.for.inc14.7_crit_edge
  %ret.1.7 = phi i8 [ %ret.1.5, %for.inc14.6.for.inc14.7_crit_edge ], [ %spec.select86, %for.inc14.6.thread ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ret.1.7)
  %tobool17.not = icmp eq i8 %ret.1.7, 0
  %spec.store.select = select i1 %tobool17.not, i8 1, i8 %ret.1.7
  br label %cleanup

cleanup:                                          ; preds = %for.inc14.7, %do.end
  %retval.0 = phi i8 [ 1, %do.end ], [ %spec.store.select, %for.inc14.7 ]
  ret i8 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_vsi_set_dcb_tc_cfg(ptr nocapture noundef %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 17
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 3
  %3 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_info, align 4
  %qos_cfg = getelementptr inbounds %struct.ice_port_info, ptr %4, i32 0, i32 17
  %call.i = tail call zeroext i8 @ice_dcb_get_num_tc(ptr noundef %qos_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp9.not.i = icmp eq i8 %call.i, 0
  br i1 %cmp9.not.i, label %sw.bb.ice_dcb_get_ena_tc.exit_crit_edge, label %for.body.preheader.i

sw.bb.ice_dcb_get_ena_tc.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %ice_dcb_get_ena_tc.exit

for.body.preheader.i:                             ; preds = %sw.bb
  %wide.trip.count.i = zext i8 %call.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %ena_tc.011.i = phi i8 [ 1, %for.body.preheader.i ], [ %conv5.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %5 = trunc i32 %shl.i to i8
  %conv5.i = or i8 %ena_tc.011.i, %5
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.ice_dcb_get_ena_tc.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.ice_dcb_get_ena_tc.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ice_dcb_get_ena_tc.exit

ice_dcb_get_ena_tc.exit:                          ; preds = %for.body.i.ice_dcb_get_ena_tc.exit_crit_edge, %sw.bb.ice_dcb_get_ena_tc.exit_crit_edge
  %ena_tc.0.lcssa.i = phi i8 [ 1, %sw.bb.ice_dcb_get_ena_tc.exit_crit_edge ], [ %conv5.i, %for.body.i.ice_dcb_get_ena_tc.exit_crit_edge ]
  %conv = zext i8 %ena_tc.0.lcssa.i to i16
  %tc_cfg = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 56
  %ena_tc = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 56, i32 1
  %6 = ptrtoint ptr %ena_tc to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %ena_tc, align 2
  %call1 = tail call zeroext i8 @ice_dcb_get_num_tc(ptr noundef %qos_cfg)
  %7 = ptrtoint ptr %tc_cfg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call1, ptr %tc_cfg, align 32
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call fastcc zeroext i8 @ice_get_first_droptc(ptr noundef %vsi)
  %conv5 = zext i8 %call4 to i32
  %shl = shl nuw i32 1, %conv5
  %conv6 = trunc i32 %shl to i16
  %tc_cfg7 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 56
  %ena_tc8 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 56, i32 1
  %8 = ptrtoint ptr %ena_tc8 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6, ptr %ena_tc8, align 2
  %9 = ptrtoint ptr %tc_cfg7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %tc_cfg7, align 32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tc_cfg12 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 56
  %ena_tc13 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 56, i32 1
  %10 = ptrtoint ptr %ena_tc13 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %ena_tc13, align 2
  %11 = ptrtoint ptr %tc_cfg12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %tc_cfg12, align 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %ice_dcb_get_ena_tc.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ice_get_first_droptc(ptr nocapture noundef readonly %vsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 3
  %0 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_info, align 4
  %qos_cfg = getelementptr inbounds %struct.ice_port_info, ptr %1, i32 0, i32 17
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call = tail call zeroext i8 @ice_dcb_get_num_tc(ptr noundef %qos_cfg)
  %call.i = tail call zeroext i8 @ice_dcb_get_num_tc(ptr noundef %qos_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp9.not.i = icmp eq i8 %call.i, 0
  br i1 %cmp9.not.i, label %entry.ice_dcb_get_ena_tc.exit_crit_edge, label %for.body.preheader.i

entry.ice_dcb_get_ena_tc.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ice_dcb_get_ena_tc.exit

for.body.preheader.i:                             ; preds = %entry
  %wide.trip.count.i = zext i8 %call.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %ena_tc.011.i = phi i8 [ 1, %for.body.preheader.i ], [ %conv5.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %6 = trunc i32 %shl.i to i8
  %conv5.i = or i8 %ena_tc.011.i, %6
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ice_dcb_get_ena_tc.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ice_dcb_get_ena_tc.exit.loopexit:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = zext i8 %conv5.i to i32
  br label %ice_dcb_get_ena_tc.exit

ice_dcb_get_ena_tc.exit:                          ; preds = %ice_dcb_get_ena_tc.exit.loopexit, %entry.ice_dcb_get_ena_tc.exit_crit_edge
  %ena_tc.0.lcssa.i = phi i32 [ 1, %entry.ice_dcb_get_ena_tc.exit_crit_edge ], [ %phi.cast, %ice_dcb_get_ena_tc.exit.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp56.not = icmp eq i8 %call, 0
  br i1 %cmp56.not, label %ice_dcb_get_ena_tc.exit.do.body19_crit_edge, label %for.body.lr.ph

ice_dcb_get_ena_tc.exit.do.body19_crit_edge:      ; preds = %ice_dcb_get_ena_tc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

for.body.lr.ph:                                   ; preds = %ice_dcb_get_ena_tc.exit
  %pfcena = getelementptr inbounds %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %pfcena to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pfcena, align 1
  %conv7 = zext i8 %8 to i32
  %wide.trip.count = zext i8 %call to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %indvars.iv
  %and = and i32 %shl, %ena_tc.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and10 = and i32 %shl, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond = select i1 %tobool.not, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %do.body, label %for.inc

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = trunc i32 %indvars.iv to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_first_droptc.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_first_droptc, %if.then16)) #9
          to label %cleanup [label %if.then16], !srcloc !177

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_first_droptc.__UNIQUE_ID_ddebug613, ptr noundef %dev1, ptr noundef nonnull @.str.72, i32 noundef %indvars.iv) #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.do.body19_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.body19:                                        ; preds = %for.inc.do.body19_crit_edge, %ice_dcb_get_ena_tc.exit.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_first_droptc.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_first_droptc, %if.then31)) #9
          to label %cleanup [label %if.then31], !srcloc !177

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_first_droptc.__UNIQUE_ID_ddebug614, ptr noundef %dev1, ptr noundef nonnull @.str.73) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body19, %if.then16, %do.body
  %retval.0 = phi i8 [ %9, %if.then16 ], [ 0, %if.then31 ], [ %9, %do.body ], [ 0, %do.body19 ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ice_dcb_get_tc(ptr nocapture noundef readonly %vsi, i32 noundef %queue_index) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 5
  %0 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_rings, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %queue_index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %dcb_tc = getelementptr inbounds %struct.ice_tx_ring, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %dcb_tc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dcb_tc, align 1
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_vsi_cfg_dcb_rings(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %flags = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.cond.preheader, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %entry
  %ena_tc = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 56, i32 1
  %tx_rings34 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 5
  %rx_rings52 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 4
  br label %for.body15

for.cond.preheader:                               ; preds = %entry
  %num_txq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 48
  %5 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_txq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp168.not = icmp eq i16 %6, 0
  br i1 %cmp168.not, label %for.cond.preheader.for.cond2.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond2.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 5
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body.for.cond2.preheader_crit_edge, %for.cond.preheader.for.cond2.preheader_crit_edge
  %num_rxq = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 50
  %7 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_rxq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp4171.not = icmp eq i16 %8, 0
  br i1 %cmp4171.not, label %for.cond2.preheader.cleanup_crit_edge, label %for.body6.lr.ph

for.cond2.preheader.cleanup_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body6.lr.ph:                                  ; preds = %for.cond2.preheader
  %rx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 4
  br label %for.body6

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_rings, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.0169
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %dcb_tc = getelementptr inbounds %struct.ice_tx_ring, ptr %12, i32 0, i32 28
  %13 = ptrtoint ptr %dcb_tc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %dcb_tc, align 1
  %inc = add nuw nsw i32 %i.0169, 1
  %14 = ptrtoint ptr %num_txq to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_txq, align 2
  %conv = zext i16 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond2.preheader_crit_edge

for.body.for.cond2.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body6.lr.ph
  %i.1172 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc10, %for.body6.for.body6_crit_edge ]
  %16 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_rings, align 16
  %arrayidx7 = getelementptr ptr, ptr %17, i32 %i.1172
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx7, align 4
  %dcb_tc8 = getelementptr inbounds %struct.ice_rx_ring, ptr %19, i32 0, i32 29
  %20 = ptrtoint ptr %dcb_tc8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %dcb_tc8, align 128
  %inc10 = add nuw nsw i32 %i.1172, 1
  %21 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_rxq, align 2
  %conv3 = zext i16 %22 to i32
  %cmp4 = icmp ult i32 %inc10, %conv3
  br i1 %cmp4, label %for.body6.for.body6_crit_edge, label %for.body6.cleanup_crit_edge

for.body6.cleanup_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

for.body15:                                       ; preds = %for.inc58.for.body15_crit_edge, %for.cond12.preheader
  %n.0162 = phi i32 [ 0, %for.cond12.preheader ], [ %inc59, %for.inc58.for.body15_crit_edge ]
  %23 = ptrtoint ptr %ena_tc to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ena_tc, align 2
  %conv16 = zext i16 %24 to i32
  %shl = shl nuw nsw i32 1, %n.0162
  %and = and i32 %shl, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %for.body15.for.end60_crit_edge, label %if.end19

for.body15.for.end60_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end60

if.end19:                                         ; preds = %for.body15
  %arrayidx21 = getelementptr %struct.ice_vsi, ptr %vsi, i32 0, i32 56, i32 2, i32 %n.0162
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx21, align 4
  %qcount_tx = getelementptr %struct.ice_vsi, ptr %vsi, i32 0, i32 56, i32 2, i32 %n.0162, i32 1
  %27 = ptrtoint ptr %qcount_tx to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %qcount_tx, align 2
  %conv26 = zext i16 %26 to i32
  %conv29 = zext i16 %28 to i32
  %add = add nuw nsw i32 %conv29, %conv26
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp30158.not = icmp eq i16 %28, 0
  br i1 %cmp30158.not, label %if.end19.for.end39_crit_edge, label %for.body32.lr.ph

if.end19.for.end39_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end39

for.body32.lr.ph:                                 ; preds = %if.end19
  %conv33 = trunc i32 %n.0162 to i8
  br label %for.body32

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.body32.lr.ph
  %i.2159 = phi i32 [ %conv26, %for.body32.lr.ph ], [ %inc38, %for.body32.for.body32_crit_edge ]
  %29 = ptrtoint ptr %tx_rings34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_rings34, align 4
  %arrayidx35 = getelementptr ptr, ptr %30, i32 %i.2159
  %31 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx35, align 4
  %dcb_tc36 = getelementptr inbounds %struct.ice_tx_ring, ptr %32, i32 0, i32 28
  %33 = ptrtoint ptr %dcb_tc36 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv33, ptr %dcb_tc36, align 1
  %inc38 = add nuw nsw i32 %i.2159, 1
  %cmp30 = icmp ult i32 %inc38, %add
  br i1 %cmp30, label %for.body32.for.body32_crit_edge, label %for.body32.for.end39_crit_edge

for.body32.for.end39_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end39

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32

for.end39:                                        ; preds = %for.body32.for.end39_crit_edge, %if.end19.for.end39_crit_edge
  %qcount_rx = getelementptr %struct.ice_vsi, ptr %vsi, i32 0, i32 56, i32 2, i32 %n.0162, i32 2
  %34 = ptrtoint ptr %qcount_rx to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %qcount_rx, align 4
  %conv46 = zext i16 %35 to i32
  %add47 = add nuw nsw i32 %conv46, %conv26
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp48160.not = icmp eq i16 %35, 0
  br i1 %cmp48160.not, label %for.end39.for.inc58_crit_edge, label %for.body50.lr.ph

for.end39.for.inc58_crit_edge:                    ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc58

for.body50.lr.ph:                                 ; preds = %for.end39
  %conv51 = trunc i32 %n.0162 to i8
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.body50.lr.ph
  %i.3161 = phi i32 [ %conv26, %for.body50.lr.ph ], [ %inc56, %for.body50.for.body50_crit_edge ]
  %36 = ptrtoint ptr %rx_rings52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_rings52, align 16
  %arrayidx53 = getelementptr ptr, ptr %37, i32 %i.3161
  %38 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx53, align 4
  %dcb_tc54 = getelementptr inbounds %struct.ice_rx_ring, ptr %39, i32 0, i32 29
  %40 = ptrtoint ptr %dcb_tc54 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv51, ptr %dcb_tc54, align 128
  %inc56 = add nuw nsw i32 %i.3161, 1
  %cmp48 = icmp ult i32 %inc56, %add47
  br i1 %cmp48, label %for.body50.for.body50_crit_edge, label %for.body50.for.inc58_crit_edge

for.body50.for.inc58_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc58

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50

for.inc58:                                        ; preds = %for.body50.for.inc58_crit_edge, %for.end39.for.inc58_crit_edge
  %inc59 = add nuw nsw i32 %n.0162, 1
  %exitcond.not = icmp eq i32 %inc59, 8
  br i1 %exitcond.not, label %for.inc58.for.end60_crit_edge, label %for.inc58.for.body15_crit_edge

for.inc58.for.body15_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.inc58.for.end60_crit_edge:                    ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end60

for.end60:                                        ; preds = %for.inc58.for.end60_crit_edge, %for.body15.for.end60_crit_edge
  %all_enatc = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 74
  %41 = ptrtoint ptr %all_enatc to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %all_enatc, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool61.not = icmp eq i16 %42, 0
  br i1 %tobool61.not, label %for.end60.cleanup_crit_edge, label %if.then62

for.end60.cleanup_crit_edge:                      ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then62:                                        ; preds = %for.end60
  %call63 = tail call fastcc zeroext i8 @ice_get_first_droptc(ptr noundef %vsi)
  br label %for.body67

for.body67:                                       ; preds = %for.inc96.for.body67_crit_edge, %if.then62
  %n.1166 = phi i32 [ 1, %if.then62 ], [ %inc97, %for.inc96.for.body67_crit_edge ]
  %43 = ptrtoint ptr %all_enatc to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %all_enatc, align 16
  %conv69 = zext i16 %44 to i32
  %shl70 = shl nuw nsw i32 1, %n.1166
  %and71 = and i32 %shl70, %conv69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %for.body67.cleanup_crit_edge, label %if.end74

for.body67.cleanup_crit_edge:                     ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end74:                                         ; preds = %for.body67
  %arrayidx75 = getelementptr %struct.ice_vsi, ptr %vsi, i32 0, i32 63, i32 0, i32 4, i32 %n.1166
  %45 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx75, align 2
  %arrayidx78 = getelementptr %struct.ice_vsi, ptr %vsi, i32 0, i32 63, i32 0, i32 3, i32 %n.1166
  %47 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx78, align 2
  %conv79 = zext i16 %46 to i32
  %conv82 = zext i16 %48 to i32
  %add83 = add nuw nsw i32 %conv82, %conv79
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp84164.not = icmp eq i16 %48, 0
  br i1 %cmp84164.not, label %if.end74.for.inc96_crit_edge, label %if.end74.for.body86_crit_edge

if.end74.for.body86_crit_edge:                    ; preds = %if.end74
  br label %for.body86

if.end74.for.inc96_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc96

for.body86:                                       ; preds = %for.body86.for.body86_crit_edge, %if.end74.for.body86_crit_edge
  %i.4165 = phi i32 [ %inc94, %for.body86.for.body86_crit_edge ], [ %conv79, %if.end74.for.body86_crit_edge ]
  %49 = ptrtoint ptr %tx_rings34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_rings34, align 4
  %arrayidx88 = getelementptr ptr, ptr %50, i32 %i.4165
  %51 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx88, align 4
  %dcb_tc89 = getelementptr inbounds %struct.ice_tx_ring, ptr %52, i32 0, i32 28
  %53 = ptrtoint ptr %dcb_tc89 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %call63, ptr %dcb_tc89, align 1
  %54 = ptrtoint ptr %rx_rings52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_rings52, align 16
  %arrayidx91 = getelementptr ptr, ptr %55, i32 %i.4165
  %56 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx91, align 4
  %dcb_tc92 = getelementptr inbounds %struct.ice_rx_ring, ptr %57, i32 0, i32 29
  %58 = ptrtoint ptr %dcb_tc92 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %call63, ptr %dcb_tc92, align 128
  %inc94 = add nuw nsw i32 %i.4165, 1
  %cmp84 = icmp ult i32 %inc94, %add83
  br i1 %cmp84, label %for.body86.for.body86_crit_edge, label %for.body86.for.inc96_crit_edge

for.body86.for.inc96_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc96

for.body86.for.body86_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body86

for.inc96:                                        ; preds = %for.body86.for.inc96_crit_edge, %if.end74.for.inc96_crit_edge
  %inc97 = add nuw nsw i32 %n.1166, 1
  %exitcond174.not = icmp eq i32 %inc97, 16
  br i1 %exitcond174.not, label %for.inc96.cleanup_crit_edge, label %for.inc96.for.body67_crit_edge

for.inc96.for.body67_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body67

for.inc96.cleanup_crit_edge:                      ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc96.cleanup_crit_edge, %for.body67.cleanup_crit_edge, %for.end60.cleanup_crit_edge, %for.body6.cleanup_crit_edge, %for.cond2.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_dcb_bwchk(ptr nocapture noundef readonly %pf, ptr nocapture noundef %dcbcfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @ice_dcb_get_num_tc(ptr noundef %dcbcfg)
  %conv = zext i8 %call to i32
  %0 = zext i8 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %call, label %entry.for.body_crit_edge [
    i8 1, label %if.then
    i8 0, label %entry.if.then11_crit_edge
  ]

entry.if.then11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tcbwtable = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 4
  %1 = ptrtoint ptr %tcbwtable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 100, ptr %tcbwtable, align 1
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %total_bw.032 = phi i8 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx7 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 4, i32 %i.033
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx7, align 1
  %add = add i8 %3, %total_bw.032
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %4 = zext i8 %add to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %add, label %do.end [
    i8 0, label %for.end.if.then11_crit_edge
    i8 100, label %for.end.cleanup_crit_edge
  ]

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.if.then11_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %for.end.if.then11_crit_edge, %entry.if.then11_crit_edge
  %tcbwtable12 = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %tcbwtable12 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 100, ptr %tcbwtable12, align 1
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then11, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %do.end ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_pf_dcb_cfg(ptr noundef %pf, ptr nocapture noundef %new_cfg, i1 noundef zeroext %locked) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.ice_aqc_port_ets_elem, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %1 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 3
  %3 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_info, align 4
  %qos_cfg = getelementptr inbounds %struct.ice_port_info, ptr %4, i32 0, i32 17
  %is_sw_lldp = getelementptr inbounds %struct.ice_port_info, ptr %4, i32 0, i32 17, i32 3
  %5 = ptrtoint ptr %is_sw_lldp to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %is_sw_lldp, align 4
  %6 = lshr i8 %bf.load, 4
  %.lobit = and i8 %6, 1
  %7 = zext i8 %.lobit to i32
  %call = tail call zeroext i8 @ice_dcb_get_num_tc(ptr noundef %new_cfg)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp = icmp ugt i8 %call, 1
  br i1 %cmp, label %do.body, label %do.body14

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_pf_dcb_cfg.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_pf_dcb_cfg, %if.then12)) #9
          to label %do.end [label %if.then12], !srcloc !177

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_pf_dcb_cfg.__UNIQUE_ID_ddebug615, ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %flags = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #9
  br label %if.end32

do.body14:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_pf_dcb_cfg.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_pf_dcb_cfg, %if.then26)) #9
          to label %do.end29 [label %if.then26], !srcloc !177

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_pf_dcb_cfg.__UNIQUE_ID_ddebug616, ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %do.body14
  %flags30 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags30) #9
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %do.end
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(400) %new_cfg, ptr noundef dereferenceable(400) %qos_cfg, i32 400) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool34.not = icmp eq i32 %bcmp, 0
  br i1 %tobool34.not, label %do.body36, label %if.end52

do.body36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_pf_dcb_cfg.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_pf_dcb_cfg, %if.then48)) #9
          to label %cleanup [label %if.then48], !srcloc !177

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_pf_dcb_cfg.__UNIQUE_ID_ddebug617, ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end52:                                         ; preds = %if.end32
  %call.i = tail call zeroext i8 @ice_dcb_get_num_tc(ptr noundef %new_cfg) #9
  %conv.i = zext i8 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i)
  %switch = icmp ult i8 %call.i, 2
  br i1 %switch, label %if.end52.if.end56.sink.split_crit_edge, label %if.end52.for.body.i_crit_edge

if.end52.for.body.i_crit_edge:                    ; preds = %if.end52
  br label %for.body.i

if.end52.if.end56.sink.split_crit_edge:           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.sink.split

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end52.for.body.i_crit_edge
  %i.033.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end52.for.body.i_crit_edge ]
  %total_bw.032.i = phi i8 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end52.for.body.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.ice_dcbx_cfg, ptr %new_cfg, i32 0, i32 2, i32 4, i32 %i.033.i
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7.i, align 1
  %add.i = add i8 %9, %total_bw.032.i
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %10 = zext i8 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %add.i, label %ice_dcb_bwchk.exit [
    i8 0, label %for.end.i.if.end56.sink.split_crit_edge
    i8 100, label %for.end.i.if.end56_crit_edge
  ]

for.end.i.if.end56_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.end.i.if.end56.sink.split_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.sink.split

ice_dcb_bwchk.exit:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pf, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end56.sink.split:                              ; preds = %for.end.i.if.end56.sink.split_crit_edge, %if.end52.if.end56.sink.split_crit_edge
  %tcbwtable.i = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %new_cfg, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %tcbwtable.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 100, ptr %tcbwtable.i, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %for.end.i.if.end56_crit_edge
  %call57 = tail call ptr @kmemdup(ptr noundef %qos_cfg, i32 noundef 400, i32 noundef 3264) #9
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end56.cleanup_crit_edge, label %do.end63

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end63:                                         ; preds = %if.end56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12) #12
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %14 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.end63.do.body67_crit_edge, label %ice_get_main_vsi.exit

do.end63.do.body67_crit_edge:                     ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

ice_get_main_vsi.exit:                            ; preds = %do.end63
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool65.not = icmp eq ptr %17, null
  br i1 %tobool65.not, label %ice_get_main_vsi.exit.do.body67_crit_edge, label %if.end83

ice_get_main_vsi.exit.do.body67_crit_edge:        ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

do.body67:                                        ; preds = %ice_get_main_vsi.exit.do.body67_crit_edge, %do.end63.do.body67_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_pf_dcb_cfg.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_pf_dcb_cfg, %if.then79)) #9
          to label %free_cfg [label %if.then79], !srcloc !177

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_pf_dcb_cfg.__UNIQUE_ID_ddebug618, ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %free_cfg

if.end83:                                         ; preds = %ice_get_main_vsi.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 8) #14
  %tobool85.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool85.not, label %if.end83.free_cfg_crit_edge, label %if.end87

if.end83.free_cfg_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_cfg

if.end87:                                         ; preds = %if.end83
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call7.i.i) #9
  tail call void @ice_send_event_to_aux(ptr noundef %pf, ptr noundef nonnull %call7.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br i1 %locked, label %if.end87.if.end91_crit_edge, label %if.then90

if.end87.if.end91_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtnl_lock() #9
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end87.if.end91_crit_edge
  tail call fastcc void @ice_dcb_ena_dis_vsi(ptr noundef %pf, i1 noundef zeroext false)
  %19 = call ptr @memcpy(ptr %qos_cfg, ptr %new_cfg, i32 400)
  %etsrec = getelementptr inbounds %struct.ice_port_info, ptr %4, i32 0, i32 17, i32 0, i32 3
  %etscfg = getelementptr inbounds %struct.ice_port_info, ptr %4, i32 0, i32 17, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %etsrec, ptr %etscfg, i32 27)
  %etsrec92 = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %new_cfg, i32 0, i32 3
  %21 = call ptr @memcpy(ptr %etsrec92, ptr %etscfg, i32 27)
  %22 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_info, align 4
  %is_sw_lldp97 = getelementptr inbounds %struct.ice_port_info, ptr %23, i32 0, i32 17, i32 3
  %24 = ptrtoint ptr %is_sw_lldp97 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load98 = load i8, ptr %is_sw_lldp97, align 4
  %25 = and i8 %bf.load98, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool101.not = icmp eq i8 %25, 0
  br i1 %tobool101.not, label %if.end91.if.end112_crit_edge, label %if.then102

if.end91.if.end112_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then102:                                       ; preds = %if.end91
  %call105 = tail call i32 @ice_set_dcb_cfg(ptr noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then102.if.end112_crit_edge, label %do.end110

if.then102.if.end112_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

do.end110:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #12
  %26 = call ptr @memcpy(ptr %qos_cfg, ptr %call57, i32 400)
  br label %out

if.end112:                                        ; preds = %if.then102.if.end112_crit_edge, %if.end91.if.end112_crit_edge
  %27 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port_info, align 4
  %call115 = call i32 @ice_query_port_ets(ptr noundef %28, ptr noundef nonnull %buf, i16 noundef zeroext 64, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end121, label %do.end120

do.end120:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #12
  br label %out

if.end121:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  call void @ice_pf_dcb_recfg(ptr noundef %pf)
  br label %out

out:                                              ; preds = %if.end121, %do.end120, %do.end110
  %ret.1 = phi i32 [ %call105, %do.end110 ], [ %call115, %do.end120 ], [ 0, %if.end121 ]
  call fastcc void @ice_dcb_ena_dis_vsi(ptr noundef %pf, i1 noundef zeroext true)
  br i1 %locked, label %out.free_cfg_crit_edge, label %if.then123

out.free_cfg_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_cfg

if.then123:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @rtnl_unlock() #9
  br label %free_cfg

free_cfg:                                         ; preds = %if.then123, %out.free_cfg_crit_edge, %if.end83.free_cfg_crit_edge, %if.then79, %do.body67
  %ret.2 = phi i32 [ %ret.1, %out.free_cfg_crit_edge ], [ %ret.1, %if.then123 ], [ -22, %if.then79 ], [ -12, %if.end83.free_cfg_crit_edge ], [ -22, %do.body67 ]
  call void @kfree(ptr noundef nonnull %call57) #9
  br label %cleanup

cleanup:                                          ; preds = %free_cfg, %if.end56.cleanup_crit_edge, %ice_dcb_bwchk.exit, %if.then48, %do.body36
  %retval.0 = phi i32 [ %ret.2, %free_cfg ], [ %7, %if.then48 ], [ -22, %ice_dcb_bwchk.exit ], [ -12, %if.end56.cleanup_crit_edge ], [ %7, %do.body36 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_send_event_to_aux(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_dcb_ena_dis_vsi(ptr nocapture noundef readonly %pf, i1 noundef zeroext %ena) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_alloc_vsi = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 49
  %0 = ptrtoint ptr %num_alloc_vsi to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_alloc_vsi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp2.not = icmp eq i16 %1, 0
  br i1 %cmp2.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vsi3 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %vsi3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsi3, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.03
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %type = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 4, label %if.end.sw.bb_crit_edge
    i32 7, label %if.end.sw.bb_crit_edge4
    i32 0, label %if.end.sw.bb_crit_edge5
  ]

if.end.sw.bb_crit_edge5:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge4:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge4, %if.end.sw.bb_crit_edge5
  br i1 %ena, label %if.then5, label %if.else

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @ice_ena_vsi(ptr noundef nonnull %5, i1 noundef zeroext true) #9
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ice_dis_vsi(ptr noundef nonnull %5, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.03, 1
  %9 = ptrtoint ptr %num_alloc_vsi to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_alloc_vsi, align 4
  %conv = zext i16 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_set_dcb_cfg(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_query_port_ets(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_pf_dcb_recfg(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 3
  %0 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_info, align 4
  %qos_cfg = getelementptr inbounds %struct.ice_port_info, ptr %1, i32 0, i32 17
  %num_alloc_vsi = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 49
  %2 = ptrtoint ptr %num_alloc_vsi to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_alloc_vsi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp78.not = icmp eq i16 %3, 0
  br i1 %cmp78.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vsi2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %prio_table = getelementptr inbounds %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 3
  %arrayidx.1.i = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 3, i32 1
  %arrayidx.2.i = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 3, i32 2
  %arrayidx.3.i = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 3, i32 3
  %arrayidx.4.i = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 3, i32 4
  %arrayidx.5.i = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 3, i32 5
  %arrayidx.6.i = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 3, i32 6
  %arrayidx.7.i = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 3, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %v.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %vsi2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsi2, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %v.079
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %type = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %9, label %if.end.if.end19_crit_edge [
    i32 0, label %if.then5
    i32 4, label %if.then13
  ]

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then5:                                         ; preds = %if.end
  %call.i = tail call zeroext i8 @ice_dcb_get_num_tc(ptr noundef %qos_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp9.not.i = icmp eq i8 %call.i, 0
  br i1 %cmp9.not.i, label %if.then5.ice_dcb_get_ena_tc.exit_crit_edge, label %for.body.preheader.i

if.then5.ice_dcb_get_ena_tc.exit_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %ice_dcb_get_ena_tc.exit

for.body.preheader.i:                             ; preds = %if.then5
  %wide.trip.count.i = zext i8 %call.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %ena_tc.011.i = phi i8 [ 1, %for.body.preheader.i ], [ %conv5.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %11 = trunc i32 %shl.i to i8
  %conv5.i = or i8 %ena_tc.011.i, %11
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.ice_dcb_get_ena_tc.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.ice_dcb_get_ena_tc.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ice_dcb_get_ena_tc.exit

ice_dcb_get_ena_tc.exit:                          ; preds = %for.body.i.ice_dcb_get_ena_tc.exit_crit_edge, %if.then5.ice_dcb_get_ena_tc.exit_crit_edge
  %ena_tc.0.lcssa.i = phi i8 [ 1, %if.then5.ice_dcb_get_ena_tc.exit_crit_edge ], [ %conv5.i, %for.body.i.ice_dcb_get_ena_tc.exit_crit_edge ]
  %12 = ptrtoint ptr %prio_table to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %prio_table, align 1
  %conv.i = zext i8 %13 to i32
  %shl.i74 = shl nuw i32 1, %conv.i
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %15 to i32
  %shl.1.i = shl nuw i32 1, %conv.1.i
  %shl.masked.129.i = or i32 %shl.1.i, %shl.i74
  %16 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %17 to i32
  %shl.2.i = shl nuw i32 1, %conv.2.i
  %shl.masked.230.i = or i32 %shl.masked.129.i, %shl.2.i
  %18 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %19 to i32
  %shl.3.i = shl nuw i32 1, %conv.3.i
  %shl.masked.331.i = or i32 %shl.masked.230.i, %shl.3.i
  %20 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %21 to i32
  %shl.4.i = shl nuw i32 1, %conv.4.i
  %shl.masked.432.i = or i32 %shl.masked.331.i, %shl.4.i
  %22 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %23 to i32
  %shl.5.i = shl nuw i32 1, %conv.5.i
  %shl.masked.533.i = or i32 %shl.masked.432.i, %shl.5.i
  %24 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.6.i, align 1
  %conv.6.i = zext i8 %25 to i32
  %shl.6.i = shl nuw i32 1, %conv.6.i
  %shl.masked.634.i = or i32 %shl.masked.533.i, %shl.6.i
  %26 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.7.i, align 1
  %conv.7.i = zext i8 %27 to i32
  %shl.7.i = shl nuw i32 1, %conv.7.i
  %shl.masked.735.i = or i32 %shl.masked.634.i, %shl.7.i
  %28 = and i32 %shl.masked.735.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %.not41.i = icmp eq i32 %28, 2
  br i1 %.not41.i, label %ice_dcb_get_ena_tc.exit.if.then7_crit_edge, label %for.inc12.1.i

ice_dcb_get_ena_tc.exit.if.then7_crit_edge:       ; preds = %ice_dcb_get_ena_tc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.inc12.1.i:                                    ; preds = %ice_dcb_get_ena_tc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %.not.i = icmp eq i32 %28, 3
  %and.2.i = and i32 %shl.masked.735.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  %brmerge.2.i = or i1 %tobool.not.2.i, %.not.i
  br i1 %brmerge.2.i, label %for.inc12.2.i, label %for.inc12.1.i.if.then7_crit_edge

for.inc12.1.i.if.then7_crit_edge:                 ; preds = %for.inc12.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.inc12.2.i:                                    ; preds = %for.inc12.1.i
  %29 = and i32 %shl.masked.735.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %29)
  %.not36.i = icmp eq i32 %29, 7
  %and.3.i = and i32 %shl.masked.735.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  %brmerge.3.i = or i1 %tobool.not.3.i, %.not36.i
  br i1 %brmerge.3.i, label %for.inc12.3.i, label %for.inc12.2.i.if.then7_crit_edge

for.inc12.2.i.if.then7_crit_edge:                 ; preds = %for.inc12.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.inc12.3.i:                                    ; preds = %for.inc12.2.i
  %30 = and i32 %shl.masked.735.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %30)
  %.not37.i = icmp eq i32 %30, 15
  %and.4.i = and i32 %shl.masked.735.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  %brmerge.4.i = or i1 %tobool.not.4.i, %.not37.i
  br i1 %brmerge.4.i, label %for.inc12.4.i, label %for.inc12.3.i.if.then7_crit_edge

for.inc12.3.i.if.then7_crit_edge:                 ; preds = %for.inc12.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.inc12.4.i:                                    ; preds = %for.inc12.3.i
  %31 = and i32 %shl.masked.735.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %31)
  %.not38.i = icmp eq i32 %31, 31
  %and.5.i = and i32 %shl.masked.735.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  %brmerge.5.i = or i1 %tobool.not.5.i, %.not38.i
  br i1 %brmerge.5.i, label %for.inc12.5.i, label %for.inc12.4.i.if.then7_crit_edge

for.inc12.4.i.if.then7_crit_edge:                 ; preds = %for.inc12.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.inc12.5.i:                                    ; preds = %for.inc12.4.i
  %32 = and i32 %shl.masked.735.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %32)
  %.not40.i = icmp eq i32 %32, 63
  %and.6.i = and i32 %shl.masked.735.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp eq i32 %and.6.i, 0
  %brmerge.6.i = or i1 %tobool.not.6.i, %.not40.i
  br i1 %brmerge.6.i, label %ice_dcb_tc_contig.exit, label %for.inc12.5.i.if.then7_crit_edge

for.inc12.5.i.if.then7_crit_edge:                 ; preds = %for.inc12.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

ice_dcb_tc_contig.exit:                           ; preds = %for.inc12.5.i
  %33 = and i32 %shl.masked.735.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %33)
  %.not39.i = icmp eq i32 %33, 127
  %and.7.i = and i32 %shl.masked.735.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool.not.7.i = icmp eq i32 %and.7.i, 0
  %brmerge.7.i = or i1 %tobool.not.7.i, %.not39.i
  br i1 %brmerge.7.i, label %ice_dcb_tc_contig.exit.if.end19_crit_edge, label %ice_dcb_tc_contig.exit.if.then7_crit_edge

ice_dcb_tc_contig.exit.if.then7_crit_edge:        ; preds = %ice_dcb_tc_contig.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

ice_dcb_tc_contig.exit.if.end19_crit_edge:        ; preds = %ice_dcb_tc_contig.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then7:                                         ; preds = %ice_dcb_tc_contig.exit.if.then7_crit_edge, %for.inc12.5.i.if.then7_crit_edge, %for.inc12.4.i.if.then7_crit_edge, %for.inc12.3.i.if.then7_crit_edge, %for.inc12.2.i.if.then7_crit_edge, %for.inc12.1.i.if.then7_crit_edge, %ice_dcb_get_ena_tc.exit.if.then7_crit_edge
  %34 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port_info, align 4
  %36 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pf, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %call.i75 = tail call i32 @ice_dcb_sw_dflt_cfg(ptr noundef %pf, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.50, i32 noundef %call.i75) #12
  br label %if.end19

if.end.i:                                         ; preds = %if.then7
  %etscfg.i = getelementptr inbounds %struct.ice_port_info, ptr %35, i32 0, i32 17, i32 0, i32 2
  %38 = ptrtoint ptr %etscfg.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %etscfg.i, align 4
  %39 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port_info, align 4
  %call4.i = tail call i32 @ice_set_dcb_cfg(ptr noundef %40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end19_crit_edge, label %do.end9.i

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.76) #12
  br label %if.end19

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call fastcc zeroext i8 @ice_get_first_droptc(ptr noundef nonnull %7)
  %conv15 = zext i8 %call14 to i32
  %shl = shl nuw i32 1, %conv15
  %conv16 = trunc i32 %shl to i8
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %do.end9.i, %if.end.i.if.end19_crit_edge, %do.end.i, %ice_dcb_tc_contig.exit.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %tc_map.0 = phi i8 [ %ena_tc.0.lcssa.i, %ice_dcb_tc_contig.exit.if.end19_crit_edge ], [ %conv16, %if.then13 ], [ 1, %if.end.if.end19_crit_edge ], [ 1, %do.end.i ], [ 1, %if.end.i.if.end19_crit_edge ], [ 1, %do.end9.i ]
  %call20 = tail call i32 @ice_vsi_cfg_tc(ptr noundef nonnull %7, i8 noundef zeroext %tc_map.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 19
  %43 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %idx, align 2
  %conv23 = zext i16 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %conv23) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %46, label %if.end32 [
    i32 4, label %if.end24.cleanup_crit_edge
    i32 7, label %if.end24.cleanup_crit_edge80
  ]

if.end24.cleanup_crit_edge80:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  tail call void @ice_vsi_map_rings_to_vectors(ptr noundef nonnull %7) #9
  %48 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp34 = icmp eq i32 %49, 0
  br i1 %cmp34, label %if.then36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ice_dcbnl_set_all(ptr noundef nonnull %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end32.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end24.cleanup_crit_edge80, %do.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %v.079, 1
  %50 = ptrtoint ptr %num_alloc_vsi to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %num_alloc_vsi, align 4
  %conv = zext i16 %51 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 8) #14
  %tobool39.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool39.not, label %for.end.cleanup44_crit_edge, label %if.end41

for.end.cleanup44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 3, ptr noundef nonnull %call7.i.i) #9
  tail call void @ice_send_event_to_aux(ptr noundef %pf, ptr noundef nonnull %call7.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup44

cleanup44:                                        ; preds = %if.end41, %for.end.cleanup44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_dcb_rebuild(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.ice_aqc_port_ets_elem, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %1 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %hw = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 3
  %3 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_info, align 4
  %call = call i32 @ice_query_port_ets(ptr noundef %4, ptr noundef nonnull %buf, i16 noundef zeroext 64, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end59_crit_edge

entry.do.end59_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

if.end:                                           ; preds = %entry
  %tc_mutex = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 30
  call void @mutex_lock_nested(ptr noundef %tc_mutex, i32 noundef 0) #9
  %5 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_info, align 4
  %is_sw_lldp = getelementptr inbounds %struct.ice_port_info, ptr %6, i32 0, i32 17, i32 3
  %7 = ptrtoint ptr %is_sw_lldp to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %is_sw_lldp, align 4
  %8 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %maxtcs.i = getelementptr inbounds %struct.ice_port_info, ptr %6, i32 0, i32 17, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %maxtcs.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %maxtcs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.if.end8_crit_edge

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %maxtcs.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %maxtcs.i, align 1
  %arrayidx.i = getelementptr %struct.ice_port_info, ptr %6, i32 0, i32 17, i32 0, i32 3, i32 4, i32 0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 100, ptr %arrayidx.i, align 1
  %arrayidx14.i = getelementptr %struct.ice_port_info, ptr %6, i32 0, i32 17, i32 0, i32 3, i32 5, i32 0
  %13 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %arrayidx14.i, align 1
  %arrayidx.1.i = getelementptr %struct.ice_port_info, ptr %6, i32 0, i32 17, i32 0, i32 3, i32 4, i32 1
  %arrayidx14.1.i = getelementptr %struct.ice_port_info, ptr %6, i32 0, i32 17, i32 0, i32 3, i32 5, i32 1
  %14 = call ptr @memset(ptr %arrayidx.1.i, i32 0, i32 7)
  %15 = call ptr @memset(ptr %arrayidx14.1.i, i32 0, i32 7)
  br label %if.end8

if.end8:                                          ; preds = %if.end.i, %if.then5.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %16 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port_info, align 4
  %call11 = call i32 @ice_set_dcb_cfg(ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end17, label %if.end8.do.end59_crit_edge

if.end8.do.end59_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

if.end17:                                         ; preds = %if.end8
  %18 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_info, align 4
  %is_sw_lldp21 = getelementptr inbounds %struct.ice_port_info, ptr %19, i32 0, i32 17, i32 3
  %20 = ptrtoint ptr %is_sw_lldp21 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load22 = load i8, ptr %is_sw_lldp21, align 4
  %21 = and i8 %bf.load22, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool25.not = icmp eq i8 %21, 0
  br i1 %tobool25.not, label %if.then26, label %if.end17.do.end46_crit_edge

if.end17.do.end46_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.then26:                                        ; preds = %if.end17
  %call28 = call i32 @ice_cfg_lldp_mib_change(ptr noundef %hw, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then26.do.end46_crit_edge, label %land.lhs.true

if.then26.do.end46_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

land.lhs.true:                                    ; preds = %if.then26
  %22 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_info, align 4
  %is_sw_lldp33 = getelementptr inbounds %struct.ice_port_info, ptr %23, i32 0, i32 17, i32 3
  %24 = ptrtoint ptr %is_sw_lldp33 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load34 = load i8, ptr %is_sw_lldp33, align 4
  %25 = and i8 %bf.load34, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool37.not = icmp eq i8 %25, 0
  br i1 %tobool37.not, label %land.lhs.true.do.end59_crit_edge, label %land.lhs.true.do.end46_crit_edge

land.lhs.true.do.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

land.lhs.true.do.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

do.end46:                                         ; preds = %land.lhs.true.do.end46_crit_edge, %if.then26.do.end46_crit_edge, %if.end17.do.end46_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.29) #12
  %26 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port_info, align 4
  %call49 = call i32 @ice_query_port_ets(ptr noundef %27, ptr noundef nonnull %buf, i16 noundef zeroext 64, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.end46.cleanup_crit_edge, label %do.end46.do.end59_crit_edge

do.end46.do.end59_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

do.end46.cleanup_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end59:                                         ; preds = %do.end46.do.end59_crit_edge, %land.lhs.true.do.end59_crit_edge, %if.end8.do.end59_crit_edge, %entry.do.end59_crit_edge
  %.str.19.sink = phi ptr [ @.str.19, %entry.do.end59_crit_edge ], [ @.str.23, %if.end8.do.end59_crit_edge ], [ @.str.26, %land.lhs.true.do.end59_crit_edge ], [ @.str.19, %do.end46.do.end59_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.19.sink) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 400) #14
  %tobool61.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool61.not, label %if.then62, label %if.end64

if.then62:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #11
  %tc_mutex63 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 30
  br label %cleanup

if.end64:                                         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #11
  %etscfg = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %etscfg to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %etscfg, align 8
  %tcbwtable = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %tcbwtable to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 100, ptr %tcbwtable, align 1
  %tsatable = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %tsatable to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %tsatable, align 1
  %etsrec = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 3
  %32 = call ptr @memcpy(ptr %etsrec, ptr %etscfg, i32 27)
  %call69 = call i32 @ice_pf_dcb_cfg(ptr noundef %pf, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false)
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %tc_mutex70 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 30
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then62, %do.end46.cleanup_crit_edge
  %tc_mutex70.sink = phi ptr [ %tc_mutex70, %if.end64 ], [ %tc_mutex63, %if.then62 ], [ %tc_mutex, %do.end46.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %tc_mutex70.sink) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_cfg_lldp_mib_change(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_dcb_sw_dflt_cfg(ptr noundef %pf, i1 noundef zeroext %ets_willing, i1 noundef zeroext %locked) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.ice_aqc_port_ets_elem, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 3
  %1 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port_info, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 400) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %qos_cfg = getelementptr inbounds %struct.ice_port_info, ptr %2, i32 0, i32 17
  %4 = call ptr @memset(ptr %qos_cfg, i32 0, i32 400)
  %conv = zext i1 %ets_willing to i8
  %etscfg = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %etscfg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %etscfg, align 8
  %maxtc = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 0, i32 2
  %6 = ptrtoint ptr %maxtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxtc, align 8
  %conv4 = trunc i32 %7 to i8
  %maxtcs = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %maxtcs to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %maxtcs, align 2
  %tcbwtable = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %tcbwtable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 100, ptr %tcbwtable, align 1
  %tsatable = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %tsatable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %tsatable, align 1
  %etsrec = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 3
  %11 = call ptr @memcpy(ptr %etsrec, ptr %etscfg, i32 27)
  %12 = ptrtoint ptr %etsrec to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %etsrec, align 1
  %pfc = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %pfc, align 2
  %pfccap = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %pfccap to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4, ptr %pfccap, align 8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %call7.i.i, align 8
  %app = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 6
  %selector = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 2
  %16 = ptrtoint ptr %selector to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %selector, align 1
  %priority = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %17 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %priority, align 2
  %18 = ptrtoint ptr %app to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -30458, ptr %app, align 4
  %call24 = tail call i32 @ice_pf_dcb_cfg(ptr noundef %pf, ptr noundef nonnull %call7.i.i, i1 noundef zeroext %locked)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = call i32 @ice_query_port_ets(ptr noundef %2, ptr noundef nonnull %buf, i16 noundef zeroext 64, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end27 ], [ -12, %entry.cleanup_crit_edge ], [ %call24, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_vsi_cfg_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_vsi_map_rings_to_vectors(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_dcbnl_set_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_init_pf_dcb(ptr noundef %pf, i1 noundef zeroext %locked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %port_info3 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 3
  %2 = ptrtoint ptr %port_info3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_info3, align 4
  %call = tail call i32 @ice_init_dcb(ptr noundef %hw2, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end38.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %is_sw_lldp = getelementptr inbounds %struct.ice_port_info, ptr %3, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %is_sw_lldp to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_sw_lldp, align 4
  %5 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %do.end, label %if.then10.critedge

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %call) #12
  br label %do.end51

if.then10.critedge:                               ; preds = %land.lhs.true
  %maxtc.c85 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 0, i32 2
  %6 = ptrtoint ptr %maxtc.c85 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxtc.c85, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef %7) #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.44) #12
  %flags = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #9
  %call15 = tail call i32 @ice_aq_set_pfc_mode(ptr noundef %hw2, i8 noundef zeroext 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then10.critedge.if.end21_crit_edge, label %do.end20

if.then10.critedge.if.end21_crit_edge:            ; preds = %if.then10.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end20:                                         ; preds = %if.then10.critedge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.47) #12
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.then10.critedge.if.end21_crit_edge
  %call23 = tail call i32 @ice_dcb_sw_dflt_cfg(ptr noundef %pf, i1 noundef zeroext true, i1 noundef zeroext %locked)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end29, label %do.end28

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.50, i32 noundef %call23) #12
  br label %do.end51

if.end29:                                         ; preds = %if.end21
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %8 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end29.do.end35_crit_edge, label %ice_get_main_vsi.exit

if.end29.do.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

ice_get_main_vsi.exit:                            ; preds = %if.end29
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool31.not = icmp eq ptr %11, null
  br i1 %tobool31.not, label %ice_get_main_vsi.exit.do.end35_crit_edge, label %cleanup

ice_get_main_vsi.exit.do.end35_crit_edge:         ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end35:                                         ; preds = %ice_get_main_vsi.exit.do.end35_crit_edge, %if.end29.do.end35_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.53) #12
  br label %do.end51

cleanup:                                          ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ice_cfg_sw_lldp(ptr noundef nonnull %11, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %dcbx_mode.i = getelementptr inbounds %struct.ice_port_info, ptr %3, i32 0, i32 17, i32 0, i32 9
  %12 = ptrtoint ptr %dcbx_mode.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dcbx_mode.i, align 4
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  %retval.0.i86 = select i1 %tobool1.not.i, i8 9, i8 5
  %conv = zext i8 %retval.0.i86 to i16
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 61
  %15 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %dcbx_cap, align 2
  br label %cleanup52

if.end38.critedge:                                ; preds = %entry
  %maxtc.c = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 28, i32 0, i32 2
  %16 = ptrtoint ptr %maxtc.c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maxtc.c, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef %17) #12
  %flags39 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags39) #9
  %dcbx_mode.i87 = getelementptr inbounds %struct.ice_port_info, ptr %3, i32 0, i32 17, i32 0, i32 9
  %18 = ptrtoint ptr %dcbx_mode.i87 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dcbx_mode.i87, align 4
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not.i88 = icmp eq i8 %20, 0
  %retval.0.i90 = select i1 %tobool1.not.i88, i8 10, i8 6
  %conv42 = zext i8 %retval.0.i90 to i16
  %dcbx_cap43 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 61
  %21 = ptrtoint ptr %dcbx_cap43 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv42, ptr %dcbx_cap43, align 2
  %22 = ptrtoint ptr %port_info3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_info3, align 4
  %qos_cfg.i = getelementptr inbounds %struct.ice_port_info, ptr %23, i32 0, i32 17
  %call.i = tail call ptr @kmemdup(ptr noundef %qos_cfg.i, i32 noundef 400, i32 noundef 3264) #9
  %tobool.not.i91 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i91, label %if.end38.critedge.do.end51_crit_edge, label %if.end.i

if.end38.critedge.do.end51_crit_edge:             ; preds = %if.end38.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

if.end.i:                                         ; preds = %if.end38.critedge
  %24 = call ptr @memset(ptr %qos_cfg.i, i32 0, i32 400)
  %25 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pf, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.78) #12
  %call4.i = tail call i32 @ice_pf_dcb_cfg(ptr noundef %pf, ptr noundef nonnull %call.i, i1 noundef zeroext %locked) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  tail call void @kfree(ptr noundef nonnull %call.i) #9
  br i1 %tobool5.not.i, label %if.end.i.cleanup52_crit_edge, label %if.end.i.do.end51_crit_edge

if.end.i.do.end51_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

if.end.i.cleanup52_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

do.end51:                                         ; preds = %if.end.i.do.end51_crit_edge, %if.end38.critedge.do.end51_crit_edge, %do.end35, %do.end28, %do.end
  %err.1 = phi i32 [ %call, %do.end ], [ -5, %do.end28 ], [ -5, %do.end35 ], [ -12, %if.end38.critedge.do.end51_crit_edge ], [ -22, %if.end.i.do.end51_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.56) #12
  br label %cleanup52

cleanup52:                                        ; preds = %do.end51, %if.end.i.cleanup52_crit_edge, %cleanup
  %retval.1 = phi i32 [ %err.1, %do.end51 ], [ 0, %cleanup ], [ 0, %if.end.i.cleanup52_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_init_dcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_set_pfc_mode(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_cfg_sw_lldp(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_stat_update32(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ice_tx_prepare_vlan_flags_dcb(ptr nocapture noundef readonly %tx_ring, ptr nocapture noundef %first) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ice_tx_buf, ptr %first, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %vsi = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 7
  %3 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vsi, align 4
  %back = getelementptr inbounds %struct.ice_vsi, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 8
  %flags = getelementptr inbounds %struct.ice_pf, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_flags = getelementptr inbounds %struct.ice_tx_buf, ptr %first, i32 0, i32 4
  %10 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_flags, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %priority = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15, i32 0, i32 6
  %12 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp.not = icmp eq i32 %13, 7
  br i1 %cmp.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then2_crit_edge

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %and4 = and i32 %11, 536870911
  %14 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and4, ptr %tx_flags, align 4
  %priority5 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15, i32 0, i32 6
  %15 = ptrtoint ptr %priority5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %priority5, align 4
  %shl = shl i32 %16, 29
  %or = or i32 %shl, %and4
  %or9 = or i32 %or, 2
  store i32 %or9, ptr %tx_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_dcb_process_lldp_set_mib_change(ptr noundef %pf, ptr nocapture noundef readonly %event) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.ice_aqc_port_ets_elem, align 4
  %tmp_dcbx_cfg = alloca %struct.ice_dcbx_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %1 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %tmp_dcbx_cfg) #9
  %flags = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dcbx_cap = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 61
  %6 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dcbx_cap, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcb_process_lldp_set_mib_change, %if.then8)) #9
          to label %cleanup [label %if.then8], !srcloc !177

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug625, ptr noundef %dev1, ptr noundef nonnull @.str.59) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 3
  %9 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_info, align 4
  %params = getelementptr inbounds %struct.ice_aq_desc, ptr %event, i32 0, i32 6
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %params, align 4
  %13 = lshr i8 %12, 2
  %14 = and i8 %13, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcb_process_lldp_set_mib_change, %if.then26)) #9
          to label %do.end30 [label %if.then26], !srcloc !177

if.then26:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %conv27 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug626, ptr noundef %dev1, ptr noundef nonnull @.str.60, i32 noundef %conv27) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not = icmp eq i8 %14, 0
  br i1 %cmp.not, label %if.end34, label %do.end30.cleanup_crit_edge

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %do.end30
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %params, align 4
  %17 = and i8 %16, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcb_process_lldp_set_mib_change, %if.then51)) #9
          to label %do.end56 [label %if.then51], !srcloc !177

if.then51:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool53.not = icmp eq i8 %17, 0
  %cond = select i1 %tobool53.not, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug627, ptr noundef %dev1, ptr noundef nonnull @.str.61, ptr noundef nonnull %cond) #9
  br label %do.end56

do.end56:                                         ; preds = %if.then51, %if.end34
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp58 = icmp eq i8 %17, 1
  br i1 %cmp58, label %if.then60, label %do.end56.if.end69_crit_edge

do.end56.if.end69_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then60:                                        ; preds = %do.end56
  %hw61 = getelementptr inbounds %struct.ice_port_info, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %hw61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw61, align 4
  %remote_dcbx_cfg = getelementptr inbounds %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 2
  %call62 = tail call i32 @ice_aq_get_dcb_cfg(ptr noundef %19, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %remote_dcbx_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then60.if.end69_crit_edge, label %do.end67

if.then60.if.end69_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

do.end67:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.64) #12
  br label %cleanup

if.end69:                                         ; preds = %if.then60.if.end69_crit_edge, %do.end56.if.end69_crit_edge
  %tc_mutex = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %tc_mutex, i32 noundef 0) #9
  %20 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port_info, align 4
  %qos_cfg72 = getelementptr inbounds %struct.ice_port_info, ptr %21, i32 0, i32 17
  %22 = call ptr @memcpy(ptr %tmp_dcbx_cfg, ptr %qos_cfg72, i32 400)
  %qos_cfg73 = getelementptr inbounds %struct.ice_port_info, ptr %10, i32 0, i32 17
  %23 = call ptr @memset(ptr %qos_cfg73, i32 0, i32 400)
  %24 = load ptr, ptr %port_info, align 4
  %call77 = tail call i32 @ice_get_dcb_cfg(ptr noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end83, label %do.end82

do.end82:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.66) #12
  br label %out

if.end83:                                         ; preds = %if.end69
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(400) %tmp_dcbx_cfg, ptr noundef dereferenceable(400) %qos_cfg73, i32 400) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool87.not = icmp eq i32 %bcmp, 0
  br i1 %tobool87.not, label %do.body89, label %if.end105

do.body89:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcb_process_lldp_set_mib_change, %if.then101)) #9
          to label %out [label %if.then101], !srcloc !177

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug628, ptr noundef %dev1, ptr noundef nonnull @.str.68) #9
  br label %out

if.end105:                                        ; preds = %if.end83
  %dcbx_mode.i = getelementptr inbounds %struct.ice_port_info, ptr %10, i32 0, i32 17, i32 0, i32 9
  %25 = ptrtoint ptr %dcbx_mode.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dcbx_mode.i, align 4
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not.i = icmp eq i8 %27, 0
  %retval.0.i231 = select i1 %tobool1.not.i, i8 10, i8 6
  %conv107 = zext i8 %retval.0.i231 to i16
  %28 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv107, ptr %dcbx_cap, align 2
  %call111 = call fastcc zeroext i1 @ice_dcb_need_recfg(ptr noundef %pf, ptr noundef nonnull %tmp_dcbx_cfg, ptr noundef %qos_cfg73)
  call void @ice_dcbnl_flush_apps(ptr noundef %pf, ptr noundef nonnull %tmp_dcbx_cfg, ptr noundef %qos_cfg73) #9
  br i1 %call111, label %if.end117, label %if.end105.out_crit_edge

if.end105.out_crit_edge:                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end117:                                        ; preds = %if.end105
  %call120 = call zeroext i8 @ice_dcb_get_num_tc(ptr noundef %qos_cfg73)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call120)
  %cmp122 = icmp ugt i8 %call120, 1
  br i1 %cmp122, label %do.body125, label %do.body143

do.body125:                                       ; preds = %if.end117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcb_process_lldp_set_mib_change, %if.then137)) #9
          to label %do.end140 [label %if.then137], !srcloc !177

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug629, ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %do.end140

do.end140:                                        ; preds = %if.then137, %do.body125
  call void @_set_bit(i32 noundef 6, ptr noundef %flags) #9
  br label %if.end161

do.body143:                                       ; preds = %if.end117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcb_process_lldp_set_mib_change, %if.then155)) #9
          to label %do.end158 [label %if.then155], !srcloc !177

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug630, ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %do.end158

do.end158:                                        ; preds = %if.then155, %do.body143
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #9
  br label %if.end161

if.end161:                                        ; preds = %do.end158, %do.end140
  call void @rtnl_lock() #9
  %num_alloc_vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 49
  %29 = ptrtoint ptr %num_alloc_vsi.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_alloc_vsi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp2.not.i = icmp eq i16 %30, 0
  br i1 %cmp2.not.i, label %if.end161.ice_dcb_ena_dis_vsi.exit_crit_edge, label %for.body.lr.ph.i

if.end161.ice_dcb_ena_dis_vsi.exit_crit_edge:     ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  br label %ice_dcb_ena_dis_vsi.exit

for.body.lr.ph.i:                                 ; preds = %if.end161
  %vsi3.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %vsi3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vsi3.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %32, i32 %i.03.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %type.i = getelementptr inbounds %struct.ice_vsi, ptr %34, i32 0, i32 17
  %35 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %36, label %if.end.i.cleanup.i_crit_edge [
    i32 4, label %if.end.i.sw.bb.i_crit_edge
    i32 7, label %if.end.i.sw.bb.i_crit_edge254
    i32 0, label %if.end.i.sw.bb.i_crit_edge255
  ]

if.end.i.sw.bb.i_crit_edge255:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge254:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge254, %if.end.i.sw.bb.i_crit_edge255
  call void @ice_dis_vsi(ptr noundef nonnull %34, i1 noundef zeroext true) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb.i, %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %38 = ptrtoint ptr %num_alloc_vsi.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_alloc_vsi.i, align 4
  %conv.i = zext i16 %39 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.ice_dcb_ena_dis_vsi.exit_crit_edge

cleanup.i.ice_dcb_ena_dis_vsi.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ice_dcb_ena_dis_vsi.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ice_dcb_ena_dis_vsi.exit:                         ; preds = %cleanup.i.ice_dcb_ena_dis_vsi.exit_crit_edge, %if.end161.ice_dcb_ena_dis_vsi.exit_crit_edge
  %40 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port_info, align 4
  %call164 = call i32 @ice_query_port_ets(ptr noundef %41, ptr noundef nonnull %buf, i16 noundef zeroext 64, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end170, label %do.end169

do.end169:                                        ; preds = %ice_dcb_ena_dis_vsi.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #12
  br label %unlock_rtnl

if.end170:                                        ; preds = %ice_dcb_ena_dis_vsi.exit
  call void @ice_pf_dcb_recfg(ptr noundef %pf)
  %42 = ptrtoint ptr %num_alloc_vsi.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_alloc_vsi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp2.not.i233 = icmp eq i16 %43, 0
  br i1 %cmp2.not.i233, label %if.end170.unlock_rtnl_crit_edge, label %for.body.lr.ph.i235

if.end170.unlock_rtnl_crit_edge:                  ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_rtnl

for.body.lr.ph.i235:                              ; preds = %if.end170
  %vsi3.i234 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  br label %for.body.i239

for.body.i239:                                    ; preds = %cleanup.i246.for.body.i239_crit_edge, %for.body.lr.ph.i235
  %i.03.i236 = phi i32 [ 0, %for.body.lr.ph.i235 ], [ %inc.i243, %cleanup.i246.for.body.i239_crit_edge ]
  %44 = ptrtoint ptr %vsi3.i234 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vsi3.i234, align 8
  %arrayidx.i237 = getelementptr ptr, ptr %45, i32 %i.03.i236
  %46 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i237, align 4
  %tobool.not.i238 = icmp eq ptr %47, null
  br i1 %tobool.not.i238, label %for.body.i239.cleanup.i246_crit_edge, label %if.end.i241

for.body.i239.cleanup.i246_crit_edge:             ; preds = %for.body.i239
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i246

if.end.i241:                                      ; preds = %for.body.i239
  %type.i240 = getelementptr inbounds %struct.ice_vsi, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %type.i240 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type.i240, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %49, label %if.end.i241.cleanup.i246_crit_edge [
    i32 4, label %if.end.i241.sw.bb.i242_crit_edge
    i32 7, label %if.end.i241.sw.bb.i242_crit_edge256
    i32 0, label %if.end.i241.sw.bb.i242_crit_edge257
  ]

if.end.i241.sw.bb.i242_crit_edge257:              ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i242

if.end.i241.sw.bb.i242_crit_edge256:              ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i242

if.end.i241.sw.bb.i242_crit_edge:                 ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i242

if.end.i241.cleanup.i246_crit_edge:               ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i246

sw.bb.i242:                                       ; preds = %if.end.i241.sw.bb.i242_crit_edge, %if.end.i241.sw.bb.i242_crit_edge256, %if.end.i241.sw.bb.i242_crit_edge257
  %call.i = call i32 @ice_ena_vsi(ptr noundef nonnull %47, i1 noundef zeroext true) #9
  br label %cleanup.i246

cleanup.i246:                                     ; preds = %sw.bb.i242, %if.end.i241.cleanup.i246_crit_edge, %for.body.i239.cleanup.i246_crit_edge
  %inc.i243 = add nuw nsw i32 %i.03.i236, 1
  %51 = ptrtoint ptr %num_alloc_vsi.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %num_alloc_vsi.i, align 4
  %conv.i244 = zext i16 %52 to i32
  %cmp.i245 = icmp ult i32 %inc.i243, %conv.i244
  br i1 %cmp.i245, label %cleanup.i246.for.body.i239_crit_edge, label %cleanup.i246.unlock_rtnl_crit_edge

cleanup.i246.unlock_rtnl_crit_edge:               ; preds = %cleanup.i246
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_rtnl

cleanup.i246.for.body.i239_crit_edge:             ; preds = %cleanup.i246
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i239

unlock_rtnl:                                      ; preds = %cleanup.i246.unlock_rtnl_crit_edge, %if.end170.unlock_rtnl_crit_edge, %do.end169
  call void @rtnl_unlock() #9
  br label %out

out:                                              ; preds = %unlock_rtnl, %if.end105.out_crit_edge, %if.then101, %do.body89, %do.end82
  call void @mutex_unlock(ptr noundef %tc_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end67, %do.end30.cleanup_crit_edge, %if.then8, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %tmp_dcbx_cfg) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_get_dcb_cfg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_dcb_cfg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ice_dcb_need_recfg(ptr nocapture noundef readonly %pf, ptr nocapture noundef readonly %old_cfg, ptr nocapture noundef readonly %new_cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %etscfg = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %new_cfg, i32 0, i32 2
  %etscfg2 = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %old_cfg, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(27) %etscfg, ptr noundef dereferenceable(27) %etscfg2, i32 27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.if.end61_crit_edge, label %if.then

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then:                                          ; preds = %entry
  %prio_table = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %new_cfg, i32 0, i32 2, i32 3
  %prio_table5 = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %old_cfg, i32 0, i32 2, i32 3
  %bcmp144 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %prio_table, ptr noundef dereferenceable(8) %prio_table5, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp144)
  %tobool7 = icmp ne i32 %bcmp144, 0
  br i1 %tobool7, label %if.then8, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcb_need_recfg.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcb_need_recfg, %if.then13)) #9
          to label %if.end14 [label %if.then13], !srcloc !177

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcb_need_recfg.__UNIQUE_ID_ddebug619, ptr noundef %dev1, ptr noundef nonnull @.str.81) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then8, %if.then.if.end14_crit_edge
  %tcbwtable = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %new_cfg, i32 0, i32 2, i32 4
  %tcbwtable17 = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %old_cfg, i32 0, i32 2, i32 4
  %bcmp145 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %tcbwtable, ptr noundef dereferenceable(8) %tcbwtable17, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp145)
  %tobool19.not = icmp eq i32 %bcmp145, 0
  br i1 %tobool19.not, label %if.end14.if.end37_crit_edge, label %do.body21

if.end14.if.end37_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.body21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcb_need_recfg.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcb_need_recfg, %if.then33)) #9
          to label %if.end37 [label %if.then33], !srcloc !177

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcb_need_recfg.__UNIQUE_ID_ddebug620, ptr noundef %dev1, ptr noundef nonnull @.str.82) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %do.body21, %if.end14.if.end37_crit_edge
  %tsatable = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %new_cfg, i32 0, i32 2, i32 5
  %tsatable40 = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %old_cfg, i32 0, i32 2, i32 5
  %bcmp146 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %tsatable, ptr noundef dereferenceable(8) %tsatable40, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp146)
  %tobool42.not = icmp eq i32 %bcmp146, 0
  br i1 %tobool42.not, label %if.end37.if.end61_crit_edge, label %do.body44

if.end37.if.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

do.body44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcb_need_recfg.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcb_need_recfg, %if.then56)) #9
          to label %if.end61 [label %if.then56], !srcloc !177

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcb_need_recfg.__UNIQUE_ID_ddebug621, ptr noundef %dev1, ptr noundef nonnull @.str.83) #9
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %do.body44, %if.end37.if.end61_crit_edge, %entry.if.end61_crit_edge
  %need_reconfig.1.off0 = phi i1 [ %tobool7, %if.then56 ], [ %tobool7, %if.end37.if.end61_crit_edge ], [ false, %entry.if.end61_crit_edge ], [ %tobool7, %do.body44 ]
  %pfc = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %new_cfg, i32 0, i32 4
  %pfc62 = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %old_cfg, i32 0, i32 4
  %bcmp142 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %pfc, ptr noundef dereferenceable(4) %pfc62, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp142)
  %tobool64.not = icmp eq i32 %bcmp142, 0
  br i1 %tobool64.not, label %if.end61.if.end82_crit_edge, label %if.then65

if.end61.if.end82_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcb_need_recfg.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcb_need_recfg, %if.then78)) #9
          to label %if.end82 [label %if.then78], !srcloc !177

if.then78:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcb_need_recfg.__UNIQUE_ID_ddebug622, ptr noundef %dev1, ptr noundef nonnull @.str.84) #9
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.then65, %if.end61.if.end82_crit_edge
  %need_reconfig.2.off0 = phi i1 [ true, %if.then78 ], [ %need_reconfig.1.off0, %if.end61.if.end82_crit_edge ], [ true, %if.then65 ]
  %app = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %new_cfg, i32 0, i32 6
  %app83 = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %old_cfg, i32 0, i32 6
  %bcmp143 = tail call i32 @bcmp(ptr noundef dereferenceable(256) %app, ptr noundef dereferenceable(256) %app83, i32 256) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp143)
  %tobool85.not = icmp eq i32 %bcmp143, 0
  br i1 %tobool85.not, label %if.end82.do.body104_crit_edge, label %if.then86

if.end82.do.body104_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body104

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcb_need_recfg.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcb_need_recfg, %if.then99)) #9
          to label %do.body104 [label %if.then99], !srcloc !177

if.then99:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcb_need_recfg.__UNIQUE_ID_ddebug623, ptr noundef %dev1, ptr noundef nonnull @.str.85) #9
  br label %do.body104

do.body104:                                       ; preds = %if.then99, %if.then86, %if.end82.do.body104_crit_edge
  %need_reconfig.3.off0 = phi i1 [ true, %if.then99 ], [ %need_reconfig.2.off0, %if.end82.do.body104_crit_edge ], [ true, %if.then86 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_dcb_need_recfg.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_dcb_need_recfg, %if.then116)) #9
          to label %do.end120 [label %if.then116], !srcloc !177

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i1 %need_reconfig.3.off0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_dcb_need_recfg.__UNIQUE_ID_ddebug624, ptr noundef %dev1, ptr noundef nonnull @.str.86, i32 noundef %conv) #9
  br label %do.end120

do.end120:                                        ; preds = %if.then116, %do.body104
  ret i1 %need_reconfig.3.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_dcbnl_flush_apps(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_ena_vsi(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_dis_vsi(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !124, !126, !127, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 124, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ice_dcb_get_num_tc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ice_dcb_get_num_tc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 336, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ice_dcb_bwchk._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @ice_dcb_bwchk._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 366, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ice_pf_dcb_cfg.__UNIQUE_ID_ddebug615, !14, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 369, i32 3}
!20 = !{ptr @ice_pf_dcb_cfg.__UNIQUE_ID_ddebug616, !19, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 374, i32 3}
!23 = !{ptr @ice_pf_dcb_cfg.__UNIQUE_ID_ddebug617, !22, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 386, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ice_pf_dcb_cfg._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ice_pf_dcb_cfg._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 389, i32 3}
!31 = !{ptr @ice_pf_dcb_cfg.__UNIQUE_ID_ddebug618, !30, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 424, i32 4}
!34 = !{ptr @ice_pf_dcb_cfg._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ice_pf_dcb_cfg._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 433, i32 3}
!38 = !{ptr @ice_pf_dcb_cfg._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ice_pf_dcb_cfg._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 535, i32 3}
!42 = !{ptr @ice_dcb_rebuild._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ice_dcb_rebuild._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 546, i32 3}
!46 = !{ptr @ice_dcb_rebuild._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ice_dcb_rebuild._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 553, i32 4}
!50 = !{ptr @ice_dcb_rebuild._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ice_dcb_rebuild._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 558, i32 2}
!54 = !{ptr @ice_dcb_rebuild._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ice_dcb_rebuild._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @ice_dcb_rebuild._entry.31, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 561, i32 3}
!58 = !{ptr @ice_dcb_rebuild._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 570, i32 2}
!61 = !{ptr @ice_dcb_rebuild._entry.33, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ice_dcb_rebuild._entry_ptr.35, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 764, i32 4}
!65 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ice_pf_dcb_recfg._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ice_pf_dcb_recfg._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 805, i32 3}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ice_init_pf_dcb._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ice_init_pf_dcb._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 809, i32 2}
!75 = !{ptr @ice_init_pf_dcb._entry.40, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ice_init_pf_dcb._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 815, i32 3}
!79 = !{ptr @ice_init_pf_dcb._entry.43, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ice_init_pf_dcb._entry_ptr.45, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 820, i32 4}
!83 = !{ptr @ice_init_pf_dcb._entry.46, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ice_init_pf_dcb._entry_ptr.48, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 824, i32 4}
!87 = !{ptr @ice_init_pf_dcb._entry.49, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ice_init_pf_dcb._entry_ptr.51, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 835, i32 4}
!91 = !{ptr @ice_init_pf_dcb._entry.52, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ice_init_pf_dcb._entry_ptr.54, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.56, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 858, i32 2}
!95 = !{ptr @ice_init_pf_dcb._entry.55, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ice_init_pf_dcb._entry_ptr.57, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 955, i32 3}
!99 = !{ptr @.str.59, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug625, !98, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!101 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 964, i32 2}
!103 = !{ptr @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug626, !102, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!104 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 970, i32 2}
!106 = !{ptr @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug627, !105, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!107 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.63, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 977, i32 4}
!111 = !{ptr @ice_dcb_process_lldp_set_mib_change._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ice_dcb_process_lldp_set_mib_change._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.66, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 994, i32 3}
!115 = !{ptr @ice_dcb_process_lldp_set_mib_change._entry.65, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @ice_dcb_process_lldp_set_mib_change._entry_ptr.67, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 1001, i32 3}
!119 = !{ptr @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug628, !118, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!120 = !{ptr @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug629, !121, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 1015, i32 3}
!122 = !{ptr @ice_dcb_process_lldp_set_mib_change.__UNIQUE_ID_ddebug630, !123, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 1018, i32 3}
!124 = !{ptr @ice_dcb_process_lldp_set_mib_change._entry.69, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 1028, i32 3}
!126 = !{ptr @ice_dcb_process_lldp_set_mib_change._entry_ptr.70, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 166, i32 4}
!129 = !{ptr @.str.72, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ice_get_first_droptc.__UNIQUE_ID_ddebug613, !128, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 171, i32 2}
!133 = !{ptr @ice_get_first_droptc.__UNIQUE_ID_ddebug614, !132, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 711, i32 3}
!136 = !{ptr @ice_dcb_noncontig_cfg._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ice_dcb_noncontig_cfg._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 719, i32 3}
!140 = !{ptr @ice_dcb_noncontig_cfg._entry.75, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ice_dcb_noncontig_cfg._entry_ptr.77, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 612, i32 2}
!144 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @ice_dcb_init_cfg._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @ice_dcb_init_cfg._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.80, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 492, i32 4}
!149 = !{ptr @.str.81, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ice_dcb_need_recfg.__UNIQUE_ID_ddebug619, !148, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!151 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 498, i32 4}
!153 = !{ptr @ice_dcb_need_recfg.__UNIQUE_ID_ddebug620, !152, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!154 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 503, i32 4}
!156 = !{ptr @ice_dcb_need_recfg.__UNIQUE_ID_ddebug621, !155, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 509, i32 3}
!159 = !{ptr @ice_dcb_need_recfg.__UNIQUE_ID_ddebug622, !158, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!160 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 515, i32 3}
!162 = !{ptr @ice_dcb_need_recfg.__UNIQUE_ID_ddebug623, !161, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!163 = !{ptr @.str.86, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/intel/ice/ice_dcb_lib.c", i32 518, i32 2}
!165 = !{ptr @ice_dcb_need_recfg.__UNIQUE_ID_ddebug624, !164, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{i64 6769327}
!176 = !{i64 2160099001}
!177 = !{i64 2148749685, i64 2148749690, i64 2148749703, i64 2148749747, i64 2148749781, i64 2148749802}
