; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_txrx.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.129 }
%struct.atomic_t = type { i32 }
%union.anon.129 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.228, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.228 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.10, %union.anon.144, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.144 = type { %struct.atomic_t }
%struct.ice_tx_buf = type { ptr, %union.anon.207, i32, i16, i32, i32, i32 }
%union.anon.207 = type { ptr }
%struct.ice_fltr_desc = type { i64, i64 }
%struct.ice_tx_desc = type { i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.199, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.199 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ice_rx_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.206, [96 x i8], %struct.xdp_rxq_info, i16, i16, i16, i16, i16, i16, i16, i16, %struct.ice_rxq_stats, %struct.ice_q_stats, %struct.u64_stats_sync, %struct.callback_head, ptr, ptr, ptr, ptr, ptr, i32, i64, i8, i8, i8, [125 x i8] }
%union.anon.206 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ice_rxq_stats = type { i64, i64, i64 }
%struct.ice_rx_buf = type { i32, ptr, i32, i16 }
%struct.ice_q_vector = type { ptr, i16, i16, i8, i8, i8, i8, %struct.napi_struct, %struct.ice_ring_container, %struct.ice_ring_container, %struct.cpumask, %struct.irq_affinity_notify, ptr, [32 x i8], i16, [10 x i8] }
%struct.ice_ring_container = type { %union.anon.205, %struct.dim, i16, i16, i32 }
%union.anon.205 = type { ptr }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%union.ice_32b_rx_flex_desc = type { %struct.anon.201 }
%struct.anon.201 = type { i64, i64, i64, i64 }
%struct.anon.202 = type { i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, %union.anon.203 }
%union.anon.203 = type { i32 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
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
%struct.vlan_hdr = type { i16, i16 }
%struct.ice_tx_offload_params = type { i64, ptr, i32, i32, i32, i32, i16, i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
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
%struct.ice_tx_ctx_desc = type { i32, i16, i16, i64 }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/intel/ice/ice_txrx.c\00", [54 x i8] zeroinitializer }, align 32
@ice_setup_tx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 366, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Unable to allocate memory for the Tx descriptor ring, size=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_setup_tx_ring\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_setup_tx_ring._entry_ptr = internal global ptr @ice_setup_tx_ring._entry, section ".printk_index", align 4
@ice_setup_rx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 505, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Unable to allocate memory for the Rx descriptor ring, size=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_setup_rx_ring\00", [46 x i8] zeroinitializer }, align 32
@ice_setup_rx_ring._entry_ptr = internal global ptr @ice_setup_rx_ring._entry, section ".printk_index", align 4
@ice_xdp_locking_key = external dso_local global %struct.static_key_false, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ice_clean_rx_irq = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/ice/ice_trace.h\00", [53 x i8] zeroinitializer }, align 32
@trace_ice_clean_rx_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ice_clean_rx_irq_indicate = external dso_local global %struct.tracepoint, align 4
@trace_ice_clean_rx_irq_indicate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ice_clean_tx_irq = external dso_local global %struct.tracepoint, align 4
@trace_ice_clean_tx_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ice_clean_tx_irq_unmap = external dso_local global %struct.tracepoint, align 4
@trace_ice_clean_tx_irq_unmap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ice_clean_tx_irq_unmap_eop = external dso_local global %struct.tracepoint, align 4
@trace_ice_clean_tx_irq_unmap_eop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ice_xmit_frame_ring = external dso_local global %struct.tracepoint, align 4
@trace_ice_xmit_frame_ring.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__tracepoint_ice_xmit_frame_ring_drop = external dso_local global %struct.tracepoint, align 4
@trace_ice_xmit_frame_ring_drop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 17, i64 41, i64 47]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 352, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 365, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private constant [45 x i8] c"../drivers/net/ethernet/intel/ice/ice_txrx.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 504, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 326, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/intel/ice/ice_trace.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 163, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 108, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1368, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 613, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 271, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 28, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 598, i32 8 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @ice_setup_rx_ring._entry, ptr @ice_setup_rx_ring._entry_ptr, ptr @ice_setup_tx_ring._entry, ptr @ice_setup_tx_ring._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_setup_tx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_setup_rx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_prgm_fdir_fltr(ptr noundef readonly %vsi, ptr nocapture noundef readonly %fdir_desc, ptr noundef %raw_packet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vsi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_rings = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 5
  %0 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_rings, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %desc = getelementptr inbounds %struct.ice_tx_ring, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %dev5 = getelementptr inbounds %struct.ice_tx_ring, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 8
  %next_to_clean = getelementptr inbounds %struct.ice_tx_ring, ptr %3, i32 0, i32 11
  %next_to_use = getelementptr inbounds %struct.ice_tx_ring, ptr %3, i32 0, i32 10
  %count = getelementptr inbounds %struct.ice_tx_ring, ptr %3, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %if.end20, %if.end4
  %i.0 = phi i16 [ 10, %if.end4 ], [ %dec, %if.end20 ]
  %8 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %next_to_clean, align 2
  %10 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %next_to_use, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp = icmp ugt i16 %9, %11
  br i1 %cmp, label %for.cond.cond.end_crit_edge, label %cond.false

for.cond.cond.end_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.cond.cond.end_crit_edge
  %cond = phi i16 [ %13, %cond.false ], [ 0, %for.cond.cond.end_crit_edge ]
  %14 = xor i16 %11, -1
  %add = add i16 %9, %14
  %sub13 = add i16 %add, %cond
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %sub13)
  %cmp16 = icmp ult i16 %sub13, 2
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %tobool18.not = icmp eq i16 %i.0, 0
  br i1 %tobool18.not, label %for.body.cleanup_crit_edge, label %if.end20

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @msleep_interruptible(i32 noundef 1) #10
  %dec = add nsw i16 %i.0, -1
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %raw_packet) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %for.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !71

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %7) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef -1) #10
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %for.end
  tail call void @debug_dma_map_single(ptr noundef %7, ptr noundef %raw_packet, i32 noundef 562) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %raw_packet to i32
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 562, i32 noundef 1, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end25

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %next_to_use, align 8
  %tx_buf27 = getelementptr inbounds %struct.ice_tx_ring, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %tx_buf27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_buf27, align 16
  %idxprom = zext i16 %22 to i32
  %arrayidx28 = getelementptr %struct.ice_tx_buf, ptr %24, i32 %idxprom
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc, align 4
  %arrayidx31 = getelementptr %struct.ice_fltr_desc, ptr %26, i32 %idxprom
  %27 = call ptr @memcpy(ptr %arrayidx31, ptr %fdir_desc, i32 16)
  %inc = add i16 %22, 1
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %29)
  %cmp35 = icmp ult i16 %inc, %29
  %spec.select = select i1 %cmp35, i16 %inc, i16 0
  %30 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc, align 4
  %idxprom44 = zext i16 %spec.select to i32
  %arrayidx45 = getelementptr %struct.ice_tx_desc, ptr %31, i32 %idxprom44
  %32 = ptrtoint ptr %tx_buf27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_buf27, align 16
  %arrayidx48 = getelementptr %struct.ice_tx_buf, ptr %33, i32 %idxprom44
  %inc49 = add nuw i16 %spec.select, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc49, i16 %29)
  %cmp53 = icmp ult i16 %inc49, %29
  %cond59 = select i1 %cmp53, i16 %inc49, i16 0
  %34 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %cond59, ptr %next_to_use, align 8
  %35 = call ptr @memset(ptr %arrayidx48, i32 0, i32 28)
  %len = getelementptr %struct.ice_tx_buf, ptr %33, i32 %idxprom44, i32 5
  %36 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 562, ptr %len, align 4
  %dma62 = getelementptr %struct.ice_tx_buf, ptr %33, i32 %idxprom44, i32 6
  %37 = ptrtoint ptr %dma62 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call41.i, ptr %dma62, align 4
  %conv63 = zext i32 %call41.i to i64
  %38 = tail call i64 @llvm.bswap.i64(i64 %conv63)
  %39 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx45, align 8
  %tx_flags = getelementptr %struct.ice_tx_buf, ptr %33, i32 %idxprom44, i32 4
  %40 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %tx_flags, align 4
  %41 = getelementptr %struct.ice_tx_buf, ptr %33, i32 %idxprom44, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %raw_packet, ptr %41, align 4
  %cmd_type_offset_bsz = getelementptr %struct.ice_tx_desc, ptr %31, i32 %idxprom44, i32 1
  %43 = ptrtoint ptr %cmd_type_offset_bsz to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 3477060390662701056, ptr %cmd_type_offset_bsz, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx45, ptr %arrayidx28, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !73
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %next_to_use, align 8
  %conv70 = zext i16 %46 to i32
  %47 = tail call i32 @llvm.bswap.i32(i32 %conv70)
  %tail = getelementptr inbounds %struct.ice_tx_ring, ptr %3, i32 0, i32 3
  %48 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #10, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread, %for.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -22, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -22, %dma_map_single_attrs.exit.thread ], [ -11, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_clean_tx_ring(ptr noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 27
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags.i, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %xsk_pool = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 9
  %3 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xsk_pool, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ice_xsk_clean_xdp_ring(ptr noundef %tx_ring) #10
  br label %tx_skip_free

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_buf = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 4
  %5 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_buf, align 16
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %count = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 16
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp34.not = icmp eq i16 %8, 0
  br i1 %cmp34.not, label %for.cond.preheader.tx_skip_free_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.tx_skip_free_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_skip_free

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %9 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_buf, align 16
  %arrayidx = getelementptr %struct.ice_tx_buf, ptr %10, i32 %indvars.iv
  tail call fastcc void @ice_unmap_and_free_tx_buf(ptr noundef %tx_ring, ptr noundef %arrayidx)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count, align 4
  %13 = zext i16 %12 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.tx_skip_free_crit_edge

for.body.tx_skip_free_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_skip_free

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

tx_skip_free:                                     ; preds = %for.body.tx_skip_free_crit_edge, %for.cond.preheader.tx_skip_free_crit_edge, %if.then
  %tx_buf7 = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 4
  %14 = ptrtoint ptr %tx_buf7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_buf7, align 16
  %count8 = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 16
  %16 = ptrtoint ptr %count8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count8, align 4
  %conv9 = zext i16 %17 to i32
  %mul = mul nuw nsw i32 %conv9, 28
  %18 = call ptr @memset(ptr %15, i32 0, i32 %mul)
  %19 = load i16, ptr %count8, align 4
  %conv11 = zext i16 %19 to i32
  %mul12 = shl nuw nsw i32 %conv11, 4
  %add = add nuw nsw i32 %mul12, 4095
  %and = and i32 %add, 2093056
  %desc = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 1
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc, align 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 %and)
  %next_to_use = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 10
  %23 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %next_to_use, align 8
  %next_to_clean = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 11
  %24 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %next_to_clean, align 2
  %netdev = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 6
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 8
  %tobool13.not = icmp eq ptr %26, null
  br i1 %tobool13.not, label %tx_skip_free.cleanup_crit_edge, label %if.end15

tx_skip_free.cleanup_crit_edge:                   ; preds = %tx_skip_free
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %tx_skip_free
  call void @__sanitizer_cov_trace_pc() #12
  %q_index.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 17
  %27 = ptrtoint ptr %q_index.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %q_index.i, align 2
  %conv.i = zext i16 %28 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %30, i32 %conv.i, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #10
  %dql.i = getelementptr %struct.netdev_queue, ptr %30, i32 %conv.i, i32 15
  tail call void @dql_reset(ptr noundef %dql.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %tx_skip_free.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_xsk_clean_xdp_ring(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_unmap_and_free_tx_buf(ptr nocapture noundef readonly %ring, ptr nocapture noundef %tx_buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else11, label %if.then

if.then:                                          ; preds = %entry
  %tx_flags = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf, i32 0, i32 4
  %3 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_flags, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void @devm_kfree(ptr noundef %6, ptr noundef nonnull %2) #10
  br label %if.end5

if.else:                                          ; preds = %if.then
  %flags.i = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 27
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags.i, align 4
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not = icmp eq i8 %9, 0
  br i1 %tobool.i.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @page_frag_free(ptr noundef nonnull %2) #10
  br label %if.end5

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %2, i32 noundef 1) #10
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3, %if.then2
  %len = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf, i32 0, i32 5
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.end5.if.end19_crit_edge, label %if.end5.if.end19.sink.split_crit_edge

if.end5.if.end19.sink.split_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else11:                                        ; preds = %entry
  %len12 = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf, i32 0, i32 5
  %12 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.else11.if.end19_crit_edge, label %if.else11.if.end19.sink.split_crit_edge

if.else11.if.end19.sink.split_crit_edge:          ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split

if.else11.if.end19_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19.sink.split:                              ; preds = %if.else11.if.end19.sink.split_crit_edge, %if.end5.if.end19.sink.split_crit_edge
  %.sink40 = phi i32 [ %11, %if.end5.if.end19.sink.split_crit_edge ], [ %13, %if.else11.if.end19.sink.split_crit_edge ]
  %dev15 = getelementptr inbounds %struct.ice_tx_ring, ptr %ring, i32 0, i32 2
  %14 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev15, align 8
  %dma16 = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf, i32 0, i32 6
  %16 = ptrtoint ptr %dma16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma16, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %17, i32 noundef %.sink40, i32 noundef 1, i32 noundef 0) #10
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.else11.if.end19_crit_edge, %if.end5.if.end19_crit_edge
  %18 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tx_buf, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %0, align 4
  %len20 = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf, i32 0, i32 5
  %20 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %len20, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_free_tx_ring(ptr noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ice_clean_tx_ring(ptr noundef %tx_ring)
  %dev = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %tx_buf = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 4
  %2 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_buf, align 16
  tail call void @devm_kfree(ptr noundef %1, ptr noundef %3) #10
  %4 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tx_buf, align 16
  %desc = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 1
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %count = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 16
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count, align 4
  %conv = zext i16 %8 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %add = add nuw nsw i32 %mul, 4095
  %and = and i32 %add, 2093056
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %dma = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 8
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma, align 32
  tail call void @dmam_free_coherent(ptr noundef %10, i32 noundef %and, ptr noundef nonnull %6, i32 noundef %12) #10
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmam_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_setup_tx_ring(ptr noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_buf = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 4
  %2 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_buf, align 16
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !71

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 9, ptr noundef null) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %count = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 16
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 4
  %conv = zext i16 %5 to i32
  %6 = mul nuw nsw i32 %conv, 28
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %1, i32 noundef %6, i32 noundef 3520) #10
  %7 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i, ptr %tx_buf, align 16
  %tobool26.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool26.not, label %if.end17.cleanup_crit_edge, label %if.end28

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 4
  %conv30 = zext i16 %9 to i32
  %mul = shl nuw nsw i32 %conv30, 4
  %add = add nuw nsw i32 %mul, 4095
  %and = and i32 %add, 2093056
  %dma = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 8
  %call.i = tail call ptr @dmam_alloc_attrs(ptr noundef nonnull %1, i32 noundef %and, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #10
  %desc = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 1
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %desc, align 4
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %do.end37, label %if.end38

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef %and) #13
  %11 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_buf, align 16
  tail call void @devm_kfree(ptr noundef nonnull %1, ptr noundef %12) #10
  %13 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %tx_buf, align 16
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %next_to_use = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 10
  %14 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %next_to_use, align 8
  %next_to_clean = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 11
  %15 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %next_to_clean, align 2
  %prev_pkt = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 20, i32 3
  %16 = ptrtoint ptr %prev_pkt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %prev_pkt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end37, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -12, %do.end37 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_clean_rx_ring(ptr noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %2 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup33_crit_edge, label %if.end

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

if.end:                                           ; preds = %entry
  %skb = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 26
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb, align 16
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %6) #10
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %skb, align 16
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %xsk_pool = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 25
  %8 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xsk_pool, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %for.cond.preheader, label %if.then8

for.cond.preheader:                               ; preds = %if.end6
  %count = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp69.not = icmp eq i16 %11, 0
  br i1 %cmp69.not, label %for.cond.preheader.rx_skip_free_crit_edge, label %for.body.lr.ph

for.cond.preheader.rx_skip_free_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_skip_free

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rx_buf_len = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 17
  br label %for.body

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ice_xsk_clean_rx_ring(ptr noundef %rx_ring) #10
  br label %rx_skip_free

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup.for.body_crit_edge ]
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %page = getelementptr %struct.ice_rx_buf, ptr %13, i32 %indvars.iv, i32 1
  %14 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %page, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %for.body.cleanup_crit_edge, label %if.end14

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.ice_rx_buf, ptr %13, i32 %indvars.iv
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %page_offset = getelementptr %struct.ice_rx_buf, ptr %13, i32 %indvars.iv, i32 2
  %18 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_offset, align 4
  %20 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rx_buf_len, align 2
  %conv15 = zext i16 %21 to i32
  %add.i = add i32 %19, %17
  tail call void @dma_sync_single_for_cpu(ptr noundef %1, i32 noundef %add.i, i32 noundef %conv15, i32 noundef 2) #10
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rx_buf_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %25)
  %cmp.i = icmp ugt i16 %25, 2048
  %..i = zext i1 %cmp.i to i32
  %shl = shl nuw nsw i32 4096, %..i
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %23, i32 noundef %shl, i32 noundef 2, i32 noundef 34) #10
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page, align 4
  %pagecnt_bias = getelementptr %struct.ice_rx_buf, ptr %13, i32 %indvars.iv, i32 3
  %28 = ptrtoint ptr %pagecnt_bias to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pagecnt_bias, align 4
  %conv18 = zext i16 %29 to i32
  tail call void @__page_frag_cache_drain(ptr noundef %27, i32 noundef %conv18) #10
  %30 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %page, align 4
  %31 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %page_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %for.body.cleanup_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %32 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %count, align 2
  %34 = zext i16 %33 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %34
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.rx_skip_free_crit_edge

cleanup.rx_skip_free_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_skip_free

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

rx_skip_free:                                     ; preds = %cleanup.rx_skip_free_crit_edge, %if.then8, %for.cond.preheader.rx_skip_free_crit_edge
  %35 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xsk_pool, align 4
  %tobool22.not = icmp eq ptr %36, null
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %count27 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %39 = ptrtoint ptr %count27 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %count27, align 2
  %conv28 = zext i16 %40 to i32
  %. = select i1 %tobool22.not, i32 4, i32 2
  %41 = shl nuw nsw i32 %conv28, %.
  %42 = call ptr @memset(ptr %38, i32 0, i32 %41)
  %count31 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %43 = ptrtoint ptr %count31 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %count31, align 2
  %conv32 = zext i16 %44 to i32
  %mul = shl nuw nsw i32 %conv32, 5
  %add = add nuw nsw i32 %mul, 4095
  %and = and i32 %add, 4190208
  %desc = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 1
  %45 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc, align 4
  %47 = call ptr @memset(ptr %46, i32 0, i32 %and)
  %next_to_alloc = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 15
  %48 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %next_to_alloc, align 2
  %next_to_clean = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 14
  %49 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %next_to_clean, align 8
  %next_to_use = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 13
  %50 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %next_to_use, align 2
  br label %cleanup33

cleanup33:                                        ; preds = %rx_skip_free, %entry.cleanup33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_xsk_clean_rx_ring(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_frag_cache_drain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_free_rx_ring(ptr noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ice_clean_rx_ring(ptr noundef %rx_ring)
  %vsi = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 4
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 16
  %type = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %xdp_rxq = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 9
  %call = tail call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %xdp_rxq) #10
  br i1 %call, label %if.then1, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %xdp_prog = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 23
  %4 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xdp_prog, align 4
  %5 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %5, align 4
  %desc = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 1
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.end3.if.end10_crit_edge, label %if.then7

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %count = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count, align 2
  %conv = zext i16 %12 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 4095
  %and = and i32 %add, 4190208
  %dev = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %dma = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 27
  %15 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma, align 4
  tail call void @dmam_free_coherent(ptr noundef %14, i32 noundef %and, ptr noundef nonnull %10, i32 noundef %16) #10
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %desc, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end3.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xdp_rxq_info_is_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_setup_rx_ring(ptr noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !71

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 492, i32 noundef 9, ptr noundef null) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %count = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %count, align 2
  %conv = zext i16 %6 to i32
  %7 = shl nuw nsw i32 %conv, 4
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #14
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %2, align 4
  %tobool24.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool24.not, label %if.end17.cleanup_crit_edge, label %if.end26

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %count, align 2
  %conv28 = zext i16 %10 to i32
  %mul = shl nuw nsw i32 %conv28, 5
  %add = add nuw nsw i32 %mul, 4095
  %and = and i32 %add, 4190208
  %dma = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 27
  %call.i = tail call ptr @dmam_alloc_attrs(ptr noundef nonnull %1, i32 noundef %and, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #10
  %desc = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 1
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %desc, align 4
  %tobool31.not = icmp eq ptr %call.i, null
  br i1 %tobool31.not, label %do.end35, label %if.end36

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, i32 noundef %and) #13
  br label %err

if.end36:                                         ; preds = %if.end26
  %next_to_use = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 13
  %12 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %next_to_use, align 2
  %next_to_clean = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 14
  %13 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %next_to_clean, align 8
  %vsi = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 4
  %14 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vsi, align 16
  %xdp_prog.i = getelementptr inbounds %struct.ice_vsi, ptr %15, i32 0, i32 57
  %16 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.i.not = icmp eq ptr %17, null
  br i1 %tobool.i.not, label %if.end36.if.end50_crit_edge, label %do.body43

if.end36.if.end50_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.body43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %xdp_prog45 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 23
  %18 = ptrtoint ptr %xdp_prog45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %xdp_prog45, align 4
  br label %if.end50

if.end50:                                         ; preds = %do.body43, %if.end36.if.end50_crit_edge
  %type = getelementptr inbounds %struct.ice_vsi, ptr %15, i32 0, i32 17
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %land.lhs.true, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end50
  %xdp_rxq = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 9
  %call53 = tail call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %xdp_rxq) #10
  br i1 %call53, label %land.lhs.true.cleanup_crit_edge, label %if.then54

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then54:                                        ; preds = %land.lhs.true
  %netdev = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 3
  %21 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev, align 4
  %q_index = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 10
  %23 = ptrtoint ptr %q_index to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %q_index, align 128
  %conv56 = zext i16 %24 to i32
  %q_vector = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 5
  %25 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %q_vector, align 4
  %napi_id = getelementptr inbounds %struct.ice_q_vector, ptr %26, i32 0, i32 7, i32 15
  %27 = ptrtoint ptr %napi_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %napi_id, align 8
  %call57 = tail call i32 @xdp_rxq_info_reg(ptr noundef %xdp_rxq, ptr noundef %22, i32 noundef %conv56, i32 noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then54.cleanup_crit_edge, label %if.then54.err_crit_edge

if.then54.err_crit_edge:                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %if.then54.err_crit_edge, %do.end35
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %30) #10
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then54.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ 0, %if.then54.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_xdp_xmit(ptr nocapture noundef readonly %dev, i32 noundef %n, ptr nocapture noundef readonly %frames, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %state = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup61_crit_edge

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup61

if.end:                                           ; preds = %entry
  %xdp_prog.i = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 57
  %8 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.i.not = icmp eq ptr %9, null
  br i1 %tobool.i.not, label %if.end.cleanup61_crit_edge, label %lor.lhs.false

if.end.cleanup61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup61

lor.lhs.false:                                    ; preds = %if.end
  %num_xdp_txq = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 60
  %10 = ptrtoint ptr %num_xdp_txq to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_xdp_txq, align 16
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ult i32 %3, %conv
  br i1 %cmp.not, label %if.end7, label %lor.lhs.false.cleanup61_crit_edge

lor.lhs.false.cleanup61_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup61

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool8.not = icmp ult i32 %flags, 2
  br i1 %tobool8.not, label %if.end12, label %if.end7.cleanup61_crit_edge, !prof !71

if.end7.cleanup61_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup61

if.end12:                                         ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ice_xdp_locking_key, ptr blockaddress(@ice_xdp_xmit, %if.then21)) #10
          to label %if.else [label %if.then21], !srcloc !75

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %num_xdp_txq to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_xdp_txq, align 16
  %conv23 = zext i16 %13 to i32
  %rem = urem i32 %3, %conv23
  %xdp_rings = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 58
  %14 = ptrtoint ptr %xdp_rings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xdp_rings, align 8
  %arrayidx = getelementptr ptr, ptr %15, i32 %rem
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tx_lock = getelementptr inbounds %struct.ice_tx_ring, ptr %17, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #10
  br label %if.end26

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %xdp_rings24 = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 58
  %18 = ptrtoint ptr %xdp_rings24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xdp_rings24, align 8
  %arrayidx25 = getelementptr ptr, ptr %19, i32 %3
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then21
  %xdp_ring.0 = phi ptr [ %17, %if.then21 ], [ %21, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp2788 = icmp sgt i32 %n, 0
  br i1 %cmp2788, label %if.end26.for.body_crit_edge, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end26.for.body_crit_edge
  %nxmit.090 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end26.for.body_crit_edge ]
  %arrayidx29 = getelementptr ptr, ptr %frames, i32 %nxmit.090
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx29, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %len = getelementptr inbounds %struct.xdp_frame, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len, align 4
  %call30 = tail call i32 @ice_xmit_xdp_ring(ptr noundef %25, i16 noundef zeroext %27, ptr noundef %xdp_ring.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 2
  br i1 %cmp31.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %nxmit.090, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end26.for.end_crit_edge
  %nxmit.0.lcssa = phi i32 [ 0, %if.end26.for.end_crit_edge ], [ %nxmit.090, %for.body.for.end_crit_edge ], [ %n, %for.inc.for.end_crit_edge ]
  %and37 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %for.end.if.end46_crit_edge, label %if.then45, !prof !71

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @arm_heavy_mb() #10
  %next_to_use.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring.0, i32 0, i32 10
  %28 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %next_to_use.i, align 8
  %conv.i = zext i16 %29 to i32
  %30 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #10
  %tail.i = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring.0, i32 0, i32 3
  %31 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #10, !srcloc !74
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %for.end.if.end46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ice_xdp_locking_key, ptr blockaddress(@ice_xdp_xmit, %if.then58)) #10
          to label %cleanup61 [label %if.then58], !srcloc !75

if.then58:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %tx_lock59 = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring.0, i32 0, i32 25
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock59) #10
  br label %cleanup61

cleanup61:                                        ; preds = %if.then58, %if.end46, %if.end7.cleanup61_crit_edge, %lor.lhs.false.cleanup61_crit_edge, %if.end.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.0 = phi i32 [ -100, %entry.cleanup61_crit_edge ], [ -6, %lor.lhs.false.cleanup61_crit_edge ], [ -6, %if.end.cleanup61_crit_edge ], [ -22, %if.end7.cleanup61_crit_edge ], [ %nxmit.0.lcssa, %if.then58 ], [ %nxmit.0.lcssa, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_xmit_xdp_ring(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_alloc_rx_bufs(ptr noundef %rx_ring, i16 noundef zeroext %cleaned_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 13
  %0 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use, align 2
  %netdev = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %vsi = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 4
  %4 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsi, align 16
  %type = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.not = icmp ne i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cleaned_count)
  %tobool1.not = icmp eq i16 %cleaned_count, 0
  %or.cond = or i1 %tobool1.not, %cmp.not
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cleaned_count)
  %tobool1.not.old = icmp eq i16 %cleaned_count, 0
  br i1 %tobool1.not.old, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %desc = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 1
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %union.ice_32b_rx_flex_desc, ptr %9, i32 %idxprom
  %10 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %arrayidx3 = getelementptr %struct.ice_rx_buf, ptr %12, i32 %idxprom
  %rx_buf_len.i.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 17
  %dev.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 2
  %rx_offset.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 16
  %count = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %if.end19.do.body_crit_edge, %if.end
  %cleaned_count.addr.0 = phi i16 [ %cleaned_count, %if.end ], [ %dec, %if.end19.do.body_crit_edge ]
  %rx_desc.0 = phi ptr [ %arrayidx, %if.end ], [ %rx_desc.1, %if.end19.do.body_crit_edge ]
  %ntu.0 = phi i16 [ %1, %if.end ], [ %ntu.1, %if.end19.do.body_crit_edge ]
  %bi.0 = phi ptr [ %arrayidx3, %if.end ], [ %bi.1, %if.end19.do.body_crit_edge ]
  %page1.i = getelementptr inbounds %struct.ice_rx_buf, ptr %bi.0, i32 0, i32 1
  %13 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %page1.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body.if.end5_crit_edge, !prof !77

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end.i:                                         ; preds = %do.body
  %15 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %16)
  %cmp.i.i = icmp ugt i16 %16, 2048
  %..i.i = zext i1 %cmp.i.i to i32
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef %..i.i, i32 noundef 0, ptr noundef null) #10
  %tobool5.not.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.do.end.sink.split_crit_edge, label %if.end15.i, !prof !77

if.end.i.do.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.sink.split

if.end15.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  %19 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %20)
  %cmp.i48.i = icmp ugt i16 %20, 2048
  %..i49.i = zext i1 %cmp.i48.i to i32
  %shl.i = shl nuw nsw i32 4096, %..i49.i
  %call17.i = tail call i32 @dma_map_page_attrs(ptr noundef %18, ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0, i32 noundef %shl.i, i32 noundef 2, i32 noundef 34) #10
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %22, i32 noundef %call17.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17.i)
  %cmp.i50.not.i = icmp eq i32 %call17.i, -1
  br i1 %cmp.i50.not.i, label %if.then21.i, label %if.end26.i

if.then21.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %24)
  %cmp.i53.i = icmp ugt i16 %24, 2048
  %..i54.i = zext i1 %cmp.i53.i to i32
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef %..i54.i) #10
  br label %do.end.sink.split

