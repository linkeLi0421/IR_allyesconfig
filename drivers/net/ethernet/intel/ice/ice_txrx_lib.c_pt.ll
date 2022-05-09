; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_txrx_lib.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_txrx_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.174 }
%struct.atomic_t = type { i32 }
%union.anon.174 = type { i32 }
%struct.ice_rx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.217, [96 x i8], %struct.xdp_rxq_info, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_rxq_stats, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.callback_head, ptr, ptr, ptr, ptr, ptr, i32, i64, i8, i8, i8, [125 x i8] }
%union.anon.217 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ice_rxq_stats = type { i64, i64, i64 }
%struct.ice_q_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.175, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.200, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.175 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.200 = type { ptr }
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
%struct.ice_32b_rx_flex_desc_nic = type { i8, i8, i16, i16, i16, i16, i16, i32, i16, i8, i8, i16, i16, i32, %union.anon.222 }
%union.anon.222 = type { i32 }
%struct.ice_rx_ptype_decoded = type { i24 }
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
%struct.anon.203 = type { i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, %union.anon.204 }
%union.anon.204 = type { i32 }
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
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.184 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.184 = type { %struct.devlink_port_pci_vf_attrs }
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
%struct.ice_ring_container = type { %union.anon.206, %struct.dim, i16, i16, i32 }
%union.anon.206 = type { ptr }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.ice_tx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.ice_txq_stats, %struct.callback_head, [1 x i32], ptr, ptr, %struct.spinlock, i32, i8, i8, i8, [49 x i8] }
%struct.ice_txq_stats = type { i64, i64, i64, i32 }
%struct.ice_tx_desc = type { i64, i64 }
%struct.ice_tx_buf = type { ptr, %union.anon.207, i32, i16, i32, i32, i32 }
%union.anon.207 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.172, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.172 = type { %struct.atomic_t }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }

@ice_xdp_locking_key = external dso_local global %struct.static_key_false, align 4
@ice_ptype_lkup = internal constant { [1024 x { i8, i8, i8, i8 }], [1024 x i8] } { [1024 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -40, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -48, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -48, i8 2, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -48, i8 4, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -48, i8 6, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -48, i8 8, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 64, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 66, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 68, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 70, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 72, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 -96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 -128, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 -126, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 -124, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 -122, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 -120, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 64, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 66, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 68, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 70, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 72, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 -96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 -128, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 -126, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 -124, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 -122, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 -120, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 64, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 66, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 68, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 70, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 72, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 -96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 -128, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 -126, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 -124, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 -122, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 -120, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 64, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 66, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 68, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 70, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 72, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 -96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 -128, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 -126, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 -124, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 -122, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 -120, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 2, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 4, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 6, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 8, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 64, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 66, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 68, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 70, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 72, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 -96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 -128, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 -126, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 -124, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 -122, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 -120, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 64, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 66, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 68, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 70, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 72, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -128, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -126, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -124, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -122, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -120, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 64, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 66, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 68, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 70, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 72, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 -96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 -128, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 -126, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 -124, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 -122, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 -120, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 64, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 66, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 68, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 70, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 72, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -96, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -128, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -126, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -124, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -122, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -120, i8 -64, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }], [1024 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Driver BUG: missing reserved tailroom\00", [58 x i8] zeroinitializer }, align 32
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@___asan_gen_ = private constant [49 x i8] c"../drivers/net/ethernet/intel/ice/ice_txrx_lib.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"ice_ptype_lkup\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [50 x i8] c"../drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 695, i32 42 }
@___asan_gen_.11 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 326, i32 6 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"../include/net/xdp.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 200, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @ice_ptype_lkup, ptr @.str, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptype_lkup to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_release_rx_desc(ptr nocapture noundef %rx_ring, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 13
  %0 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use, align 2
  %2 = and i16 %1, -8
  store i16 %val, ptr %next_to_use, align 2
  %next_to_alloc = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 15
  %3 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %val, ptr %next_to_alloc, align 2
  %4 = and i16 %val, -8
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %4)
  %cmp.not = icmp eq i16 %2, %4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv7 = zext i16 %4 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv7)
  %tail = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 6
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #4, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_process_skb_fields(ptr noundef %rx_ring, ptr noundef %rx_desc, ptr noundef %skb, i16 noundef zeroext %ptype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 3
  %0 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features.i, align 16
  %and.i = and i64 %3, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %entry.ice_rx_hash.exit_crit_edge, label %if.end.i

entry.ice_rx_hash.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_rx_hash.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %rx_desc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_desc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 2
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.ice_rx_hash.exit_crit_edge

if.end.i.ice_rx_hash.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_rx_hash.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %rss_hash.i = getelementptr inbounds %struct.ice_32b_rx_flex_desc_nic, ptr %rx_desc, i32 0, i32 7
  %6 = ptrtoint ptr %rss_hash.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rss_hash.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  %idxprom.i.i.i = zext i16 %ptype to i32
  %arrayidx.i.i.i = getelementptr [1024 x %struct.ice_rx_ptype_decoded], ptr @ice_ptype_lkup, i32 0, i32 %idxprom.i.i.i
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %retval.sroa.0.0.copyload.i.i.i = load i32, ptr %arrayidx.i.i.i, align 4
  %10 = and i32 %retval.sroa.0.0.copyload.i.i.i, -2147368960
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147434496, i32 %10)
  %11 = icmp eq i32 %10, -2147434496
  %..i = select i1 %11, i16 128, i16 0
  %l4_hash.i.i10.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %12 = ptrtoint ptr %l4_hash.i.i10.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i.i11.i = load i16, ptr %l4_hash.i.i10.i, align 8
  %bf.clear.i.i.i = and i16 %bf.load.i.i11.i, -193
  %bf.set.i.i.i = or i16 %..i, %bf.clear.i.i.i
  store i16 %bf.set.i.i.i, ptr %l4_hash.i.i10.i, align 8
  %hash10.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %13 = ptrtoint ptr %hash10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %hash10.i.i.i, align 4
  br label %ice_rx_hash.exit

ice_rx_hash.exit:                                 ; preds = %if.end3.i, %if.end.i.ice_rx_hash.exit_crit_edge, %entry.ice_rx_hash.exit_crit_edge
  %14 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev.i, align 4
  %call = tail call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %15) #4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %call, ptr %protocol, align 8
  %status_error0.i = getelementptr inbounds %struct.anon.203, ptr %rx_desc, i32 0, i32 5
  %17 = ptrtoint ptr %status_error0.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %status_error0.i, align 8
  %status_error1.i = getelementptr inbounds %struct.anon.203, ptr %rx_desc, i32 0, i32 9
  %19 = ptrtoint ptr %status_error1.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %status_error1.i, align 8
  %idxprom.i.i = zext i16 %ptype to i32
  %arrayidx.i.i = getelementptr [1024 x %struct.ice_rx_ptype_decoded], ptr @ice_ptype_lkup, i32 0, i32 %idxprom.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %arrayidx.i.i, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %23 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev.i, align 4
  %features.i13 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 23
  %25 = ptrtoint ptr %features.i13 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %features.i13, align 16
  %and.i14 = and i64 %26, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i14)
  %tobool.not.i15 = icmp eq i64 %and.i14, 0
  br i1 %tobool.not.i15, label %ice_rx_hash.exit.ice_rx_csum.exit_crit_edge, label %if.end.i16

ice_rx_hash.exit.ice_rx_csum.exit_crit_edge:      ; preds = %ice_rx_hash.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_rx_csum.exit

if.end.i16:                                       ; preds = %ice_rx_hash.exit
  %27 = tail call i16 @llvm.bswap.i16(i16 %18) #4
  %conv.i = zext i16 %27 to i32
  %and1.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %retval.sroa.0.0.copyload.i.i)
  %.not.i = icmp ugt i32 %retval.sroa.0.0.copyload.i.i, -1073741825
  %or.cond.i = select i1 %tobool2.not.i, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %land.rhs.i, label %if.end.i16.ice_rx_csum.exit_crit_edge