if.end26.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %bi.0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call17.i, ptr %bi.0, align 4
  %26 = ptrtoint ptr %page1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call38.i.i.i.i.i, ptr %page1.i, align 4
  %27 = ptrtoint ptr %rx_offset.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rx_offset.i, align 4
  %conv.i = zext i16 %28 to i32
  %page_offset.i = getelementptr inbounds %struct.ice_rx_buf, ptr %bi.0, i32 0, i32 2
  %29 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i, ptr %page_offset.i, align 4
  tail call fastcc void @page_ref_add(ptr noundef nonnull %call38.i.i.i.i.i) #10
  %pagecnt_bias.i = getelementptr inbounds %struct.ice_rx_buf, ptr %bi.0, i32 0, i32 3
  %30 = ptrtoint ptr %pagecnt_bias.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %pagecnt_bias.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end26.i, %do.body.if.end5_crit_edge
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 8
  %33 = ptrtoint ptr %bi.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bi.0, align 4
  %page_offset = getelementptr inbounds %struct.ice_rx_buf, ptr %bi.0, i32 0, i32 2
  %35 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %page_offset, align 4
  %37 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rx_buf_len.i.i, align 2
  %conv = zext i16 %38 to i32
  %add.i = add i32 %36, %34
  tail call void @dma_sync_single_for_device(ptr noundef %32, i32 noundef %add.i, i32 noundef %conv, i32 noundef 2) #10
  %39 = ptrtoint ptr %bi.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bi.0, align 4
  %41 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page_offset, align 4
  %add = add i32 %42, %40
  %conv8 = zext i32 %add to i64
  %43 = tail call i64 @llvm.bswap.i64(i64 %conv8)
  %44 = ptrtoint ptr %rx_desc.0 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %rx_desc.0, align 8
  %incdec.ptr = getelementptr %union.ice_32b_rx_flex_desc, ptr %rx_desc.0, i32 1
  %incdec.ptr9 = getelementptr %struct.ice_rx_buf, ptr %bi.0, i32 1
  %inc = add i16 %ntu.0, 1
  %45 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %46)
  %cmp12 = icmp eq i16 %inc, %46
  br i1 %cmp12, label %if.then16, label %if.end5.if.end19_crit_edge, !prof !77

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc, align 4
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %10, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end5.if.end19_crit_edge
  %rx_desc.1 = phi ptr [ %48, %if.then16 ], [ %incdec.ptr, %if.end5.if.end19_crit_edge ]
  %ntu.1 = phi i16 [ 0, %if.then16 ], [ %inc, %if.end5.if.end19_crit_edge ]
  %bi.1 = phi ptr [ %50, %if.then16 ], [ %incdec.ptr9, %if.end5.if.end19_crit_edge ]
  %status_error0 = getelementptr inbounds %struct.anon.202, ptr %rx_desc.1, i32 0, i32 5
  %51 = ptrtoint ptr %status_error0 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %status_error0, align 8
  %dec = add i16 %cleaned_count.addr.0, -1
  %tobool20.not = icmp eq i16 %dec, 0
  br i1 %tobool20.not, label %if.end19.do.end_crit_edge, label %if.end19.do.body_crit_edge

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.sink.split:                                ; preds = %if.then21.i, %if.end.i.do.end.sink.split_crit_edge
  %alloc_page_failed.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %alloc_page_failed.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %alloc_page_failed.i, align 8
  %inc25.i = add i64 %53, 1
  store i64 %inc25.i, ptr %alloc_page_failed.i, align 8
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.end19.do.end_crit_edge
  %cleaned_count.addr.1 = phi i16 [ %cleaned_count.addr.0, %do.end.sink.split ], [ 0, %if.end19.do.end_crit_edge ]
  %ntu.2 = phi i16 [ %ntu.0, %do.end.sink.split ], [ %ntu.1, %if.end19.do.end_crit_edge ]
  %54 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %next_to_use, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %55, i16 %ntu.2)
  %cmp24.not = icmp eq i16 %55, %ntu.2
  br i1 %cmp24.not, label %do.end.if.end27_crit_edge, label %if.then26

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ice_release_rx_desc(ptr noundef %rx_ring, i16 noundef zeroext %ntu.2) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %do.end.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cleaned_count.addr.1)
  %tobool28 = icmp ne i16 %cleaned_count.addr.1, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool28, %if.end27 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_release_rx_desc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_clean_rx_irq(ptr noundef %rx_ring, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 14
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 8
  %next_to_use = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 13
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_use, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp ugt i16 %1, %3
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %count = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i16 [ %5, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %6 = xor i16 %3, -1
  %add = add i16 %1, %6
  %sub8 = add i16 %add, %cond
  %rx_offset = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 16
  %7 = ptrtoint ptr %rx_offset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rx_offset, align 4
  %conv10 = zext i16 %8 to i32
  %skb11 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 26
  %9 = ptrtoint ptr %skb11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb11, align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #10
  %11 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %12 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %13 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %14 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %15 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %rx_buf_len.i.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 17
  %16 = call ptr @memset(ptr %xdp, i32 255, i32 24)
  %17 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %18)
  %cmp.i.i = icmp ugt i16 %18, 2048
  %..i.i = zext i1 %cmp.i.i to i32
  %shl.i = shl nuw nsw i32 4096, %..i.i
  %div1.i = lshr exact i32 %shl.i, 1
  %xdp_rxq = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 9
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div1.i, ptr %15, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %xdp_rxq, ptr %14, align 4
  %xdp_prog12 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 23
  %21 = ptrtoint ptr %xdp_prog12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %xdp_prog12, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %xdp_ring13 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 24
  %23 = ptrtoint ptr %xdp_ring13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xdp_ring13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %xdp_ring.0 = phi ptr [ %24, %if.then ], [ null, %cond.end.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp14343.not = icmp eq i32 %budget, 0
  br i1 %cmp14343.not, label %if.end.while.end_crit_edge, label %while.body.lr.ph, !prof !77

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %desc = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 1
  %netdev = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 3
  %25 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 7
  %dev.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 2
  %idx.neg = sub nsw i32 0, %conv10
  %flags.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 31
  %q_index.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 10
  %q_vector.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 5
  %rx_stats.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 18
  %vsi295 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 4
  %count.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %total_rx_bytes.0358 = phi i32 [ 0, %while.body.lr.ph ], [ %total_rx_bytes.1, %cleanup.while.body_crit_edge ]
  %skb.0356 = phi ptr [ %10, %while.body.lr.ph ], [ %skb.2, %cleanup.while.body_crit_edge ]
  %xdp_xmit.0352 = phi i32 [ 0, %while.body.lr.ph ], [ %xdp_xmit.2, %cleanup.while.body_crit_edge ]
  %cleaned_count.0348 = phi i16 [ %sub8, %while.body.lr.ph ], [ %cleaned_count.1, %cleanup.while.body_crit_edge ]
  %total_rx_pkts.0344 = phi i32 [ 0, %while.body.lr.ph ], [ %total_rx_pkts.1, %cleanup.while.body_crit_edge ]
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc, align 4
  %28 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %next_to_clean, align 8
  %idxprom = zext i16 %29 to i32
  %arrayidx = getelementptr %union.ice_32b_rx_flex_desc, ptr %27, i32 %idxprom
  %status_error0.i = getelementptr inbounds %struct.anon.202, ptr %arrayidx, i32 0, i32 5
  %30 = ptrtoint ptr %status_error0.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %status_error0.i, align 8
  %and3.i = and i16 %31, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3.i)
  %tobool.i.not = icmp eq i16 %and3.i, 0
  br i1 %tobool.i.not, label %while.body.while.end_crit_edge, label %if.end21

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end21:                                         ; preds = %while.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call fastcc void @trace_ice_clean_rx_irq(ptr noundef %rx_ring, ptr noundef %arrayidx)
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %33)
  %cmp23 = icmp eq i8 %33, 64
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end21
  %34 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev, align 4
  %tobool25.not = icmp eq ptr %35, null
  br i1 %tobool25.not, label %lor.lhs.false.if.end35_crit_edge, label %if.end36

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end21
  %36 = ptrtoint ptr %vsi295 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vsi295, align 16
  %vf_id = getelementptr inbounds %struct.ice_vsi, ptr %37, i32 0, i32 20
  %38 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vf_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %39)
  %cmp32.not = icmp eq i16 %39, 256
  br i1 %cmp32.not, label %land.lhs.true.if.end35_crit_edge, label %if.then34

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @ice_vc_fdir_irq_handler(ptr noundef %37, ptr noundef %arrayidx) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true.if.end35_crit_edge, %lor.lhs.false.if.end35_crit_edge
  %40 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %next_to_clean, align 8
  %add.i = add i16 %41, 1
  %42 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %count.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i, i16 %43)
  %cmp.i = icmp ult i16 %add.i, %43
  %spec.select.i = select i1 %cmp.i, i16 %add.i, i16 0
  %44 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %spec.select.i, ptr %next_to_clean, align 8
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false
  %pkt_len = getelementptr inbounds %struct.anon.202, ptr %arrayidx, i32 0, i32 3
  %45 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %pkt_len, align 4
  %47 = and i16 %46, -193
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  %and = zext i16 %48 to i32
  %49 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %25, align 4
  %51 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %next_to_clean, align 8
  %idxprom.i = zext i16 %52 to i32
  %arrayidx.i = getelementptr %struct.ice_rx_buf, ptr %50, i32 %idxprom.i
  %page.i = getelementptr %struct.ice_rx_buf, ptr %50, i32 %idxprom.i, i32 1
  %53 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %page.i, align 4
  %55 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %and.i.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !71

if.then.i.i.i:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %57, -1
  br label %page_count.exit.i

if.end.i.i.i:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %54 to i32
  br label %page_count.exit.i

page_count.exit.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %58, %if.end.i.i.i ]
  %59 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %60 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %62 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %page.i, align 4
  call void @llvm.prefetch.p0(ptr %63, i32 1, i32 3, i32 1) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.not.i = icmp eq i16 %47, 0
  br i1 %tobool.not.i, label %construct_skb.thread, label %if.end41

if.end41:                                         ; preds = %page_count.exit.i
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 8
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  %page_offset.i = getelementptr %struct.ice_rx_buf, ptr %50, i32 %idxprom.i, i32 2
  %68 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %page_offset.i, align 4
  %add.i.i = add i32 %69, %67
  call void @dma_sync_single_for_cpu(ptr noundef %65, i32 noundef %add.i.i, i32 noundef %and, i32 noundef 2) #10
  %pagecnt_bias.i = getelementptr %struct.ice_rx_buf, ptr %50, i32 %idxprom.i, i32 3
  %70 = ptrtoint ptr %pagecnt_bias.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %pagecnt_bias.i, align 4
  %dec.i = add i16 %71, -1
  store i16 %dec.i, ptr %pagecnt_bias.i, align 4
  %72 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %page.i, align 4
  %call42 = call ptr @page_address(ptr noundef %73) #10
  %page_offset = getelementptr %struct.ice_rx_buf, ptr %50, i32 %idxprom.i, i32 2
  %74 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %page_offset, align 4
  %add.ptr = getelementptr i8, ptr %call42, i32 %idx.neg
  %add.ptr43 = getelementptr i8, ptr %add.ptr, i32 %75
  %add.ptr.i = getelementptr i8, ptr %add.ptr43, i32 %conv10
  %76 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr43, ptr %13, align 4
  %77 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i, ptr %xdp, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %and
  %78 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr2.i, ptr %11, align 4
  %79 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr.i, ptr %12, align 4
  br i1 %tobool.not, label %if.end41.construct_skb_crit_edge, label %if.end46

if.end41.construct_skb_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %construct_skb

if.end46:                                         ; preds = %if.end41
  %call47 = call fastcc i32 @ice_run_xdp(ptr noundef %rx_ring, ptr noundef nonnull %xdp, ptr noundef nonnull %22, ptr noundef %xdp_ring.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end46.construct_skb_crit_edge, label %if.end50

if.end46.construct_skb_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %construct_skb

if.end50:                                         ; preds = %if.end46
  %and51 = and i32 %call47, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %call47, %xdp_xmit.0352
  %80 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %15, align 4
  %82 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %page_offset, align 4
  %xor.i = xor i32 %83, %81
  store i32 %xor.i, ptr %page_offset, align 4
  br label %if.end56

if.else:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %pagecnt_bias = getelementptr %struct.ice_rx_buf, ptr %50, i32 %idxprom.i, i32 3
  %84 = ptrtoint ptr %pagecnt_bias to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %pagecnt_bias, align 4
  %inc55 = add i16 %85, 1
  store i16 %inc55, ptr %pagecnt_bias, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then53
  %xdp_xmit.1 = phi i32 [ %or, %if.then53 ], [ %xdp_xmit.0352, %if.else ]
  %add57 = add i32 %total_rx_bytes.0358, %and
  %inc58 = add nuw i32 %total_rx_pkts.0344, 1
  call fastcc void @ice_put_rx_buf(ptr noundef %rx_ring, ptr noundef %arrayidx.i, i32 noundef %61)
  br label %cleanup

construct_skb:                                    ; preds = %if.end46.construct_skb_crit_edge, %if.end41.construct_skb_crit_edge
  %tobool60.not = icmp eq ptr %skb.0356, null
  br i1 %tobool60.not, label %if.else62, label %if.end.i243.critedge

construct_skb.thread:                             ; preds = %page_count.exit.i
  %tobool60.not397 = icmp eq ptr %skb.0356, null
  %86 = call ptr @memset(ptr %xdp, i32 0, i32 16)
  br i1 %tobool60.not397, label %construct_skb.thread.if.then81_crit_edge, label %construct_skb.thread.if.end88_crit_edge

construct_skb.thread.if.end88_crit_edge:          ; preds = %construct_skb.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

construct_skb.thread.if.then81_crit_edge:         ; preds = %construct_skb.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

if.end.i243.critedge:                             ; preds = %construct_skb
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %88)
  %cmp.i.i238 = icmp ugt i16 %88, 2048
  %..i.i239 = zext i1 %cmp.i.i238 to i32
  %shl.i240 = shl nuw nsw i32 4096, %..i.i239
  %div7.i = lshr exact i32 %shl.i240, 1
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0356, i32 0, i32 17
  %89 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %92 to i32
  %93 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %page.i, align 4
  %page_offset.i242 = getelementptr %struct.ice_rx_buf, ptr %50, i32 %idxprom.i, i32 2
  %95 = ptrtoint ptr %page_offset.i242 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %page_offset.i242, align 4
  call void @skb_add_rx_frag(ptr noundef nonnull %skb.0356, i32 noundef %conv.i, ptr noundef %94, i32 noundef %96, i32 noundef %and, i32 noundef %div7.i) #10
  %97 = ptrtoint ptr %page_offset.i242 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %page_offset.i242, align 4
  %xor.i.i = xor i32 %98, %div7.i
  store i32 %xor.i.i, ptr %page_offset.i242, align 4
  br label %if.end88

if.else62:                                        ; preds = %construct_skb
  %99 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr = load ptr, ptr %xdp, align 4
  %tobool64.not = icmp eq ptr %.pr, null
  br i1 %tobool64.not, label %if.else62.if.then81_crit_edge, label %if.then71, !prof !77

if.else62.if.then81_crit_edge:                    ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

if.then71:                                        ; preds = %if.else62
  %100 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %flags.i, align 2
  %102 = and i8 %101, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.i244.not = icmp eq i8 %102, 0
  br i1 %tobool.i244.not, label %if.else75, label %if.then73

if.then73:                                        ; preds = %if.then71
  %103 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %12, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %.pr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %104 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i246 = trunc i32 %sub.ptr.sub.i to i8
  %105 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %106)
  %cmp.i.i248 = icmp ugt i16 %106, 2048
  %..i.i249 = zext i1 %cmp.i.i248 to i32
  %shl.i250 = shl nuw nsw i32 4096, %..i.i249
  %div36.i = lshr exact i32 %shl.i250, 1
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %104) #10, !srcloc !79
  %107 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %13, align 4
  %call2.i = call ptr @napi_build_skb(ptr noundef %108, i32 noundef %div36.i) #10
  %tobool.not.i252 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i252, label %if.then73.if.then81_crit_edge, label %if.end.i254, !prof !77

if.then73.if.then81_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

if.end.i254:                                      ; preds = %if.then73
  %109 = ptrtoint ptr %q_index.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %q_index.i, align 128
  %add.i.i253 = add i16 %110, 1
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 10
  %111 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %add.i.i253, ptr %queue_mapping.i.i, align 8
  %112 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %xdp, align 4
  %114 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %13, align 4
  %sub.ptr.lhs.cast8.i = ptrtoint ptr %113 to i32
  %sub.ptr.rhs.cast9.i = ptrtoint ptr %115 to i32
  %sub.ptr.sub10.i = sub i32 %sub.ptr.lhs.cast8.i, %sub.ptr.rhs.cast9.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 19
  %116 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %117, i32 %sub.ptr.sub10.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 16
  %118 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %119, i32 %sub.ptr.sub10.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 7
  %120 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.i.not.i.i = icmp eq i32 %121, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !71

do.body3.i.i:                                     ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !80
  unreachable

__skb_put.exit.i:                                 ; preds = %if.end.i254
  %122 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %11, align 4
  %sub.ptr.lhs.cast12.i = ptrtoint ptr %123 to i32
  %sub.ptr.sub14.i = sub i32 %sub.ptr.lhs.cast12.i, %sub.ptr.lhs.cast8.i
  %add.ptr.i37.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %sub.ptr.sub14.i
  %124 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %add.ptr.i37.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 6
  %125 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len9.i.i, align 4
  %add.i38.i = add i32 %126, %sub.ptr.sub14.i
  store i32 %add.i38.i, ptr %len9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i246)
  %tobool16.not.i = icmp eq i8 %conv.i246, 0
  br i1 %tobool16.not.i, label %__skb_put.exit.i.if.end18.i_crit_edge, label %if.then17.i

__skb_put.exit.i.if.end18.i_crit_edge:            ; preds = %__skb_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then17.i:                                      ; preds = %__skb_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 17
  %127 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %end.i.i.i, align 4
  %meta_len1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %meta_len1.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv.i246, ptr %meta_len1.i.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %__skb_put.exit.i.if.end18.i_crit_edge
  %page_offset.i.i = getelementptr %struct.ice_rx_buf, ptr %50, i32 %idxprom.i, i32 2
  %130 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %page_offset.i.i, align 4
  %xor.i.i256 = xor i32 %131, %div36.i
  store i32 %xor.i.i256, ptr %page_offset.i.i, align 4
  br label %if.end88

if.else75:                                        ; preds = %if.then71
  %132 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %11, align 4
  %sub.ptr.lhs.cast.i258 = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast.i259 = ptrtoint ptr %.pr to i32
  %sub.ptr.sub.i260 = sub i32 %sub.ptr.lhs.cast.i258, %sub.ptr.rhs.cast.i259
  call void asm sideeffect "pld\09${0:a}", "r"(ptr nonnull %.pr) #10, !srcloc !79
  %134 = ptrtoint ptr %q_vector.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %q_vector.i, align 4
  %napi.i = getelementptr inbounds %struct.ice_q_vector, ptr %135, i32 0, i32 7
  %call.i = call ptr @__napi_alloc_skb(ptr noundef %napi.i, i32 noundef 256, i32 noundef 10784) #10
  %tobool.not.i261 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i261, label %if.else75.if.then81_crit_edge, label %if.end.i266, !prof !77

if.else75.if.then81_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

if.end.i266:                                      ; preds = %if.else75
  %136 = ptrtoint ptr %q_index.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %q_index.i, align 128
  %add.i.i263 = add i16 %137, 1
  %queue_mapping.i.i264 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %138 = ptrtoint ptr %queue_mapping.i.i264 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %add.i.i263, ptr %queue_mapping.i.i264, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.ptr.sub.i260)
  %cmp.i265 = icmp ugt i32 %sub.ptr.sub.i260, 256
  br i1 %cmp.i265, label %if.then5.i, label %if.end.i266.if.end8.i_crit_edge

if.end.i266.if.end8.i_crit_edge:                  ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #12
  %139 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 8
  %142 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %xdp, align 4
  %call7.i = call i32 @eth_get_headlen(ptr noundef %141, ptr noundef %143, i32 noundef 256) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i266.if.end8.i_crit_edge
  %headlen.0.i = phi i32 [ %call7.i, %if.then5.i ], [ %sub.ptr.sub.i260, %if.end.i266.if.end8.i_crit_edge ]
  %data_len.i.i.i267 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %144 = ptrtoint ptr %data_len.i.i.i267 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %data_len.i.i.i267, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.i.not.i.i268 = icmp eq i32 %145, 0
  br i1 %tobool.i.not.i.i268, label %__skb_put.exit.i273, label %do.body3.i.i269, !prof !71

do.body3.i.i269:                                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !80
  unreachable

__skb_put.exit.i273:                              ; preds = %if.end8.i
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %146 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i270 = getelementptr i8, ptr %147, i32 %headlen.0.i
  store ptr %add.ptr.i.i270, ptr %tail.i.i.i, align 8
  %len9.i.i271 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %148 = ptrtoint ptr %len9.i.i271 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %len9.i.i271, align 4
  %add.i41.i = add i32 %149, %headlen.0.i
  store i32 %add.i41.i, ptr %len9.i.i271, align 4
  %150 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %xdp, align 4
  %add.i272 = add i32 %headlen.0.i, 3
  %and.i = and i32 %add.i272, -4
  %152 = call ptr @memcpy(ptr %147, ptr %151, i32 %and.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i260, i32 %headlen.0.i)
  %tobool11.not.i = icmp eq i32 %sub.ptr.sub.i260, %headlen.0.i
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %__skb_put.exit.i273
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %sub.ptr.sub.i260, %headlen.0.i
  %153 = ptrtoint ptr %rx_buf_len.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %rx_buf_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %154)
  %cmp.i.i275 = icmp ugt i16 %154, 2048
  %..i.i276 = zext i1 %cmp.i.i275 to i32
  %shl.i277 = shl nuw nsw i32 4096, %..i.i276
  %div40.i = lshr exact i32 %shl.i277, 1
  %155 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %page.i, align 4
  %page_offset.i279 = getelementptr %struct.ice_rx_buf, ptr %50, i32 %idxprom.i, i32 2
  %157 = ptrtoint ptr %page_offset.i279 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %page_offset.i279, align 4
  %add14.i = add i32 %158, %headlen.0.i
  call void @skb_add_rx_frag(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %156, i32 noundef %add14.i, i32 noundef %sub.i, i32 noundef %div40.i) #10
  %159 = ptrtoint ptr %page_offset.i279 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %page_offset.i279, align 4
  %xor.i.i280 = xor i32 %160, %div40.i
  store i32 %xor.i.i280, ptr %page_offset.i279, align 4
  br label %if.end88

if.else.i:                                        ; preds = %__skb_put.exit.i273
  call void @__sanitizer_cov_trace_pc() #12
  %pagecnt_bias.i281 = getelementptr %struct.ice_rx_buf, ptr %50, i32 %idxprom.i, i32 3
  %161 = ptrtoint ptr %pagecnt_bias.i281 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %pagecnt_bias.i281, align 4
  %inc.i = add i16 %162, 1
  store i16 %inc.i, ptr %pagecnt_bias.i281, align 4
  br label %if.end88

if.then81:                                        ; preds = %if.else75.if.then81_crit_edge, %if.then73.if.then81_crit_edge, %if.else62.if.then81_crit_edge, %construct_skb.thread.if.then81_crit_edge
  %alloc_buf_failed = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 18, i32 2
  %163 = ptrtoint ptr %alloc_buf_failed to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %alloc_buf_failed, align 16
  %inc82 = add i64 %164, 1
  store i64 %inc82, ptr %alloc_buf_failed, align 16
  %tobool83.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool83.not, label %if.then81.while.end_crit_edge, label %if.then84

if.then81.while.end_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then84:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom.i.le = zext i16 %52 to i32
  %pagecnt_bias85 = getelementptr %struct.ice_rx_buf, ptr %50, i32 %idxprom.i.le, i32 3
  %165 = ptrtoint ptr %pagecnt_bias85 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %pagecnt_bias85, align 4
  %inc86 = add i16 %166, 1
  store i16 %inc86, ptr %pagecnt_bias85, align 4
  br label %while.end

if.end88:                                         ; preds = %if.else.i, %if.then12.i, %if.end18.i, %if.end.i243.critedge, %construct_skb.thread.if.end88_crit_edge
  %skb.1.ph = phi ptr [ %call.i, %if.else.i ], [ %call.i, %if.then12.i ], [ %call2.i, %if.end18.i ], [ %skb.0356, %if.end.i243.critedge ], [ %skb.0356, %construct_skb.thread.if.end88_crit_edge ]
  call fastcc void @ice_put_rx_buf(ptr noundef %rx_ring, ptr noundef %arrayidx.i, i32 noundef %61)
  %167 = ptrtoint ptr %status_error0.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %status_error0.i, align 8
  %and3.i.i = and i16 %168, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3.i.i)
  %tobool.i.not.i = icmp eq i16 %and3.i.i, 0
  br i1 %tobool.i.not.i, label %ice_is_non_eop.exit.thread, label %if.end92, !prof !77

ice_is_non_eop.exit.thread:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %rx_stats.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %rx_stats.i, align 16
  %inc.i282 = add i64 %170, 1
  store i64 %inc.i282, ptr %rx_stats.i, align 16
  br label %cleanup

if.end92:                                         ; preds = %if.end88
  %171 = ptrtoint ptr %status_error0.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %status_error0.i, align 8
  %and3.i285 = and i16 %172, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3.i285)
  %tobool.i286.not = icmp eq i16 %and3.i285, 0
  br i1 %tobool.i286.not, label %if.end101, label %if.then100, !prof !71

if.then100:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  call void @__dev_kfree_skb_any(ptr noundef nonnull %skb.1.ph, i32 noundef 1) #10
  br label %cleanup

if.end101:                                        ; preds = %if.end92
  %and3.i288 = and i16 %172, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3.i288)
  %tobool.i289.not = icmp eq i16 %and3.i288, 0
  br i1 %tobool.i289.not, label %if.end101.if.end104_crit_edge, label %if.then103

if.end101.if.end104_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %l2tag1 = getelementptr inbounds %struct.anon.202, ptr %arrayidx, i32 0, i32 6
  %173 = ptrtoint ptr %l2tag1 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %l2tag1, align 2
  %175 = call i16 @llvm.bswap.i16(i16 %174)
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end101.if.end104_crit_edge
  %vlan_tag.0 = phi i16 [ %175, %if.then103 ], [ 0, %if.end101.if.end104_crit_edge ]
  %len1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph, i32 0, i32 6
  %176 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %len1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %177)
  %cmp.i.i.i = icmp ult i32 %177, 60
  br i1 %cmp.i.i.i, label %if.then.i.i.i291, label %if.end104.if.end108_crit_edge, !prof !77

if.end104.if.end108_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then.i.i.i291:                                 ; preds = %if.end104
  %sub.i.i.i290 = sub nuw nsw i32 60, %177
  %call.i.i.i = call i32 @__skb_pad(ptr noundef nonnull %skb.1.ph, i32 noundef %sub.i.i.i290, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i292, label %if.then.i.i.i291.cleanup_crit_edge

if.then.i.i.i291.cleanup_crit_edge:               ; preds = %if.then.i.i.i291
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i292:                                  ; preds = %if.then.i.i.i291
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph, i32 0, i32 7
  %178 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.i.not.i.i.i.i = icmp eq i32 %179, 0
  br i1 %tobool.i.not.i.i.i.i, label %__skb_put.exit.i.i.i, label %do.body3.i.i.i.i, !prof !71

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i.i292
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !80
  unreachable

__skb_put.exit.i.i.i:                             ; preds = %if.end.i.i.i292
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.ph, i32 0, i32 16
  %180 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %181, i32 %sub.i.i.i290
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %182 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %len1.i.i.i, align 4
  %add.i.i.i.i = add i32 %183, %sub.i.i.i290
  store i32 %add.i.i.i.i, ptr %len1.i.i.i, align 4
  br label %if.end108

if.end108:                                        ; preds = %__skb_put.exit.i.i.i, %if.end104.if.end108_crit_edge
  %184 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %len1.i.i.i, align 4
  %add109 = add i32 %185, %total_rx_bytes.0358
  %ptype_flex_flags0 = getelementptr inbounds %struct.anon.202, ptr %arrayidx, i32 0, i32 2
  %186 = ptrtoint ptr %ptype_flex_flags0 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %ptype_flex_flags0, align 2
  %188 = and i16 %187, -253
  %189 = call i16 @llvm.bswap.i16(i16 %188)
  call void @ice_process_skb_fields(ptr noundef %rx_ring, ptr noundef %arrayidx, ptr noundef nonnull %skb.1.ph, i16 noundef zeroext %189) #10
  call fastcc void @trace_ice_clean_rx_irq_indicate(ptr noundef %rx_ring, ptr noundef %arrayidx, ptr noundef nonnull %skb.1.ph)
  call void @ice_receive_skb(ptr noundef %rx_ring, ptr noundef nonnull %skb.1.ph, i16 noundef zeroext %vlan_tag.0) #10
  %inc113 = add nuw i32 %total_rx_pkts.0344, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.then.i.i.i291.cleanup_crit_edge, %if.then100, %ice_is_non_eop.exit.thread, %if.end56, %if.end35
  %total_rx_pkts.1 = phi i32 [ %total_rx_pkts.0344, %if.end35 ], [ %inc58, %if.end56 ], [ %total_rx_pkts.0344, %if.then100 ], [ %inc113, %if.end108 ], [ %total_rx_pkts.0344, %ice_is_non_eop.exit.thread ], [ %total_rx_pkts.0344, %if.then.i.i.i291.cleanup_crit_edge ]
  %xdp_xmit.2 = phi i32 [ %xdp_xmit.0352, %if.end35 ], [ %xdp_xmit.1, %if.end56 ], [ %xdp_xmit.0352, %if.then100 ], [ %xdp_xmit.0352, %if.end108 ], [ %xdp_xmit.0352, %ice_is_non_eop.exit.thread ], [ %xdp_xmit.0352, %if.then.i.i.i291.cleanup_crit_edge ]
  %skb.2 = phi ptr [ %skb.0356, %if.end35 ], [ %skb.0356, %if.end56 ], [ %skb.1.ph, %if.then100 ], [ null, %if.end108 ], [ %skb.1.ph, %ice_is_non_eop.exit.thread ], [ null, %if.then.i.i.i291.cleanup_crit_edge ]
  %total_rx_bytes.1 = phi i32 [ %total_rx_bytes.0358, %if.end35 ], [ %add57, %if.end56 ], [ %total_rx_bytes.0358, %if.then100 ], [ %add109, %if.end108 ], [ %total_rx_bytes.0358, %ice_is_non_eop.exit.thread ], [ %total_rx_bytes.0358, %if.then.i.i.i291.cleanup_crit_edge ]
  %cleaned_count.1 = add i16 %cleaned_count.0348, 1
  %cmp14 = icmp ult i32 %total_rx_pkts.1, %budget
  br i1 %cmp14, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge, !prof !71

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then84, %if.then81.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %total_rx_pkts.0332 = phi i32 [ %total_rx_pkts.0344, %if.then81.while.end_crit_edge ], [ %total_rx_pkts.0344, %if.then84 ], [ 0, %if.end.while.end_crit_edge ], [ %total_rx_pkts.1, %cleanup.while.end_crit_edge ], [ %total_rx_pkts.0344, %while.body.while.end_crit_edge ]
  %cleaned_count.0327 = phi i16 [ %cleaned_count.0348, %if.then81.while.end_crit_edge ], [ %cleaned_count.0348, %if.then84 ], [ %sub8, %if.end.while.end_crit_edge ], [ %cleaned_count.1, %cleanup.while.end_crit_edge ], [ %cleaned_count.0348, %while.body.while.end_crit_edge ]
  %xdp_xmit.0322 = phi i32 [ %xdp_xmit.0352, %if.then81.while.end_crit_edge ], [ %xdp_xmit.0352, %if.then84 ], [ 0, %if.end.while.end_crit_edge ], [ %xdp_xmit.2, %cleanup.while.end_crit_edge ], [ %xdp_xmit.0352, %while.body.while.end_crit_edge ]
  %total_rx_bytes.0313 = phi i32 [ %total_rx_bytes.0358, %if.then81.while.end_crit_edge ], [ %total_rx_bytes.0358, %if.then84 ], [ 0, %if.end.while.end_crit_edge ], [ %total_rx_bytes.1, %cleanup.while.end_crit_edge ], [ %total_rx_bytes.0358, %while.body.while.end_crit_edge ]
  %skb.3 = phi ptr [ null, %if.then81.while.end_crit_edge ], [ null, %if.then84 ], [ %10, %if.end.while.end_crit_edge ], [ %skb.2, %cleanup.while.end_crit_edge ], [ %skb.0356, %while.body.while.end_crit_edge ]
  %call121 = call zeroext i1 @ice_alloc_rx_bufs(ptr noundef %rx_ring, i16 noundef zeroext %cleaned_count.0327)
  br i1 %tobool.not, label %while.end.if.end124_crit_edge, label %if.then123

while.end.if.end124_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then123:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @ice_finalize_xdp_rx(ptr noundef %xdp_ring.0, i32 noundef %xdp_xmit.0322) #10
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %while.end.if.end124_crit_edge
  %190 = ptrtoint ptr %skb11 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %skb.3, ptr %skb11, align 16
  %conv126 = zext i32 %total_rx_pkts.0332 to i64
  %conv127 = zext i32 %total_rx_bytes.0313 to i64
  call void @ice_update_rx_ring_stats(ptr noundef %rx_ring, i64 noundef %conv126, i64 noundef %conv127) #10
  %budget.total_rx_pkts.2 = select i1 %call121, i32 %budget, i32 %total_rx_pkts.0332
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #10
  ret i32 %budget.total_rx_pkts.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ice_clean_rx_irq(ptr noundef %ring, ptr noundef %desc) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_rx_irq, i32 0, i32 1), ptr blockaddress(@trace_ice_clean_rx_irq, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !71

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %call42 = tail call i32 @__traceiter_ice_clean_rx_irq(ptr noundef null, ptr noundef %ring, ptr noundef %desc) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !71

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_rx_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_rx_irq, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ice_clean_rx_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ice_clean_rx_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 166, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
declare dso_local void @ice_vc_fdir_irq_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_put_rx_buf(ptr nocapture noundef %rx_ring, ptr noundef %rx_buf, i32 noundef %rx_buf_pgcnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 14
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 8
  %add = add i16 %1, 1
  %count = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 11
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add, i16 %3)
  %cmp = icmp ult i16 %add, %3
  %spec.select = select i1 %cmp, i16 %add, i16 0
  %4 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %spec.select, ptr %next_to_clean, align 8
  %tobool.not = icmp eq ptr %rx_buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pagecnt_bias1.i = getelementptr inbounds %struct.ice_rx_buf, ptr %rx_buf, i32 0, i32 3
  %5 = ptrtoint ptr %pagecnt_bias1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pagecnt_bias1.i, align 4
  %page2.i = getelementptr inbounds %struct.ice_rx_buf, ptr %rx_buf, i32 0, i32 1
  %7 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page2.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %dev_page_is_reusable.exit.i, !prof !77

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.13) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #10, !srcloc !85
  unreachable

dev_page_is_reusable.exit.i:                      ; preds = %if.end
  %11 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  %and.i.i.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %conv.i = zext i16 %6 to i32
  %sub.i = sub i32 %rx_buf_pgcnt, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 2
  %or.cond.i = select i1 %tobool.i.not.i.i, i1 %cmp.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp7.i = icmp eq i16 %6, 1
  %or.cond23.i = select i1 %or.cond.i, i1 %cmp7.i, i1 false
  br i1 %or.cond23.i, label %if.then15.i, label %dev_page_is_reusable.exit.i.ice_can_reuse_rx_page.exit_crit_edge, !prof !86

dev_page_is_reusable.exit.i.ice_can_reuse_rx_page.exit_crit_edge: ; preds = %dev_page_is_reusable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_can_reuse_rx_page.exit

if.then15.i:                                      ; preds = %dev_page_is_reusable.exit.i
  %_refcount.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 65534, ptr elementtype(i32) %_refcount.i) #10, !srcloc !87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@ice_put_rx_buf, %if.then.i)) #10
          to label %page_ref_add.exit [label %if.then.i], !srcloc !75

if.then.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %8, i32 noundef 65534) #10
  br label %page_ref_add.exit

page_ref_add.exit:                                ; preds = %if.then.i, %if.then15.i
  %16 = ptrtoint ptr %pagecnt_bias1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %pagecnt_bias1.i, align 4
  br label %ice_can_reuse_rx_page.exit

ice_can_reuse_rx_page.exit:                       ; preds = %page_ref_add.exit, %dev_page_is_reusable.exit.i.ice_can_reuse_rx_page.exit_crit_edge
  br i1 %or.cond.i, label %if.then8, label %if.else

if.then8:                                         ; preds = %ice_can_reuse_rx_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %next_to_alloc.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 15
  %17 = ptrtoint ptr %next_to_alloc.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %next_to_alloc.i, align 2
  %19 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 7
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %inc.i = add i16 %18, 1
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %23)
  %cmp.i26 = icmp ult i16 %inc.i, %23
  %spec.select.i = select i1 %cmp.i26, i16 %inc.i, i16 0
  %idxprom.i = zext i16 %18 to i32
  %arrayidx.i = getelementptr %struct.ice_rx_buf, ptr %21, i32 %idxprom.i
  %24 = ptrtoint ptr %next_to_alloc.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %spec.select.i, ptr %next_to_alloc.i, align 2
  %25 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_buf, align 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.i, align 4
  %28 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page2.i, align 4
  %page7.i = getelementptr %struct.ice_rx_buf, ptr %21, i32 %idxprom.i, i32 1
  %30 = ptrtoint ptr %page7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %page7.i, align 4
  %page_offset.i = getelementptr inbounds %struct.ice_rx_buf, ptr %rx_buf, i32 0, i32 2
  %31 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_offset.i, align 4
  %page_offset8.i = getelementptr %struct.ice_rx_buf, ptr %21, i32 %idxprom.i, i32 2
  %33 = ptrtoint ptr %page_offset8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %page_offset8.i, align 4
  %34 = ptrtoint ptr %pagecnt_bias1.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pagecnt_bias1.i, align 4
  %pagecnt_bias9.i = getelementptr %struct.ice_rx_buf, ptr %21, i32 %idxprom.i, i32 3
  %36 = ptrtoint ptr %pagecnt_bias9.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %pagecnt_bias9.i, align 4
  br label %if.end11

if.else:                                          ; preds = %ice_can_reuse_rx_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 2
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %39 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_buf, align 4
  %rx_buf_len.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 17
  %41 = ptrtoint ptr %rx_buf_len.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rx_buf_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %42)
  %cmp.i27 = icmp ugt i16 %42, 2048
  %..i = zext i1 %cmp.i27 to i32
  %shl = shl nuw nsw i32 4096, %..i
  tail call void @dma_unmap_page_attrs(ptr noundef %38, i32 noundef %40, i32 noundef %shl, i32 noundef 2, i32 noundef 34) #10
  %43 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %page2.i, align 4
  %45 = ptrtoint ptr %pagecnt_bias1.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %pagecnt_bias1.i, align 4
  %conv10 = zext i16 %46 to i32
  tail call void @__page_frag_cache_drain(ptr noundef %44, i32 noundef %conv10) #10
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %47 = ptrtoint ptr %page2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %page2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_run_xdp(ptr nocapture noundef readonly %rx_ring, ptr noundef %xdp, ptr noundef %xdp_prog, ptr noundef %xdp_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__cant_migrate(ptr noundef nonnull @.str.14, i32 noundef 613) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@ice_run_xdp, %if.then.i.i)) #10
          to label %if.else.i.i [label %if.then.i.i], !srcloc !75

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
  %5 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !88
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
  %14 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  %18 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %27 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  %35 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i9.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %46 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !71

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %50 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !94
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
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !95
  %and.i.i.i3.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !77

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #10, !srcloc !96
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@ice_run_xdp, %l_yes.i.i)) #10
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !75

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
  br i1 %tobool.not.i.i, label %land.lhs.true.i.sw.bb1_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.sw.bb1_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 15
  %69 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %70, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.sw.bb1_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.sw.bb1_crit_edge:      ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @xdp_master_redirect(ptr noundef %xdp) #10
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %71 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %act.0.i, label %sw.default [
    i32 2, label %bpf_prog_run_xdp.exit.cleanup_crit_edge
    i32 3, label %bpf_prog_run_xdp.exit.sw.bb1_crit_edge
    i32 4, label %sw.bb24
    i32 0, label %bpf_prog_run_xdp.exit.out_failure_crit_edge
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb32_crit_edge
  ]

bpf_prog_run_xdp.exit.sw.bb32_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb32

bpf_prog_run_xdp.exit.out_failure_crit_edge:      ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failure

bpf_prog_run_xdp.exit.sw.bb1_crit_edge:           ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

bpf_prog_run_xdp.exit.cleanup_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %bpf_prog_run_xdp.exit.sw.bb1_crit_edge, %netif_is_bond_slave.exit.i.sw.bb1_crit_edge, %land.lhs.true.i.sw.bb1_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ice_xdp_locking_key, ptr blockaddress(@ice_run_xdp, %if.then)) #10
          to label %if.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %tx_lock = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1
  %72 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xdp, align 4
  %data_end = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %74 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data_end, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %73 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i32 %sub.ptr.sub to i16
  %call6 = tail call i32 @ice_xmit_xdp_ring(ptr noundef %73, i16 noundef zeroext %conv, ptr noundef %xdp_ring) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ice_xdp_locking_key, ptr blockaddress(@ice_run_xdp, %if.then18)) #10
          to label %if.end20 [label %if.then18], !srcloc !75

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tx_lock19 = getelementptr inbounds %struct.ice_tx_ring, ptr %xdp_ring, i32 0, i32 25
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock19) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp = icmp eq i32 %call6, 1
  br i1 %cmp, label %if.end20.out_failure_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20.out_failure_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failure

sw.bb24:                                          ; preds = %bpf_prog_run_xdp.exit
  %netdev = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 3
  %76 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %netdev, align 4
  %call25 = tail call i32 @xdp_do_redirect(ptr noundef %77, ptr noundef %xdp, ptr noundef %xdp_prog) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %sw.bb24.cleanup_crit_edge, label %sw.bb24.out_failure_crit_edge

sw.bb24.out_failure_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_failure

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %netdev29 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 3
  %78 = ptrtoint ptr %netdev29 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %netdev29, align 4
  tail call void @bpf_warn_invalid_xdp_action(ptr noundef %79, ptr noundef %xdp_prog, i32 noundef %act.0.i) #10
  br label %out_failure

out_failure:                                      ; preds = %sw.default, %sw.bb24.out_failure_crit_edge, %if.end20.out_failure_crit_edge, %bpf_prog_run_xdp.exit.out_failure_crit_edge
  %act.0.i53 = phi i32 [ %act.0.i, %sw.default ], [ %act.0.i, %bpf_prog_run_xdp.exit.out_failure_crit_edge ], [ 4, %sw.bb24.out_failure_crit_edge ], [ 3, %if.end20.out_failure_crit_edge ]
  %netdev31 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring, i32 0, i32 3
  %80 = ptrtoint ptr %netdev31 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %netdev31, align 4
  tail call fastcc void @trace_xdp_exception(ptr noundef %81, ptr noundef %xdp_prog, i32 noundef %act.0.i53)
  br label %sw.bb32

sw.bb32:                                          ; preds = %out_failure, %bpf_prog_run_xdp.exit.sw.bb32_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.bb32, %sw.bb24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %bpf_prog_run_xdp.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb32 ], [ 0, %bpf_prog_run_xdp.exit.cleanup_crit_edge ], [ %call6, %if.end20.cleanup_crit_edge ], [ 4, %sw.bb24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_process_skb_fields(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ice_clean_rx_irq_indicate(ptr noundef %ring, ptr noundef %desc, ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_rx_irq_indicate, i32 0, i32 1), ptr blockaddress(@trace_ice_clean_rx_irq_indicate, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !71

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  %call42 = tail call i32 @__traceiter_ice_clean_rx_irq_indicate(ptr noundef null, ptr noundef %ring, ptr noundef %desc, ptr noundef %skb) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !71

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_rx_irq_indicate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_rx_irq_indicate, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ice_clean_rx_irq_indicate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ice_clean_rx_irq_indicate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
declare dso_local void @ice_receive_skb(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_finalize_xdp_rx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_update_rx_ring_stats(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_napi_poll(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -16
  %tx = getelementptr i8, ptr %napi, i32 368
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %tx_ring.0139 = load ptr, ptr %tx, align 128
  %tobool.not140 = icmp eq ptr %tx_ring.0139, null
  br i1 %tobool.not140, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %entry.for.body_crit_edge
  %tx_ring.0142 = phi ptr [ %tx_ring.0, %if.end7.for.body_crit_edge ], [ %tx_ring.0139, %entry.for.body_crit_edge ]
  %clean_complete.0.off0141 = phi i1 [ %spec.select, %if.end7.for.body_crit_edge ], [ true, %entry.for.body_crit_edge ]
  %xsk_pool = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.0142, i32 0, i32 9
  %1 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xsk_pool, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @ice_clean_tx_irq_zc(ptr noundef nonnull %tx_ring.0142, i32 noundef %budget) #10
  br label %if.end7

if.else:                                          ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.0142, i32 0, i32 27
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags.i, align 4
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not = icmp eq i8 %5, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.i:                                         ; preds = %if.else
  %vsi1.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.0142, i32 0, i32 7
  %6 = ptrtoint ptr %vsi1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vsi1.i, align 4
  %next_to_clean.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.0142, i32 0, i32 11
  %8 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %next_to_clean.i, align 2
  %netdev.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.0142, i32 0, i32 6
  %10 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev.i.i, align 8
  %q_index.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.0142, i32 0, i32 17
  %12 = ptrtoint ptr %q_index.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %q_index.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i.i, align 128
  %limit.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %conv.i.i, i32 15, i32 4
  tail call void @llvm.prefetch.p0(ptr %limit.i.i, i32 1, i32 3, i32 1) #10
  %tx_buf3.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.0142, i32 0, i32 4
  %16 = ptrtoint ptr %tx_buf3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_buf3.i, align 16
  %idxprom.i = sext i16 %9 to i32
  %arrayidx.i = getelementptr %struct.ice_tx_buf, ptr %17, i32 %idxprom.i
  %desc.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.0142, i32 0, i32 1
  %18 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc.i, align 4
  %arrayidx5.i = getelementptr %struct.ice_tx_desc, ptr %19, i32 %idxprom.i
  %count.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.0142, i32 0, i32 16
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %count.i, align 4
  %sub.i = sub i16 %9, %21
  %state.i = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 9
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %state.i) #10, !srcloc !79
  %dev.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.0142, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %if.end.i
  %total_bytes.0.i = phi i32 [ 0, %if.end.i ], [ %add.i, %cleanup.i.do.body.i_crit_edge ]
  %total_pkts.0.i = phi i32 [ 0, %if.end.i ], [ %add19.i, %cleanup.i.do.body.i_crit_edge ]
  %budget.0.i = phi i32 [ 256, %if.end.i ], [ %dec.i, %cleanup.i.do.body.i_crit_edge ]
  %i.0.i = phi i16 [ %sub.i, %if.end.i ], [ %i.3.i, %cleanup.i.do.body.i_crit_edge ]
  %tx_desc.0.i = phi ptr [ %arrayidx5.i, %if.end.i ], [ %tx_desc.3.i, %cleanup.i.do.body.i_crit_edge ]
  %tx_buf.0.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %tx_buf.3.i, %cleanup.i.do.body.i_crit_edge ]
  %22 = ptrtoint ptr %tx_buf.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_buf.0.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %do.body.i.do.end75.i_crit_edge, label %if.end9.i

do.body.i.do.end75.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75.i

if.end9.i:                                        ; preds = %do.body.i
  %24 = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.0.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 21
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call fastcc void @trace_ice_clean_tx_irq(ptr noundef nonnull %tx_ring.0142, ptr noundef %tx_desc.0.i, ptr noundef %tx_buf.0.i) #10
  %cmd_type_offset_bsz.i = getelementptr inbounds %struct.ice_tx_desc, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %cmd_type_offset_bsz.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %cmd_type_offset_bsz.i, align 8
  %and.i = and i64 %28, 1080863910568919040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool14.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool14.not.i, label %if.end9.i.do.end75.i_crit_edge, label %if.end16.i

if.end9.i.do.end75.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75.i

if.end16.i:                                       ; preds = %if.end9.i
  %29 = ptrtoint ptr %tx_buf.0.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %tx_buf.0.i, align 4
  %bytecount.i = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.0.i, i32 0, i32 2
  %30 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bytecount.i, align 4
  %add.i = add i32 %31, %total_bytes.0.i
  %gso_segs.i = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.0.i, i32 0, i32 3
  %32 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %gso_segs.i, align 4
  %conv18.i = zext i16 %33 to i32
  %add19.i = add i32 %total_pkts.0.i, %conv18.i
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %24, align 4
  tail call void @napi_consume_skb(ptr noundef %35, i32 noundef %budget) #10
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 8
  %dma.i = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.0.i, i32 0, i32 6
  %38 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma.i, align 4
  %len.i = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.0.i, i32 0, i32 5
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef 1, i32 noundef 0) #10
  %42 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %24, align 4
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %len.i, align 4
  %cmp.not264.i = icmp eq ptr %tx_desc.0.i, %23
  br i1 %cmp.not264.i, label %if.end16.i.while.end.i_crit_edge, label %if.end16.i.while.body.i_crit_edge

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  br label %while.body.i

if.end16.i.while.end.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %if.end44.i.while.body.i_crit_edge, %if.end16.i.while.body.i_crit_edge
  %tx_buf.1267.i = phi ptr [ %tx_buf.2.i, %if.end44.i.while.body.i_crit_edge ], [ %tx_buf.0.i, %if.end16.i.while.body.i_crit_edge ]
  %tx_desc.1266.i = phi ptr [ %tx_desc.2.i, %if.end44.i.while.body.i_crit_edge ], [ %tx_desc.0.i, %if.end16.i.while.body.i_crit_edge ]
  %i.1265.i = phi i16 [ %i.2.i, %if.end44.i.while.body.i_crit_edge ], [ %i.0.i, %if.end16.i.while.body.i_crit_edge ]
  tail call fastcc void @trace_ice_clean_tx_irq_unmap(ptr noundef nonnull %tx_ring.0142, ptr noundef %tx_desc.1266.i, ptr noundef %tx_buf.1267.i) #10
  %incdec.ptr.i = getelementptr %struct.ice_tx_buf, ptr %tx_buf.1267.i, i32 1
  %incdec.ptr22.i = getelementptr %struct.ice_tx_desc, ptr %tx_desc.1266.i, i32 1
  %inc.i = add i16 %i.1265.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc.i)
  %tobool23.not.i = icmp eq i16 %inc.i, 0
  br i1 %tobool23.not.i, label %if.then27.i, label %while.body.i.if.end36.i_crit_edge, !prof !77

while.body.i.if.end36.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then27.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %count.i, align 4
  %sub31.i = sub i16 0, %45
  %46 = ptrtoint ptr %tx_buf3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_buf3.i, align 16
  %48 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %desc.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then27.i, %while.body.i.if.end36.i_crit_edge
  %i.2.i = phi i16 [ %sub31.i, %if.then27.i ], [ %inc.i, %while.body.i.if.end36.i_crit_edge ]
  %tx_desc.2.i = phi ptr [ %49, %if.then27.i ], [ %incdec.ptr22.i, %while.body.i.if.end36.i_crit_edge ]
  %tx_buf.2.i = phi ptr [ %47, %if.then27.i ], [ %incdec.ptr.i, %while.body.i.if.end36.i_crit_edge ]
  %len37.i = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.2.i, i32 0, i32 5
  %50 = ptrtoint ptr %len37.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool38.not.i = icmp eq i32 %51, 0
  br i1 %tobool38.not.i, label %if.end36.i.if.end44.i_crit_edge, label %if.then39.i

if.end36.i.if.end44.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 8
  %dma41.i = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.2.i, i32 0, i32 6
  %54 = ptrtoint ptr %dma41.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma41.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %53, i32 noundef %55, i32 noundef %51, i32 noundef 1, i32 noundef 0) #10
  %56 = ptrtoint ptr %len37.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %len37.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then39.i, %if.end36.i.if.end44.i_crit_edge
  %cmp.not.i = icmp eq ptr %tx_desc.2.i, %23
  br i1 %cmp.not.i, label %if.end44.i.while.end.i_crit_edge, label %if.end44.i.while.body.i_crit_edge

if.end44.i.while.body.i_crit_edge:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end44.i.while.end.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end44.i.while.end.i_crit_edge, %if.end16.i.while.end.i_crit_edge
  %i.1.lcssa.i = phi i16 [ %i.0.i, %if.end16.i.while.end.i_crit_edge ], [ %i.2.i, %if.end44.i.while.end.i_crit_edge ]
  %tx_desc.1.lcssa.i = phi ptr [ %tx_desc.0.i, %if.end16.i.while.end.i_crit_edge ], [ %23, %if.end44.i.while.end.i_crit_edge ]
  %tx_buf.1.lcssa.i = phi ptr [ %tx_buf.0.i, %if.end16.i.while.end.i_crit_edge ], [ %tx_buf.2.i, %if.end44.i.while.end.i_crit_edge ]
  tail call fastcc void @trace_ice_clean_tx_irq_unmap_eop(ptr noundef nonnull %tx_ring.0142, ptr noundef %tx_desc.1.lcssa.i, ptr noundef %tx_buf.1.lcssa.i) #10
  %incdec.ptr45.i = getelementptr %struct.ice_tx_buf, ptr %tx_buf.1.lcssa.i, i32 1
  %incdec.ptr46.i = getelementptr %struct.ice_tx_desc, ptr %tx_desc.1.lcssa.i, i32 1
  %inc47.i = add i16 %i.1.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc47.i)
  %tobool48.not.i = icmp eq i16 %inc47.i, 0
  br i1 %tobool48.not.i, label %if.then57.i, label %while.end.i.cleanup.i_crit_edge, !prof !77

while.end.i.cleanup.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then57.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %count.i, align 4
  %sub61.i = sub i16 0, %58
  %59 = ptrtoint ptr %tx_buf3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_buf3.i, align 16
  %61 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %desc.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then57.i, %while.end.i.cleanup.i_crit_edge
  %i.3.i = phi i16 [ %sub61.i, %if.then57.i ], [ %inc47.i, %while.end.i.cleanup.i_crit_edge ]
  %tx_desc.3.i = phi ptr [ %62, %if.then57.i ], [ %incdec.ptr46.i, %while.end.i.cleanup.i_crit_edge ]
  %tx_buf.3.i = phi ptr [ %60, %if.then57.i ], [ %incdec.ptr45.i, %while.end.i.cleanup.i_crit_edge ]
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %tx_desc.3.i) #10, !srcloc !79
  %dec.i = add nsw i32 %budget.0.i, -1
  %tobool68.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool68.not.i, label %cleanup.i.do.end75.i_crit_edge, label %cleanup.i.do.body.i_crit_edge, !prof !100

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

cleanup.i.do.end75.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75.i

do.end75.i:                                       ; preds = %cleanup.i.do.end75.i_crit_edge, %if.end9.i.do.end75.i_crit_edge, %do.body.i.do.end75.i_crit_edge
  %i.4263.i = phi i16 [ %i.3.i, %cleanup.i.do.end75.i_crit_edge ], [ %i.0.i, %do.body.i.do.end75.i_crit_edge ], [ %i.0.i, %if.end9.i.do.end75.i_crit_edge ]
  %budget.1262.i = phi i32 [ 0, %cleanup.i.do.end75.i_crit_edge ], [ %budget.0.i, %do.body.i.do.end75.i_crit_edge ], [ %budget.0.i, %if.end9.i.do.end75.i_crit_edge ]
  %total_pkts.1261.i = phi i32 [ %add19.i, %cleanup.i.do.end75.i_crit_edge ], [ %total_pkts.0.i, %do.body.i.do.end75.i_crit_edge ], [ %total_pkts.0.i, %if.end9.i.do.end75.i_crit_edge ]
  %total_bytes.1260.i = phi i32 [ %add.i, %cleanup.i.do.end75.i_crit_edge ], [ %total_bytes.0.i, %do.body.i.do.end75.i_crit_edge ], [ %total_bytes.0.i, %if.end9.i.do.end75.i_crit_edge ]
  %63 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %count.i, align 4
  %add79.i = add i16 %64, %i.4263.i
  %65 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %add79.i, ptr %next_to_clean.i, align 2
  %conv82.i = zext i32 %total_pkts.1261.i to i64
  %conv83.i = zext i32 %total_bytes.1260.i to i64
  tail call void @ice_update_tx_ring_stats(ptr noundef nonnull %tx_ring.0142, i64 noundef %conv82.i, i64 noundef %conv83.i) #10
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %flags.i, align 4
  %68 = and i8 %67, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.i230.not.i = icmp eq i8 %68, 0
  br i1 %tobool.i230.not.i, label %if.end91.i, label %do.end75.i.ice_clean_tx_irq.exit_crit_edge

do.end75.i.ice_clean_tx_irq.exit_crit_edge:       ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_clean_tx_irq.exit

if.end91.i:                                       ; preds = %do.end75.i
  %69 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev.i.i, align 8
  %71 = ptrtoint ptr %q_index.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %q_index.i.i, align 2
  %conv.i233.i = zext i16 %72 to i32
  %_tx.i.i234.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 103
  %73 = ptrtoint ptr %_tx.i.i234.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %_tx.i.i234.i, align 128
  %arrayidx.i.i235.i = getelementptr %struct.netdev_queue, ptr %74, i32 %conv.i233.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_bytes.1260.i)
  %tobool.not.i.i = icmp eq i32 %total_bytes.1260.i, 0
  br i1 %tobool.not.i.i, label %if.end91.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.end.i.i, !prof !77

if.end91.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_tx_completed_queue.exit.i

if.end.i.i:                                       ; preds = %if.end91.i
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %74, i32 %conv.i233.i, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %total_bytes.1260.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  %adj_limit.i.i.i = getelementptr %struct.netdev_queue, ptr %74, i32 %conv.i233.i, i32 15, i32 1
  %75 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %77 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %76, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.end14.i.i, !prof !77

if.end.i.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_tx_completed_queue.exit.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %state.i.i = getelementptr %struct.netdev_queue, ptr %74, i32 %conv.i233.i, i32 13
  %call15.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge, label %if.then17.i.i

if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_tx_completed_queue.exit.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_schedule_queue(ptr noundef %arrayidx.i.i235.i) #10
  br label %netdev_tx_completed_queue.exit.i

netdev_tx_completed_queue.exit.i:                 ; preds = %if.then17.i.i, %if.end14.i.i.netdev_tx_completed_queue.exit.i_crit_edge, %if.end.i.i.netdev_tx_completed_queue.exit.i_crit_edge, %if.end91.i.netdev_tx_completed_queue.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_pkts.1261.i)
  %tobool93.not.i = icmp eq i32 %total_pkts.1261.i, 0
  br i1 %tobool93.not.i, label %netdev_tx_completed_queue.exit.i.ice_clean_tx_irq.exit_crit_edge, label %land.lhs.true.i

netdev_tx_completed_queue.exit.i.ice_clean_tx_irq.exit_crit_edge: ; preds = %netdev_tx_completed_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_clean_tx_irq.exit

land.lhs.true.i:                                  ; preds = %netdev_tx_completed_queue.exit.i
  %79 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %netdev.i.i, align 8
  %state.i236.i = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %state.i236.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %state.i236.i, align 4
  %83 = and i32 %82, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i237.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i237.i, label %land.rhs.i, label %land.lhs.true.i.ice_clean_tx_irq.exit_crit_edge

land.lhs.true.i.ice_clean_tx_irq.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_clean_tx_irq.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %84 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %next_to_clean.i, align 2
  %next_to_use.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.0142, i32 0, i32 10
  %86 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %next_to_use.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %85, i16 %87)
  %cmp99.i = icmp ugt i16 %85, %87
  br i1 %cmp99.i, label %land.rhs.i.cond.end.i_crit_edge, label %cond.false.i

land.rhs.i.cond.end.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %count.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.rhs.i.cond.end.i_crit_edge
  %cond.i = phi i16 [ %89, %cond.false.i ], [ 0, %land.rhs.i.cond.end.i_crit_edge ]
  %90 = xor i16 %87, -1
  %add105.i = add i16 %85, %90
  %sub109.i = add i16 %add105.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %sub109.i)
  %cmp112.i = icmp ugt i16 %sub109.i, 45
  br i1 %cmp112.i, label %do.end124.i, label %cond.end.i.ice_clean_tx_irq.exit_crit_edge, !prof !77

cond.end.i.ice_clean_tx_irq.exit_crit_edge:       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_clean_tx_irq.exit