if.end.i16.ice_rx_csum.exit_crit_edge:            ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_rx_csum.exit

land.rhs.i:                                       ; preds = %if.end.i16
  %28 = and i32 %retval.sroa.0.0.copyload.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %28)
  %cmp20.i = icmp ne i32 %28, 268435456
  %and39.i = and i32 %conv.i, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %or.cond151.i = select i1 %cmp20.i, i1 true, i1 %tobool40.not.i
  br i1 %or.cond151.i, label %if.end42.i, label %land.rhs.i.checksum_fail.i_crit_edge

land.rhs.i.checksum_fail.i_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %checksum_fail.i

if.end42.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %28)
  %cmp31.i = icmp ne i32 %28, 536870912
  %and47.i = and i32 %conv.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  %or.cond152.i = select i1 %cmp31.i, i1 true, i1 %tobool48.not.i
  %and52.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  %or.cond153.i = select i1 %or.cond152.i, i1 %tobool53.not.i, i1 false
  br i1 %or.cond153.i, label %if.end55.i, label %if.end42.i.checksum_fail.i_crit_edge

if.end42.i.checksum_fail.i_crit_edge:             ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %checksum_fail.i

if.end55.i:                                       ; preds = %if.end42.i
  %29 = and i16 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool58.not.i = icmp eq i16 %29, 0
  %and61.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  %or.cond154.i = select i1 %tobool58.not.i, i1 true, i1 %tobool62.not.i
  br i1 %or.cond154.i, label %if.end64.i, label %if.end55.i.checksum_fail.i_crit_edge

if.end55.i.checksum_fail.i_crit_edge:             ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %checksum_fail.i

if.end64.i:                                       ; preds = %if.end55.i
  %30 = and i32 %retval.sroa.0.0.copyload.i.i, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp68.not.i = icmp eq i32 %30, 0
  br i1 %cmp68.not.i, label %if.end64.i.if.end74.i_crit_edge, label %if.then70.i

if.end64.i.if.end74.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74.i

if.then70.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #6
  %csum_level.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %31 = ptrtoint ptr %csum_level.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %bf.load71.i = load i32, ptr %csum_level.i, align 2
  %bf.clear72.i = and i32 %bf.load71.i, -805306369
  %bf.set73.i = or i32 %bf.clear72.i, 268435456
  store i32 %bf.set73.i, ptr %csum_level.i, align 2
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then70.i, %if.end64.i.if.end74.i_crit_edge
  %bf.lshr76.i = lshr i32 %retval.sroa.0.0.copyload.i.i, 17
  %bf.clear77.i = and i32 %bf.lshr76.i, 15
  %bf.clear77.off.i = add nsw i32 %bf.clear77.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear77.off.i)
  %switch.i = icmp ult i32 %bf.clear77.off.i, 3
  br i1 %switch.i, label %sw.bb.i, label %if.end74.i.ice_rx_csum.exit_crit_edge

if.end74.i.ice_rx_csum.exit_crit_edge:            ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_rx_csum.exit

sw.bb.i:                                          ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set81.i = or i16 %bf.clear.i, 512
  %32 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %bf.set81.i, ptr %ip_summed.i, align 8
  br label %ice_rx_csum.exit

checksum_fail.i:                                  ; preds = %if.end55.i.checksum_fail.i_crit_edge, %if.end42.i.checksum_fail.i_crit_edge, %land.rhs.i.checksum_fail.i_crit_edge
  %vsi.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 4
  %33 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vsi.i, align 16
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %back.i, align 8
  %hw_csum_rx_error.i = getelementptr inbounds %struct.ice_pf, ptr %36, i32 0, i32 40
  %37 = ptrtoint ptr %hw_csum_rx_error.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hw_csum_rx_error.i, align 8
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %hw_csum_rx_error.i, align 8
  br label %ice_rx_csum.exit

ice_rx_csum.exit:                                 ; preds = %checksum_fail.i, %sw.bb.i, %if.end74.i.ice_rx_csum.exit_crit_edge, %if.end.i16.ice_rx_csum.exit_crit_edge, %ice_rx_hash.exit.ice_rx_csum.exit_crit_edge
  %ptp_rx = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 30
  %39 = ptrtoint ptr %ptp_rx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ptp_rx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not = icmp eq i8 %40, 0
  br i1 %tobool.not, label %ice_rx_csum.exit.if.end_crit_edge, label %if.then

ice_rx_csum.exit.if.end_crit_edge:                ; preds = %ice_rx_csum.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %ice_rx_csum.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ice_ptp_rx_hwtstamp(ptr noundef %rx_ring, ptr noundef %rx_desc, ptr noundef %skb) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %ice_rx_csum.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_ptp_rx_hwtstamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_receive_skb(ptr nocapture noundef readonly %rx_ring, ptr noundef %skb, i16 noundef zeroext %vlan_tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 16
  %and = and i64 %3, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %4 = and i16 %vlan_tag, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %5 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %6 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %vlan_tag, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %7 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %q_vector = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 5
  %8 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q_vector, align 4
  %napi = getelementptr inbounds %struct.ice_q_vector, ptr %9, i32 0, i32 7
  %call = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %skb) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_xmit_xdp_ring(ptr noundef %data, i16 noundef zeroext %size, ptr noundef %xdp_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 10
  %0 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use, align 8
  %next_to_clean = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 11
  %2 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_clean, align 2
  %conv2 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp = icmp ugt i16 %3, %1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %count = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 16
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i16 [ %5, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %6 = xor i16 %1, -1
  %add = add i16 %3, %6
  %sub9 = add i16 %add, %cond
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %sub9)
  %cmp12 = icmp ult i16 %sub9, 32
  br i1 %cmp12, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %cond.end
  %next_dd1.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 13
  %7 = ptrtoint ptr %next_dd1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %next_dd1.i, align 2
  %desc.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 1
  %9 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc.i, align 4
  %idxprom.i = zext i16 %8 to i32
  %cmd_type_offset_bsz.i = getelementptr %struct.ice_tx_desc, ptr %10, i32 %idxprom.i, i32 1
  %11 = ptrtoint ptr %cmd_type_offset_bsz.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cmd_type_offset_bsz.i, align 8
  %and.i = and i64 %12, 1080863910568919040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %tx_buf2.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 4
  %dev.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %i.065.i = phi i32 [ 0, %if.end.i ], [ %inc12.i, %for.body.i.for.body.i_crit_edge ]
  %total_bytes.064.i = phi i32 [ 0, %if.end.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %ntc.063.i = phi i16 [ %3, %if.end.i ], [ %spec.store.select.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %tx_buf2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_buf2.i, align 16
  %idxprom3.i = zext i16 %ntc.063.i to i32
  %bytecount.i = getelementptr %struct.ice_tx_buf, ptr %14, i32 %idxprom3.i, i32 2
  %15 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytecount.i, align 4
  %add.i = add i32 %16, %total_bytes.064.i
  %inc12.i = add nuw nsw i32 %i.065.i, 1
  %17 = getelementptr %struct.ice_tx_buf, ptr %14, i32 %idxprom3.i, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void @page_frag_free(ptr noundef %19) #4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  %dma.i = getelementptr %struct.ice_tx_buf, ptr %14, i32 %idxprom3.i, i32 6
  %22 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma.i, align 4
  %len.i = getelementptr %struct.ice_tx_buf, ptr %14, i32 %idxprom3.i, i32 5
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef 1, i32 noundef 0) #4
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %len.i, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %17, align 4
  %inc6.i = add i16 %ntc.063.i, 1
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc6.i, i16 %29)
  %cmp8.not.i = icmp ult i16 %inc6.i, %29
  %spec.store.select.i = select i1 %cmp8.not.i, i16 %inc6.i, i16 0
  %exitcond.not.i = icmp eq i32 %inc12.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %cmd_type_offset_bsz.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %cmd_type_offset_bsz.i, align 8
  %31 = ptrtoint ptr %next_dd1.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %next_dd1.i, align 2
  %add16.i = add i16 %32, 32
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %add16.i, i16 %34)
  %cmp23.i = icmp ugt i16 %add16.i, %34
  %spec.store.select61.i = select i1 %cmp23.i, i16 31, i16 %add16.i
  %35 = ptrtoint ptr %next_dd1.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %spec.store.select61.i, ptr %next_dd1.i, align 2
  %36 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %spec.store.select.i, ptr %next_to_clean, align 2
  %conv30.i = zext i32 %add.i to i64
  tail call void @ice_update_tx_ring_stats(ptr noundef %xdp_ring, i64 noundef 32, i64 noundef %conv30.i) #4
  br label %if.end