do.end124.i:                                      ; preds = %cond.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  %91 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %netdev.i.i, align 8
  %93 = ptrtoint ptr %q_index.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %q_index.i.i, align 2
  %conv.i240.i = zext i16 %94 to i32
  %_tx.i.i241.i = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 103
  %95 = ptrtoint ptr %_tx.i.i241.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %_tx.i.i241.i, align 128
  %arrayidx.i.i242.i = getelementptr %struct.netdev_queue, ptr %96, i32 %conv.i240.i
  %state.i243.i = getelementptr %struct.netdev_queue, ptr %96, i32 %conv.i240.i, i32 13
  %97 = ptrtoint ptr %state.i243.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %state.i243.i, align 4
  %and1.i.i.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i244.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i244.not.i, label %do.end124.i.ice_clean_tx_irq.exit_crit_edge, label %land.lhs.true130.i

do.end124.i.ice_clean_tx_irq.exit_crit_edge:      ; preds = %do.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_clean_tx_irq.exit

land.lhs.true130.i:                               ; preds = %do.end124.i
  %99 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool133.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool133.not.i, label %if.then134.i, label %land.lhs.true130.i.ice_clean_tx_irq.exit_crit_edge

land.lhs.true130.i.ice_clean_tx_irq.exit_crit_edge: ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_clean_tx_irq.exit

if.then134.i:                                     ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i242.i) #10
  %tx_stats.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.0142, i32 0, i32 20
  %101 = ptrtoint ptr %tx_stats.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %tx_stats.i, align 8
  %inc136.i = add i64 %102, 1
  store i64 %inc136.i, ptr %tx_stats.i, align 8
  br label %ice_clean_tx_irq.exit

ice_clean_tx_irq.exit:                            ; preds = %if.then134.i, %land.lhs.true130.i.ice_clean_tx_irq.exit_crit_edge, %do.end124.i.ice_clean_tx_irq.exit_crit_edge, %cond.end.i.ice_clean_tx_irq.exit_crit_edge, %land.lhs.true.i.ice_clean_tx_irq.exit_crit_edge, %netdev_tx_completed_queue.exit.i.ice_clean_tx_irq.exit_crit_edge, %do.end75.i.ice_clean_tx_irq.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.1262.i)
  %retval.0.i = icmp ne i32 %budget.1262.i, 0
  br label %if.end7

if.end7:                                          ; preds = %ice_clean_tx_irq.exit, %if.else.if.end7_crit_edge, %if.then
  %wd.0.shrunk = phi i1 [ %call, %if.then ], [ %retval.0.i, %ice_clean_tx_irq.exit ], [ true, %if.else.if.end7_crit_edge ]
  %spec.select = select i1 %wd.0.shrunk, i1 %clean_complete.0.off0141, i1 false
  %103 = ptrtoint ptr %tx_ring.0142 to i32
  call void @__asan_load4_noabort(i32 %103)
  %tx_ring.0 = load ptr, ptr %tx_ring.0142, align 128
  %tobool.not = icmp eq ptr %tx_ring.0, null
  br i1 %tobool.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %entry.for.end_crit_edge
  %clean_complete.0.off0.lcssa = phi i1 [ true, %entry.for.end_crit_edge ], [ %spec.select, %if.end7.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %budget)
  %cmp = icmp slt i32 %budget, 1
  br i1 %cmp, label %for.end.cleanup_crit_edge, label %if.end14, !prof !77

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %num_ring_rx = getelementptr i8, ptr %napi, i32 -8
  %104 = ptrtoint ptr %num_ring_rx to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %num_ring_rx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %105)
  %cmp15 = icmp ugt i8 %105, 1
  br i1 %cmp15, label %if.then23, label %if.end14.if.end30_crit_edge, !prof !77

if.end14.if.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %105 to i32
  %div138 = udiv i32 %budget, %conv
  %106 = tail call i32 @llvm.umax.i32(i32 %div138, i32 1)
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.end14.if.end30_crit_edge
  %budget_per_ring.0 = phi i32 [ %106, %if.then23 ], [ %budget, %if.end14.if.end30_crit_edge ]
  %rx = getelementptr i8, ptr %napi, i32 224
  %107 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %107)
  %rx_ring.0143 = load ptr, ptr %rx, align 16
  %tobool32.not144 = icmp eq ptr %rx_ring.0143, null
  br i1 %tobool32.not144, label %if.end30.for.end48_crit_edge, label %if.end30.for.body33_crit_edge

if.end30.for.body33_crit_edge:                    ; preds = %if.end30
  br label %for.body33

if.end30.for.end48_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48

for.body33:                                       ; preds = %cond.end40.for.body33_crit_edge, %if.end30.for.body33_crit_edge
  %rx_ring.0147 = phi ptr [ %rx_ring.0, %cond.end40.for.body33_crit_edge ], [ %rx_ring.0143, %if.end30.for.body33_crit_edge ]
  %work_done.0146 = phi i32 [ %add, %cond.end40.for.body33_crit_edge ], [ 0, %if.end30.for.body33_crit_edge ]
  %clean_complete.2.off0145 = phi i1 [ %spec.select111, %cond.end40.for.body33_crit_edge ], [ %clean_complete.0.off0.lcssa, %if.end30.for.body33_crit_edge ]
  %xsk_pool34 = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring.0147, i32 0, i32 25
  %108 = ptrtoint ptr %xsk_pool34 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %xsk_pool34, align 4
  %tobool35.not = icmp eq ptr %109, null
  br i1 %tobool35.not, label %cond.false38, label %cond.true36

cond.true36:                                      ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = tail call i32 @ice_clean_rx_irq_zc(ptr noundef nonnull %rx_ring.0147, i32 noundef %budget_per_ring.0) #10
  br label %cond.end40

cond.false38:                                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 @ice_clean_rx_irq(ptr noundef nonnull %rx_ring.0147, i32 noundef %budget_per_ring.0)
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false38, %cond.true36
  %cond41 = phi i32 [ %call37, %cond.true36 ], [ %call39, %cond.false38 ]
  %add = add i32 %cond41, %work_done.0146
  call void @__sanitizer_cov_trace_cmp4(i32 %cond41, i32 %budget_per_ring.0)
  %cmp42.not = icmp slt i32 %cond41, %budget_per_ring.0
  %spec.select111 = select i1 %cmp42.not, i1 %clean_complete.2.off0145, i1 false
  %110 = ptrtoint ptr %rx_ring.0147 to i32
  call void @__asan_load4_noabort(i32 %110)
  %rx_ring.0 = load ptr, ptr %rx_ring.0147, align 16
  %tobool32.not = icmp eq ptr %rx_ring.0, null
  br i1 %tobool32.not, label %cond.end40.for.end48_crit_edge, label %cond.end40.for.body33_crit_edge

cond.end40.for.body33_crit_edge:                  ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33

cond.end40.for.end48_crit_edge:                   ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48

for.end48:                                        ; preds = %cond.end40.for.end48_crit_edge, %if.end30.for.end48_crit_edge
  %clean_complete.2.off0.lcssa = phi i1 [ %clean_complete.0.off0.lcssa, %if.end30.for.end48_crit_edge ], [ %spec.select111, %cond.end40.for.end48_crit_edge ]
  %work_done.0.lcssa = phi i32 [ 0, %if.end30.for.end48_crit_edge ], [ %add, %cond.end40.for.end48_crit_edge ]
  br i1 %clean_complete.2.off0.lcssa, label %if.end51, label %if.then50

if.then50:                                        ; preds = %for.end48
  %wb_on_itr.i = getelementptr i8, ptr %napi, i32 -6
  %111 = ptrtoint ptr %wb_on_itr.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load.i = load i8, ptr %wb_on_itr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i112 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i112, label %do.body.i114, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i114:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %add.ptr, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !103
  tail call void @arm_heavy_mb() #10
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %back.i, align 8
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %115, i32 0, i32 58
  %116 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw.i, align 8
  %reg_idx.i = getelementptr i8, ptr %napi, i32 -10
  %118 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %reg_idx.i, align 2
  %conv.i = zext i16 %119 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i113 = add nuw nsw i32 %mul.i, 1441792
  %add.ptr.i = getelementptr i8, ptr %117, i32 %add.i113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 402653376) #10, !srcloc !74
  %120 = ptrtoint ptr %wb_on_itr.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load3.i = load i8, ptr %wb_on_itr.i, align 2
  %bf.set.i = or i8 %bf.load3.i, -128
  store i8 %bf.set.i, ptr %wb_on_itr.i, align 2
  br label %cleanup

if.end51:                                         ; preds = %for.end48
  %call52 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0.lcssa) #10
  br i1 %call52, label %if.then59, label %if.else60, !prof !71

if.then59:                                        ; preds = %if.end51
  %itr_mode.i = getelementptr i8, ptr %napi, i32 506
  %121 = ptrtoint ptr %itr_mode.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %bf.load.i116 = load i16, ptr %itr_mode.i, align 2
  %bf.clear.i = and i16 %bf.load.i116, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear.i)
  %cmp.not.i117 = icmp eq i16 %bf.clear.i, 0
  br i1 %cmp.not.i117, label %if.then59.if.end.i122_crit_edge, label %if.then.i118

if.then59.if.end.i122_crit_edge:                  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i122

if.then.i118:                                     ; preds = %if.then59
  %122 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %122)
  %tx_ring.046.i.i = load ptr, ptr %tx, align 8
  %tobool1.not47.i.i = icmp eq ptr %tx_ring.046.i.i, null
  br i1 %tobool1.not47.i.i, label %if.then.i118.if.end.i.i121_crit_edge, label %if.then.i118.for.body.i.i_crit_edge

if.then.i118.for.body.i.i_crit_edge:              ; preds = %if.then.i118
  br label %for.body.i.i

if.then.i118.if.end.i.i121_crit_edge:             ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i121

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i118.for.body.i.i_crit_edge
  %tx_ring.050.i.i = phi ptr [ %tx_ring.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %tx_ring.046.i.i, %if.then.i118.for.body.i.i_crit_edge ]
  %bytes.049.i.i = phi i64 [ %add4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i118.for.body.i.i_crit_edge ]
  %packets.048.i.i = phi i64 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i118.for.body.i.i_crit_edge ]
  %stats.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.050.i.i, i32 0, i32 18
  %123 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %stats.i.i, align 8
  %add.i.i = add i64 %124, %packets.048.i.i
  %bytes3.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring.050.i.i, i32 0, i32 18, i32 1
  %125 = ptrtoint ptr %bytes3.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %bytes3.i.i, align 8
  %add4.i.i = add i64 %126, %bytes.049.i.i
  %127 = ptrtoint ptr %tx_ring.050.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %tx_ring.0.i.i = load ptr, ptr %tx_ring.050.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %tx_ring.0.i.i, null
  br i1 %tobool1.not.i.i, label %if.end.loopexit.loopexit.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end.loopexit.loopexit.i.i:                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %extract.t55.i.i = trunc i64 %add4.i.i to i32
  %extract.t54.i.i = trunc i64 %add.i.i to i32
  br label %if.end.i.i121

if.end.i.i121:                                    ; preds = %if.end.loopexit.loopexit.i.i, %if.then.i118.if.end.i.i121_crit_edge
  %packets.2.off0.i.i = phi i32 [ 0, %if.then.i118.if.end.i.i121_crit_edge ], [ %extract.t54.i.i, %if.end.loopexit.loopexit.i.i ]
  %bytes.2.off0.i.i = phi i32 [ 0, %if.then.i118.if.end.i.i121_crit_edge ], [ %extract.t55.i.i, %if.end.loopexit.loopexit.i.i ]
  %total_events.i.i = getelementptr i8, ptr %napi, i32 612
  %128 = ptrtoint ptr %total_events.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %total_events.i.i, align 4
  %call.i.i.i = tail call i64 @ktime_get() #10
  %dim_sample.sroa.8.16.insert.ext.i = zext i16 %129 to i64
  %dim_sample.sroa.8.16.insert.shift.i = shl nuw i64 %dim_sample.sroa.8.16.insert.ext.i, 48
  %dim_sample.sroa.8.16.insert.insert.i = or i64 %dim_sample.sroa.8.16.insert.shift.i, 281470681743360
  %start_sample.i.i = getelementptr i8, ptr %napi, i32 400
  %130 = ptrtoint ptr %start_sample.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %start_sample.i.i, align 8
  %sub.i.i.i119 = sub i64 %call.i.i.i, %131
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i.i119)
  %cmp8.i.i.i.i.i = icmp slt i64 %sub.i.i.i119, 0
  %132 = tail call i64 @llvm.abs.i64(i64 %sub.i.i.i119, i1 false) #10
  %133 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %132) #15, !srcloc !104
  %134 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %132, i64 %133, i32 0) #15, !srcloc !105
  %asmresult10.i.i.i.i.i.i = extractvalue { i64, i32 } %134, 0
  %div1811.i.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i.i, 18
  %sub210.i.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i.i
  %cond213.i.i.i.i.i = select i1 %cmp8.i.i.i.i.i, i64 %sub210.i.i.i.i.i, i64 %div1811.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 999, i64 %cond213.i.i.i.i.i)
  %cmp.i.i120 = icmp sgt i64 %cond213.i.i.i.i.i, 999
  br i1 %cmp.i.i120, label %if.then18.i.i, label %if.end.i.i121.__ice_update_sample.exit.i_crit_edge

if.end.i.i121.__ice_update_sample.exit.i_crit_edge: ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ice_update_sample.exit.i

if.then18.i.i:                                    ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #12
  %dim.i.i = getelementptr i8, ptr %napi, i32 376
  %135 = ptrtoint ptr %dim.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %dim.i.i, align 8
  br label %__ice_update_sample.exit.i

__ice_update_sample.exit.i:                       ; preds = %if.then18.i.i, %if.end.i.i121.__ice_update_sample.exit.i_crit_edge
  %dim.i = getelementptr i8, ptr %napi, i32 376
  %.fca.0.insert16.i = insertvalue [3 x i64] poison, i64 %call.i.i.i, 0
  %dim_sample.sroa.5.sroa.5.0.insert.ext.i = zext i32 %bytes.2.off0.i.i to i64
  %dim_sample.sroa.5.sroa.0.0.insert.ext.i = zext i32 %packets.2.off0.i.i to i64
  %dim_sample.sroa.5.sroa.0.0.insert.shift.i = shl nuw i64 %dim_sample.sroa.5.sroa.0.0.insert.ext.i, 32
  %dim_sample.sroa.5.sroa.0.0.insert.insert.i = or i64 %dim_sample.sroa.5.sroa.0.0.insert.shift.i, %dim_sample.sroa.5.sroa.5.0.insert.ext.i
  %.fca.1.insert19.i = insertvalue [3 x i64] %.fca.0.insert16.i, i64 %dim_sample.sroa.5.sroa.0.0.insert.insert.i, 1
  %.fca.2.insert22.i = insertvalue [3 x i64] %.fca.1.insert19.i, i64 %dim_sample.sroa.8.16.insert.insert.i, 2
  tail call void @net_dim(ptr noundef %dim.i, [3 x i64] %.fca.2.insert22.i) #10
  br label %if.end.i122

if.end.i122:                                      ; preds = %__ice_update_sample.exit.i, %if.then59.if.end.i122_crit_edge
  %itr_mode4.i = getelementptr i8, ptr %napi, i32 362
  %136 = ptrtoint ptr %itr_mode4.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %bf.load5.i = load i16, ptr %itr_mode4.i, align 2
  %bf.clear6.i = and i16 %bf.load5.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear6.i)
  %cmp8.not.i = icmp eq i16 %bf.clear6.i, 0
  br i1 %cmp8.not.i, label %if.end.i122.ice_net_dim.exit_crit_edge, label %if.then10.i

if.end.i122.ice_net_dim.exit_crit_edge:           ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_net_dim.exit

if.then10.i:                                      ; preds = %if.end.i122
  %137 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %137)
  %tx_ring.046.i30.i = load ptr, ptr %rx, align 8
  %tobool1.not47.i31.i = icmp eq ptr %tx_ring.046.i30.i, null
  br i1 %tobool1.not47.i31.i, label %if.then10.i.if.end.i48.i_crit_edge, label %if.then10.i.for.body7.i.i_crit_edge

if.then10.i.for.body7.i.i_crit_edge:              ; preds = %if.then10.i
  br label %for.body7.i.i

if.then10.i.if.end.i48.i_crit_edge:               ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i48.i

for.body7.i.i:                                    ; preds = %for.body7.i.i.for.body7.i.i_crit_edge, %if.then10.i.for.body7.i.i_crit_edge
  %rx_ring.044.i.i = phi ptr [ %rx_ring.0.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ], [ %tx_ring.046.i30.i, %if.then10.i.for.body7.i.i_crit_edge ]
  %bytes.143.i.i = phi i64 [ %add13.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ], [ 0, %if.then10.i.for.body7.i.i_crit_edge ]
  %packets.142.i.i = phi i64 [ %add10.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ], [ 0, %if.then10.i.for.body7.i.i_crit_edge ]
  %stats8.i.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring.044.i.i, i32 0, i32 19
  %138 = ptrtoint ptr %stats8.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %stats8.i.i, align 8
  %add10.i.i = add i64 %139, %packets.142.i.i
  %bytes12.i.i = getelementptr inbounds %struct.ice_rx_ring, ptr %rx_ring.044.i.i, i32 0, i32 19, i32 1
  %140 = ptrtoint ptr %bytes12.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %bytes12.i.i, align 8
  %add13.i.i = add i64 %141, %bytes.143.i.i
  %142 = ptrtoint ptr %rx_ring.044.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %rx_ring.0.i.i = load ptr, ptr %rx_ring.044.i.i, align 8
  %tobool6.not.i.i = icmp eq ptr %rx_ring.0.i.i, null
  br i1 %tobool6.not.i.i, label %if.end.loopexit39.loopexit.i.i, label %for.body7.i.i.for.body7.i.i_crit_edge

for.body7.i.i.for.body7.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i.i

if.end.loopexit39.loopexit.i.i:                   ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %extract.t53.i.i = trunc i64 %add13.i.i to i32
  %extract.t.i.i = trunc i64 %add10.i.i to i32
  br label %if.end.i48.i

if.end.i48.i:                                     ; preds = %if.end.loopexit39.loopexit.i.i, %if.then10.i.if.end.i48.i_crit_edge
  %packets.2.off0.i32.i = phi i32 [ 0, %if.then10.i.if.end.i48.i_crit_edge ], [ %extract.t.i.i, %if.end.loopexit39.loopexit.i.i ]
  %bytes.2.off0.i33.i = phi i32 [ 0, %if.then10.i.if.end.i48.i_crit_edge ], [ %extract.t53.i.i, %if.end.loopexit39.loopexit.i.i ]
  %total_events.i34.i = getelementptr i8, ptr %napi, i32 612
  %143 = ptrtoint ptr %total_events.i34.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %total_events.i34.i, align 4
  %call.i.i35.i = tail call i64 @ktime_get() #10
  %dim_sample11.sroa.8.16.insert.ext.i = zext i16 %144 to i64
  %dim_sample11.sroa.8.16.insert.shift.i = shl nuw i64 %dim_sample11.sroa.8.16.insert.ext.i, 48
  %dim_sample11.sroa.8.16.insert.insert.i = or i64 %dim_sample11.sroa.8.16.insert.shift.i, 281470681743360
  %start_sample.i40.i = getelementptr i8, ptr %napi, i32 256
  %145 = ptrtoint ptr %start_sample.i40.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %start_sample.i40.i, align 8
  %sub.i.i41.i = sub i64 %call.i.i35.i, %146
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i41.i)
  %cmp8.i.i.i.i42.i = icmp slt i64 %sub.i.i41.i, 0
  %147 = tail call i64 @llvm.abs.i64(i64 %sub.i.i41.i, i1 false) #10
  %148 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %147) #15, !srcloc !104
  %149 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %147, i64 %148, i32 0) #15, !srcloc !105
  %asmresult10.i.i.i.i.i43.i = extractvalue { i64, i32 } %149, 0
  %div1811.i.i.i.i44.i = lshr i64 %asmresult10.i.i.i.i.i43.i, 18
  %sub210.i.i.i.i45.i = sub nsw i64 0, %div1811.i.i.i.i44.i
  %cond213.i.i.i.i46.i = select i1 %cmp8.i.i.i.i42.i, i64 %sub210.i.i.i.i45.i, i64 %div1811.i.i.i.i44.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 999, i64 %cond213.i.i.i.i46.i)
  %cmp.i47.i = icmp sgt i64 %cond213.i.i.i.i46.i, 999
  br i1 %cmp.i47.i, label %if.then18.i50.i, label %if.end.i48.i.__ice_update_sample.exit51.i_crit_edge

if.end.i48.i.__ice_update_sample.exit51.i_crit_edge: ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ice_update_sample.exit51.i

if.then18.i50.i:                                  ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  %dim.i49.i = getelementptr i8, ptr %napi, i32 232
  %150 = ptrtoint ptr %dim.i49.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %dim.i49.i, align 8
  br label %__ice_update_sample.exit51.i

__ice_update_sample.exit51.i:                     ; preds = %if.then18.i50.i, %if.end.i48.i.__ice_update_sample.exit51.i_crit_edge
  %dim12.i = getelementptr i8, ptr %napi, i32 232
  %.fca.0.insert.i = insertvalue [3 x i64] poison, i64 %call.i.i35.i, 0
  %dim_sample11.sroa.5.sroa.5.0.insert.ext.i = zext i32 %bytes.2.off0.i33.i to i64
  %dim_sample11.sroa.5.sroa.0.0.insert.ext.i = zext i32 %packets.2.off0.i32.i to i64
  %dim_sample11.sroa.5.sroa.0.0.insert.shift.i = shl nuw i64 %dim_sample11.sroa.5.sroa.0.0.insert.ext.i, 32
  %dim_sample11.sroa.5.sroa.0.0.insert.insert.i = or i64 %dim_sample11.sroa.5.sroa.0.0.insert.shift.i, %dim_sample11.sroa.5.sroa.5.0.insert.ext.i
  %.fca.1.insert.i = insertvalue [3 x i64] %.fca.0.insert.i, i64 %dim_sample11.sroa.5.sroa.0.0.insert.insert.i, 1
  %.fca.2.insert.i = insertvalue [3 x i64] %.fca.1.insert.i, i64 %dim_sample11.sroa.8.16.insert.insert.i, 2
  tail call void @net_dim(ptr noundef %dim12.i, [3 x i64] %.fca.2.insert.i) #10
  br label %ice_net_dim.exit

ice_net_dim.exit:                                 ; preds = %__ice_update_sample.exit51.i, %if.end.i122.ice_net_dim.exit_crit_edge
  %151 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %add.ptr, align 128
  %wb_on_itr.i123 = getelementptr i8, ptr %napi, i32 -6
  %153 = ptrtoint ptr %wb_on_itr.i123 to i32
  call void @__asan_load1_noabort(i32 %153)
  %bf.load.i124 = load i8, ptr %wb_on_itr.i123, align 2
  %state.i125 = getelementptr inbounds %struct.ice_vsi, ptr %152, i32 0, i32 9
  %154 = ptrtoint ptr %state.i125 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %state.i125, align 4
  %156 = and i32 %155, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool2.not.i = icmp eq i32 %156, 0
  br i1 %tobool2.not.i, label %if.end.i127, label %ice_net_dim.exit.if.end61_crit_edge

ice_net_dim.exit.if.end61_crit_edge:              ; preds = %ice_net_dim.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.end.i127:                                      ; preds = %ice_net_dim.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i124)
  %tobool.not.i126 = icmp sgt i8 %bf.load.i124, -1
  br i1 %tobool.not.i126, label %if.end.i127.do.body.i136_crit_edge, label %if.else.i

if.end.i127.do.body.i136_crit_edge:               ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i136

if.else.i:                                        ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear.i128 = and i8 %bf.load.i124, 127
  %157 = ptrtoint ptr %wb_on_itr.i123 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %bf.clear.i128, ptr %wb_on_itr.i123, align 2
  br label %do.body.i136

do.body.i136:                                     ; preds = %if.else.i, %if.end.i127.do.body.i136_crit_edge
  %itr_val.0.i = phi i32 [ 83886903, %if.else.i ], [ 27, %if.end.i127.do.body.i136_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @arm_heavy_mb() #10
  %158 = tail call i32 @llvm.bswap.i32(i32 %itr_val.0.i) #10
  %back.i129 = getelementptr inbounds %struct.ice_vsi, ptr %152, i32 0, i32 2
  %159 = ptrtoint ptr %back.i129 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %back.i129, align 8
  %hw.i130 = getelementptr inbounds %struct.ice_pf, ptr %160, i32 0, i32 58
  %161 = ptrtoint ptr %hw.i130 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hw.i130, align 8
  %reg_idx.i131 = getelementptr i8, ptr %napi, i32 -10
  %163 = ptrtoint ptr %reg_idx.i131 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %reg_idx.i131, align 2
  %conv.i132 = zext i16 %164 to i32
  %mul.i133 = shl nuw nsw i32 %conv.i132, 2
  %add.i134 = add nuw nsw i32 %mul.i133, 1441792
  %add.ptr.i135 = getelementptr i8, ptr %162, i32 %add.i134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %158) #10, !srcloc !74
  br label %if.end61

if.else60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ice_set_wb_on_itr(ptr noundef %add.ptr)
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %do.body.i136, %ice_net_dim.exit.if.end61_crit_edge
  %sub = add i32 %budget, -1
  %165 = tail call i32 @llvm.smin.i32(i32 %work_done.0.lcssa, i32 %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.body.i114, %if.then50.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %165, %if.end61 ], [ %budget, %for.end.cleanup_crit_edge ], [ %budget, %if.then50.cleanup_crit_edge ], [ %budget, %do.body.i114 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_clean_tx_irq_zc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_clean_rx_irq_zc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_set_wb_on_itr(ptr nocapture noundef %q_vector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wb_on_itr = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 5
  %0 = ptrtoint ptr %wb_on_itr to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %wb_on_itr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %q_vector, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !103
  tail call void @arm_heavy_mb() #10
  %back = getelementptr inbounds %struct.ice_vsi, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back, align 8
  %hw = getelementptr inbounds %struct.ice_pf, ptr %4, i32 0, i32 58
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %reg_idx = getelementptr inbounds %struct.ice_q_vector, ptr %q_vector, i32 0, i32 2
  %7 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg_idx, align 2
  %conv = zext i16 %8 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 1441792
  %add.ptr = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 402653376) #10, !srcloc !74
  %9 = ptrtoint ptr %wb_on_itr to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load3 = load i8, ptr %wb_on_itr, align 2
  %bf.set = or i8 %bf.load3, -128
  store i8 %bf.set, ptr %wb_on_itr, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_start_xmit(ptr noundef %skb, ptr nocapture noundef readonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  %frag_off.i.i = alloca i16, align 2
  %l4_proto.i.i = alloca i8, align 1
  %offload.i = alloca %struct.ice_tx_offload_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tx_rings = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_rings, align 4
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %4 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %queue_mapping, align 8
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr ptr, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp.i.i = icmp ult i32 %9, 17
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end_crit_edge, !prof !77

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i.i:                                      ; preds = %entry
  %sub.i.i = sub nuw nsw i32 17, %9
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !71

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !80
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i.i, align 8
  %14 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %15, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %__skb_put.exit.i.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %offload.i) #10
  %16 = call ptr @memset(ptr %offload.i, i32 0, i32 32)
  %vsi1.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 7
  %17 = ptrtoint ptr %vsi1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vsi1.i, align 4
  tail call fastcc void @trace_ice_xmit_frame_ring(ptr noundef %7, ptr noundef %skb) #10
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %19 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags2.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %nr_frags2.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nr_frags2.i.i, align 2
  %23 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len1.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %24, %26
  %mul.i10.i.i = mul i32 %sub.i.i.i, 85
  %shr.i11.i.i = lshr i32 %mul.i10.i.i, 20
  %add12.i.i = add nuw nsw i32 %shr.i11.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not13.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not13.i.i, label %if.end.ice_xmit_desc_count.exit.i_crit_edge, label %if.end.preheader.i.i

if.end.ice_xmit_desc_count.exit.i_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_xmit_desc_count.exit.i

if.end.preheader.i.i:                             ; preds = %if.end
  %conv.i.i = zext i8 %22 to i32
  %frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 12
  br label %if.end.i.i9

if.end.i.i9:                                      ; preds = %if.end.i.i9.if.end.i.i9_crit_edge, %if.end.preheader.i.i
  %add16.i.i = phi i32 [ %add.i.i, %if.end.i.i9.if.end.i.i9_crit_edge ], [ %add12.i.i, %if.end.preheader.i.i ]
  %nr_frags.015.i.i = phi i32 [ %dec.i.i, %if.end.i.i9.if.end.i.i9_crit_edge ], [ %conv.i.i, %if.end.preheader.i.i ]
  %frag.014.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i9.if.end.i.i9_crit_edge ], [ %frags.i.i, %if.end.preheader.i.i ]
  %dec.i.i = add nsw i32 %nr_frags.015.i.i, -1
  %incdec.ptr.i.i = getelementptr %struct.bio_vec, ptr %frag.014.i.i, i32 1
  %bv_len.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.014.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bv_len.i.i.i, align 4
  %mul.i.i.i = mul i32 %28, 85
  %shr.i.i.i = lshr i32 %mul.i.i.i, 20
  %add.i.i.i8 = add i32 %add16.i.i, 1
  %add.i.i = add i32 %add.i.i.i8, %shr.i.i.i
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i9.ice_xmit_desc_count.exit.i_crit_edge, label %if.end.i.i9.if.end.i.i9_crit_edge

if.end.i.i9.if.end.i.i9_crit_edge:                ; preds = %if.end.i.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i9

if.end.i.i9.ice_xmit_desc_count.exit.i_crit_edge: ; preds = %if.end.i.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_xmit_desc_count.exit.i

ice_xmit_desc_count.exit.i:                       ; preds = %if.end.i.i9.ice_xmit_desc_count.exit.i_crit_edge, %if.end.ice_xmit_desc_count.exit.i_crit_edge
  %add.lcssa.i.i = phi i32 [ %add12.i.i, %if.end.ice_xmit_desc_count.exit.i_crit_edge ], [ %add.i.i, %if.end.i.i9.ice_xmit_desc_count.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.lcssa.i.i)
  %cmp.i.i10 = icmp ult i32 %add.lcssa.i.i, 8
  br i1 %cmp.i.i10, label %ice_xmit_desc_count.exit.i.if.end6.i_crit_edge, label %if.end.i115.i, !prof !71