if.end:                                           ; preds = %for.end.i, %if.then.if.end_crit_edge, %cond.end.if.end_crit_edge
  %37 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %next_to_clean, align 2
  %39 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %next_to_use, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp18 = icmp ugt i16 %38, %40
  br i1 %cmp18, label %if.end.cond.end24_crit_edge, label %cond.false21

if.end.cond.end24_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end24

cond.false21:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %count22 = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 16
  %41 = ptrtoint ptr %count22 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %count22, align 4
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false21, %if.end.cond.end24_crit_edge
  %cond25 = phi i16 [ %42, %cond.false21 ], [ 0, %if.end.cond.end24_crit_edge ]
  %add28 = add i16 %cond25, %38
  %.neg = add i16 %40, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %add28, i16 %.neg)
  %tobool.not = icmp eq i16 %add28, %.neg
  br i1 %tobool.not, label %if.then36, label %if.end37, !prof !21

if.then36:                                        ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #6
  %tx_busy = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 20, i32 1
  %43 = ptrtoint ptr %tx_busy to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tx_busy, align 8
  %inc = add i64 %44, 1
  store i64 %inc, ptr %tx_busy, align 8
  br label %cleanup

if.end37:                                         ; preds = %cond.end24
  %dev = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 2
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  %conv38 = zext i16 %size to i32
  %call = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %46, ptr noundef %data, i32 noundef %conv38)
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %48, i32 noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i.not = icmp eq i32 %call, -1
  br i1 %cmp.i.not, label %if.end37.cleanup_crit_edge, label %if.end43

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %tx_buf44 = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 4
  %49 = ptrtoint ptr %tx_buf44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_buf44, align 16
  %bytecount = getelementptr %struct.ice_tx_buf, ptr %50, i32 %conv2, i32 2
  %51 = ptrtoint ptr %bytecount to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv38, ptr %bytecount, align 4
  %gso_segs = getelementptr %struct.ice_tx_buf, ptr %50, i32 %conv2, i32 3
  %52 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %gso_segs, align 4
  %53 = getelementptr %struct.ice_tx_buf, ptr %50, i32 %conv2, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %data, ptr %53, align 4
  %len = getelementptr %struct.ice_tx_buf, ptr %50, i32 %conv2, i32 5
  %55 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv38, ptr %len, align 4
  %dma47 = getelementptr %struct.ice_tx_buf, ptr %50, i32 %conv2, i32 6
  %56 = ptrtoint ptr %dma47 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call, ptr %dma47, align 4
  %desc = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 1
  %57 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %desc, align 4
  %arrayidx49 = getelementptr %struct.ice_tx_desc, ptr %58, i32 %conv2
  %conv50 = zext i32 %call to i64
  %59 = tail call i64 @llvm.bswap.i64(i64 %conv50)
  %60 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %arrayidx49, align 8
  %conv.i = zext i16 %size to i64
  %shl3.i = shl nuw nsw i64 %conv.i, 34
  %or4.i = or i64 %shl3.i, 16
  %61 = tail call i64 @llvm.bswap.i64(i64 %or4.i) #4
  %cmd_type_offset_bsz = getelementptr %struct.ice_tx_desc, ptr %58, i32 %conv2, i32 1
  %62 = ptrtoint ptr %cmd_type_offset_bsz to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %cmd_type_offset_bsz, align 8
  %inc53 = add i16 %1, 1
  %count55 = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 16
  %63 = ptrtoint ptr %count55 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %count55, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc53, i16 %64)
  %cmp57 = icmp eq i16 %inc53, %64
  br i1 %cmp57, label %if.end65.thread, label %if.end65