ice_xmit_desc_count.exit.i.if.end6.i_crit_edge:   ; preds = %ice_xmit_desc_count.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.end.i115.i:                                    ; preds = %ice_xmit_desc_count.exit.i
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 4
  %29 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.i.not.i.i = icmp eq i16 %30, 0
  br i1 %tobool.i.not.i.i, label %ice_chk_linearize.exit.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %cmp.i46 = icmp ult i8 %22, 7
  br i1 %cmp.i46, label %if.then2.i.i.if.end6.i_crit_edge, label %if.end.i48

if.then2.i.i.if.end6.i_crit_edge:                 ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.end.i48:                                       ; preds = %if.then2.i.i
  %conv.i = zext i8 %22 to i32
  %sub.i = add nsw i32 %conv.i, -6
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 12
  %conv5.i = zext i16 %30 to i32
  %sub6.i = sub nsw i32 1, %conv5.i
  %bv_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 12, i32 0, i32 1
  %31 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bv_len.i.i, align 4
  %add.i47 = add i32 %sub6.i, %32
  %bv_len.i80.i = getelementptr %struct.skb_shared_info, ptr %20, i32 0, i32 12, i32 1, i32 1
  %33 = ptrtoint ptr %bv_len.i80.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bv_len.i80.i, align 4
  %add10.i = add i32 %add.i47, %34
  %bv_len.i81.i = getelementptr %struct.skb_shared_info, ptr %20, i32 0, i32 12, i32 2, i32 1
  %35 = ptrtoint ptr %bv_len.i81.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bv_len.i81.i, align 4
  %add13.i = add i32 %add10.i, %36
  %bv_len.i82.i = getelementptr %struct.skb_shared_info, ptr %20, i32 0, i32 12, i32 3, i32 1
  %37 = ptrtoint ptr %bv_len.i82.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bv_len.i82.i, align 4
  %add16.i = add i32 %add13.i, %38
  %incdec.ptr17.i = getelementptr %struct.skb_shared_info, ptr %20, i32 0, i32 12, i32 5
  %bv_len.i83.i = getelementptr %struct.skb_shared_info, ptr %20, i32 0, i32 12, i32 4, i32 1
  %39 = ptrtoint ptr %bv_len.i83.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bv_len.i83.i, align 4
  %add19.i = add i32 %add16.i, %40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.end.i48
  %frag.0.i = phi ptr [ %incdec.ptr17.i, %if.end.i48 ], [ %incdec.ptr24.i, %for.inc.i ]
  %stale.0.i = phi ptr [ %frags.i, %if.end.i48 ], [ %incdec.ptr46.i, %for.inc.i ]
  %nr_frags.0.i = phi i32 [ %sub.i, %if.end.i48 ], [ %dec.i, %for.inc.i ]
  %sum.0.i = phi i32 [ %add19.i, %if.end.i48 ], [ %sub45.i, %for.inc.i ]
  %bv_len.i85.i = getelementptr inbounds %struct.bio_vec, ptr %stale.0.i, i32 0, i32 1
  %41 = ptrtoint ptr %bv_len.i85.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bv_len.i85.i, align 4
  %incdec.ptr24.i = getelementptr %struct.bio_vec, ptr %frag.0.i, i32 1
  %bv_len.i86.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0.i, i32 0, i32 1
  %43 = ptrtoint ptr %bv_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bv_len.i86.i, align 4
  %add26.i = add i32 %44, %sum.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %42)
  %cmp27.i49 = icmp sgt i32 %42, 16383
  br i1 %cmp27.i49, label %if.then29.i, label %for.cond.i.if.end38.i_crit_edge

for.cond.i.if.end38.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.then29.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %bv_offset.i.i = getelementptr inbounds %struct.bio_vec, ptr %stale.0.i, i32 0, i32 2
  %45 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bv_offset.i.i, align 4
  %sub31.i = sub i32 0, %46
  %and.i50 = and i32 %sub31.i, 4095
  %47 = add nsw i32 %42, -12288
  %48 = sub nuw nsw i32 %47, %and.i50
  %umin.i = tail call i32 @llvm.umin.i32(i32 %48, i32 16383) #10
  %49 = xor i32 %umin.i, -1
  %50 = sub nuw nsw i32 %42, %and.i50
  %51 = add i32 %50, %49
  %52 = urem i32 %51, 12288
  %53 = sub i32 %51, %52
  %54 = add i32 %add26.i, -12288
  %55 = add i32 %and.i50, %53
  %56 = sub i32 %54, %55
  %57 = sub i32 %48, %53
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then29.i, %for.cond.i.if.end38.i_crit_edge
  %sum.2.i = phi i32 [ %add26.i, %for.cond.i.if.end38.i_crit_edge ], [ %56, %if.then29.i ]
  %stale_size.1.i = phi i32 [ %42, %for.cond.i.if.end38.i_crit_edge ], [ %57, %if.then29.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sum.2.i)
  %cmp39.i = icmp slt i32 %sum.2.i, 0
  br i1 %cmp39.i, label %if.end38.i.if.then.i_crit_edge, label %if.end42.i

if.end38.i.if.then.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end42.i:                                       ; preds = %if.end38.i
  %tobool.not.i = icmp eq i32 %nr_frags.0.i, 0
  br i1 %tobool.not.i, label %if.end42.i.if.end6.i_crit_edge, label %for.inc.i

if.end42.i.if.end6.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

for.inc.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub45.i = sub i32 %sum.2.i, %stale_size.1.i
  %dec.i = add nsw i32 %nr_frags.0.i, -1
  %incdec.ptr46.i = getelementptr %struct.bio_vec, ptr %stale.0.i, i32 1
  br label %for.cond.i

ice_chk_linearize.exit.i:                         ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.lcssa.i.i)
  %cmp5.i.not.i = icmp eq i32 %add.lcssa.i.i, 8
  br i1 %cmp5.i.not.i, label %ice_chk_linearize.exit.i.if.end6.i_crit_edge, label %ice_chk_linearize.exit.i.if.then.i_crit_edge

ice_chk_linearize.exit.i.if.then.i_crit_edge:     ; preds = %ice_chk_linearize.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

ice_chk_linearize.exit.i.if.end6.i_crit_edge:     ; preds = %ice_chk_linearize.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then.i:                                        ; preds = %ice_chk_linearize.exit.i.if.then.i_crit_edge, %if.end38.i.if.then.i_crit_edge
  %call.i.i11 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %26) #10
  %tobool.not.i116.not.i = icmp eq ptr %call.i.i11, null
  br i1 %tobool.not.i116.not.i, label %if.then.i.out_drop.i_crit_edge, label %if.end.i

if.then.i.out_drop.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len1.i.i, align 4
  %mul.i.i = mul i32 %59, 85
  %shr.i.i = lshr i32 %mul.i.i, 20
  %add.i117.i = add nuw nsw i32 %shr.i.i, 1
  %tx_linearize.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 20, i32 2
  %60 = ptrtoint ptr %tx_linearize.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %tx_linearize.i, align 8
  %inc.i = add i64 %61, 1
  store i64 %inc.i, ptr %tx_linearize.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %ice_chk_linearize.exit.i.if.end6.i_crit_edge, %if.end42.i.if.end6.i_crit_edge, %if.then2.i.i.if.end6.i_crit_edge, %ice_xmit_desc_count.exit.i.if.end6.i_crit_edge
  %count.0.i = phi i32 [ %add.i117.i, %if.end.i ], [ 8, %ice_chk_linearize.exit.i.if.end6.i_crit_edge ], [ %add.lcssa.i.i, %ice_xmit_desc_count.exit.i.if.end6.i_crit_edge ], [ %add.lcssa.i.i, %if.then2.i.i.if.end6.i_crit_edge ], [ %add.lcssa.i.i, %if.end42.i.if.end6.i_crit_edge ]
  %add7.i = add i32 %count.0.i, 5
  %next_to_clean.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 11
  %62 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %next_to_clean.i.i, align 2
  %next_to_use.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 10
  %64 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %next_to_use.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %65)
  %cmp.i118.i = icmp ugt i16 %63, %65
  br i1 %cmp.i118.i, label %if.end6.i.cond.end.i.i_crit_edge, label %cond.false.i.i

if.end6.i.cond.end.i.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %count.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 16
  %66 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %count.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end6.i.cond.end.i.i_crit_edge
  %cond.i119.i = phi i16 [ %67, %cond.false.i.i ], [ 0, %if.end6.i.cond.end.i.i_crit_edge ]
  %68 = xor i16 %65, -1
  %add.i120.i = add i16 %63, %68
  %sub8.i.i = add i16 %add.i120.i, %cond.i119.i
  %conv10.i.i = zext i16 %sub8.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %conv10.i.i)
  %cmp11.not.i.i = icmp ugt i32 %add7.i, %conv10.i.i
  br i1 %cmp11.not.i.i, label %ice_maybe_stop_tx.exit.i, label %cond.end.i.i.if.end13.i_crit_edge, !prof !77

cond.end.i.i.if.end13.i_crit_edge:                ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

ice_maybe_stop_tx.exit.i:                         ; preds = %cond.end.i.i
  %netdev.i.i22 = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 6
  %69 = ptrtoint ptr %netdev.i.i22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev.i.i22, align 8
  %q_index.i.i23 = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 17
  %71 = ptrtoint ptr %q_index.i.i23 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %q_index.i.i23, align 2
  %conv.i.i24 = zext i16 %72 to i32
  %_tx.i.i.i25 = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 103
  %73 = ptrtoint ptr %_tx.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %_tx.i.i.i25, align 128
  %state.i.i26 = getelementptr %struct.netdev_queue, ptr %74, i32 %conv.i.i24, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  %75 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %next_to_clean.i.i, align 2
  %77 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %next_to_use.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %78)
  %cmp.i29 = icmp ugt i16 %76, %78
  br i1 %cmp.i29, label %ice_maybe_stop_tx.exit.i.cond.end.i37_crit_edge, label %cond.false.i31

ice_maybe_stop_tx.exit.i.cond.end.i37_crit_edge:  ; preds = %ice_maybe_stop_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i37

cond.false.i31:                                   ; preds = %ice_maybe_stop_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %count.i30 = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 16
  %79 = ptrtoint ptr %count.i30 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %count.i30, align 4
  br label %cond.end.i37

cond.end.i37:                                     ; preds = %cond.false.i31, %ice_maybe_stop_tx.exit.i.cond.end.i37_crit_edge
  %cond.i32 = phi i16 [ %80, %cond.false.i31 ], [ 0, %ice_maybe_stop_tx.exit.i.cond.end.i37_crit_edge ]
  %81 = xor i16 %78, -1
  %add.i33 = add i16 %76, %81
  %sub10.i34 = add i16 %add.i33, %cond.i32
  %conv12.i35 = zext i16 %sub10.i34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %conv12.i35)
  %cmp13.i36 = icmp ugt i32 %add7.i, %conv12.i35
  br i1 %cmp13.i36, label %if.then10.i, label %__ice_maybe_stop_tx.exit45.thread, !prof !71

__ice_maybe_stop_tx.exit45.thread:                ; preds = %cond.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %netdev.i.i22 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev.i.i22, align 8
  %84 = ptrtoint ptr %q_index.i.i23 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %q_index.i.i23, align 2
  %conv.i27.i38 = zext i16 %85 to i32
  %_tx.i.i28.i39 = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 103
  %86 = ptrtoint ptr %_tx.i.i28.i39 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %_tx.i.i28.i39, align 128
  %state.i24.i40 = getelementptr %struct.netdev_queue, ptr %87, i32 %conv.i27.i38, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i24.i40) #10
  %tx_stats.i41 = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 20
  %88 = ptrtoint ptr %tx_stats.i41 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %tx_stats.i41, align 8
  %inc.i42 = add i64 %89, 1
  store i64 %inc.i42, ptr %tx_stats.i41, align 8
  br label %if.end13.i

if.then10.i:                                      ; preds = %cond.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  %tx_busy.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 20, i32 1
  %90 = ptrtoint ptr %tx_busy.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %tx_busy.i, align 8
  %inc12.i = add i64 %91, 1
  store i64 %inc12.i, ptr %tx_busy.i, align 8
  br label %ice_xmit_frame_ring.exit

if.end13.i:                                       ; preds = %__ice_maybe_stop_tx.exit45.thread, %cond.end.i.i.if.end13.i_crit_edge
  %netdev.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 6
  %92 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %netdev.i.i, align 8
  %q_index.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 17
  %94 = ptrtoint ptr %q_index.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %q_index.i.i, align 2
  %conv.i124.i = zext i16 %95 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 103
  %96 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %_tx.i.i.i, align 128
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %97, i32 %conv.i124.i, i32 15
  tail call void @llvm.prefetch.p0(ptr %dql.i.i, i32 1, i32 3, i32 1) #10
  %tx_ring15.i = getelementptr inbounds %struct.ice_tx_offload_params, ptr %offload.i, i32 0, i32 1
  %98 = ptrtoint ptr %tx_ring15.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %7, ptr %tx_ring15.i, align 8
  %tx_buf.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 4
  %99 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tx_buf.i, align 16
  %101 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %next_to_use.i.i, align 8
  %idxprom.i = zext i16 %102 to i32
  %arrayidx.i = getelementptr %struct.ice_tx_buf, ptr %100, i32 %idxprom.i
  %103 = getelementptr %struct.ice_tx_buf, ptr %100, i32 %idxprom.i, i32 1
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %skb, ptr %103, align 4
  %105 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len1.i.i, align 4
  %107 = tail call i32 @llvm.umax.i32(i32 %106, i32 60) #10
  %bytecount.i = getelementptr %struct.ice_tx_buf, ptr %100, i32 %idxprom.i, i32 2
  %108 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %bytecount.i, align 4
  %gso_segs.i = getelementptr %struct.ice_tx_buf, ptr %100, i32 %idxprom.i, i32 3
  %109 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 1, ptr %gso_segs.i, align 4
  %tx_flags.i = getelementptr %struct.ice_tx_buf, ptr %100, i32 %idxprom.i, i32 4
  %110 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %tx_flags.i, align 4
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %111 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i125.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i125.i, label %land.lhs.true.i.i, label %if.then6.i.i

land.lhs.true.i.i:                                ; preds = %if.end13.i
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %112 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %protocol.i.i, align 8
  %114 = zext i16 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %113, label %land.lhs.true.i.i.if.end9.i.i_crit_edge [
    i16 -30552, label %land.lhs.true.i.i.ice_tx_prepare_vlan_flags.exit.i_crit_edge
    i16 -32512, label %land.lhs.true.i.i.ice_tx_prepare_vlan_flags.exit.i_crit_edge77
  ]

land.lhs.true.i.i.ice_tx_prepare_vlan_flags.exit.i_crit_edge77: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_tx_prepare_vlan_flags.exit.i

land.lhs.true.i.i.ice_tx_prepare_vlan_flags.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_tx_prepare_vlan_flags.exit.i

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

if.then6.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %115 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %vlan_tci.i.i, align 2
  %conv.i126.i = zext i16 %116 to i32
  %shl.i.i = shl nuw i32 %conv.i126.i, 16
  %or8.i.i = or i32 %shl.i.i, 2
  %117 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or8.i.i, ptr %tx_flags.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then6.i.i, %land.lhs.true.i.i.if.end9.i.i_crit_edge
  tail call void @ice_tx_prepare_vlan_flags_dcb(ptr noundef %7, ptr noundef %arrayidx.i) #10
  br label %ice_tx_prepare_vlan_flags.exit.i

ice_tx_prepare_vlan_flags.exit.i:                 ; preds = %if.end9.i.i, %land.lhs.true.i.i.ice_tx_prepare_vlan_flags.exit.i_crit_edge, %land.lhs.true.i.i.ice_tx_prepare_vlan_flags.exit.i_crit_edge77
  %118 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %103, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 15
  %120 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %bf.load.i127.i = load i16, ptr %ip_summed.i.i, align 8
  %121 = and i16 %bf.load.i127.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %121)
  %cmp.not.i.i = icmp eq i16 %121, 1536
  br i1 %cmp.not.i.i, label %if.end.i131.i, label %ice_tx_prepare_vlan_flags.exit.i.if.end20.i_crit_edge

ice_tx_prepare_vlan_flags.exit.i.if.end20.i_crit_edge: ; preds = %ice_tx_prepare_vlan_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.end.i131.i:                                    ; preds = %ice_tx_prepare_vlan_flags.exit.i
  %end.i.i.i128.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 17
  %122 = ptrtoint ptr %end.i.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %end.i.i.i128.i, align 4
  %gso_size.i.i129.i = getelementptr inbounds %struct.skb_shared_info, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %gso_size.i.i129.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %gso_size.i.i129.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool.i.not.i130.i = icmp eq i16 %125, 0
  br i1 %tobool.i.not.i130.i, label %if.end.i131.i.if.end20thread-pre-split.i_crit_edge, label %if.end3.i.i

if.end.i131.i.if.end20thread-pre-split.i_crit_edge: ; preds = %if.end.i131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20thread-pre-split.i

if.end3.i.i:                                      ; preds = %if.end.i131.i
  %cloned.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 12
  %126 = ptrtoint ptr %cloned.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load.i.i.i.i = load i8, ptr %cloned.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i, label %if.end3.i.i.if.end8.i.i_crit_edge, label %skb_header_cloned.exit.i.i.i

if.end3.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

skb_header_cloned.exit.i.i.i:                     ; preds = %if.end3.i.i
  %dataref1.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %123, i32 0, i32 10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i, i32 noundef 4) #10
  %127 = ptrtoint ptr %dataref1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %dataref1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %128, 65535
  %shr.i.i163.i.i = ashr i32 %128, 16
  %sub.i.i.i.i = sub nsw i32 %and.i.i.i.i, %shr.i.i163.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %sub.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i, label %skb_header_cloned.exit.i.i.i.if.end8.i.i_crit_edge, label %skb_cow_head.exit.i.i

skb_header_cloned.exit.i.i.i.if.end8.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

skb_cow_head.exit.i.i:                            ; preds = %skb_header_cloned.exit.i.i.i
  %call4.i.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %119, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %cmp5.i132.i = icmp slt i32 %call4.i.i.i.i, 0
  br i1 %cmp5.i132.i, label %skb_cow_head.exit.i.i.out_drop.i_crit_edge, label %skb_cow_head.exit.i.i.if.end8.i.i_crit_edge

skb_cow_head.exit.i.i.if.end8.i.i_crit_edge:      ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

skb_cow_head.exit.i.i.out_drop.i_crit_edge:       ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_drop.i

if.end8.i.i:                                      ; preds = %skb_cow_head.exit.i.i.if.end8.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.if.end8.i.i_crit_edge, %if.end3.i.i.if.end8.i.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 18
  %129 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 15, i32 0, i32 20
  %131 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %132 to i32
  %add.ptr.i.i.i12 = getelementptr i8, ptr %130, i32 %conv.i.i.i
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 15, i32 0, i32 19
  %133 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i165.i.i = zext i16 %134 to i32
  %add.ptr.i166.i.i = getelementptr i8, ptr %130, i32 %conv.i165.i.i
  %135 = ptrtoint ptr %add.ptr.i.i.i12 to i32
  call void @__asan_load1_noabort(i32 %135)
  %bf.load11.i.i = load i8, ptr %add.ptr.i.i.i12, align 4
  %bf.lshr12.mask.i.i = and i8 %bf.load11.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr12.mask.i.i)
  %cmp14.i.i = icmp eq i8 %bf.lshr12.mask.i.i, 64
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.else.i.i

if.then16.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tot_len.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i12, i32 0, i32 2
  %136 = ptrtoint ptr %tot_len.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %tot_len.i.i, align 2
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i12, i32 0, i32 7
  %137 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %check.i.i, align 2
  br label %if.end17.i.i

if.else.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %payload_len.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i12, i32 0, i32 2
  %138 = ptrtoint ptr %payload_len.i.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %payload_len.i.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.else.i.i, %if.then16.i.i
  %139 = ptrtoint ptr %end.i.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %end.i.i.i128.i, align 4
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %140, i32 0, i32 8
  %141 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %gso_type.i.i, align 8
  %and.i.i = and i32 %142, 4032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i133.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i133.i, label %if.end17.i.i.if.end47.i.i_crit_edge, label %if.then19.i.i

if.end17.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  %143 = and i32 %142, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %143)
  %.not.i.i = icmp eq i32 %143, 2048
  br i1 %.not.i.i, label %if.then28.i.i, label %if.then19.i.i.if.end33.i.i_crit_edge

if.then19.i.i.if.end33.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i

if.then28.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %len.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i166.i.i, i32 0, i32 2
  %144 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %len.i.i, align 2
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 19
  %145 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i166.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %146 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %len30.i.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 6
  %147 = ptrtoint ptr %len30.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %len30.i.i, align 4
  %conv31.i.i = and i32 %sub.ptr.sub.i.i, 255
  %sub.i.i13 = sub i32 %148, %conv31.i.i
  %check32.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i166.i.i, i32 0, i32 3
  %149 = ptrtoint ptr %check32.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %check32.i.i, align 2
  %conv.i.i.i.i = zext i16 %150 to i32
  %neg.i.i.i = xor i32 %conv.i.i.i.i, -1
  %add.i.i.i.i = add i32 %sub.i.i13, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %neg.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %neg.i.i.i
  %conv.i4.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i4.i.i.i
  %151 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i.i.i) #15, !srcloc !108
  %neg.i.i.i.i = xor i32 %151, -1
  %shr.i.i.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i5.i.i.i = trunc i32 %shr.i.i.i.i to i16
  %152 = ptrtoint ptr %check32.i.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv.i5.i.i.i, ptr %check32.i.i, align 2
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then28.i.i, %if.then19.i.i.if.end33.i.i_crit_edge
  %153 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %head.i.i.i, align 8
  %inner_network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 15, i32 0, i32 16
  %155 = ptrtoint ptr %inner_network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %inner_network_header.i.i.i, align 4
  %conv.i170.i.i = zext i16 %156 to i32
  %add.ptr.i171.i.i = getelementptr i8, ptr %154, i32 %conv.i170.i.i
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 15, i32 0, i32 15
  %157 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %inner_transport_header.i.i.i, align 2
  %conv.i173.i.i = zext i16 %158 to i32
  %add.ptr.i174.i.i = getelementptr i8, ptr %154, i32 %conv.i173.i.i
  %159 = ptrtoint ptr %add.ptr.i171.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %bf.load36.i.i = load i8, ptr %add.ptr.i171.i.i, align 4
  %bf.lshr37.mask.i.i = and i8 %bf.load36.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr37.mask.i.i)
  %cmp39.i.i = icmp eq i8 %bf.lshr37.mask.i.i, 64
  br i1 %cmp39.i.i, label %if.then41.i.i, label %if.else44.i.i

if.then41.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tot_len42.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i171.i.i, i32 0, i32 2
  %160 = ptrtoint ptr %tot_len42.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %tot_len42.i.i, align 2
  %check43.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i171.i.i, i32 0, i32 7
  %161 = ptrtoint ptr %check43.i.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %check43.i.i, align 2
  br label %if.end47.i.i

if.else44.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %payload_len45.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i171.i.i, i32 0, i32 2
  %162 = ptrtoint ptr %payload_len45.i.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 0, ptr %payload_len45.i.i, align 4
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.else44.i.i, %if.then41.i.i, %if.end17.i.i.if.end47.i.i_crit_edge
  %l4.sroa.0.0.i.i = phi ptr [ %add.ptr.i174.i.i, %if.then41.i.i ], [ %add.ptr.i174.i.i, %if.else44.i.i ], [ %add.ptr.i166.i.i, %if.end17.i.i.if.end47.i.i_crit_edge ]
  %data48.i.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 19
  %163 = ptrtoint ptr %data48.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %data48.i.i, align 4
  %sub.ptr.lhs.cast49.i.i = ptrtoint ptr %l4.sroa.0.0.i.i to i32
  %sub.ptr.rhs.cast50.i.i = ptrtoint ptr %164 to i32
  %sub.ptr.sub51.i.i = sub i32 %sub.ptr.lhs.cast49.i.i, %sub.ptr.rhs.cast50.i.i
  %len53.i.i = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 6
  %165 = ptrtoint ptr %len53.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %len53.i.i, align 4
  %conv54.i.i = and i32 %sub.ptr.sub51.i.i, 255
  %sub55.i.i = sub i32 %166, %conv54.i.i
  %167 = ptrtoint ptr %end.i.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %end.i.i.i128.i, align 4
  %gso_type57.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %168, i32 0, i32 8
  %169 = ptrtoint ptr %gso_type57.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %gso_type57.i.i, align 8
  %and58.i.i = and i32 %170, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i.i)
  %tobool59.not.i.i = icmp eq i32 %and58.i.i, 0
  br i1 %tobool59.not.i.i, label %if.else64.i.i, label %if.then60.i.i

if.then60.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %check61.i.i = getelementptr inbounds %struct.udphdr, ptr %l4.sroa.0.0.i.i, i32 0, i32 3
  %171 = ptrtoint ptr %check61.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %check61.i.i, align 2
  %conv.i.i145.i.i = zext i16 %172 to i32
  %neg.i146.i.i = xor i32 %conv.i.i145.i.i, -1
  %add.i.i147.i.i = add i32 %sub55.i.i, %neg.i146.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i147.i.i, i32 %neg.i146.i.i)
  %cmp.i.i148.i.i = icmp ult i32 %add.i.i147.i.i, %neg.i146.i.i
  %conv.i4.i149.i.i = zext i1 %cmp.i.i148.i.i to i32
  %add1.i.i150.i.i = add i32 %add.i.i147.i.i, %conv.i4.i149.i.i
  %173 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i150.i.i) #15, !srcloc !108
  %neg.i.i151.i.i = xor i32 %173, -1
  %shr.i.i152.i.i = lshr i32 %neg.i.i151.i.i, 16
  %conv.i5.i153.i.i = trunc i32 %shr.i.i152.i.i to i16
  %174 = ptrtoint ptr %check61.i.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv.i5.i153.i.i, ptr %check61.i.i, align 2
  %175 = trunc i32 %sub.ptr.sub51.i.i to i8
  %conv63.i.i = add i8 %175, 4
  br label %if.end73.i.i

if.else64.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %check65.i.i = getelementptr inbounds %struct.tcphdr, ptr %l4.sroa.0.0.i.i, i32 0, i32 6
  %176 = ptrtoint ptr %check65.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %check65.i.i, align 2
  %conv.i.i154.i.i = zext i16 %177 to i32
  %neg.i155.i.i = xor i32 %conv.i.i154.i.i, -1
  %add.i.i156.i.i = add i32 %sub55.i.i, %neg.i155.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i156.i.i, i32 %neg.i155.i.i)
  %cmp.i.i157.i.i = icmp ult i32 %add.i.i156.i.i, %neg.i155.i.i
  %conv.i4.i158.i.i = zext i1 %cmp.i.i157.i.i to i32
  %add1.i.i159.i.i = add i32 %add.i.i156.i.i, %conv.i4.i158.i.i
  %178 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i159.i.i) #15, !srcloc !108
  %neg.i.i160.i.i = xor i32 %178, -1
  %shr.i.i161.i.i = lshr i32 %neg.i.i160.i.i, 16
  %conv.i5.i162.i.i = trunc i32 %shr.i.i161.i.i to i16
  %179 = ptrtoint ptr %check65.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv.i5.i162.i.i, ptr %check65.i.i, align 2
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %l4.sroa.0.0.i.i, i32 0, i32 4
  %180 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %bf.load66.i.i = load i16, ptr %doff.i.i, align 4
  %181 = lshr i16 %bf.load66.i.i, 10
  %182 = and i16 %181, 60
  %mul.i134.i = zext i16 %182 to i32
  %add70.i.i = add i32 %sub.ptr.sub51.i.i, %mul.i134.i
  %conv71.i.i = trunc i32 %add70.i.i to i8
  br label %if.end73.i.i

if.end73.i.i:                                     ; preds = %if.else64.i.i, %if.then60.i.i
  %conv63.sink.i.i = phi i8 [ %conv71.i.i, %if.else64.i.i ], [ %conv63.i.i, %if.then60.i.i ]
  %183 = getelementptr inbounds %struct.ice_tx_offload_params, ptr %offload.i, i32 0, i32 7
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv63.sink.i.i, ptr %183, align 2
  %185 = ptrtoint ptr %end.i.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %end.i.i.i128.i, align 4
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %186, i32 0, i32 5
  %187 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %gso_segs.i.i, align 2
  %189 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %188, ptr %gso_segs.i, align 4
  %conv77.i.i = zext i16 %188 to i32
  %sub78.i.i = add nsw i32 %conv77.i.i, -1
  %190 = load i8, ptr %183, align 2
  %conv80.i.i = zext i8 %190 to i32
  %mul81.i.i = mul nsw i32 %sub78.i.i, %conv80.i.i
  %191 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %bytecount.i, align 4
  %add82.i.i = add i32 %mul81.i.i, %192
  store i32 %add82.i.i, ptr %bytecount.i, align 4
  %193 = ptrtoint ptr %len53.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %len53.i.i, align 4
  %195 = load i8, ptr %183, align 2
  %conv85.i.i = zext i8 %195 to i32
  %sub86.i.i = sub i32 %194, %conv85.i.i
  %conv87.i.i = zext i32 %sub86.i.i to i64
  %196 = load ptr, ptr %end.i.i.i128.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %196, i32 0, i32 4
  %197 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %gso_size.i.i, align 4
  %conv89.i.i = zext i16 %198 to i64
  %shl.i135.i = shl nuw nsw i64 %conv87.i.i, 30
  %shl90.i.i = shl i64 %conv89.i.i, 50
  %199 = ptrtoint ptr %offload.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %offload.i, align 8
  %or.i136.i = or i64 %200, %shl90.i.i
  %or91.i.i = or i64 %or.i136.i, %shl.i135.i
  %or92.i.i = or i64 %or91.i.i, 17
  store i64 %or92.i.i, ptr %offload.i, align 8
  %201 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %tx_flags.i, align 4
  %or93.i.i = or i32 %202, 1
  store i32 %or93.i.i, ptr %tx_flags.i, align 4
  br label %if.end20thread-pre-split.i

if.end20thread-pre-split.i:                       ; preds = %if.end73.i.i, %if.end.i131.i.if.end20thread-pre-split.i_crit_edge
  %203 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %203)
  %.pr.i = load ptr, ptr %103, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20thread-pre-split.i, %ice_tx_prepare_vlan_flags.exit.i.if.end20.i_crit_edge
  %204 = phi ptr [ %.pr.i, %if.end20thread-pre-split.i ], [ %119, %ice_tx_prepare_vlan_flags.exit.i.if.end20.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i.i) #10
  %205 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 -1, ptr %frag_off.i.i, align 2, !annotation !109
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l4_proto.i.i) #10
  %206 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %l4_proto.i.i, align 1
  %ip_summed.i139.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 15
  %207 = ptrtoint ptr %ip_summed.i139.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %bf.load.i140.i = load i16, ptr %ip_summed.i139.i, align 8
  %208 = and i16 %bf.load.i140.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %208)
  %cmp.not.i141.i = icmp eq i16 %208, 1536
  br i1 %cmp.not.i141.i, label %if.end.i152.i, label %if.end20.i.if.end24.i_crit_edge

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.end.i152.i:                                    ; preds = %if.end20.i
  %head.i.i142.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 18
  %209 = ptrtoint ptr %head.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %head.i.i142.i, align 8
  %network_header.i.i143.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 15, i32 0, i32 20
  %211 = ptrtoint ptr %network_header.i.i143.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %network_header.i.i143.i, align 4
  %conv.i.i144.i = zext i16 %212 to i32
  %add.ptr.i.i145.i = getelementptr i8, ptr %210, i32 %conv.i.i144.i
  %transport_header.i.i146.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 15, i32 0, i32 19
  %213 = ptrtoint ptr %transport_header.i.i146.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %transport_header.i.i146.i, align 2
  %conv.i282.i.i = zext i16 %214 to i32
  %add.ptr.i283.i.i = getelementptr i8, ptr %210, i32 %conv.i282.i.i
  %data.i147.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 19
  %215 = ptrtoint ptr %data.i147.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %data.i147.i, align 4
  %sub.ptr.lhs.cast.i148.i = ptrtoint ptr %add.ptr.i.i145.i to i32
  %sub.ptr.rhs.cast.i149.i = ptrtoint ptr %216 to i32
  %sub.ptr.sub.i150.i = sub i32 %sub.ptr.lhs.cast.i148.i, %sub.ptr.rhs.cast.i149.i
  %div279.i.i = lshr i32 %sub.ptr.sub.i150.i, 1
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 15, i32 0, i32 18
  %217 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 8
  %219 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i151.i = zext i16 %220 to i32
  %221 = zext i16 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %218, label %if.end.i152.i.vlan_get_protocol.exit.i.i_crit_edge [
    i16 -30552, label %if.end.i152.i.if.then.i.i.i.i_crit_edge
    i16 -32512, label %if.end.i152.i.if.then.i.i.i.i_crit_edge78
  ]

if.end.i152.i.if.then.i.i.i.i_crit_edge78:        ; preds = %if.end.i152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i.i

if.end.i152.i.if.then.i.i.i.i_crit_edge:          ; preds = %if.end.i152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i.i

if.end.i152.i.vlan_get_protocol.exit.i.i_crit_edge: ; preds = %if.end.i152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vlan_get_protocol.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i152.i.if.then.i.i.i.i_crit_edge, %if.end.i152.i.if.then.i.i.i.i_crit_edge78
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %220)
  %tobool.not.i.i.i153.i = icmp eq i16 %220, 0
  br i1 %tobool.not.i.i.i153.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %220)
  %cmp.i.i.i154.i = icmp ult i16 %220, 4
  br i1 %cmp.i.i.i154.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !77

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 598, i32 noundef 9, ptr noundef null) #10
  br label %if.end15.i.i

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i155.i = add nsw i32 %conv.i.i.i151.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i155.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %222 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 6
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %204, null
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i157.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #10
  %223 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !109
  %224 = ptrtoint ptr %222 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 -1, ptr %222, align 2, !annotation !109
  %225 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %227 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %229 = add i32 %vlan_depth.1.i.i.i.i, %228
  %sub.i1.i.i.i.i.i = sub i32 %226, %229
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !71

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %230 = ptrtoint ptr %data.i147.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %data.i147.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %231, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i156.i = call i32 @skb_copy_bits(ptr noundef nonnull %204, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i156.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i156.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !77
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %232 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !77
  br i1 %232, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !77

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #10
  br label %if.end15.i.i

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %233 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #10
  %235 = zext i16 %234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %234, label %do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge79
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge79: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vlan_get_protocol.exit.i.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge79
  %add.i.i.i157.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

vlan_get_protocol.exit.i.i:                       ; preds = %do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge, %if.end.i152.i.vlan_get_protocol.exit.i.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %218, %if.end.i152.i.vlan_get_protocol.exit.i.i_crit_edge ], [ %234, %do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge ]
  %236 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %retval.2.i.i.i.i, label %vlan_get_protocol.exit.i.i.if.end15.i.i_crit_edge [
    i16 2048, label %if.then7.i.i
    i16 -31011, label %if.then11.i.i
  ]

vlan_get_protocol.exit.i.i.if.end15.i.i_crit_edge: ; preds = %vlan_get_protocol.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i

if.then7.i.i:                                     ; preds = %vlan_get_protocol.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %237 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %tx_flags.i, align 4
  %or.i159.i = or i32 %238, 32
  store i32 %or.i159.i, ptr %tx_flags.i, align 4
  br label %if.end15.i.i

if.then11.i.i:                                    ; preds = %vlan_get_protocol.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %239 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %tx_flags.i, align 4
  %or13.i.i = or i32 %240, 64
  store i32 %or13.i.i, ptr %tx_flags.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then11.i.i, %if.then7.i.i, %vlan_get_protocol.exit.i.i.if.end15.i.i_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i
  %241 = ptrtoint ptr %ip_summed.i139.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %bf.load16.i.i = load i16, ptr %ip_summed.i139.i, align 8
  %242 = and i16 %bf.load16.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %242)
  %tobool.not.i160.i = icmp eq i16 %242, 0
  br i1 %tobool.not.i160.i, label %if.end15.i.i.if.end125.i.i_crit_edge, label %if.then20.i.i

if.end15.i.i.if.end125.i.i_crit_edge:             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i.i

if.then20.i.i:                                    ; preds = %if.end15.i.i
  %243 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %tx_flags.i, align 4
  %and.i161.i = and i32 %244, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i161.i)
  %tobool22.not.i.i = icmp eq i32 %and.i161.i, 0
  br i1 %tobool22.not.i.i, label %if.else29.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and25.i.i = and i32 %244, 1
  %245 = or i32 %and25.i.i, 2
  %protocol28.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i145.i, i32 0, i32 6
  %246 = ptrtoint ptr %protocol28.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %protocol28.i.i, align 1
  %248 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %l4_proto.i.i, align 1
  br label %if.end45.i.i

if.else29.i.i:                                    ; preds = %if.then20.i.i
  %and31.i.i = and i32 %244, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.else29.i.i.if.end45thread-pre-split.i.i_crit_edge, label %if.then33.i.i

if.else29.i.i.if.end45thread-pre-split.i.i_crit_edge: ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45thread-pre-split.i.i

if.then33.i.i:                                    ; preds = %if.else29.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i145.i, i32 40
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i145.i, i32 0, i32 3
  %249 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %nexthdr.i.i, align 2
  %251 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %250, ptr %l4_proto.i.i, align 1
  %252 = ptrtoint ptr %data.i147.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %data.i147.i, align 4
  %sub.ptr.lhs.cast36.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast37.i.i = ptrtoint ptr %253 to i32
  %sub.ptr.sub38.i.i = sub i32 %sub.ptr.lhs.cast36.i.i, %sub.ptr.rhs.cast37.i.i
  %call39.i.i = call i32 @ipv6_skip_exthdr(ptr noundef %204, i32 noundef %sub.ptr.sub38.i.i, ptr noundef nonnull %l4_proto.i.i, ptr noundef nonnull %frag_off.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %cmp40.i.i = icmp slt i32 %call39.i.i, 0
  br i1 %cmp40.i.i, label %if.then33.i.i.ice_tx_csum.exit.thread.i_crit_edge, label %if.then33.i.i.if.end45thread-pre-split.i.i_crit_edge

if.then33.i.i.if.end45thread-pre-split.i.i_crit_edge: ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45thread-pre-split.i.i

if.then33.i.i.ice_tx_csum.exit.thread.i_crit_edge: ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_tx_csum.exit.thread.i

if.end45thread-pre-split.i.i:                     ; preds = %if.then33.i.i.if.end45thread-pre-split.i.i_crit_edge, %if.else29.i.i.if.end45thread-pre-split.i.i_crit_edge
  %tunnel.0.ph.i.i = phi i32 [ 0, %if.else29.i.i.if.end45thread-pre-split.i.i_crit_edge ], [ 1, %if.then33.i.i.if.end45thread-pre-split.i.i_crit_edge ]
  %254 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %.pr.i.i = load i8, ptr %l4_proto.i.i, align 1
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.end45thread-pre-split.i.i, %if.then23.i.i
  %255 = phi i8 [ %.pr.i.i, %if.end45thread-pre-split.i.i ], [ %247, %if.then23.i.i ]
  %tunnel.0.i.i = phi i32 [ %tunnel.0.ph.i.i, %if.end45thread-pre-split.i.i ], [ %245, %if.then23.i.i ]
  %256 = zext i8 %255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %255, label %sw.default.i.i [
    i8 17, label %sw.bb.i.i
    i8 47, label %sw.bb52.i.i
    i8 4, label %if.end45.i.i.sw.bb58.i.i_crit_edge
    i8 41, label %if.end45.i.i.sw.bb58.i.i_crit_edge80
  ]

if.end45.i.i.sw.bb58.i.i_crit_edge80:             ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb58.i.i

if.end45.i.i.sw.bb58.i.i_crit_edge:               ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb58.i.i

sw.bb.i.i:                                        ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %257 = or i32 %tunnel.0.i.i, 512
  %258 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %tx_flags.i, align 4
  %or51.i.i = or i32 %259, 128
  store i32 %or51.i.i, ptr %tx_flags.i, align 4
  br label %sw.epilog.i.i

sw.bb52.i.i:                                      ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %260 = or i32 %tunnel.0.i.i, 1024
  %261 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %tx_flags.i, align 4
  %or57.i.i = or i32 %262, 128
  store i32 %or57.i.i, ptr %tx_flags.i, align 4
  br label %sw.epilog.i.i

sw.bb58.i.i:                                      ; preds = %if.end45.i.i.sw.bb58.i.i_crit_edge, %if.end45.i.i.sw.bb58.i.i_crit_edge80
  %263 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %tx_flags.i, align 4
  %or60.i.i = or i32 %264, 128
  store i32 %or60.i.i, ptr %tx_flags.i, align 4
  %265 = ptrtoint ptr %head.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %head.i.i142.i, align 8
  %inner_network_header.i.i162.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 15, i32 0, i32 16
  %267 = ptrtoint ptr %inner_network_header.i.i162.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %inner_network_header.i.i162.i, align 4
  %conv.i285.i.i = zext i16 %268 to i32
  %add.ptr.i286.i.i = getelementptr i8, ptr %266, i32 %conv.i285.i.i
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end45.i.i
  %269 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %tx_flags.i, align 4
  %and63.i.i = and i32 %270, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i.i)
  %tobool64.not.i.i = icmp eq i32 %and63.i.i, 0
  br i1 %tobool64.not.i.i, label %if.end66.i.i, label %sw.default.i.i.ice_tx_csum.exit.thread.i_crit_edge

sw.default.i.i.ice_tx_csum.exit.thread.i_crit_edge: ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_tx_csum.exit.thread.i

if.end66.i.i:                                     ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call67.i.i = call i32 @skb_checksum_help(ptr noundef %204) #10
  br label %if.end24.i

sw.epilog.i.i:                                    ; preds = %sw.bb58.i.i, %sw.bb52.i.i, %sw.bb.i.i
  %l4.sroa.0.0.i163.i = phi ptr [ %add.ptr.i286.i.i, %sw.bb58.i.i ], [ %add.ptr.i283.i.i, %sw.bb52.i.i ], [ %add.ptr.i283.i.i, %sw.bb.i.i ]
  %tunnel.1.i.i = phi i32 [ %tunnel.0.i.i, %sw.bb58.i.i ], [ %260, %sw.bb52.i.i ], [ %257, %sw.bb.i.i ]
  %sub.ptr.lhs.cast68.i.i = ptrtoint ptr %l4.sroa.0.0.i163.i to i32
  %sub.ptr.sub70.i.i = sub i32 %sub.ptr.lhs.cast68.i.i, %sub.ptr.lhs.cast.i148.i
  %div71.i.i = sdiv i32 %sub.ptr.sub70.i.i, 4
  %shl72.i.i = shl nsw i32 %div71.i.i, 2
  %or73.i.i = or i32 %shl72.i.i, %tunnel.1.i.i
  %271 = ptrtoint ptr %head.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %head.i.i142.i, align 8
  %inner_network_header.i288.i.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 15, i32 0, i32 16
  %273 = ptrtoint ptr %inner_network_header.i288.i.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %inner_network_header.i288.i.i, align 4
  %conv.i289.i.i = zext i16 %274 to i32
  %add.ptr.i290.i.i = getelementptr i8, ptr %272, i32 %conv.i289.i.i
  %sub.ptr.lhs.cast75.i.i = ptrtoint ptr %add.ptr.i290.i.i to i32
  %sub.ptr.sub77.i.i = sub i32 %sub.ptr.lhs.cast75.i.i, %sub.ptr.lhs.cast68.i.i
  %div78.i.i = sdiv i32 %sub.ptr.sub77.i.i, 2
  %shl79.i.i = shl i32 %div78.i.i, 12
  %or80.i.i = or i32 %or73.i.i, %shl79.i.i
  %275 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %tx_flags.i, align 4
  %and85.i.i = and i32 %276, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i.i)
  %tobool86.not.i.i = icmp eq i32 %and85.i.i, 0
  br i1 %tobool86.not.i.i, label %sw.epilog.i.i.if.end97.i.i_crit_edge, label %land.lhs.true.i166.i

sw.epilog.i.i.if.end97.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97.i.i

land.lhs.true.i166.i:                             ; preds = %sw.epilog.i.i
  %end.i.i164.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 17
  %277 = ptrtoint ptr %end.i.i164.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %end.i.i164.i, align 4
  %gso_type.i165.i = getelementptr inbounds %struct.skb_shared_info, ptr %278, i32 0, i32 8
  %279 = ptrtoint ptr %gso_type.i165.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %gso_type.i165.i, align 8
  %and82.i.i = and i32 %280, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i.i)
  %tobool83.not.i.i = icmp eq i32 %and82.i.i, 0
  br i1 %tobool83.not.i.i, label %land.lhs.true88.i.i, label %land.lhs.true.i166.i.if.end97.i.i_crit_edge

land.lhs.true.i166.i.if.end97.i.i_crit_edge:      ; preds = %land.lhs.true.i166.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97.i.i

land.lhs.true88.i.i:                              ; preds = %land.lhs.true.i166.i
  call void @__sanitizer_cov_trace_pc() #12
  %and91.i.i = shl i32 %280, 12
  %281 = and i32 %and91.i.i, 8388608
  %282 = or i32 %281, %or80.i.i
  br label %if.end97.i.i

if.end97.i.i:                                     ; preds = %land.lhs.true88.i.i, %land.lhs.true.i166.i.if.end97.i.i_crit_edge, %sw.epilog.i.i.if.end97.i.i_crit_edge
  %tunnel.2.i.i = phi i32 [ %or80.i.i, %land.lhs.true.i166.i.if.end97.i.i_crit_edge ], [ %or80.i.i, %sw.epilog.i.i.if.end97.i.i_crit_edge ], [ %282, %land.lhs.true88.i.i ]
  %cd_tunnel_params.i.i = getelementptr inbounds %struct.ice_tx_offload_params, ptr %offload.i, i32 0, i32 5
  %283 = ptrtoint ptr %cd_tunnel_params.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %cd_tunnel_params.i.i, align 8
  %or98.i.i = or i32 %284, %tunnel.2.i.i
  store i32 %or98.i.i, ptr %cd_tunnel_params.i.i, align 8
  %285 = ptrtoint ptr %offload.i to i32
  call void @__asan_load8_noabort(i32 %285)
  %286 = load i64, ptr %offload.i, align 8
  %or99.i.i = or i64 %286, 1
  store i64 %or99.i.i, ptr %offload.i, align 8
  %inner_transport_header.i.i167.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 15, i32 0, i32 15
  %287 = ptrtoint ptr %inner_transport_header.i.i167.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %inner_transport_header.i.i167.i, align 2
  %conv.i293.i.i = zext i16 %288 to i32
  %add.ptr.i294.i.i = getelementptr i8, ptr %272, i32 %conv.i293.i.i
  %289 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 0, ptr %l4_proto.i.i, align 1
  %290 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %tx_flags.i, align 4
  %and102.i.i = and i32 %291, -97
  store i32 %and102.i.i, ptr %tx_flags.i, align 4
  %292 = ptrtoint ptr %add.ptr.i290.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %bf.load103.i.i = load i8, ptr %add.ptr.i290.i.i, align 4
  %bf.lshr104.mask.i.i = and i8 %bf.load103.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr104.mask.i.i)
  %cmp106.i.i = icmp eq i8 %bf.lshr104.mask.i.i, 64
  br i1 %cmp106.i.i, label %if.then108.i.i, label %if.end97.i.i.if.end111.i.i_crit_edge

if.end97.i.i.if.end111.i.i_crit_edge:             ; preds = %if.end97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111.i.i

if.then108.i.i:                                   ; preds = %if.end97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or110.i.i = or i32 %and102.i.i, 32
  %293 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %or110.i.i, ptr %tx_flags.i, align 4
  br label %if.end111.i.i

if.end111.i.i:                                    ; preds = %if.then108.i.i, %if.end97.i.i.if.end111.i.i_crit_edge
  %294 = ptrtoint ptr %add.ptr.i290.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %bf.load112.i.i = load i8, ptr %add.ptr.i290.i.i, align 4
  %bf.lshr113.mask.i.i = and i8 %bf.load112.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr113.mask.i.i)
  %cmp115.i.i = icmp eq i8 %bf.lshr113.mask.i.i, 96
  br i1 %cmp115.i.i, label %if.then117.i.i, label %if.end111.i.i.if.end125.i.i_crit_edge

if.end111.i.i.if.end125.i.i_crit_edge:            ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i.i

if.then117.i.i:                                   ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %295 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %tx_flags.i, align 4
  %or119.i.i = or i32 %296, 64
  store i32 %or119.i.i, ptr %tx_flags.i, align 4
  br label %if.end125.i.i

if.end125.i.i:                                    ; preds = %if.then117.i.i, %if.end111.i.i.if.end125.i.i_crit_edge, %if.end15.i.i.if.end125.i.i_crit_edge
  %ip.sroa.0.1.i.i = phi ptr [ %add.ptr.i.i145.i, %if.end15.i.i.if.end125.i.i_crit_edge ], [ %add.ptr.i290.i.i, %if.then117.i.i ], [ %add.ptr.i290.i.i, %if.end111.i.i.if.end125.i.i_crit_edge ]
  %l4.sroa.0.2.i.i = phi ptr [ %add.ptr.i283.i.i, %if.end15.i.i.if.end125.i.i_crit_edge ], [ %add.ptr.i294.i.i, %if.then117.i.i ], [ %add.ptr.i294.i.i, %if.end111.i.i.if.end125.i.i_crit_edge ]
  %297 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %tx_flags.i, align 4
  %and127.i.i = and i32 %298, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i.i)
  %tobool128.not.i.i = icmp eq i32 %and127.i.i, 0
  br i1 %tobool128.not.i.i, label %if.else139.i.i, label %if.then129.i.i

if.then129.i.i:                                   ; preds = %if.end125.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %protocol130.i.i = getelementptr inbounds %struct.iphdr, ptr %ip.sroa.0.1.i.i, i32 0, i32 6
  %299 = ptrtoint ptr %protocol130.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %protocol130.i.i, align 1
  %301 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %300, ptr %l4_proto.i.i, align 1
  %and132.i.i = and i32 %298, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.i.i)
  %tobool133.not.i.i = icmp eq i32 %and132.i.i, 0
  %..i.i = select i1 %tobool133.not.i.i, i32 64, i32 96
  br label %if.end158.i.i

if.else139.i.i:                                   ; preds = %if.end125.i.i
  %and141.i.i = and i32 %298, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141.i.i)
  %tobool142.not.i.i = icmp eq i32 %and141.i.i, 0
  br i1 %tobool142.not.i.i, label %if.else139.i.i.ice_tx_csum.exit.thread.i_crit_edge, label %if.then143.i.i

if.else139.i.i.ice_tx_csum.exit.thread.i_crit_edge: ; preds = %if.else139.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_tx_csum.exit.thread.i

if.then143.i.i:                                   ; preds = %if.else139.i.i
  %add.ptr145.i.i = getelementptr i8, ptr %ip.sroa.0.1.i.i, i32 40
  %nexthdr146.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %ip.sroa.0.1.i.i, i32 0, i32 3
  %302 = ptrtoint ptr %nexthdr146.i.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %nexthdr146.i.i, align 2
  %304 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %303, ptr %l4_proto.i.i, align 1
  %cmp147.not.i.i = icmp eq ptr %l4.sroa.0.2.i.i, %add.ptr145.i.i
  br i1 %cmp147.not.i.i, label %if.then143.i.i.if.end158.i.i_crit_edge, label %if.then149.i.i

if.then143.i.i.if.end158.i.i_crit_edge:           ; preds = %if.then143.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158.i.i

if.then149.i.i:                                   ; preds = %if.then143.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %305 = ptrtoint ptr %data.i147.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %data.i147.i, align 4
  %sub.ptr.lhs.cast151.i.i = ptrtoint ptr %add.ptr145.i.i to i32
  %sub.ptr.rhs.cast152.i.i = ptrtoint ptr %306 to i32
  %sub.ptr.sub153.i.i = sub i32 %sub.ptr.lhs.cast151.i.i, %sub.ptr.rhs.cast152.i.i
  %call154.i.i = call i32 @ipv6_skip_exthdr(ptr noundef %204, i32 noundef %sub.ptr.sub153.i.i, ptr noundef nonnull %l4_proto.i.i, ptr noundef nonnull %frag_off.i.i) #10
  br label %if.end158.i.i

if.end158.i.i:                                    ; preds = %if.then149.i.i, %if.then143.i.i.if.end158.i.i_crit_edge, %if.then129.i.i
  %cmd.0.i.i = phi i32 [ 32, %if.then149.i.i ], [ 32, %if.then143.i.i.if.end158.i.i_crit_edge ], [ %..i.i, %if.then129.i.i ]
  %sub.ptr.lhs.cast159.i.i = ptrtoint ptr %l4.sroa.0.2.i.i to i32
  %sub.ptr.rhs.cast160.i.i = ptrtoint ptr %ip.sroa.0.1.i.i to i32
  %sub.ptr.sub161.i.i = sub i32 %sub.ptr.lhs.cast159.i.i, %sub.ptr.rhs.cast160.i.i
  %307 = shl i32 %sub.ptr.sub161.i.i, 5
  %shl163.i.i = and i32 %307, -128
  %or164.i.i = or i32 %shl163.i.i, %div279.i.i
  %308 = ptrtoint ptr %l4_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %l4_proto.i.i, align 1
  %310 = zext i8 %309 to i64
  call void @__sanitizer_cov_trace_switch(i64 %310, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %309, label %sw.default181.i.i [
    i8 6, label %sw.bb166.i.i
    i8 17, label %sw.bb173.i.i
    i8 -124, label %sw.bb177.i.i
  ]

sw.bb166.i.i:                                     ; preds = %if.end158.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or167.i.i = or i32 %cmd.0.i.i, 256
  %doff.i168.i = getelementptr inbounds %struct.tcphdr, ptr %l4.sroa.0.2.i.i, i32 0, i32 4
  %311 = ptrtoint ptr %doff.i168.i to i32
  call void @__asan_load2_noabort(i32 %311)
  %bf.load168.i.i = load i16, ptr %doff.i168.i, align 4
  %bf.lshr169.i.i = lshr i16 %bf.load168.i.i, 12
  %conv170.i.i = zext i16 %bf.lshr169.i.i to i32
  %shl171.i.i = shl nuw nsw i32 %conv170.i.i, 14
  %or172.i.i = or i32 %shl171.i.i, %or164.i.i
  br label %sw.epilog188.i.i

sw.bb173.i.i:                                     ; preds = %if.end158.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or174.i.i = or i32 %cmd.0.i.i, 768
  %or176.i.i = or i32 %or164.i.i, 32768
  br label %sw.epilog188.i.i

sw.bb177.i.i:                                     ; preds = %if.end158.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or178.i.i = or i32 %cmd.0.i.i, 512
  %or180.i.i = or i32 %or164.i.i, 49152
  br label %sw.epilog188.i.i

sw.default181.i.i:                                ; preds = %if.end158.i.i
  %312 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %tx_flags.i, align 4
  %and183.i.i = and i32 %313, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183.i.i)
  %tobool184.not.i.i = icmp eq i32 %and183.i.i, 0
  br i1 %tobool184.not.i.i, label %if.end186.i.i, label %sw.default181.i.i.ice_tx_csum.exit.thread.i_crit_edge

sw.default181.i.i.ice_tx_csum.exit.thread.i_crit_edge: ; preds = %sw.default181.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_tx_csum.exit.thread.i

if.end186.i.i:                                    ; preds = %sw.default181.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call187.i.i = call i32 @skb_checksum_help(ptr noundef %204) #10
  br label %if.end24.i

sw.epilog188.i.i:                                 ; preds = %sw.bb177.i.i, %sw.bb173.i.i, %sw.bb166.i.i
  %offset.0.i.i = phi i32 [ %or180.i.i, %sw.bb177.i.i ], [ %or176.i.i, %sw.bb173.i.i ], [ %or172.i.i, %sw.bb166.i.i ]
  %cmd.1.i.i = phi i32 [ %or178.i.i, %sw.bb177.i.i ], [ %or174.i.i, %sw.bb173.i.i ], [ %or167.i.i, %sw.bb166.i.i ]
  %td_cmd.i.i = getelementptr inbounds %struct.ice_tx_offload_params, ptr %offload.i, i32 0, i32 2
  %314 = ptrtoint ptr %td_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %td_cmd.i.i, align 4
  %or189.i.i = or i32 %315, %cmd.1.i.i
  store i32 %or189.i.i, ptr %td_cmd.i.i, align 4
  %td_offset.i.i = getelementptr inbounds %struct.ice_tx_offload_params, ptr %offload.i, i32 0, i32 3
  %316 = ptrtoint ptr %td_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %td_offset.i.i, align 8
  %or190.i.i = or i32 %317, %offset.0.i.i
  store i32 %or190.i.i, ptr %td_offset.i.i, align 8
  br label %if.end24.i

ice_tx_csum.exit.thread.i:                        ; preds = %sw.default181.i.i.ice_tx_csum.exit.thread.i_crit_edge, %if.else139.i.i.ice_tx_csum.exit.thread.i_crit_edge, %sw.default.i.i.ice_tx_csum.exit.thread.i_crit_edge, %if.then33.i.i.ice_tx_csum.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l4_proto.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i.i) #10
  br label %out_drop.i

if.end24.i:                                       ; preds = %sw.epilog188.i.i, %if.end186.i.i, %if.end66.i.i, %if.end20.i.if.end24.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l4_proto.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i.i) #10
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %318 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %priority.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %319)
  %cmp26.i = icmp eq i32 %319, 7
  br i1 %cmp26.i, label %if.end24.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

if.end24.i.land.lhs.true.i_crit_edge:             ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.end24.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %320 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %322 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %mac_header.i.i, align 2
  %conv.i169.i = zext i16 %323 to i32
  %add.ptr.i170.i = getelementptr i8, ptr %321, i32 %conv.i169.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i170.i, i32 0, i32 2
  %324 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %324, i32 2)
  %325 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30516, i16 %325)
  %cmp27.i = icmp eq i16 %325, -30516
  br i1 %cmp27.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.end36.i_crit_edge

lor.lhs.false.i.if.end36.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.end24.i.land.lhs.true.i_crit_edge
  %type.i = getelementptr inbounds %struct.ice_vsi, ptr %18, i32 0, i32 17
  %326 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %cmp29.i = icmp eq i32 %327, 0
  br i1 %cmp29.i, label %land.rhs.i, label %land.lhs.true.i.if.end36.i_crit_edge

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %port_info.i = getelementptr inbounds %struct.ice_vsi, ptr %18, i32 0, i32 3
  %328 = ptrtoint ptr %port_info.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %port_info.i, align 4
  %is_sw_lldp.i = getelementptr inbounds %struct.ice_port_info, ptr %329, i32 0, i32 17, i32 3
  %330 = ptrtoint ptr %is_sw_lldp.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %bf.load.i = load i8, ptr %is_sw_lldp.i, align 4
  %331 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool32.not.i = icmp eq i8 %331, 0
  br i1 %tobool32.not.i, label %land.rhs.i.if.end36.i_crit_edge, label %if.then35.i, !prof !71

land.rhs.i.if.end36.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then35.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %332 = ptrtoint ptr %offload.i to i32
  call void @__asan_load8_noabort(i32 %332)
  %333 = load i64, ptr %offload.i, align 8
  %or.i = or i64 %333, 257
  store i64 %or.i, ptr %offload.i, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %land.rhs.i.if.end36.i_crit_edge, %land.lhs.true.i.if.end36.i_crit_edge, %lor.lhs.false.i.if.end36.i_crit_edge
  %334 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i172.i = getelementptr inbounds %struct.skb_shared_info, ptr %335, i32 0, i32 3
  %336 = ptrtoint ptr %tx_flags.i172.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %tx_flags.i172.i, align 1
  %338 = and i8 %337, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %338)
  %tobool.not.i173.i = icmp eq i8 %338, 0
  br i1 %tobool.not.i173.i, label %if.end36.i.ice_tstamp.exit.i_crit_edge, label %if.end.i174.i, !prof !71

if.end36.i.ice_tstamp.exit.i_crit_edge:           ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_tstamp.exit.i