if.end65.thread:                                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %65 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %desc, align 4
  %next_rs = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 12
  %67 = ptrtoint ptr %next_rs to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %next_rs, align 4
  %idxprom61 = zext i16 %68 to i32
  %cmd_type_offset_bsz63 = getelementptr %struct.ice_tx_desc, ptr %66, i32 %idxprom61, i32 1
  %69 = ptrtoint ptr %cmd_type_offset_bsz63 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %cmd_type_offset_bsz63, align 8
  %or = or i64 %70, 2305843009213693952
  store i64 %or, ptr %cmd_type_offset_bsz63, align 8
  store i16 31, ptr %next_rs, align 4
  %71 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %next_to_use, align 8
  br label %cleanup

if.end65:                                         ; preds = %if.end43
  %72 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %inc53, ptr %next_to_use, align 8
  %next_rs68 = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 12
  %73 = ptrtoint ptr %next_rs68 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %next_rs68, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc53, i16 %74)
  %cmp70 = icmp ugt i16 %inc53, %74
  br i1 %cmp70, label %if.then72, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then72:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  %conv69 = zext i16 %74 to i32
  %75 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %desc, align 4
  %cmd_type_offset_bsz77 = getelementptr %struct.ice_tx_desc, ptr %76, i32 %conv69, i32 1
  %77 = ptrtoint ptr %cmd_type_offset_bsz77 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %cmd_type_offset_bsz77, align 8
  %or78 = or i64 %78, 2305843009213693952
  store i64 %or78, ptr %cmd_type_offset_bsz77, align 8
  %79 = ptrtoint ptr %next_rs68 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %next_rs68, align 4
  %add81 = add i16 %80, 32
  store i16 %add81, ptr %next_rs68, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end65.cleanup_crit_edge, %if.end65.thread, %if.end37.cleanup_crit_edge, %if.then36
  %retval.0 = phi i32 [ 1, %if.then36 ], [ 1, %if.end37.cleanup_crit_edge ], [ 2, %if.then72 ], [ 2, %if.end65.cleanup_crit_edge ], [ 2, %if.end65.thread ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %dev, ptr noundef %ptr, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %ptr) #4
  br i1 %call, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1, label %land.rhs.return_crit_edge, label %if.then, !prof !21

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16 = tail call ptr @dev_driver_string(ptr noundef %dev) #4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call16, ptr noundef %retval.0.i) #4
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %ptr, i32 noundef %size) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %ptr to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %shr
  %and = and i32 %5, 4095
  %call41 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %and, i32 noundef %size, i32 noundef 1, i32 noundef 0) #4
  br label %return

return:                                           ; preds = %if.end39, %dev_name.exit, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end39 ], [ -1, %dev_name.exit ], [ -1, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_xmit_xdp_buff(ptr noundef %xdp, ptr noundef %xdp_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %0 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxq.i, align 4
  %mem.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp eq i32 %3, 3
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call ptr @xdp_convert_zc_to_xdp_frame(ptr noundef %xdp) #4
  br label %xdp_convert_buff_to_frame.exit

if.end.i:                                         ; preds = %entry
  %data_hard_start.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %4 = ptrtoint ptr %data_hard_start.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_hard_start.i, align 4
  %6 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %data_meta.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %8 = ptrtoint ptr %data_meta.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_meta.i.i, align 4
  %sub.ptr.rhs.cast3.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub4.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast3.i.i
  %10 = tail call i32 @llvm.smax.i32(i32 %sub.ptr.sub4.i.i, i32 0) #4
  %sub.i.i = sub i32 %sub.ptr.sub.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i.i)
  %cmp5.i.i = icmp ult i32 %sub.i.i, 24
  br i1 %cmp5.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.i, !prof !22

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i
  %data_end.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %11 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_end.i.i, align 4
  %frame_sz.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %13 = ptrtoint ptr %frame_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_sz.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %14
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -256
  %cmp9.i.i = icmp ugt ptr %12, %add.ptr8.i.i
  br i1 %cmp9.i.i, label %if.then16.i.i, label %if.end5.i, !prof !22

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xdp_warn(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #4
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %5, align 4
  %16 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_end.i.i, align 4
  %18 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast22.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast23.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub24.i.i = sub i32 %sub.ptr.lhs.cast22.i.i, %sub.ptr.rhs.cast23.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub24.i.i to i16
  %len.i.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i, ptr %len.i.i, align 4
  %21 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv26.i.i = add i16 %21, -24
  %headroom27.i.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %headroom27.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv26.i.i, ptr %headroom27.i.i, align 2
  %metasize28.i.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %metasize28.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i.i = load i32, ptr %metasize28.i.i, align 4
  %bf.shl.i.i = shl i32 %10, 24
  %bf.clear.i.i = and i32 %bf.load.i.i, 16777215
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %metasize28.i.i, align 4
  %24 = ptrtoint ptr %frame_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_sz.i.i, align 4
  %bf.value32.i.i = and i32 %25, 16777215
  %bf.set34.i.i = or i32 %bf.value32.i.i, %bf.shl.i.i
  store i32 %bf.set34.i.i, ptr %metasize28.i.i, align 4
  %mem6.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rxq.i, align 4
  %mem8.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %mem8.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %mem8.i, align 4
  %30 = ptrtoint ptr %mem6.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %mem6.i, align 4
  br label %xdp_convert_buff_to_frame.exit

xdp_convert_buff_to_frame.exit:                   ; preds = %if.end5.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %5, %if.end5.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %xdp_convert_buff_to_frame.exit.cleanup_crit_edge, label %if.end, !prof !22

xdp_convert_buff_to_frame.exit.cleanup_crit_edge: ; preds = %xdp_convert_buff_to_frame.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %xdp_convert_buff_to_frame.exit
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %retval.0.i, align 4
  %len = getelementptr inbounds %struct.xdp_frame, ptr %retval.0.i, i32 0, i32 1
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %len, align 4
  %call4 = tail call i32 @ice_xmit_xdp_ring(ptr noundef %32, i16 noundef zeroext %34, ptr noundef %xdp_ring)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xdp_convert_buff_to_frame.exit.cleanup_crit_edge, %if.then16.i.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 1, %xdp_convert_buff_to_frame.exit.cleanup_crit_edge ], [ 1, %if.then16.i.i ], [ 1, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_finalize_xdp_rx(ptr noundef %xdp_ring, i32 noundef %xdp_res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %xdp_res, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xdp_do_flush() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %xdp_res, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end23_crit_edge, label %if.then3

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then3:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ice_xdp_locking_key, ptr blockaddress(@ice_finalize_xdp_rx, %if.then7)) #4
          to label %if.end8 [label %if.then7], !srcloc !23

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %tx_lock = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %next_to_use.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 10
  %0 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use.i, align 8
  %conv.i = zext i16 %1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #4
  %tail.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 3
  %3 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #4, !srcloc !20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ice_xdp_locking_key, ptr blockaddress(@ice_finalize_xdp_rx, %if.then20)) #4
          to label %if.end23 [label %if.then20], !srcloc !23

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %tx_lock21 = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 25
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock21) #4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end8, %if.end.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_frag_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_update_tx_ring_stats(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @ice_ptype_lkup, !1, !"ice_ptype_lkup", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h", i32 695, i32 42}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/net/xdp.h", i32 200, i32 3}
!8 = !{ptr @__func__.xdp_update_frame_from_buff, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2160186146}
!19 = !{i64 2160186356}
!20 = !{i64 6990423}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2149297468, i64 2149297473, i64 2149297486, i64 2149297530, i64 2149297564, i64 2149297585}
!24 = !{i64 2160181514}