if.end.i174.i:                                    ; preds = %if.end36.i
  %ptp_tx.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 29
  %339 = ptrtoint ptr %ptp_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %ptp_tx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %340)
  %tobool4.not.i.i14 = icmp eq i8 %340, 0
  br i1 %tobool4.not.i.i14, label %if.end.i174.i.ice_tstamp.exit.i_crit_edge, label %if.end6.i.i

if.end.i174.i.ice_tstamp.exit.i_crit_edge:        ; preds = %if.end.i174.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_tstamp.exit.i

if.end6.i.i:                                      ; preds = %if.end.i174.i
  %341 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %tx_flags.i, align 4
  %and8.i.i = and i32 %342, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %if.end6.i.i.ice_tstamp.exit.i_crit_edge

if.end6.i.i.ice_tstamp.exit.i_crit_edge:          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_tstamp.exit.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %tx_tstamps.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 24
  %343 = ptrtoint ptr %tx_tstamps.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %tx_tstamps.i.i, align 8
  %call12.i.i = call signext i8 @ice_ptp_request_ts(ptr noundef %344, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call12.i.i)
  %cmp.i175.i = icmp slt i8 %call12.i.i, 0
  br i1 %cmp.i175.i, label %if.end11.i.i.ice_tstamp.exit.i_crit_edge, label %if.end16.i.i

if.end11.i.i.ice_tstamp.exit.i_crit_edge:         ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_tstamp.exit.i

if.end16.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv1725.i.i = zext i8 %call12.i.i to i64
  %shl.i176.i = shl nuw nsw i64 %conv1725.i.i, 30
  %or.i177.i = or i64 %shl.i176.i, 33
  %345 = ptrtoint ptr %offload.i to i32
  call void @__asan_load8_noabort(i32 %345)
  %346 = load i64, ptr %offload.i, align 8
  %or18.i.i = or i64 %346, %or.i177.i
  store i64 %or18.i.i, ptr %offload.i, align 8
  %347 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %tx_flags.i, align 4
  %or20.i.i = or i32 %348, 16
  store i32 %or20.i.i, ptr %tx_flags.i, align 4
  br label %ice_tstamp.exit.i

ice_tstamp.exit.i:                                ; preds = %if.end16.i.i, %if.end11.i.i.ice_tstamp.exit.i_crit_edge, %if.end6.i.i.ice_tstamp.exit.i_crit_edge, %if.end.i174.i.ice_tstamp.exit.i_crit_edge, %if.end36.i.ice_tstamp.exit.i_crit_edge
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %18, i32 0, i32 2
  %349 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %back.i, align 8
  %is_running.i.i = getelementptr inbounds %struct.ice_pf, ptr %350, i32 0, i32 75, i32 2
  %351 = ptrtoint ptr %is_running.i.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %is_running.i.i, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %352)
  %tobool.i.not.i = icmp eq i8 %352, 0
  br i1 %tobool.i.not.i, label %ice_tstamp.exit.i.if.end39.i_crit_edge, label %if.then38.i

ice_tstamp.exit.i.if.end39.i_crit_edge:           ; preds = %ice_tstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then38.i:                                      ; preds = %ice_tstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ice_eswitch_set_target_vsi(ptr noundef %skb, ptr noundef nonnull %offload.i) #10
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then38.i, %ice_tstamp.exit.i.if.end39.i_crit_edge
  %353 = ptrtoint ptr %offload.i to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %offload.i, align 8
  %and.i = and i64 %354, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool41.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool41.not.i, label %if.end39.i.if.end60.i_crit_edge, label %if.then42.i

if.end39.i.if.end60.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %355 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %next_to_use.i.i, align 8
  %desc.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 1
  %357 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %desc.i, align 4
  %idxprom44.i = zext i16 %356 to i32
  %arrayidx45.i = getelementptr %struct.ice_tx_ctx_desc, ptr %358, i32 %idxprom44.i
  %inc46.i = add i16 %356, 1
  %count48.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 16
  %359 = ptrtoint ptr %count48.i to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %count48.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc46.i, i16 %360)
  %cmp50.i = icmp ult i16 %inc46.i, %360
  %spec.select.i = select i1 %cmp50.i, i16 %inc46.i, i16 0
  %361 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 %spec.select.i, ptr %next_to_use.i.i, align 8
  %cd_tunnel_params.i = getelementptr inbounds %struct.ice_tx_offload_params, ptr %offload.i, i32 0, i32 5
  %362 = ptrtoint ptr %cd_tunnel_params.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %cd_tunnel_params.i, align 8
  %364 = call i32 @llvm.bswap.i32(i32 %363) #10
  %365 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %364, ptr %arrayidx45.i, align 8
  %cd_l2tag2.i = getelementptr inbounds %struct.ice_tx_offload_params, ptr %offload.i, i32 0, i32 6
  %366 = ptrtoint ptr %cd_l2tag2.i to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %cd_l2tag2.i, align 4
  %368 = call i16 @llvm.bswap.i16(i16 %367) #10
  %l2tag2.i = getelementptr %struct.ice_tx_ctx_desc, ptr %358, i32 %idxprom44.i, i32 1
  %369 = ptrtoint ptr %l2tag2.i to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 %368, ptr %l2tag2.i, align 4
  %rsvd.i = getelementptr %struct.ice_tx_ctx_desc, ptr %358, i32 %idxprom44.i, i32 2
  %370 = ptrtoint ptr %rsvd.i to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 0, ptr %rsvd.i, align 2
  %371 = ptrtoint ptr %offload.i to i32
  call void @__asan_load8_noabort(i32 %371)
  %372 = load i64, ptr %offload.i, align 8
  %373 = call i64 @llvm.bswap.i64(i64 %372) #10
  %qw1.i = getelementptr %struct.ice_tx_ctx_desc, ptr %358, i32 %idxprom44.i, i32 3
  %374 = ptrtoint ptr %qw1.i to i32
  call void @__asan_store8_noabort(i32 %374)
  store i64 %373, ptr %qw1.i, align 8
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then42.i, %if.end39.i.if.end60.i_crit_edge
  %375 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %next_to_use.i.i, align 8
  %td_l2tag1.i.i = getelementptr inbounds %struct.ice_tx_offload_params, ptr %offload.i, i32 0, i32 4
  %377 = ptrtoint ptr %td_l2tag1.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %td_l2tag1.i.i, align 4
  %td_cmd1.i.i = getelementptr inbounds %struct.ice_tx_offload_params, ptr %offload.i, i32 0, i32 2
  %379 = ptrtoint ptr %td_cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %td_cmd1.i.i, align 4
  %conv2.i.i = zext i32 %380 to i64
  %td_offset3.i.i = getelementptr inbounds %struct.ice_tx_offload_params, ptr %offload.i, i32 0, i32 3
  %381 = ptrtoint ptr %td_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %td_offset3.i.i, align 8
  %conv4.i.i = zext i32 %382 to i64
  %383 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %103, align 4
  %data_len5.i.i = getelementptr inbounds %struct.sk_buff, ptr %384, i32 0, i32 7
  %385 = ptrtoint ptr %data_len5.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %data_len5.i.i, align 8
  %len.i.i179.i = getelementptr inbounds %struct.sk_buff, ptr %384, i32 0, i32 6
  %387 = ptrtoint ptr %len.i.i179.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %len.i.i179.i, align 4
  %sub.i.i180.i = sub i32 %388, %386
  %desc.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 1
  %389 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %desc.i.i, align 4
  %idxprom.i.i = zext i16 %376 to i32
  %arrayidx.i.i = getelementptr %struct.ice_tx_desc, ptr %390, i32 %idxprom.i.i
  %391 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %tx_flags.i, align 4
  %and.i182.i = and i32 %392, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i182.i)
  %tobool.not.i183.i = icmp eq i32 %and.i182.i, 0
  %shr.i184.i = lshr i32 %392, 16
  %td_tag.0.in.i.i = select i1 %tobool.not.i183.i, i32 %378, i32 %shr.i184.i
  %td_tag.0.i.i = zext i32 %td_tag.0.in.i.i to i64
  %dev.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 2
  %393 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %dev.i.i, align 8
  %data.i185.i = getelementptr inbounds %struct.sk_buff, ptr %384, i32 0, i32 19
  %395 = ptrtoint ptr %data.i185.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %data.i185.i, align 4
  %call.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %396) #10
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end60.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !71

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %394) #10
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %394, i32 0, i32 3
  %397 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i186.i = icmp eq ptr %398, null
  br i1 %tobool.not.i.i.i186.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %399 = ptrtoint ptr %394 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %394, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %400, %if.end.i.i.i.i ], [ %398, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #10
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @debug_dma_map_single(ptr noundef %394, ptr noundef %396, i32 noundef %sub.i.i180.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %401 = load ptr, ptr @mem_map, align 4
  %402 = ptrtoint ptr %396 to i32
  %sub.i200.i.i = add i32 %402, 1073741824
  %shr.i.i187.i = lshr i32 %sub.i200.i.i, 12
  %add.ptr.i.i188.i = getelementptr %struct.page, ptr %401, i32 %shr.i.i187.i
  %and.i.i.i = and i32 %402, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %394, ptr noundef %add.ptr.i.i188.i, i32 noundef %and.i.i.i, i32 noundef %sub.i.i180.i, i32 noundef 1, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %end.i.i189.i = getelementptr inbounds %struct.sk_buff, ptr %384, i32 0, i32 17
  %403 = ptrtoint ptr %end.i.i189.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %end.i.i189.i, align 4
  %405 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %dev.i.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %406, i32 noundef %retval.0.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.not261.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.not261.i.i, label %dma_map_single_attrs.exit.i.i.for.cond91.preheader.i.i_crit_edge, label %if.end16.lr.ph.i.i

dma_map_single_attrs.exit.i.i.for.cond91.preheader.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond91.preheader.i.i

if.end16.lr.ph.i.i:                               ; preds = %dma_map_single_attrs.exit.i.i
  %frags.i190.i = getelementptr inbounds %struct.skb_shared_info, ptr %404, i32 0, i32 12
  %407 = shl nuw nsw i64 %conv2.i.i, 4
  %408 = or i64 %407, 128
  %shl.i.i.i = select i1 %tobool.not.i183.i, i64 %407, i64 %408
  %shl1.i.i.i = shl nuw nsw i64 %conv4.i.i, 16
  %or2.i.i.i = or i64 %shl1.i.i.i, %shl.i.i.i
  %shl5.i.i.i = shl i64 %td_tag.0.i.i, 48
  %or4.i.i.i = or i64 %shl5.i.i.i, %or2.i.i.i
  %count.i191.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 16
  %or6.i.i.i = or i64 %or4.i.i.i, 211106232532992
  %409 = call i64 @llvm.bswap.i64(i64 %or6.i.i.i) #10
  br label %if.end16.i195.i

for.cond91.preheader.i.i:                         ; preds = %for.inc.i.i.for.cond91.preheader.i.i_crit_edge, %dma_map_single_attrs.exit.i.i.for.cond91.preheader.i.i_crit_edge
  %idxprom93270.pre-phi.i.i = phi i32 [ %idxprom.i.i, %dma_map_single_attrs.exit.i.i.for.cond91.preheader.i.i_crit_edge ], [ %idxprom65.i.i, %for.inc.i.i.for.cond91.preheader.i.i_crit_edge ]
  %i.0.lcssa.i.i = phi i16 [ %376, %dma_map_single_attrs.exit.i.i.for.cond91.preheader.i.i_crit_edge ], [ %i.3.i.i, %for.inc.i.i.for.cond91.preheader.i.i_crit_edge ]
  %410 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %tx_buf.i, align 16
  %arrayidx94271.i.i = getelementptr %struct.ice_tx_buf, ptr %411, i32 %idxprom93270.pre-phi.i.i
  call fastcc void @ice_unmap_and_free_tx_buf(ptr noundef %7, ptr noundef %arrayidx94271.i.i) #10
  %cmp95272.i.i = icmp eq ptr %arrayidx94271.i.i, %arrayidx.i
  br i1 %cmp95272.i.i, label %for.cond91.preheader.i.i.for.end105.i.i_crit_edge, label %if.end98.lr.ph.i.i

for.cond91.preheader.i.i.for.end105.i.i_crit_edge: ; preds = %for.cond91.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end105.i.i

if.end98.lr.ph.i.i:                               ; preds = %for.cond91.preheader.i.i
  %count103.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 16
  br label %if.end98.i.i

if.end16.i195.i:                                  ; preds = %for.inc.i.i.if.end16.i195.i_crit_edge, %if.end16.lr.ph.i.i
  %dma.0268.i.i = phi i32 [ %retval.0.i.i.i, %if.end16.lr.ph.i.i ], [ %call2.i.i.i, %for.inc.i.i.if.end16.i195.i_crit_edge ]
  %frag.0267.i.i = phi ptr [ %frags.i190.i, %if.end16.lr.ph.i.i ], [ %incdec.ptr67.i.i, %for.inc.i.i.if.end16.i195.i_crit_edge ]
  %tx_buf.0266.i.i = phi ptr [ %arrayidx.i, %if.end16.lr.ph.i.i ], [ %arrayidx66.i.i, %for.inc.i.i.if.end16.i195.i_crit_edge ]
  %tx_desc.0265.i.i = phi ptr [ %arrayidx.i.i, %if.end16.lr.ph.i.i ], [ %tx_desc.3.i.i, %for.inc.i.i.if.end16.i195.i_crit_edge ]
  %size.0264.i.i = phi i32 [ %sub.i.i180.i, %if.end16.lr.ph.i.i ], [ %438, %for.inc.i.i.if.end16.i195.i_crit_edge ]
  %data_len.0263.i.i = phi i32 [ %386, %if.end16.lr.ph.i.i ], [ %sub61.i.i, %for.inc.i.i.if.end16.i195.i_crit_edge ]
  %i.0262.i.i = phi i16 [ %376, %if.end16.lr.ph.i.i ], [ %i.3.i.i, %for.inc.i.i.if.end16.i195.i_crit_edge ]
  %len.i192.i = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.0266.i.i, i32 0, i32 5
  %412 = ptrtoint ptr %len.i192.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %size.0264.i.i, ptr %len.i192.i, align 4
  %dma17.i.i = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.0266.i.i, i32 0, i32 6
  %413 = ptrtoint ptr %dma17.i.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %dma.0268.i.i, ptr %dma17.i.i, align 4
  %sub.i193.i = sub i32 0, %dma.0268.i.i
  %and18.i.i = and i32 %sub.i193.i, 4095
  %add.i194.i = or i32 %and18.i.i, 12288
  %conv19.i.i = zext i32 %dma.0268.i.i to i64
  %414 = call i64 @llvm.bswap.i64(i64 %conv19.i.i) #10
  %415 = ptrtoint ptr %tx_desc.0265.i.i to i32
  call void @__asan_store8_noabort(i32 %415)
  store i64 %414, ptr %tx_desc.0265.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %size.0264.i.i)
  %cmp253.i.i = icmp ugt i32 %size.0264.i.i, 16383
  br i1 %cmp253.i.i, label %while.body.preheader.i.i, label %if.end16.i195.i.while.end.i.i_crit_edge, !prof !77

if.end16.i195.i.while.end.i.i_crit_edge:          ; preds = %if.end16.i195.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %if.end16.i195.i
  %conv.i.peel.i.i = zext i32 %add.i194.i to i64
  %shl3.i.peel.i.i = shl nuw nsw i64 %conv.i.peel.i.i, 34
  %or6.i.peel.i.i = or i64 %shl3.i.peel.i.i, %or4.i.i.i
  %416 = call i64 @llvm.bswap.i64(i64 %or6.i.peel.i.i) #10
  %cmd_type_offset_bsz.peel.i.i = getelementptr inbounds %struct.ice_tx_desc, ptr %tx_desc.0265.i.i, i32 0, i32 1
  %417 = ptrtoint ptr %cmd_type_offset_bsz.peel.i.i to i32
  call void @__asan_store8_noabort(i32 %417)
  store i64 %416, ptr %cmd_type_offset_bsz.peel.i.i, align 8
  %incdec.ptr.peel.i.i = getelementptr %struct.ice_tx_desc, ptr %tx_desc.0265.i.i, i32 1
  %inc.peel.i.i = add i16 %i.0262.i.i, 1
  %418 = ptrtoint ptr %count.i191.i to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %count.i191.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.peel.i.i, i16 %419)
  %cmp26.peel.i.i = icmp eq i16 %inc.peel.i.i, %419
  br i1 %cmp26.peel.i.i, label %if.then28.peel.i.i, label %while.body.preheader.i.i.if.end31.peel.i.i_crit_edge

while.body.preheader.i.i.if.end31.peel.i.i_crit_edge: ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.peel.i.i

if.then28.peel.i.i:                               ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %420 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %desc.i.i, align 4
  br label %if.end31.peel.i.i

if.end31.peel.i.i:                                ; preds = %if.then28.peel.i.i, %while.body.preheader.i.i.if.end31.peel.i.i_crit_edge
  %i.2.peel.i.i = phi i16 [ 0, %if.then28.peel.i.i ], [ %inc.peel.i.i, %while.body.preheader.i.i.if.end31.peel.i.i_crit_edge ]
  %tx_desc.2.peel.i.i = phi ptr [ %421, %if.then28.peel.i.i ], [ %incdec.ptr.peel.i.i, %while.body.preheader.i.i.if.end31.peel.i.i_crit_edge ]
  %add32.peel.i.i = add i32 %add.i194.i, %dma.0268.i.i
  %sub33.peel.i.i = sub i32 %size.0264.i.i, %add.i194.i
  %conv34.peel.i.i = zext i32 %add32.peel.i.i to i64
  %422 = call i64 @llvm.bswap.i64(i64 %conv34.peel.i.i) #10
  %423 = ptrtoint ptr %tx_desc.2.peel.i.i to i32
  call void @__asan_store8_noabort(i32 %423)
  store i64 %422, ptr %tx_desc.2.peel.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %sub33.peel.i.i)
  %cmp.peel.i.i = icmp ugt i32 %sub33.peel.i.i, 16383
  br i1 %cmp.peel.i.i, label %if.end31.peel.i.i.while.body.i.i_crit_edge, label %if.end31.peel.i.i.while.end.i.i_crit_edge, !prof !77

if.end31.peel.i.i.while.end.i.i_crit_edge:        ; preds = %if.end31.peel.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.end31.peel.i.i.while.body.i.i_crit_edge:       ; preds = %if.end31.peel.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end31.i.i.while.body.i.i_crit_edge, %if.end31.peel.i.i.while.body.i.i_crit_edge
  %dma.1257.i.i = phi i32 [ %add32.i.i, %if.end31.i.i.while.body.i.i_crit_edge ], [ %add32.peel.i.i, %if.end31.peel.i.i.while.body.i.i_crit_edge ]
  %tx_desc.1256.i.i = phi ptr [ %tx_desc.2.i.i, %if.end31.i.i.while.body.i.i_crit_edge ], [ %tx_desc.2.peel.i.i, %if.end31.peel.i.i.while.body.i.i_crit_edge ]
  %size.1255.i.i = phi i32 [ %sub33.i.i, %if.end31.i.i.while.body.i.i_crit_edge ], [ %sub33.peel.i.i, %if.end31.peel.i.i.while.body.i.i_crit_edge ]
  %i.1254.i.i = phi i16 [ %i.2.i.i, %if.end31.i.i.while.body.i.i_crit_edge ], [ %i.2.peel.i.i, %if.end31.peel.i.i.while.body.i.i_crit_edge ]
  %cmd_type_offset_bsz.i.i = getelementptr inbounds %struct.ice_tx_desc, ptr %tx_desc.1256.i.i, i32 0, i32 1
  %424 = ptrtoint ptr %cmd_type_offset_bsz.i.i to i32
  call void @__asan_store8_noabort(i32 %424)
  store i64 %409, ptr %cmd_type_offset_bsz.i.i, align 8
  %incdec.ptr.i196.i = getelementptr %struct.ice_tx_desc, ptr %tx_desc.1256.i.i, i32 1
  %inc.i.i = add i16 %i.1254.i.i, 1
  %425 = ptrtoint ptr %count.i191.i to i32
  call void @__asan_load2_noabort(i32 %425)
  %426 = load i16, ptr %count.i191.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i, i16 %426)
  %cmp26.i.i = icmp eq i16 %inc.i.i, %426
  br i1 %cmp26.i.i, label %if.then28.i197.i, label %while.body.i.i.if.end31.i.i_crit_edge

while.body.i.i.if.end31.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i.i

if.then28.i197.i:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %427 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %desc.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then28.i197.i, %while.body.i.i.if.end31.i.i_crit_edge
  %i.2.i.i = phi i16 [ 0, %if.then28.i197.i ], [ %inc.i.i, %while.body.i.i.if.end31.i.i_crit_edge ]
  %tx_desc.2.i.i = phi ptr [ %428, %if.then28.i197.i ], [ %incdec.ptr.i196.i, %while.body.i.i.if.end31.i.i_crit_edge ]
  %add32.i.i = add i32 %dma.1257.i.i, 12288
  %sub33.i.i = add i32 %size.1255.i.i, -12288
  %conv34.i.i = zext i32 %add32.i.i to i64
  %429 = call i64 @llvm.bswap.i64(i64 %conv34.i.i) #10
  %430 = ptrtoint ptr %tx_desc.2.i.i to i32
  call void @__asan_store8_noabort(i32 %430)
  store i64 %429, ptr %tx_desc.2.i.i, align 8
  %cmp.i198.i = icmp ugt i32 %sub33.i.i, 16383
  br i1 %cmp.i198.i, label %if.end31.i.i.while.body.i.i_crit_edge, label %if.end31.i.i.while.end.i.i_crit_edge, !prof !77, !llvm.loop !111

if.end31.i.i.while.end.i.i_crit_edge:             ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.end31.i.i.while.body.i.i_crit_edge:            ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end31.i.i.while.end.i.i_crit_edge, %if.end31.peel.i.i.while.end.i.i_crit_edge, %if.end16.i195.i.while.end.i.i_crit_edge
  %i.1.lcssa.i.i = phi i16 [ %i.0262.i.i, %if.end16.i195.i.while.end.i.i_crit_edge ], [ %i.2.peel.i.i, %if.end31.peel.i.i.while.end.i.i_crit_edge ], [ %i.2.i.i, %if.end31.i.i.while.end.i.i_crit_edge ]
  %size.1.lcssa.i.i = phi i32 [ %size.0264.i.i, %if.end16.i195.i.while.end.i.i_crit_edge ], [ %sub33.peel.i.i, %if.end31.peel.i.i.while.end.i.i_crit_edge ], [ %sub33.i.i, %if.end31.i.i.while.end.i.i_crit_edge ]
  %tx_desc.1.lcssa.i.i = phi ptr [ %tx_desc.0265.i.i, %if.end16.i195.i.while.end.i.i_crit_edge ], [ %tx_desc.2.peel.i.i, %if.end31.peel.i.i.while.end.i.i_crit_edge ], [ %tx_desc.2.i.i, %if.end31.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.0263.i.i)
  %tobool36.not.i.i = icmp eq i32 %data_len.0263.i.i, 0
  br i1 %tobool36.not.i.i, label %for.end.i.i, label %if.end46.i.i, !prof !71

if.end46.i.i:                                     ; preds = %while.end.i.i
  %conv.i204.i.i = zext i32 %size.1.lcssa.i.i to i64
  %shl3.i205.i.i = shl nuw nsw i64 %conv.i204.i.i, 34
  %or6.i208.i.i = or i64 %shl3.i205.i.i, %or4.i.i.i
  %431 = call i64 @llvm.bswap.i64(i64 %or6.i208.i.i) #10
  %cmd_type_offset_bsz48.i.i = getelementptr inbounds %struct.ice_tx_desc, ptr %tx_desc.1.lcssa.i.i, i32 0, i32 1
  %432 = ptrtoint ptr %cmd_type_offset_bsz48.i.i to i32
  call void @__asan_store8_noabort(i32 %432)
  store i64 %431, ptr %cmd_type_offset_bsz48.i.i, align 8
  %incdec.ptr49.i.i = getelementptr %struct.ice_tx_desc, ptr %tx_desc.1.lcssa.i.i, i32 1
  %inc50.i.i = add i16 %i.1.lcssa.i.i, 1
  %433 = ptrtoint ptr %count.i191.i to i32
  call void @__asan_load2_noabort(i32 %433)
  %434 = load i16, ptr %count.i191.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc50.i.i, i16 %434)
  %cmp54.i.i = icmp eq i16 %inc50.i.i, %434
  br i1 %cmp54.i.i, label %if.then56.i.i, label %if.end46.i.i.for.inc.i.i_crit_edge

if.end46.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then56.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %435 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %desc.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then56.i.i, %if.end46.i.i.for.inc.i.i_crit_edge
  %i.3.i.i = phi i16 [ 0, %if.then56.i.i ], [ %inc50.i.i, %if.end46.i.i.for.inc.i.i_crit_edge ]
  %tx_desc.3.i.i = phi ptr [ %436, %if.then56.i.i ], [ %incdec.ptr49.i.i, %if.end46.i.i.for.inc.i.i_crit_edge ]
  %bv_len.i.i199.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0267.i.i, i32 0, i32 1
  %437 = ptrtoint ptr %bv_len.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %bv_len.i.i199.i, align 4
  %sub61.i.i = sub i32 %data_len.0263.i.i, %438
  %439 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %dev.i.i, align 8
  %441 = ptrtoint ptr %frag.0267.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %frag.0267.i.i, align 4
  %bv_offset.i.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0267.i.i, i32 0, i32 2
  %443 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %bv_offset.i.i.i.i, align 4
  %call2.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %440, ptr noundef %442, i32 noundef %444, i32 noundef %438, i32 noundef 1, i32 noundef 0) #10
  %445 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %tx_buf.i, align 16
  %idxprom65.i.i = zext i16 %i.3.i.i to i32
  %arrayidx66.i.i = getelementptr %struct.ice_tx_buf, ptr %446, i32 %idxprom65.i.i
  %incdec.ptr67.i.i = getelementptr %struct.bio_vec, ptr %frag.0267.i.i, i32 1
  %447 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %dev.i.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %448, i32 noundef %call2.i.i.i) #10
  %cmp.i.not.i.i = icmp eq i32 %call2.i.i.i, -1
  br i1 %cmp.i.not.i.i, label %for.inc.i.i.for.cond91.preheader.i.i_crit_edge, label %for.inc.i.i.if.end16.i195.i_crit_edge

for.inc.i.i.if.end16.i195.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i195.i

for.inc.i.i.for.cond91.preheader.i.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond91.preheader.i.i

for.end.i.i:                                      ; preds = %while.end.i.i
  %449 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %103, align 4
  call void @skb_clone_tx_timestamp(ptr noundef %450) #10
  %end.i.i.i200.i = getelementptr inbounds %struct.sk_buff, ptr %450, i32 0, i32 17
  %451 = ptrtoint ptr %end.i.i.i200.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %end.i.i.i200.i, align 4
  %tx_flags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %452, i32 0, i32 3
  %453 = ptrtoint ptr %tx_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %tx_flags.i.i.i, align 1
  %455 = and i8 %454, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %455)
  %tobool.not.i.i.i = icmp eq i8 %455, 0
  br i1 %tobool.not.i.i.i, label %for.end.i.i.skb_tx_timestamp.exit.i.i_crit_edge, label %if.then.i209.i.i

for.end.i.i.skb_tx_timestamp.exit.i.i_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tx_timestamp.exit.i.i

if.then.i209.i.i:                                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @skb_tstamp_tx(ptr noundef %450, ptr noundef null) #10
  br label %skb_tx_timestamp.exit.i.i

skb_tx_timestamp.exit.i.i:                        ; preds = %if.then.i209.i.i, %for.end.i.i.skb_tx_timestamp.exit.i.i_crit_edge
  %inc68.i.i = add i16 %i.1.lcssa.i.i, 1
  %456 = ptrtoint ptr %count.i191.i to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %count.i191.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc68.i.i, i16 %457)
  %cmp72.i.i = icmp eq i16 %inc68.i.i, %457
  %spec.store.select.i.i = select i1 %cmp72.i.i, i16 0, i16 %inc68.i.i
  %conv.i213.i.i = zext i32 %size.1.lcssa.i.i to i64
  %shl3.i214.i.i = shl nuw nsw i64 %conv.i213.i.i, 34
  %or4.i215.i.i = or i64 %or4.i.i.i, %shl3.i214.i.i
  %or6.i217.i.i = or i64 %or4.i215.i.i, 48
  %458 = call i64 @llvm.bswap.i64(i64 %or6.i217.i.i) #10
  %cmd_type_offset_bsz78.i.i = getelementptr inbounds %struct.ice_tx_desc, ptr %tx_desc.1.lcssa.i.i, i32 0, i32 1
  %459 = ptrtoint ptr %cmd_type_offset_bsz78.i.i to i32
  call void @__asan_store8_noabort(i32 %459)
  store i64 %458, ptr %cmd_type_offset_bsz78.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  call void @arm_heavy_mb() #10
  %460 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr %tx_desc.1.lcssa.i.i, ptr %arrayidx.i, align 4
  %461 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 %spec.store.select.i.i, ptr %next_to_use.i.i, align 8
  %462 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %462)
  %463 = load i16, ptr %next_to_clean.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %463, i16 %spec.store.select.i.i)
  %cmp.i218.i.i = icmp ugt i16 %463, %spec.store.select.i.i
  br i1 %cmp.i218.i.i, label %skb_tx_timestamp.exit.i.i.cond.end.i.i.i_crit_edge, label %cond.false.i.i.i

skb_tx_timestamp.exit.i.i.cond.end.i.i.i_crit_edge: ; preds = %skb_tx_timestamp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %skb_tx_timestamp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %464 = ptrtoint ptr %count.i191.i to i32
  call void @__asan_load2_noabort(i32 %464)
  %465 = load i16, ptr %count.i191.i, align 4
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %skb_tx_timestamp.exit.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i16 [ %465, %cond.false.i.i.i ], [ 0, %skb_tx_timestamp.exit.i.i.cond.end.i.i.i_crit_edge ]
  %466 = xor i16 %spec.store.select.i.i, -1
  %add.i.i201.i = add i16 %463, %466
  %sub8.i.i.i = add i16 %add.i.i201.i, %cond.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %sub8.i.i.i)
  %cmp11.not.i.i.i = icmp ult i16 %sub8.i.i.i, 23
  br i1 %cmp11.not.i.i.i, label %if.end.i.i.i, label %cond.end.i.i.i.ice_maybe_stop_tx.exit.i.i_crit_edge, !prof !77

cond.end.i.i.i.ice_maybe_stop_tx.exit.i.i_crit_edge: ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_maybe_stop_tx.exit.i.i

if.end.i.i.i:                                     ; preds = %cond.end.i.i.i
  %467 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %netdev.i.i, align 8
  %469 = ptrtoint ptr %q_index.i.i to i32
  call void @__asan_load2_noabort(i32 %469)
  %470 = load i16, ptr %q_index.i.i, align 2
  %conv.i.i17 = zext i16 %470 to i32
  %_tx.i.i.i18 = getelementptr inbounds %struct.net_device, ptr %468, i32 0, i32 103
  %471 = ptrtoint ptr %_tx.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %_tx.i.i.i18, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %472, i32 %conv.i.i17, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  %473 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %473)
  %474 = load i16, ptr %next_to_clean.i.i, align 2
  %475 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %next_to_use.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %474, i16 %476)
  %cmp.i = icmp ugt i16 %474, %476
  br i1 %cmp.i, label %if.end.i.i.i.cond.end.i_crit_edge, label %cond.false.i

if.end.i.i.i.cond.end.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %477 = ptrtoint ptr %count.i191.i to i32
  call void @__asan_load2_noabort(i32 %477)
  %478 = load i16, ptr %count.i191.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i.i.i.cond.end.i_crit_edge
  %cond.i = phi i16 [ %478, %cond.false.i ], [ 0, %if.end.i.i.i.cond.end.i_crit_edge ]
  %479 = xor i16 %476, -1
  %add.i = add i16 %474, %479
  %sub10.i = add i16 %add.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %sub10.i)
  %cmp13.i = icmp ult i16 %sub10.i, 23
  br i1 %cmp13.i, label %cond.end.i.ice_maybe_stop_tx.exit.i.i_crit_edge, label %if.end.i20, !prof !71

cond.end.i.ice_maybe_stop_tx.exit.i.i_crit_edge:  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_maybe_stop_tx.exit.i.i

if.end.i20:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %480 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %netdev.i.i, align 8
  %482 = ptrtoint ptr %q_index.i.i to i32
  call void @__asan_load2_noabort(i32 %482)
  %483 = load i16, ptr %q_index.i.i, align 2
  %conv.i27.i = zext i16 %483 to i32
  %_tx.i.i28.i = getelementptr inbounds %struct.net_device, ptr %481, i32 0, i32 103
  %484 = ptrtoint ptr %_tx.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %_tx.i.i28.i, align 128
  %state.i24.i = getelementptr %struct.netdev_queue, ptr %485, i32 %conv.i27.i, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i24.i) #10
  %tx_stats.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 20
  %486 = ptrtoint ptr %tx_stats.i to i32
  call void @__asan_load8_noabort(i32 %486)
  %487 = load i64, ptr %tx_stats.i, align 8
  %inc.i19 = add i64 %487, 1
  store i64 %inc.i19, ptr %tx_stats.i, align 8
  br label %ice_maybe_stop_tx.exit.i.i

ice_maybe_stop_tx.exit.i.i:                       ; preds = %if.end.i20, %cond.end.i.ice_maybe_stop_tx.exit.i.i_crit_edge, %cond.end.i.i.i.ice_maybe_stop_tx.exit.i.i_crit_edge
  %488 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %netdev.i.i, align 8
  %490 = ptrtoint ptr %q_index.i.i to i32
  call void @__asan_load2_noabort(i32 %490)
  %491 = load i16, ptr %q_index.i.i, align 2
  %conv.i221.i.i = zext i16 %491 to i32
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %489, i32 0, i32 103
  %492 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %_tx.i.i.i.i, align 128
  %494 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %bytecount.i, align 4
  %496 = call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i203.i = and i32 %496, -16384
  %497 = inttoptr i32 %and.i.i.i203.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %497, i32 0, i32 3
  %498 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i204.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %499
  %500 = ptrtoint ptr %arrayidx.i.i204.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %arrayidx.i.i204.i, align 4
  %add.i222.i.i = add i32 %501, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %502 = inttoptr i32 %add.i222.i.i to ptr
  %503 = ptrtoint ptr %502 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %502, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %504)
  %tobool.i.not.i205.i = icmp eq i8 %504, 0
  br i1 %tobool.i.not.i205.i, label %if.end.i224.i.i, label %if.then.i223.i.i

if.then.i223.i.i:                                 ; preds = %ice_maybe_stop_tx.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %495)
  %cmp.i.i.i206.i = icmp ugt i32 %495, 268435455
  br i1 %cmp.i.i.i206.i, label %do.body2.i.i.i.i, label %__netdev_tx_sent_queue.exit.i.i, !prof !77

do.body2.i.i.i.i:                                 ; preds = %if.then.i223.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !114
  unreachable

if.end.i224.i.i:                                  ; preds = %ice_maybe_stop_tx.exit.i.i
  %dql.i.i.i.i = getelementptr %struct.netdev_queue, ptr %493, i32 %conv.i221.i.i, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %495)
  %cmp.i.i.i.i.i = icmp ugt i32 %495, 268435455
  br i1 %cmp.i.i.i.i.i, label %do.body2.i.i.i.i.i, label %dql_queued.exit.i.i.i.i, !prof !77

do.body2.i.i.i.i.i:                               ; preds = %if.end.i224.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !114
  unreachable

dql_queued.exit.i.i.i.i:                          ; preds = %if.end.i224.i.i
  %last_obj_cnt.i.i.i.i.i = getelementptr %struct.netdev_queue, ptr %493, i32 %conv.i221.i.i, i32 15, i32 2
  %505 = ptrtoint ptr %last_obj_cnt.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 %495, ptr %last_obj_cnt.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
  %506 = ptrtoint ptr %dql.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %dql.i.i.i.i, align 128
  %add.i.i.i.i.i = add i32 %507, %495
  store i32 %add.i.i.i.i.i, ptr %dql.i.i.i.i, align 128
  %adj_limit.i.i.i.i.i = getelementptr %struct.netdev_queue, ptr %493, i32 %conv.i221.i.i, i32 15, i32 1
  %508 = ptrtoint ptr %adj_limit.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load volatile i32, ptr %adj_limit.i.i.i.i.i, align 4
  %510 = load volatile i32, ptr %dql.i.i.i.i, align 128
  %sub.i.i.i.i.i = sub i32 %509, %510
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i.i.i)
  %cmp.i4.i.i.i = icmp sgt i32 %sub.i.i.i.i.i, -1
  br i1 %cmp.i4.i.i.i, label %dql_queued.exit.i.i.i.i.do.body86.i.i_crit_edge, label %if.end.i.i225.i.i, !prof !71

dql_queued.exit.i.i.i.i.do.body86.i.i_crit_edge:  ; preds = %dql_queued.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body86.i.i

if.end.i.i225.i.i:                                ; preds = %dql_queued.exit.i.i.i.i
  %state.i5.i.i.i = getelementptr %struct.netdev_queue, ptr %493, i32 %conv.i221.i.i, i32 13
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i5.i.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  %511 = ptrtoint ptr %adj_limit.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load volatile i32, ptr %adj_limit.i.i.i.i.i, align 4
  %513 = ptrtoint ptr %dql.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load volatile i32, ptr %dql.i.i.i.i, align 128
  %sub.i22.i.i.i.i = sub i32 %512, %514
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i.i.i)
  %cmp7.i.i.i.i = icmp sgt i32 %sub.i22.i.i.i.i, -1
  br i1 %cmp7.i.i.i.i, label %if.then14.i.i.i.i, label %if.end.i.i225.i.i.do.body86.i.i_crit_edge, !prof !77

if.end.i.i225.i.i.do.body86.i.i_crit_edge:        ; preds = %if.end.i.i225.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body86.i.i

if.then14.i.i.i.i:                                ; preds = %if.end.i.i225.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i5.i.i.i) #10
  br label %do.body86.i.i

__netdev_tx_sent_queue.exit.i.i:                  ; preds = %if.then.i223.i.i
  %dql.i.i.i = getelementptr %struct.netdev_queue, ptr %493, i32 %conv.i221.i.i, i32 15
  %last_obj_cnt.i.i.i.i = getelementptr %struct.netdev_queue, ptr %493, i32 %conv.i221.i.i, i32 15, i32 2
  %515 = ptrtoint ptr %last_obj_cnt.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 %495, ptr %last_obj_cnt.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
  %516 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %dql.i.i.i, align 128
  %add.i.i.i207.i = add i32 %517, %495
  store i32 %add.i.i.i207.i, ptr %dql.i.i.i, align 128
  %state.i.i.i.i = getelementptr %struct.netdev_queue, ptr %493, i32 %conv.i221.i.i, i32 13
  %518 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %519, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %__netdev_tx_sent_queue.exit.i.i.ice_xmit_frame_ring.exit_crit_edge, label %__netdev_tx_sent_queue.exit.i.i.do.body86.i.i_crit_edge

__netdev_tx_sent_queue.exit.i.i.do.body86.i.i_crit_edge: ; preds = %__netdev_tx_sent_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body86.i.i

__netdev_tx_sent_queue.exit.i.i.ice_xmit_frame_ring.exit_crit_edge: ; preds = %__netdev_tx_sent_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_xmit_frame_ring.exit

do.body86.i.i:                                    ; preds = %__netdev_tx_sent_queue.exit.i.i.do.body86.i.i_crit_edge, %if.then14.i.i.i.i, %if.end.i.i225.i.i.do.body86.i.i_crit_edge, %dql_queued.exit.i.i.i.i.do.body86.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !117
  call void @arm_heavy_mb() #10
  %conv89.i208.i = zext i16 %spec.store.select.i.i to i32
  %520 = call i32 @llvm.bswap.i32(i32 %conv89.i208.i) #10
  %tail.i.i = getelementptr inbounds %struct.ice_tx_ring, ptr %7, i32 0, i32 3
  %521 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %tail.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %522, i32 %520) #10, !srcloc !74
  br label %ice_xmit_frame_ring.exit

if.end98.i.i:                                     ; preds = %if.end104.i.i.if.end98.i.i_crit_edge, %if.end98.lr.ph.i.i
  %i.5273.i.i = phi i16 [ %i.0.lcssa.i.i, %if.end98.lr.ph.i.i ], [ %dec.i209.i, %if.end104.i.i.if.end98.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %i.5273.i.i)
  %cmp100.i.i = icmp eq i16 %i.5273.i.i, 0
  br i1 %cmp100.i.i, label %if.then102.i.i, label %if.end98.i.i.if.end104.i.i_crit_edge

if.end98.i.i.if.end104.i.i_crit_edge:             ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i.i

if.then102.i.i:                                   ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %523 = ptrtoint ptr %count103.i.i to i32
  call void @__asan_load2_noabort(i32 %523)
  %524 = load i16, ptr %count103.i.i, align 4
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %if.then102.i.i, %if.end98.i.i.if.end104.i.i_crit_edge
  %i.6.i.i = phi i16 [ %524, %if.then102.i.i ], [ %i.5273.i.i, %if.end98.i.i.if.end104.i.i_crit_edge ]
  %dec.i209.i = add i16 %i.6.i.i, -1
  %525 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %tx_buf.i, align 16
  %idxprom93.i.i = zext i16 %dec.i209.i to i32
  %arrayidx94.i.i = getelementptr %struct.ice_tx_buf, ptr %526, i32 %idxprom93.i.i
  call fastcc void @ice_unmap_and_free_tx_buf(ptr noundef %7, ptr noundef %arrayidx94.i.i) #10
  %cmp95.i.i = icmp eq ptr %arrayidx94.i.i, %arrayidx.i
  br i1 %cmp95.i.i, label %if.end104.i.i.for.end105.i.i_crit_edge, label %if.end104.i.i.if.end98.i.i_crit_edge

if.end104.i.i.if.end98.i.i_crit_edge:             ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.i.i

if.end104.i.i.for.end105.i.i_crit_edge:           ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end105.i.i

for.end105.i.i:                                   ; preds = %if.end104.i.i.for.end105.i.i_crit_edge, %for.cond91.preheader.i.i.for.end105.i.i_crit_edge
  %i.5.lcssa.i.i = phi i16 [ %i.0.lcssa.i.i, %for.cond91.preheader.i.i.for.end105.i.i_crit_edge ], [ %dec.i209.i, %if.end104.i.i.for.end105.i.i_crit_edge ]
  %527 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %527)
  store i16 %i.5.lcssa.i.i, ptr %next_to_use.i.i, align 8
  br label %ice_xmit_frame_ring.exit

out_drop.i:                                       ; preds = %ice_tx_csum.exit.thread.i, %skb_cow_head.exit.i.i.out_drop.i_crit_edge, %if.then.i.out_drop.i_crit_edge
  call fastcc void @trace_ice_xmit_frame_ring_drop(ptr noundef %7, ptr noundef %skb) #10
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %ice_xmit_frame_ring.exit

ice_xmit_frame_ring.exit:                         ; preds = %out_drop.i, %for.end105.i.i, %do.body86.i.i, %__netdev_tx_sent_queue.exit.i.i.ice_xmit_frame_ring.exit_crit_edge, %if.then10.i
  %retval.0.i = phi i32 [ 0, %out_drop.i ], [ 16, %if.then10.i ], [ 0, %__netdev_tx_sent_queue.exit.i.i.ice_xmit_frame_ring.exit_crit_edge ], [ 0, %do.body86.i.i ], [ 0, %for.end105.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %offload.i) #10
  br label %cleanup

cleanup:                                          ; preds = %ice_xmit_frame_ring.exit, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ice_xmit_frame_ring.exit ], [ 0, %if.then.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ice_select_queue(ptr noundef %netdev, ptr noundef %skb, ptr noundef %sb_dev) local_unnamed_addr #0 align 64 {
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
  %pfc_mode = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17, i32 0, i32 5
  %6 = ptrtoint ptr %pfc_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfc_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %qos_cfg = getelementptr inbounds %struct.ice_port_info, ptr %5, i32 0, i32 17
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol.i, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %9, label %if.then.ice_get_dscp_up.exit_crit_edge [
    i16 2048, label %if.then.i
    i16 -31011, label %if.then9.i
  ]

if.then.ice_get_dscp_up.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ice_get_dscp_up.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %14 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %conv.i.i.i
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tos.i.i, align 1
  %17 = lshr i8 %16, 2
  br label %ice_get_dscp_up.exit

if.then9.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i19.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i19.i, align 8
  %network_header.i.i20.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i.i20.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i.i20.i, align 4
  %conv.i.i21.i = zext i16 %21 to i32
  %add.ptr.i.i22.i = getelementptr i8, ptr %19, i32 %conv.i.i21.i
  %22 = ptrtoint ptr %add.ptr.i.i22.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i22.i, align 2
  %sum.shift.i = lshr i16 %23, 6
  %24 = trunc i16 %sum.shift.i to i8
  %25 = and i8 %24, 63
  br label %ice_get_dscp_up.exit

ice_get_dscp_up.exit:                             ; preds = %if.then9.i, %if.then.i, %if.then.ice_get_dscp_up.exit_crit_edge
  %dscp.0.shrunk.i = phi i8 [ %17, %if.then.i ], [ %25, %if.then9.i ], [ 0, %if.then.ice_get_dscp_up.exit_crit_edge ]
  %dscp.0.i = zext i8 %dscp.0.shrunk.i to i32
  %arrayidx.i = getelementptr %struct.ice_dcbx_cfg, ptr %qos_cfg, i32 0, i32 8, i32 %dscp.0.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv3 = zext i8 %27 to i32
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %28 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv3, ptr %priority, align 4
  br label %if.end

if.end:                                           ; preds = %ice_get_dscp_up.exit, %entry.if.end_crit_edge
  %call4 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %netdev, ptr noundef %skb, ptr noundef %sb_dev) #10
  ret i16 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_clean_ctrl_tx_irq(ptr nocapture noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi1 = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 7
  %0 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi1, align 4
  %next_to_clean = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 11
  %2 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_clean, align 2
  %tx_buf2 = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 4
  %4 = ptrtoint ptr %tx_buf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_buf2, align 16
  %idxprom = sext i16 %3 to i32
  %arrayidx = getelementptr %struct.ice_tx_buf, ptr %5, i32 %idxprom
  %desc = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 1
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %arrayidx4 = getelementptr %struct.ice_tx_desc, ptr %7, i32 %idxprom
  %count = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 16
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 4
  %sub = sub i16 %3, %9
  %dev = getelementptr inbounds %struct.ice_tx_ring, ptr %tx_ring, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %entry
  %i.0 = phi i16 [ %sub, %entry ], [ %i.2, %cleanup.do.body_crit_edge ]
  %budget.0 = phi i32 [ 256, %entry ], [ %dec, %cleanup.do.body_crit_edge ]
  %tx_desc.0 = phi ptr [ %arrayidx4, %entry ], [ %tx_desc.2, %cleanup.do.body_crit_edge ]
  %tx_buf.0 = phi ptr [ %arrayidx, %entry ], [ %tx_buf.2, %cleanup.do.body_crit_edge ]
  %10 = ptrtoint ptr %tx_buf.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_buf.0, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.body.do.end75_crit_edge, label %do.end

do.body.do.end75_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

do.end:                                           ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  %cmd_type_offset_bsz = getelementptr inbounds %struct.ice_tx_desc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cmd_type_offset_bsz to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cmd_type_offset_bsz, align 8
  %and = and i64 %13, 1080863910568919040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool11.not = icmp eq i64 %and, 0
  br i1 %tobool11.not, label %do.end.do.end75_crit_edge, label %if.end13

do.end.do.end75_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

if.end13:                                         ; preds = %do.end
  %14 = ptrtoint ptr %tx_buf.0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %tx_buf.0, align 4
  %incdec.ptr = getelementptr %struct.ice_tx_buf, ptr %tx_buf.0, i32 1
  %incdec.ptr16 = getelementptr %struct.ice_tx_desc, ptr %tx_desc.0, i32 1
  %inc = add i16 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc)
  %tobool17.not = icmp eq i16 %inc, 0
  %15 = call ptr @memset(ptr %tx_desc.0, i32 0, i32 16)
  br i1 %tobool17.not, label %if.then21, label %if.end13.if.end30_crit_edge, !prof !77

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count, align 4
  %sub25 = sub i16 0, %17
  %18 = ptrtoint ptr %tx_buf2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_buf2, align 16
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.end13.if.end30_crit_edge
  %i.1 = phi i16 [ %sub25, %if.then21 ], [ %inc, %if.end13.if.end30_crit_edge ]
  %tx_desc.1 = phi ptr [ %21, %if.then21 ], [ %incdec.ptr16, %if.end13.if.end30_crit_edge ]
  %tx_buf.1 = phi ptr [ %19, %if.then21 ], [ %incdec.ptr, %if.end13.if.end30_crit_edge ]
  %len = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.1, i32 0, i32 5
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool31.not = icmp eq i32 %23, 0
  br i1 %tobool31.not, label %if.end30.if.end34_crit_edge, label %if.then32

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %dma = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.1, i32 0, i32 6
  %26 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %25, i32 noundef %27, i32 noundef %23, i32 noundef 1, i32 noundef 0) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30.if.end34_crit_edge
  %tx_flags = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.1, i32 0, i32 4
  %28 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_flags, align 4
  %and35 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end39_crit_edge, label %if.then37

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %32 = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.1, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  tail call void @devm_kfree(ptr noundef %31, ptr noundef %34) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34.if.end39_crit_edge
  %35 = getelementptr inbounds %struct.ice_tx_buf, ptr %tx_buf.1, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %35, align 4
  %37 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %tx_flags, align 4
  %38 = ptrtoint ptr %tx_buf.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %tx_buf.1, align 4
  %39 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %len, align 4
  %incdec.ptr45 = getelementptr %struct.ice_tx_buf, ptr %tx_buf.1, i32 1
  %incdec.ptr46 = getelementptr %struct.ice_tx_desc, ptr %tx_desc.1, i32 1
  %inc47 = add i16 %i.1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc47)
  %tobool48.not = icmp eq i16 %inc47, 0
  %40 = call ptr @memset(ptr %tx_desc.1, i32 0, i32 16)
  br i1 %tobool48.not, label %if.then57, label %if.end39.cleanup_crit_edge, !prof !77

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then57:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %count, align 4
  %sub61 = sub i16 0, %42
  %43 = ptrtoint ptr %tx_buf2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_buf2, align 16
  %45 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.end39.cleanup_crit_edge
  %i.2 = phi i16 [ %sub61, %if.then57 ], [ %inc47, %if.end39.cleanup_crit_edge ]
  %tx_desc.2 = phi ptr [ %46, %if.then57 ], [ %incdec.ptr46, %if.end39.cleanup_crit_edge ]
  %tx_buf.2 = phi ptr [ %44, %if.then57 ], [ %incdec.ptr45, %if.end39.cleanup_crit_edge ]
  %dec = add nsw i32 %budget.0, -1
  %tobool68.not = icmp eq i32 %dec, 0
  br i1 %tobool68.not, label %cleanup.do.end75_crit_edge, label %cleanup.do.body_crit_edge, !prof !100

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

cleanup.do.end75_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

do.end75:                                         ; preds = %cleanup.do.end75_crit_edge, %do.end.do.end75_crit_edge, %do.body.do.end75_crit_edge
  %i.3136 = phi i16 [ %i.2, %cleanup.do.end75_crit_edge ], [ %i.0, %do.body.do.end75_crit_edge ], [ %i.0, %do.end.do.end75_crit_edge ]
  %47 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %count, align 4
  %add = add i16 %48, %i.3136
  %49 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %add, ptr %next_to_clean, align 2
  %back = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %back, align 8
  %hw = getelementptr inbounds %struct.ice_pf, ptr %51, i32 0, i32 58
  %q_vectors = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %q_vectors to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %q_vectors, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %tobool1.not.i = icmp eq ptr %55, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  %reg_idx.i = getelementptr inbounds %struct.ice_q_vector, ptr %55, i32 0, i32 2
  br label %cond.end.i

cond.false.i:                                     ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  %back.i = getelementptr inbounds %struct.ice_pf, ptr %51, i32 0, i32 58, i32 1
  %56 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %back.i, align 4
  %oicr_idx.i = getelementptr inbounds %struct.ice_pf, ptr %57, i32 0, i32 41
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.in.in.i = phi ptr [ %reg_idx.i, %cond.true.i ], [ %oicr_idx.i, %cond.false.i ]
  %58 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %cond.in.i = load i16, ptr %cond.in.in.i, align 2
  %cond.i = zext i16 %cond.in.i to i32
  br i1 %tobool.not.i, label %cond.end.i.do.body.i_crit_edge, label %if.then.i

cond.end.i.do.body.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then.i:                                        ; preds = %cond.end.i
  %state.i = getelementptr inbounds %struct.ice_vsi, ptr %1, i32 0, i32 9
  %59 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %60, 1
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw, align 8
  %mul.i = shl nuw nsw i32 %cond.i, 2
  %add.i = add nuw nsw i32 %mul.i, 1441792
  %add.ptr.i = getelementptr i8, ptr %62, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 452984832) #10, !srcloc !74
  br label %ice_irq_dynamic_ena.exit

ice_irq_dynamic_ena.exit:                         ; preds = %do.body.i, %if.then.i.ice_irq_dynamic_ena.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_frag_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @page_ref_add(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %_refcount = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount, ptr %_refcount, i32 65534, ptr elementtype(i32) %_refcount) #10, !srcloc !87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@page_ref_add, %if.then)) #10
          to label %if.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %page, i32 noundef 65534) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ice_clean_rx_irq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !71

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !120
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !121
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !71

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 51, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @napi_build_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_get_headlen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ice_clean_rx_irq_indicate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ice_clean_tx_irq(ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_tx_irq, i32 0, i32 1), ptr blockaddress(@trace_ice_clean_tx_irq, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !71

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !122
  %call42 = tail call i32 @__traceiter_ice_clean_tx_irq(ptr noundef null, ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !123
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !71

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_tx_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_tx_irq, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ice_clean_tx_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ice_clean_tx_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 143, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ice_clean_tx_irq_unmap(ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_tx_irq_unmap, i32 0, i32 1), ptr blockaddress(@trace_ice_clean_tx_irq_unmap, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !71

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !124
  %call42 = tail call i32 @__traceiter_ice_clean_tx_irq_unmap(ptr noundef null, ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !125
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !71

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_tx_irq_unmap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_tx_irq_unmap, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ice_clean_tx_irq_unmap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ice_clean_tx_irq_unmap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 144, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ice_clean_tx_irq_unmap_eop(ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_tx_irq_unmap_eop, i32 0, i32 1), ptr blockaddress(@trace_ice_clean_tx_irq_unmap_eop, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !71

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !126
  %call42 = tail call i32 @__traceiter_ice_clean_tx_irq_unmap_eop(ptr noundef null, ptr noundef %ring, ptr noundef %desc, ptr noundef %buf) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !127
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !71

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_tx_irq_unmap_eop, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_clean_tx_irq_unmap_eop, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ice_clean_tx_irq_unmap_eop.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ice_clean_tx_irq_unmap_eop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 145, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
declare dso_local void @ice_update_tx_ring_stats(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ice_clean_tx_irq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ice_clean_tx_irq_unmap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ice_clean_tx_irq_unmap_eop(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim(ptr noundef, [3 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ice_xmit_frame_ring(ptr noundef %ring, ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_xmit_frame_ring, i32 0, i32 1), ptr blockaddress(@trace_ice_xmit_frame_ring, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !71

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !128
  %call42 = tail call i32 @__traceiter_ice_xmit_frame_ring(ptr noundef null, ptr noundef %ring, ptr noundef %skb) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !129
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !71

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_xmit_frame_ring, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_xmit_frame_ring, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ice_xmit_frame_ring.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ice_xmit_frame_ring.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 216, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
declare dso_local void @ice_eswitch_set_target_vsi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ice_xmit_frame_ring_drop(ptr noundef %ring, ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_xmit_frame_ring_drop, i32 0, i32 1), ptr blockaddress(@trace_ice_xmit_frame_ring_drop, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !71

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !130
  %call42 = tail call i32 @__traceiter_ice_xmit_frame_ring_drop(ptr noundef null, ptr noundef %ring, ptr noundef %skb) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !131
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !71

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_xmit_frame_ring_drop, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ice_xmit_frame_ring_drop, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ice_xmit_frame_ring_drop.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ice_xmit_frame_ring_drop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 217, ptr noundef nonnull @.str.11) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
declare dso_local i32 @__traceiter_ice_xmit_frame_ring(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_tx_prepare_vlan_flags_dcb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @ice_ptp_request_ts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ice_xmit_frame_ring_drop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !25, !27, !28, !30, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !58, !60}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_txrx.c", i32 352, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ice/ice_txrx.c", i32 365, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ice_setup_tx_ring._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @ice_setup_tx_ring._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/ice/ice_txrx.c", i32 504, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ice_setup_rx_ring._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @ice_setup_rx_ring._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ice/ice_trace.h", i32 163, i32 1}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!24 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/filter.h", i32 613, i32 2}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/ice/ice_trace.h", i32 188, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ice/ice_trace.h", i32 143, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/ice/ice_trace.h", i32 144, i32 1}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ice/ice_trace.h", i32 145, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/ice/ice_trace.h", i32 216, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ice/ice_trace.h", i32 217, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2160928921}
!73 = !{i64 2160929148}
!74 = !{i64 6594338}
!75 = !{i64 2148332904, i64 2148332909, i64 2148332922, i64 2148332966, i64 2148333000, i64 2148333021}
!76 = !{i64 2160717795}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 2160953297}
!79 = !{i64 1231495}
!80 = !{i64 2155004059, i64 2155004547, i64 2155004096, i64 2155004152, i64 2155004186, i64 2155004210, i64 2155004251, i64 2155004272, i64 2155004300, i64 2155004334}
!81 = !{i64 2160851072}
!82 = !{i64 2160851287}
!83 = !{i64 2150076119}
!84 = !{i64 2150077155}
!85 = !{i64 2153207978, i64 2153208462, i64 2153208015, i64 2153208071, i64 2153208105, i64 2153208129, i64 2153208170, i64 2153208191, i64 2153208219, i64 2153208253}
!86 = !{!"branch_weights", i32 2000, i32 8006002}
!87 = !{i64 2148732227, i64 2148732253, i64 2148732282, i64 2148732316, i64 2148732347, i64 2148732370}
!88 = !{i64 1136907, i64 1136968}
!89 = !{i64 2149802420}
!90 = !{i64 2149807352}
!91 = !{i64 2149829064}
!92 = !{i64 2149833956}
!93 = !{i64 2149910413}
!94 = !{i64 2149910738}
!95 = !{i64 1139639}
!96 = !{i64 1139924}
!97 = !{i64 2160868729}
!98 = !{i64 2160868972}
!99 = !{i64 2160931308}
!100 = !{!"branch_weights", i32 2002, i32 2000}
!101 = !{i64 2155824202}
!102 = !{i64 2160933653}
!103 = !{i64 2160956948}
!104 = !{i64 1096181, i64 1096208}
!105 = !{i64 1096876, i64 1096903, i64 1096936, i64 1096957, i64 1096984, i64 1097010}
!106 = !{i64 2160955852}
!107 = !{i64 2160962753}
!108 = !{i64 6952036}
!109 = !{!"auto-init"}
!110 = !{i8 0, i8 2}
!111 = distinct !{!111, !112}
!112 = !{!"llvm.loop.peeled.count", i32 1}
!113 = !{i64 2160964579}
!114 = !{i64 2153489020, i64 2153489520, i64 2153489057, i64 2153489113, i64 2153489147, i64 2153489171, i64 2153489212, i64 2153489233, i64 2153489261, i64 2153489295}
!115 = !{i64 2153490364}
!116 = !{i64 2155823131}
!117 = !{i64 2160965042}
!118 = !{i64 2160972538}
!119 = !{i64 2160712900}
!120 = !{i64 2157154002}
!121 = !{i64 2157154217}
!122 = !{i64 2160793091}
!123 = !{i64 2160793316}
!124 = !{i64 2160811053}
!125 = !{i64 2160811290}
!126 = !{i64 2160829495}
!127 = !{i64 2160829740}
!128 = !{i64 2160886253}
!129 = !{i64 2160886472}
!130 = !{i64 2160903516}
!131 = !{i64 2160907806}
