; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_tx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.flow_dissector = type { i32, [28 x i16] }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.268, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.268 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
%struct.sk_buff_head = type { %union.anon.55, i32, %struct.spinlock }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.202, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.202 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.162, [48 x i8], %union.anon.163, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.165, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.162 = type { i64 }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type { i32, ptr }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.167, i32, i32, i32, i16, i16, %union.anon.169, i32, %union.anon.170, %union.anon.171, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.167 = type { i32 }
%union.anon.169 = type { i32 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i16 }
%struct.mlx5e_ptp = type { [8 x %struct.mlx5e_ptpsq], %struct.mlx5e_rq, %struct.napi_struct, ptr, ptr, i32, i8, i8, ptr, ptr, ptr, ptr, [1 x i32], [124 x i8] }
%struct.mlx5e_ptpsq = type { %struct.mlx5e_txqsq, %struct.mlx5e_cq, i16, i16, %struct.mlx5e_skb_fifo, ptr, [104 x i8] }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.227, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.anon.227 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.226, i32, i32 }
%union.anon.226 = type { ptr }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.225, i32, %struct.list_head, ptr, i16 }
%struct.anon.225 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.mlx5e_rq = type { %union.anon.228, %struct.anon.242, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.228 = type { %struct.anon.235 }
%struct.anon.235 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.237 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.208 }
%union.anon.208 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.236, i64, i32, [28 x i8] }
%union.anon.236 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.237 = type { %struct.anon.238 }
%struct.anon.238 = type { %struct.anon.239, [0 x %struct.mlx5_mtt] }
%struct.anon.239 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.242 = type { i16, i32, i8 }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.231, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.234, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.231 = type { %struct.anon.232 }
%struct.anon.232 = type { i8, i8, i16, i32 }
%union.anon.234 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.243, i32 }
%union.anon.243 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.mlx5e_dma_info = type { i32, %union.anon.230 }
%union.anon.230 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.251, i16 }
%union.anon.251 = type { %struct.anon.252 }
%struct.anon.252 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.253 }
%union.anon.253 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.255, i16 }
%struct.anon.255 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.256 }
%union.anon.256 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.254 = type { i16, i16 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.261, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.261 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.262 }
%struct.anon.262 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.263 }
%struct.anon.263 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.netdev_net_notifier = type { %struct.list_head, ptr }
%struct.mlx5e_promisc_table = type { %struct.mlx5e_flow_table, ptr }
%struct.mlx5e_flow_table = type { i32, ptr, ptr }
%struct.mlx5e_l2_table = type { %struct.mlx5e_flow_table, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.mlx5e_l2_rule, %struct.mlx5e_l2_rule, ptr, i8, i8, i8 }
%struct.mlx5e_l2_rule = type { [8 x i8], ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.mlx5e_stats = type { %struct.mlx5e_sw_stats, %struct.mlx5e_qcounter_stats, %struct.mlx5e_vnic_env_stats, %struct.mlx5e_vport_stats, %struct.mlx5e_pport_stats, %struct.rtnl_link_stats64, %struct.mlx5e_pcie_stats }
%struct.mlx5e_sw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_qcounter_stats = type { i32, i32 }
%struct.mlx5e_vnic_env_stats = type { [66 x i64] }
%struct.mlx5e_vport_stats = type { [66 x i64] }
%struct.mlx5e_pport_stats = type { [32 x i64], [32 x i64], [32 x i64], [8 x [32 x i64]], [32 x i64], [32 x i64], [32 x i64], [8 x [32 x i64]], [8 x [32 x i64]] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_pcie_stats = type { [32 x i64] }
%struct.mlx5e_channel_stats = type { %struct.mlx5e_ch_stats, [80 x i8], [8 x %struct.mlx5e_sq_stats], %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats, [48 x i8], %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats }
%struct.mlx5e_ch_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_sq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [48 x i8], i64, i64, i64, [104 x i8] }
%struct.mlx5e_rq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_xdpsq_stats = type { i64, i64, i64, i64, i64, i64, [80 x i8], i64, [120 x i8] }
%struct.mlx5e_ptp_stats = type { %struct.mlx5e_ch_stats, [80 x i8], [8 x %struct.mlx5e_sq_stats], [8 x %struct.mlx5e_ptp_cq_stats], %struct.mlx5e_rq_stats, [24 x i8] }
%struct.mlx5e_ptp_cq_stats = type { i64, i64, i64, i64 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.mlx5e_dcbx = type { i32, %struct.mlx5e_cee_config, i8, [8 x i8], i8, i8, i32, i32, i16 }
%struct.mlx5e_cee_config = type { [8 x i8], [8 x i8], [8 x i8], i8 }
%struct.mlx5e_xsk = type { ptr, i16, i8 }
%struct.mlx5e_scratchpad = type { ptr }
%struct.mlx5e_htb = type { [256 x %struct.hlist_head], [8 x i32], ptr, i16, i16, i16 }
%struct.mlx5e_tx_wqe_info = type { ptr, i32, i8, i8, i8, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.mlx5e_accel_tx_state = type { %struct.mlx5e_accel_tx_tls_state, %struct.mlx5e_accel_tx_ipsec_state }
%struct.mlx5e_accel_tx_tls_state = type { i32 }
%struct.mlx5e_accel_tx_ipsec_state = type { ptr, ptr, i32, i32 }
%struct.mlx5e_tx_wqe_attr = type { i16, i16, i16, i8 }
%struct.mlx5e_tx_attr = type { i32, i16, i16, i16, i16, i8 }
%struct.mlx5_wqe_eth_seg = type { i8, i8, i8, i8, i8, i8, i16, i32, %union.anon.209 }
%union.anon.209 = type { i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.152, [0 x i32], %union.anon.153, i16, i16, %union.anon.154, %struct.refcount_struct, [0 x i32], %union.anon.155 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.152 = type { i32 }
%union.anon.153 = type { %struct.hlist_node }
%union.anon.154 = type { i32 }
%union.anon.155 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.156, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.157, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.158, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.156 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.157 = type { ptr }
%union.anon.158 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.264, i32, i32, i8, i8 }
%struct.anon.264 = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5e_tx_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_eth_seg, [0 x %struct.mlx5_wqe_data_seg] }
%struct.mlx5_wqe_data_seg = type { i32, i32, i64 }
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.page = type { i32, %union.anon.10, %union.anon.147, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.147 = type { %struct.atomic_t }
%struct.mlx5e_sq_dma = type { i32, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.anon.210 = type { i16, [2 x i8] }
%struct.anon.211 = type { i16, i16 }
%struct.mlx5_err_cqe = type { [32 x i8], i32, [18 x i8], i8, i8, i32, i16, i8, i8 }
%struct.mlx5i_tx_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_datagram_seg, %struct.mlx5_wqe_eth_pad, %struct.mlx5_wqe_eth_seg, [0 x %struct.mlx5_wqe_data_seg] }
%struct.mlx5_wqe_datagram_seg = type { %struct.mlx5_av }
%struct.mlx5_av = type { %union.anon.265, i32, i8, i8, %union.anon.267, [4 x i8], [6 x i8], i8, i8, i32, [16 x i8] }
%union.anon.265 = type { i64 }
%union.anon.267 = type { i16 }
%struct.mlx5_wqe_eth_pad = type { [16 x i8] }

@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mlx5e_tx_dma_unmap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mlx5e_tx_dma_unmap unknown DMA type!\0A\00", [58 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.6 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Error cqe on cqn 0x%x, ci 0x%x, qn 0x%x, opcode 0x%x, syndrome 0x%x, vendor syndrome 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 34525, i64 35063]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_ = private constant [51 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_tx.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 598, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 326, i32 6 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 304, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 335, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 199, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [27 x i8] c"../include/linux/mlx5/cq.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 199, i32 31 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mlx5e_select_queue(ptr noundef %dev, ptr noundef %skb, ptr nocapture noundef readnone %sb_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %num_tc_x_num_ch1 = getelementptr i8, ptr %dev, i32 30128
  %0 = ptrtoint ptr %num_tc_x_num_ch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %num_tc_x_num_ch1, align 16
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 105
  %2 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp ugt i32 %3, %1
  br i1 %cmp, label %if.then, label %if.else, !prof !28

if.then:                                          ; preds = %entry
  %maj_id = getelementptr i8, ptr %dev, i32 31334
  %4 = ptrtoint ptr %maj_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load volatile i16, ptr %maj_id, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool11.not = icmp eq i16 %5, 0
  br i1 %tobool11.not, label %if.then.do.end25_crit_edge, label %if.then18, !prof !30

if.then.do.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

if.then18:                                        ; preds = %if.then
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %6 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priority.i, align 4
  %shr.i = lshr i32 %7, 16
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv.i)
  %cmp.i = icmp eq i32 %shr.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %conv4.i = trunc i32 %7 to i16
  br label %if.end.i

do.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %defcls.i = getelementptr i8, ptr %dev, i32 31336
  %8 = ptrtoint ptr %defcls.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load volatile i16, ptr %defcls.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i
  %classid.0.i = phi i16 [ %conv4.i, %if.then.i ], [ %9, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %classid.0.i)
  %tobool.not.i = icmp eq i16 %classid.0.i, 0
  br i1 %tobool.not.i, label %if.end.i.do.end25_crit_edge, label %mlx5e_select_htb_queue.exit

if.end.i.do.end25_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

mlx5e_select_htb_queue.exit:                      ; preds = %if.end.i
  %call.i = tail call i32 @mlx5e_get_txq_by_classid(ptr noundef %add.ptr.i, i16 noundef zeroext %classid.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20 = icmp sgt i32 %call.i, 0
  br i1 %cmp20, label %if.then21, label %mlx5e_select_htb_queue.exit.do.end25_crit_edge

mlx5e_select_htb_queue.exit.do.end25_crit_edge:   ; preds = %mlx5e_select_htb_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

if.then21:                                        ; preds = %mlx5e_select_htb_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %call.i to i16
  br label %cleanup77

do.end25:                                         ; preds = %mlx5e_select_htb_queue.exit.do.end25_crit_edge, %if.end.i.do.end25_crit_edge, %if.then.do.end25_crit_edge
  %ptp = getelementptr i8, ptr %dev, i32 6020
  %10 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %ptp, align 4
  %tobool27.not = icmp eq ptr %11, null
  br i1 %tobool27.not, label %do.end25.if.end40_crit_edge, label %land.lhs.true

do.end25.if.end40_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true:                                    ; preds = %do.end25
  %state = getelementptr inbounds %struct.mlx5e_ptp, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool29.not = icmp eq i32 %and1.i, 0
  br i1 %tobool29.not, label %land.lhs.true.if.end40_crit_edge, label %land.rhs

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.rhs:                                         ; preds = %land.lhs.true
  %call30 = tail call fastcc zeroext i1 @mlx5e_use_ptpsq(ptr noundef %skb)
  br i1 %call30, label %if.then38, label %land.rhs.if.end40_crit_edge, !prof !28

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then38:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = tail call fastcc zeroext i16 @mlx5e_select_ptpsq(ptr noundef %dev, ptr noundef %skb)
  br label %cleanup77

if.end40:                                         ; preds = %land.rhs.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %do.end25.if.end40_crit_edge
  %call41 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %dev, ptr noundef %skb, ptr noundef null) #11
  %conv42 = zext i16 %call41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv42)
  %cmp43.not = icmp sgt i32 %1, %conv42
  br i1 %cmp43.not, label %if.end40.if.end56_crit_edge, label %if.then51, !prof !30

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then51:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %rem = srem i32 %conv42, %1
  br label %if.end56

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call54 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %dev, ptr noundef %skb, ptr noundef null) #11
  %conv55 = zext i16 %call54 to i32
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then51, %if.end40.if.end56_crit_edge
  %txq_ix.3 = phi i32 [ %conv55, %if.else ], [ %conv42, %if.end40.if.end56_crit_edge ], [ %rem, %if.then51 ]
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 140
  %14 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool58.not = icmp eq i16 %15, 0
  br i1 %tobool58.not, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %conv60 = trunc i32 %txq_ix.3 to i16
  br label %cleanup77

if.end61:                                         ; preds = %if.end56
  %trust_state = getelementptr i8, ptr %dev, i32 2408
  %16 = ptrtoint ptr %trust_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %trust_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp63 = icmp eq i8 %17, 2
  br i1 %cmp63, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.end61
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %protocol.i, align 8
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i16 %19, label %if.then65.mlx5e_get_dscp_up.exit_crit_edge [
    i16 2048, label %if.then.i114
    i16 -31011, label %if.then8.i
  ]

if.then65.mlx5e_get_dscp_up.exit_crit_edge:       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_get_dscp_up.exit

if.then.i114:                                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %23 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %24 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %conv.i.i.i
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tos.i.i, align 1
  %27 = lshr i8 %26, 2
  br label %mlx5e_get_dscp_up.exit

if.then8.i:                                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i18.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i18.i, align 8
  %network_header.i.i19.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i19.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i.i19.i, align 4
  %conv.i.i20.i = zext i16 %31 to i32
  %add.ptr.i.i21.i = getelementptr i8, ptr %29, i32 %conv.i.i20.i
  %32 = ptrtoint ptr %add.ptr.i.i21.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i.i21.i, align 2
  %sum.shift.i = lshr i16 %33, 6
  %34 = trunc i16 %sum.shift.i to i8
  %35 = and i8 %34, 63
  br label %mlx5e_get_dscp_up.exit

mlx5e_get_dscp_up.exit:                           ; preds = %if.then8.i, %if.then.i114, %if.then65.mlx5e_get_dscp_up.exit_crit_edge
  %dscp_cp.0.shrunk.i = phi i8 [ %27, %if.then.i114 ], [ %35, %if.then8.i ], [ 0, %if.then65.mlx5e_get_dscp_up.exit_crit_edge ]
  %dscp_cp.0.i = zext i8 %dscp_cp.0.shrunk.i to i32
  %dcbx_dp.i = getelementptr i8, ptr %dev, i32 2344
  %arrayidx.i = getelementptr [64 x i8], ptr %dcbx_dp.i, i32 0, i32 %dscp_cp.0.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  %conv14.i = zext i8 %37 to i32
  br label %if.end72

if.else67:                                        ; preds = %if.end61
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %38 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool68.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool68.not, label %if.else67.if.end72_crit_edge, label %if.then69

if.else67.if.end72_crit_edge:                     ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then69:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %39 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vlan_tci, align 2
  %41 = lshr i16 %40, 13
  %42 = zext i16 %41 to i32
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.else67.if.end72_crit_edge, %mlx5e_get_dscp_up.exit
  %up.0 = phi i32 [ %conv14.i, %mlx5e_get_dscp_up.exit ], [ %42, %if.then69 ], [ 0, %if.else67.if.end72_crit_edge ]
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 128
  %arrayidx = getelementptr ptr, ptr %44, i32 %txq_ix.3
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %ch_ix73 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %46, i32 0, i32 30
  %47 = ptrtoint ptr %ch_ix73 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ch_ix73, align 4
  %channel_tc2realtxq = getelementptr i8, ptr %dev, i32 2308
  %49 = ptrtoint ptr %channel_tc2realtxq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %channel_tc2realtxq, align 4
  %arrayidx74 = getelementptr ptr, ptr %50, i32 %48
  %51 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx74, align 4
  %arrayidx75 = getelementptr i32, ptr %52, i32 %up.0
  %53 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx75, align 4
  %conv76 = trunc i32 %54 to i16
  br label %cleanup77

cleanup77:                                        ; preds = %if.end72, %if.then59, %if.then38, %if.then21
  %retval.1 = phi i16 [ %conv76, %if.end72 ], [ %conv60, %if.then59 ], [ %conv, %if.then21 ], [ %call39, %if.then38 ]
  ret i16 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlx5e_use_ptpsq(ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  %fk = alloca %struct.flow_keys, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fk) #11
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_flags, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %fk, i32 0, i32 72)
  %call.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %fk, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br i1 %call.i, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %basic = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 1
  %6 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %basic, align 8
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %7, label %if.then18 [
    i16 -30473, label %if.end3.cleanup_crit_edge
    i16 2048, label %if.end3.if.end19_crit_edge
    i16 -31011, label %if.end3.if.end19_crit_edge28
  ]

if.end3.if.end19_crit_edge28:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end3.if.end19_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end3.if.end19_crit_edge, %if.end3.if.end19_crit_edge28
  %ip_proto = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ip_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %10)
  %cmp22 = icmp eq i8 %10, 17
  br i1 %cmp22, label %land.rhs, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %ports = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 6
  %dst = getelementptr inbounds %struct.anon.254, ptr %ports, i32 0, i32 1
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dst, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %12)
  %cmp25 = icmp eq i16 %12, 319
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.end19.cleanup_crit_edge, %if.then18, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then18 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.end3.cleanup_crit_edge ], [ false, %if.end19.cleanup_crit_edge ], [ %cmp25, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fk) #11
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i16 @mlx5e_select_ptpsq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 140
  %0 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.return_txq_crit_edge, label %if.end

entry.return_txq_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_txq

if.end:                                           ; preds = %entry
  %trust_state = getelementptr i8, ptr %dev, i32 2408
  %2 = ptrtoint ptr %trust_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %trust_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol.i, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %5, label %if.then3.mlx5e_get_dscp_up.exit_crit_edge [
    i16 2048, label %if.then.i
    i16 -31011, label %if.then8.i
  ]

if.then3.mlx5e_get_dscp_up.exit_crit_edge:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_get_dscp_up.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %9 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %10 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %conv.i.i.i
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tos.i.i, align 1
  %13 = lshr i8 %12, 2
  br label %mlx5e_get_dscp_up.exit

if.then8.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i18.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i18.i, align 8
  %network_header.i.i19.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i.i19.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i.i19.i, align 4
  %conv.i.i20.i = zext i16 %17 to i32
  %add.ptr.i.i21.i = getelementptr i8, ptr %15, i32 %conv.i.i20.i
  %18 = ptrtoint ptr %add.ptr.i.i21.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i21.i, align 2
  %sum.shift.i = lshr i16 %19, 6
  %20 = trunc i16 %sum.shift.i to i8
  %21 = and i8 %20, 63
  br label %mlx5e_get_dscp_up.exit

mlx5e_get_dscp_up.exit:                           ; preds = %if.then8.i, %if.then.i, %if.then3.mlx5e_get_dscp_up.exit_crit_edge
  %dscp_cp.0.shrunk.i = phi i8 [ %13, %if.then.i ], [ %21, %if.then8.i ], [ 0, %if.then3.mlx5e_get_dscp_up.exit_crit_edge ]
  %dscp_cp.0.i = zext i8 %dscp_cp.0.shrunk.i to i32
  %dcbx_dp.i = getelementptr i8, ptr %dev, i32 2344
  %arrayidx.i = getelementptr [64 x i8], ptr %dcbx_dp.i, i32 0, i32 %dscp_cp.0.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv14.i = zext i8 %23 to i32
  br label %return_txq

if.else:                                          ; preds = %if.end
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %24 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool5.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool5.not, label %if.else.return_txq_crit_edge, label %if.then6

if.else.return_txq_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_txq

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %25 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vlan_tci, align 2
  %27 = lshr i16 %26, 13
  %28 = zext i16 %27 to i32
  br label %return_txq

return_txq:                                       ; preds = %if.then6, %if.else.return_txq_crit_edge, %mlx5e_get_dscp_up.exit, %entry.return_txq_crit_edge
  %up.0 = phi i32 [ %conv14.i, %mlx5e_get_dscp_up.exit ], [ %28, %if.then6 ], [ 0, %if.else.return_txq_crit_edge ], [ 0, %entry.return_txq_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %arrayidx = getelementptr %struct.mlx5e_priv, ptr %add.ptr.i, i32 0, i32 2, i32 %up.0
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %conv10 = trunc i32 %30 to i16
  ret i16 %conv10
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tx_mpwqe_ensure_complete(ptr nocapture noundef %sq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mpwqe.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 8
  %0 = ptrtoint ptr %mpwqe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mpwqe.i, align 8
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then, !prof !30

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc ptr @mlx5e_tx_mpwqe_session_complete(ptr noundef %sq)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5e_tx_mpwqe_session_complete(ptr nocapture noundef %sq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mpwqe = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 8
  %ds_count1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %ds_count1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ds_count1, align 4
  %2 = ptrtoint ptr %mpwqe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mpwqe, align 4
  %pc = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 5
  %4 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pc, align 128
  %conv = zext i16 %5 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, 41
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %3, align 4
  %sqn = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 17
  %7 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sqn, align 4
  %shl2 = shl i32 %8, 8
  %conv3 = zext i8 %1 to i32
  %or4 = or i32 %shl2, %conv3
  %qpn_ds = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %qpn_ds to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or4, ptr %qpn_ds, align 4
  %10 = load i16, ptr %pc, align 128
  %sz_m1.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 1
  %11 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sz_m1.i, align 4
  %13 = trunc i32 %12 to i16
  %conv1.i = and i16 %10, %13
  %wqe_info = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %wqe_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wqe_info, align 4
  %idxprom = zext i16 %conv1.i to i32
  %arrayidx = getelementptr %struct.mlx5e_tx_wqe_info, ptr %15, i32 %idxprom
  %bytes_count = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %bytes_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes_count, align 4
  %sub = add nuw nsw i32 %conv3, 3
  %div33 = lshr i32 %sub, 2
  %conv7 = trunc i32 %div33 to i8
  %pkt_count = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 8, i32 3
  %18 = ptrtoint ptr %pkt_count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pkt_count, align 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %21 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %22 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv7, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 9
  %23 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %19, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 1
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 10
  %24 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %19, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 2
  %.compoundliteral.sroa.616.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %25 = ptrtoint ptr %.compoundliteral.sroa.616.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %.compoundliteral.sroa.616.0..sroa_idx, align 4
  %26 = trunc i32 %div33 to i16
  %27 = load i16, ptr %pc, align 128
  %add13 = add i16 %27, %26
  store i16 %add13, ptr %pc, align 128
  store ptr null, ptr %mpwqe, align 4
  %28 = ptrtoint ptr %sq to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sq, align 128
  %stop_room.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 18
  %30 = ptrtoint ptr %stop_room.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %stop_room.i, align 8
  %sub.i.i = sub i16 %29, %add13
  %32 = load i32, ptr %sz_m1.i, align 4
  %33 = trunc i32 %32 to i16
  %conv1.i.i.i = and i16 %sub.i.i, %33
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i.i.i, i16 %31)
  %cmp.not.i.i = icmp uge i16 %conv1.i.i.i, %31
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %add13)
  %cmp8.i.i = icmp eq i16 %29, %add13
  %spec.select.i.i = or i1 %cmp8.i.i, %cmp.not.i.i
  br i1 %spec.select.i.i, label %entry.mlx5e_tx_check_stop.exit_crit_edge, label %if.then.i, !prof !30

entry.mlx5e_tx_check_stop.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_check_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %txq.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 16
  %34 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %txq.i, align 64
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %35, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %stats.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %36 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stats.i, align 32
  %stopped.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %37, i32 0, i32 23
  %38 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %stopped.i, align 8
  %inc.i = add i64 %39, 1
  store i64 %inc.i, ptr %stopped.i, align 8
  br label %mlx5e_tx_check_stop.exit

mlx5e_tx_check_stop.exit:                         ; preds = %if.then.i, %entry.mlx5e_tx_check_stop.exit_crit_edge
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_xmit(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %accel = alloca %struct.mlx5e_accel_tx_state, align 4
  %wqe_attr = alloca %struct.mlx5e_tx_wqe_attr, align 8
  %attr = alloca %struct.mlx5e_tx_attr, align 4
  %eseg = alloca %struct.mlx5_wqe_eth_seg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %accel) #11
  %0 = call ptr @memset(ptr %accel, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wqe_attr) #11
  %1 = ptrtoint ptr %wqe_attr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %wqe_attr, align 8, !annotation !31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %attr) #11
  %2 = call ptr @memset(ptr %attr, i32 255, i32 16)
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %5 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %queue_mapping.i, align 8
  %idxprom = zext i16 %6 to i32
  %arrayidx = getelementptr ptr, ptr %4, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not.i = icmp eq i16 %12, 0
  br i1 %tobool.i.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add i16 %12, 8
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %17 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %18 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 %conv.i.i.i.i
  %len.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %add.i.i, ptr %len.i.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end10.i_crit_edge, label %land.rhs.i.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %skc_state.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %skc_state.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %skc_state.i.i.i.i, align 2
  %conv.i.i.i41.i = zext i8 %24 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i.i41.i
  %and.i.i.i.i = and i32 %shl.i.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %land.rhs.i.i.if.end10.i_crit_edge, label %mlx5e_tls_skb_offloaded.exit.i

land.rhs.i.i.if.end10.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

mlx5e_tls_skb_offloaded.exit.i:                   ; preds = %land.rhs.i.i
  %sk_validate_xmit_skb.i.i.i = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 81
  %25 = ptrtoint ptr %sk_validate_xmit_skb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %sk_validate_xmit_skb.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !32
  %cmp.i.i.i = icmp eq ptr %26, @tls_validate_xmit_skb
  br i1 %cmp.i.i.i, label %if.then3.i, label %mlx5e_tls_skb_offloaded.exit.i.if.end10.i_crit_edge

mlx5e_tls_skb_offloaded.exit.i.if.end10.i_crit_edge: ; preds = %mlx5e_tls_skb_offloaded.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then3.i:                                       ; preds = %mlx5e_tls_skb_offloaded.exit.i
  %call4.i = call zeroext i1 @mlx5e_tls_handle_tx_skb(ptr noundef %dev, ptr noundef nonnull %8, ptr noundef %skb, ptr noundef nonnull %accel) #11
  br i1 %call4.i, label %if.then3.i.if.end10.i_crit_edge, label %if.then3.i.cleanup_crit_edge, !prof !30

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then3.i.if.end10.i_crit_edge, %mlx5e_tls_skb_offloaded.exit.i.if.end10.i_crit_edge, %land.rhs.i.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %state11.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 22
  %27 = ptrtoint ptr %state11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state11.i, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool13.not.i = icmp eq i32 %29, 0
  br i1 %tobool13.not.i, label %if.end10.i.if.end15_crit_edge, label %land.lhs.true14.i

if.end10.i.if.end15_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true14.i:                                ; preds = %if.end10.i
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %30 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %32 = and i8 %31, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.i.not.i.i.i.i = icmp eq i8 %32, 0
  br i1 %tobool.i.not.i.i.i.i, label %land.lhs.true14.i.if.end15_crit_edge, label %skb_sec_path.exit.i.i

land.lhs.true14.i.if.end15_crit_edge:             ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

skb_sec_path.exit.i.i:                            ; preds = %land.lhs.true14.i
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %33 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %extensions.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.skb_ext, ptr %34, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i42.i = zext i8 %36 to i32
  %shl.i.i.i43.i = shl nuw nsw i32 %conv.i.i.i42.i, 3
  %add.ptr.i.i.i44.i = getelementptr i8, ptr %34, i32 %shl.i.i.i43.i
  %tobool.not.i45.i = icmp eq ptr %add.ptr.i.i.i44.i, null
  br i1 %tobool.not.i45.i, label %skb_sec_path.exit.i.i.if.end15_crit_edge, label %lor.lhs.false.i.i

skb_sec_path.exit.i.i.if.end15_crit_edge:         ; preds = %skb_sec_path.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

lor.lhs.false.i.i:                                ; preds = %skb_sec_path.exit.i.i
  %olen.i.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i44.i, i32 0, i32 1
  %37 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %olen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool1.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.end15_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.if.end15_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %39 = ptrtoint ptr %add.ptr.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i.i44.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp.not.i.i = icmp eq i32 %40, %38
  br i1 %cmp.not.i.i, label %xfrm_offload.exit.i, label %lor.lhs.false2.i.i.if.end15_crit_edge

lor.lhs.false2.i.i.if.end15_crit_edge:            ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

xfrm_offload.exit.i:                              ; preds = %lor.lhs.false2.i.i
  %sub.i.i = add i32 %38, -1
  %arrayidx.i.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i44.i, i32 0, i32 3, i32 %sub.i.i
  %tobool16.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool16.not.i, label %xfrm_offload.exit.i.if.end15_crit_edge, label %if.then17.i

xfrm_offload.exit.i.if.end15_crit_edge:           ; preds = %xfrm_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then17.i:                                      ; preds = %xfrm_offload.exit.i
  %ipsec.i = getelementptr inbounds %struct.mlx5e_accel_tx_state, ptr %accel, i32 0, i32 1
  %call18.i = call zeroext i1 @mlx5e_ipsec_handle_tx_skb(ptr noundef %dev, ptr noundef %skb, ptr noundef %ipsec.i) #11
  br i1 %call18.i, label %if.then17.i.if.end15_crit_edge, label %if.then17.i.cleanup_crit_edge, !prof !30

if.then17.i.cleanup_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17.i.if.end15_crit_edge:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %if.then17.i.if.end15_crit_edge, %xfrm_offload.exit.i.if.end15_crit_edge, %lor.lhs.false2.i.i.if.end15_crit_edge, %lor.lhs.false.i.i.if.end15_crit_edge, %skb_sec_path.exit.i.i.if.end15_crit_edge, %land.lhs.true14.i.if.end15_crit_edge, %if.end10.i.if.end15_crit_edge
  call fastcc void @mlx5e_sq_xmit_prepare(ptr noundef nonnull %8, ptr noundef %skb, ptr noundef nonnull %accel, ptr noundef nonnull %attr)
  %41 = ptrtoint ptr %state11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %state11.i, align 4
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool17.not = icmp eq i32 %43, 0
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %44 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i62 = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i62, label %land.lhs.true.i64, label %if.then18.if.end22_crit_edge

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true.i64:                                ; preds = %if.then18
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %46 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i63 = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i63, label %land.lhs.true1.i, label %land.lhs.true.i64.if.end22_crit_edge

land.lhs.true.i64.if.end22_crit_edge:             ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i64
  %ihs.i = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 2
  %47 = ptrtoint ptr %ihs.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ihs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool2.not.i = icmp eq i16 %48, 0
  br i1 %tobool2.not.i, label %mlx5e_tx_skb_supports_mpwqe.exit, label %land.lhs.true1.i.if.end22_crit_edge

land.lhs.true1.i.if.end22_crit_edge:              ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

mlx5e_tx_skb_supports_mpwqe.exit:                 ; preds = %land.lhs.true1.i
  %insz.i = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 4
  %49 = ptrtoint ptr %insz.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %insz.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool3.not.i = icmp eq i16 %50, 0
  br i1 %tobool3.not.i, label %if.then20, label %mlx5e_tx_skb_supports_mpwqe.exit.if.end22_crit_edge

mlx5e_tx_skb_supports_mpwqe.exit.if.end22_crit_edge: ; preds = %mlx5e_tx_skb_supports_mpwqe.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then20:                                        ; preds = %mlx5e_tx_skb_supports_mpwqe.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eseg) #11
  %51 = call ptr @memset(ptr %eseg, i32 0, i32 16)
  %52 = ptrtoint ptr %ihs.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ihs.i, align 2
  call fastcc void @mlx5e_txwqe_build_eseg(ptr noundef %add.ptr.i, ptr noundef nonnull %8, ptr noundef %skb, ptr noundef nonnull %accel, ptr noundef nonnull %eseg, i16 noundef zeroext %53)
  %54 = call i32 @llvm.read_register.i32(metadata !18) #11
  %and.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %59, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %60 = inttoptr i32 %add.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.i = icmp ne i8 %62, 0
  %mpwqe.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 8
  %63 = ptrtoint ptr %mpwqe.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mpwqe.i.i, align 8
  %tobool.i.not.i65 = icmp eq ptr %64, null
  br i1 %tobool.i.not.i65, label %if.then20.if.end4.sink.split.i_crit_edge, label %if.else.i

if.then20.if.end4.sink.split.i_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.sink.split.i

if.else.i:                                        ; preds = %if.then20
  %eth.i.i = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %64, i32 0, i32 1
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %eth.i.i, ptr noundef nonnull dereferenceable(6) %eseg, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i66 = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i66, label %if.else.i.if.end4.i_crit_edge, label %if.then2.i

if.else.i.if.end4.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = call fastcc ptr @mlx5e_tx_mpwqe_session_complete(ptr noundef nonnull %8) #11
  br label %if.end4.sink.split.i

if.end4.sink.split.i:                             ; preds = %if.then2.i, %if.then20.if.end4.sink.split.i_crit_edge
  %wq1.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11
  %pc.i.i120 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 5
  %65 = ptrtoint ptr %pc.i.i120 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %pc.i.i120, align 128
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 0, i32 1
  %67 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sz_m1.i.i.i, align 4
  %69 = trunc i32 %68 to i16
  %conv1.i.i.i121 = and i16 %66, %69
  %conv.i.i.i122 = zext i16 %conv1.i.i.i121 to i32
  %strides_offset.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 0, i32 3
  %70 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i.i123 = zext i16 %71 to i32
  %add.i.i.i.i124 = add nuw nsw i32 %conv.i.i.i122, %conv.i.i.i.i123
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 0, i32 2
  %72 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv1.i.i.i.i = zext i16 %73 to i32
  %or.i.i.i.i = or i32 %add.i.i.i.i124, %conv1.i.i.i.i
  %sub.i.i.i.i125 = sub nsw i32 %or.i.i.i.i, %conv.i.i.i.i123
  %74 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i125, i32 %68) #11
  %75 = trunc i32 %74 to i16
  %76 = sub i16 1, %conv1.i.i.i121
  %conv2.i.i.i126 = add i16 %76, %75
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %conv2.i.i.i126)
  %cmp.i.i127 = icmp ult i16 %conv2.i.i.i126, 14
  br i1 %cmp.i.i127, label %if.then.i.i131, label %if.end4.sink.split.i.mlx5e_tx_mpwqe_session_start.exit_crit_edge, !prof !28

if.end4.sink.split.i.mlx5e_tx_mpwqe_session_start.exit_crit_edge: ; preds = %if.end4.sink.split.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_mpwqe_session_start.exit

if.then.i.i131:                                   ; preds = %if.end4.sink.split.i
  %conv.i.i128 = zext i16 %conv2.i.i.i126 to i32
  %wqe_info.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 14, i32 2
  %77 = ptrtoint ptr %wqe_info.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wqe_info.i.i, align 4
  %arrayidx.i.i129 = getelementptr %struct.mlx5e_tx_wqe_info, ptr %78, i32 %conv.i.i.i122
  %add.ptr.i.i130 = getelementptr %struct.mlx5e_tx_wqe_info, ptr %arrayidx.i.i129, i32 %conv.i.i128
  %cmp733.i.i = icmp ult ptr %arrayidx.i.i129, %add.ptr.i.i130
  br i1 %cmp733.i.i, label %for.body.lr.ph.i.i, label %if.then.i.i131.for.end.i.i_crit_edge

if.then.i.i131.for.end.i.i_crit_edge:             ; preds = %if.then.i.i131
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i.i131
  %sqn.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 17
  %log_frag_strides.i.i.i21.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 0, i32 6
  %log_stride.i.i.i28.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %wi.034.i.i = phi ptr [ %arrayidx.i.i129, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %79 = ptrtoint ptr %wi.034.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %wi.034.i.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %wi.034.i.i, i32 4
  %80 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %wi.034.i.i, i32 8
  %81 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %wi.034.i.i, i32 9
  %82 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %wi.034.i.i, i32 10
  %83 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, align 2
  %.compoundliteral.sroa.614.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %wi.034.i.i, i32 12
  %84 = ptrtoint ptr %.compoundliteral.sroa.614.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %.compoundliteral.sroa.614.0..sroa_idx.i.i, align 4
  %85 = ptrtoint ptr %sqn.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sqn.i.i, align 4
  %87 = ptrtoint ptr %pc.i.i120 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %pc.i.i120, align 2
  %89 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sz_m1.i.i.i, align 4
  %91 = trunc i32 %90 to i16
  %conv1.i.i16.i = and i16 %88, %91
  %conv.i.i17.i = zext i16 %conv1.i.i16.i to i32
  %92 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i19.i = zext i16 %93 to i32
  %add.i.i.i20.i = add nuw nsw i32 %conv.i.i17.i, %conv.i.i.i19.i
  %94 = ptrtoint ptr %log_frag_strides.i.i.i21.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %log_frag_strides.i.i.i21.i, align 2
  %conv1.i.i.i22.i = zext i8 %95 to i32
  %shr.i.i.i23.i = lshr i32 %add.i.i.i20.i, %conv1.i.i.i22.i
  %96 = ptrtoint ptr %wq1.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wq1.i.i, align 4
  %arrayidx.i.i.i24.i = getelementptr %struct.mlx5_buf_list, ptr %97, i32 %shr.i.i.i23.i
  %98 = ptrtoint ptr %arrayidx.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i.i.i24.i, align 4
  %100 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i26.i = zext i16 %101 to i32
  %and.i.i.i27.i = and i32 %add.i.i.i20.i, %conv2.i.i.i26.i
  %102 = ptrtoint ptr %log_stride.i.i.i28.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %log_stride.i.i.i28.i, align 1
  %conv3.i.i.i29.i = zext i8 %103 to i32
  %shl.i.i.i30.i = shl i32 %and.i.i.i27.i, %conv3.i.i.i29.i
  %add.ptr.i.i.i31.i = getelementptr i8, ptr %99, i32 %shl.i.i.i30.i
  %104 = call ptr @memset(ptr %add.ptr.i.i.i31.i, i32 0, i32 16)
  %105 = load i16, ptr %pc.i.i120, align 2
  %conv.i32.i = zext i16 %105 to i32
  %shl.i.i132 = shl nuw nsw i32 %conv.i32.i, 8
  %106 = ptrtoint ptr %add.ptr.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %shl.i.i132, ptr %add.ptr.i.i.i31.i, align 4
  %shl2.i.i = shl i32 %86, 8
  %or3.i.i = or i32 %shl2.i.i, 1
  %qpn_ds.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i31.i, i32 0, i32 1
  %107 = ptrtoint ptr %qpn_ds.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or3.i.i, ptr %qpn_ds.i.i, align 4
  %108 = load i16, ptr %pc.i.i120, align 2
  %inc.i.i133 = add i16 %108, 1
  store i16 %inc.i.i133, ptr %pc.i.i120, align 2
  %incdec.ptr.i.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %wi.034.i.i, i32 1
  %cmp7.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i130
  br i1 %cmp7.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.then.i.i131.for.end.i.i_crit_edge
  %conv11.i.i = zext i16 %conv2.i.i.i126 to i64
  %stats.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 13
  %109 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %stats.i.i, align 32
  %nop.i.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %110, i32 0, i32 10
  %111 = ptrtoint ptr %nop.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %nop.i.i, align 16
  %add.i.i134 = add i64 %112, %conv11.i.i
  store i64 %add.i.i134, ptr %nop.i.i, align 16
  %113 = ptrtoint ptr %pc.i.i120 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %pc.i.i120, align 128
  %115 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sz_m1.i.i.i, align 4
  %117 = trunc i32 %116 to i16
  %conv1.i32.i.i = and i16 %114, %117
  %.pre.i = zext i16 %conv1.i32.i.i to i32
  br label %mlx5e_tx_mpwqe_session_start.exit

mlx5e_tx_mpwqe_session_start.exit:                ; preds = %for.end.i.i, %if.end4.sink.split.i.mlx5e_tx_mpwqe_session_start.exit_crit_edge
  %conv.i.i9.pre-phi.i = phi i32 [ %conv.i.i.i122, %if.end4.sink.split.i.mlx5e_tx_mpwqe_session_start.exit_crit_edge ], [ %.pre.i, %for.end.i.i ]
  %118 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i11.i = zext i16 %119 to i32
  %add.i.i.i12.i = add nuw nsw i32 %conv.i.i9.pre-phi.i, %conv.i.i.i11.i
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 0, i32 6
  %120 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i13.i = zext i8 %121 to i32
  %shr.i.i.i.i = lshr i32 %add.i.i.i12.i, %conv1.i.i.i13.i
  %122 = ptrtoint ptr %wq1.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wq1.i.i, align 4
  %arrayidx.i.i.i.i135 = getelementptr %struct.mlx5_buf_list, ptr %123, i32 %shr.i.i.i.i
  %124 = ptrtoint ptr %arrayidx.i.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i.i.i.i135, align 4
  %126 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i.i = zext i16 %127 to i32
  %and.i.i.i.i136 = and i32 %add.i.i.i12.i, %conv2.i.i.i.i
  %log_stride.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 0, i32 5
  %128 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %129 to i32
  %shl.i.i.i.i137 = shl i32 %and.i.i.i.i136, %conv3.i.i.i.i
  %add.ptr.i.i.i.i138 = getelementptr i8, ptr %125, i32 %shl.i.i.i.i137
  %130 = call ptr @memset(ptr %add.ptr.i.i.i.i138, i32 0, i32 32)
  %data.i139 = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %add.ptr.i.i.i.i138, i32 0, i32 2
  call void @llvm.prefetch.p0(ptr %data.i139, i32 1, i32 3, i32 1) #11
  %131 = ptrtoint ptr %mpwqe.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %add.ptr.i.i.i.i138, ptr %mpwqe.i.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i140 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 8, i32 1
  %132 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i140 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i140, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i141 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 8, i32 2
  %133 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i141 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 2, ptr %.compoundliteral.sroa.3.0..sroa_idx.i141, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i142 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 8, i32 3
  %134 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i142 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i142, align 1
  %.compoundliteral.sroa.5.0..sroa_idx.i143 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 8, i32 4
  %135 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i143 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx.i143, align 2
  %eth.i = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %add.ptr.i.i.i.i138, i32 0, i32 1
  %136 = call ptr @memcpy(ptr %eth.i, ptr %eseg, i32 6)
  %stats.i144 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 13
  %137 = ptrtoint ptr %stats.i144 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %stats.i144, align 32
  %mpwqe_blks.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %138, i32 0, i32 11
  %139 = ptrtoint ptr %mpwqe_blks.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %mpwqe_blks.i, align 8
  %inc.i145 = add i64 %140, 1
  store i64 %inc.i145, ptr %mpwqe_blks.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %mlx5e_tx_mpwqe_session_start.exit, %if.else.i.if.end4.i_crit_edge
  %conv.i = zext i1 %tobool.i to i64
  %stats.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 13
  %141 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %stats.i, align 32
  %xmit_more5.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %xmit_more5.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %xmit_more5.i, align 16
  %add.i67 = add i64 %144, %conv.i
  store i64 %add.i67, ptr %xmit_more5.i, align 16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %145 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %147 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %len.i, align 4
  %pdev.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 20
  %149 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pdev.i, align 4
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %146) #11
  br i1 %call.i.i, label %land.rhs.i.i68, label %dma_map_single_attrs.exit.i

land.rhs.i.i68:                                   ; preds = %if.end4.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i68.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !30

land.rhs.i.i68.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i68
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %150) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %152, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %150, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %154, %if.end.i.i.i ], [ %152, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i68.dma_map_single_attrs.exit.thread.i_crit_edge
  %155 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pdev.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %156, i32 noundef -1) #11
  br label %err_unmap.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end4.i
  call void @debug_dma_map_single(ptr noundef %150, ptr noundef %146, i32 noundef %148) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %157 = load ptr, ptr @mem_map, align 4
  %158 = ptrtoint ptr %146 to i32
  %sub.i.i69 = add i32 %158, 1073741824
  %shr.i.i = lshr i32 %sub.i.i69, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %157, i32 %shr.i.i
  %and.i.i70 = and i32 %158, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %150, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i70, i32 noundef %148, i32 noundef 1, i32 noundef 0) #11
  %159 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pdev.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %160, i32 noundef %call41.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.err_unmap.i_crit_edge, label %if.end18.i

dma_map_single_attrs.exit.i.err_unmap.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unmap.i

if.end18.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %dma_fifo_pc.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 7
  %161 = ptrtoint ptr %dma_fifo_pc.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %dma_fifo_pc.i.i, align 4
  %inc.i.i = add i32 %162, 1
  store i32 %inc.i.i, ptr %dma_fifo_pc.i.i, align 4
  %db.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 14
  %163 = ptrtoint ptr %db.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %db.i.i.i, align 4
  %dma_fifo_mask.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 12
  %165 = ptrtoint ptr %dma_fifo_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %dma_fifo_mask.i.i.i, align 4
  %and.i.i.i = and i32 %166, %162
  %arrayidx.i.i.i = getelementptr %struct.mlx5e_sq_dma, ptr %164, i32 %and.i.i.i
  %167 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %call41.i.i, ptr %arrayidx.i.i.i, align 4
  %size2.i.i = getelementptr %struct.mlx5e_sq_dma, ptr %164, i32 %and.i.i.i, i32 1
  %168 = ptrtoint ptr %size2.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %148, ptr %size2.i.i, align 4
  %type.i.i = getelementptr %struct.mlx5e_sq_dma, ptr %164, i32 %and.i.i.i, i32 2
  %169 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %type.i.i, align 4
  %skb_fifo.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 14, i32 1
  %pc.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 14, i32 1, i32 1
  %170 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pc.i.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %171, align 2
  %inc.i82.i = add i16 %173, 1
  store i16 %inc.i82.i, ptr %171, align 2
  %174 = ptrtoint ptr %skb_fifo.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %skb_fifo.i, align 4
  %mask.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 14, i32 1, i32 3
  %176 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %mask.i.i.i, align 4
  %and4.i.i.i = and i16 %177, %173
  %and.i.i83.i = zext i16 %and4.i.i.i to i32
  %arrayidx.i.i84.i = getelementptr ptr, ptr %175, i32 %and.i.i83.i
  %178 = ptrtoint ptr %arrayidx.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %skb, ptr %arrayidx.i.i84.i, align 4
  %179 = ptrtoint ptr %mpwqe.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mpwqe.i.i, align 4
  %ds_count.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 8, i32 2
  %181 = ptrtoint ptr %ds_count.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %ds_count.i.i, align 4
  %conv.i.i = zext i8 %182 to i32
  %add.ptr.i86.i = getelementptr %struct.mlx5_wqe_data_seg, ptr %180, i32 %conv.i.i
  %pkt_count.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 8, i32 3
  %183 = ptrtoint ptr %pkt_count.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %pkt_count.i.i, align 1
  %inc.i87.i = add i8 %184, 1
  store i8 %inc.i87.i, ptr %pkt_count.i.i, align 1
  %bytes_count.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 8, i32 1
  %185 = ptrtoint ptr %bytes_count.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %bytes_count.i.i, align 4
  %add.i.i71 = add i32 %186, %148
  store i32 %add.i.i71, ptr %bytes_count.i.i, align 4
  %conv1.i.i = zext i32 %call41.i.i to i64
  %addr.i.i = getelementptr %struct.mlx5_wqe_data_seg, ptr %180, i32 %conv.i.i, i32 2
  %187 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %conv1.i.i, ptr %addr.i.i, align 8
  %188 = ptrtoint ptr %add.ptr.i86.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %148, ptr %add.ptr.i86.i, align 8
  %mkey_be.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 21
  %189 = ptrtoint ptr %mkey_be.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %mkey_be.i.i, align 16
  %lkey.i.i = getelementptr %struct.mlx5_wqe_data_seg, ptr %180, i32 %conv.i.i, i32 1
  %191 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %lkey.i.i, align 4
  %192 = load i8, ptr %ds_count.i.i, align 4
  %inc4.i.i = add i8 %192, 1
  store i8 %inc4.i.i, ptr %ds_count.i.i, align 4
  %193 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %stats.i, align 32
  %mpwqe_pkts.i.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %194, i32 0, i32 12
  %195 = ptrtoint ptr %mpwqe_pkts.i.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %mpwqe_pkts.i.i, align 32
  %inc5.i.i = add i64 %196, 1
  store i64 %inc5.i.i, ptr %mpwqe_pkts.i.i, align 32
  %197 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %198, i32 0, i32 3
  %199 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %tx_flags.i.i, align 1
  %201 = and i8 %200, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool.not.i88.i = icmp eq i8 %201, 0
  br i1 %tobool.not.i88.i, label %if.end18.i.mlx5e_tx_skb_update_hwts_flags.exit.i_crit_edge, label %if.then.i89.i, !prof !30

if.end18.i.mlx5e_tx_skb_update_hwts_flags.exit.i_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_skb_update_hwts_flags.exit.i

if.then.i89.i:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %202 = or i8 %200, 4
  %203 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %tx_flags.i.i, align 1
  br label %mlx5e_tx_skb_update_hwts_flags.exit.i

mlx5e_tx_skb_update_hwts_flags.exit.i:            ; preds = %if.then.i89.i, %if.end18.i.mlx5e_tx_skb_update_hwts_flags.exit.i_crit_edge
  %204 = ptrtoint ptr %ds_count.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %ds_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %205)
  %cmp.i91.i = icmp eq i8 %205, 56
  br i1 %cmp.i91.i, label %if.then28.i, label %if.else35.i, !prof !28

if.then28.i:                                      ; preds = %mlx5e_tx_skb_update_hwts_flags.exit.i
  %call29.i = call fastcc ptr @mlx5e_tx_mpwqe_session_complete(ptr noundef %8) #11
  %txq.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 16
  %206 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %txq.i, align 64
  %call32.i = call fastcc zeroext i1 @__netdev_tx_sent_queue(ptr noundef %207, i32 noundef %148, i1 noundef zeroext %tobool.i) #11
  br i1 %call32.i, label %if.then33.i, label %if.then28.i.mlx5e_sq_xmit_mpwqe.exit_crit_edge

if.then28.i.mlx5e_sq_xmit_mpwqe.exit_crit_edge:   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_sq_xmit_mpwqe.exit

if.then33.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  %wq.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11
  %pc.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 5
  %208 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %pc.i, align 128
  %uar_map.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 15
  %210 = ptrtoint ptr %uar_map.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %uar_map.i, align 4
  call fastcc void @mlx5e_notify_hw(ptr noundef %wq.i, i16 noundef zeroext %209, ptr noundef %211, ptr noundef %call29.i) #11
  br label %mlx5e_sq_xmit_mpwqe.exit

if.else35.i:                                      ; preds = %mlx5e_tx_skb_update_hwts_flags.exit.i
  %txq36.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 16
  %212 = ptrtoint ptr %txq36.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %txq36.i, align 64
  br i1 %tobool.i, label %if.then.i92.i, label %if.end.i.i

if.then.i92.i:                                    ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %148)
  %cmp.i.i.i73 = icmp ugt i32 %148, 268435455
  br i1 %cmp.i.i.i73, label %do.body2.i.i.i, label %__netdev_tx_sent_queue.exit.i, !prof !28

do.body2.i.i.i:                                   ; preds = %if.then.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !33
  unreachable

if.end.i.i:                                       ; preds = %if.else35.i
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %213, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %148)
  %cmp.i.i.i.i = icmp ugt i32 %148, 268435455
  br i1 %cmp.i.i.i.i, label %do.body2.i.i.i.i, label %dql_queued.exit.i.i.i, !prof !28

do.body2.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !33
  unreachable

dql_queued.exit.i.i.i:                            ; preds = %if.end.i.i
  %last_obj_cnt.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %213, i32 0, i32 15, i32 2
  %214 = ptrtoint ptr %last_obj_cnt.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %148, ptr %last_obj_cnt.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %215 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %dql.i.i.i, align 128
  %add.i.i.i.i = add i32 %216, %148
  store i32 %add.i.i.i.i, ptr %dql.i.i.i, align 128
  %adj_limit.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %213, i32 0, i32 15, i32 1
  %217 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %219 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i.i.i.i = sub i32 %218, %219
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i.i)
  %cmp.i4.i.i = icmp sgt i32 %sub.i.i.i.i, -1
  br i1 %cmp.i4.i.i, label %dql_queued.exit.i.i.i.if.then40.i_crit_edge, label %if.end.i.i93.i, !prof !30

dql_queued.exit.i.i.i.if.then40.i_crit_edge:      ; preds = %dql_queued.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40.i

if.end.i.i93.i:                                   ; preds = %dql_queued.exit.i.i.i
  %state.i5.i.i = getelementptr inbounds %struct.netdev_queue, ptr %213, i32 0, i32 13
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i5.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !35
  %220 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %222 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i22.i.i.i = sub i32 %221, %223
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i.i)
  %cmp7.i.i.i = icmp sgt i32 %sub.i22.i.i.i, -1
  br i1 %cmp7.i.i.i, label %if.then14.i.i.i, label %if.end.i.i93.i.if.then40.i_crit_edge, !prof !28

if.end.i.i93.i.if.then40.i_crit_edge:             ; preds = %if.end.i.i93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40.i

if.then14.i.i.i:                                  ; preds = %if.end.i.i93.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i5.i.i) #11
  br label %if.then40.i

__netdev_tx_sent_queue.exit.i:                    ; preds = %if.then.i92.i
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %213, i32 0, i32 15
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %213, i32 0, i32 15, i32 2
  %224 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %148, ptr %last_obj_cnt.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %225 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %226, %148
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %213, i32 0, i32 13
  %227 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %228, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %__netdev_tx_sent_queue.exit.i.mlx5e_sq_xmit_mpwqe.exit_crit_edge, label %__netdev_tx_sent_queue.exit.i.if.then40.i_crit_edge

__netdev_tx_sent_queue.exit.i.if.then40.i_crit_edge: ; preds = %__netdev_tx_sent_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40.i

__netdev_tx_sent_queue.exit.i.mlx5e_sq_xmit_mpwqe.exit_crit_edge: ; preds = %__netdev_tx_sent_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_sq_xmit_mpwqe.exit

if.then40.i:                                      ; preds = %__netdev_tx_sent_queue.exit.i.if.then40.i_crit_edge, %if.then14.i.i.i, %if.end.i.i93.i.if.then40.i_crit_edge, %dql_queued.exit.i.i.i.if.then40.i_crit_edge
  %call41.i = call fastcc ptr @mlx5e_tx_mpwqe_session_complete(ptr noundef %8) #11
  %pc43.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 5
  %229 = ptrtoint ptr %pc43.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %pc43.i, align 128
  %uar_map44.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 15
  %231 = ptrtoint ptr %uar_map44.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %uar_map44.i, align 4
  %fm_ce_se.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %call41.i, i32 0, i32 4
  %233 = ptrtoint ptr %fm_ce_se.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %fm_ce_se.i.i, align 1
  %235 = or i8 %234, 8
  store i8 %235, ptr %fm_ce_se.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !36
  %conv2.i.i = zext i16 %230 to i32
  %db.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 1
  %236 = ptrtoint ptr %db.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %db.i.i, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %conv2.i.i, ptr %237, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !37
  call void @arm_heavy_mb() #11
  %239 = ptrtoint ptr %call41.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %call41.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %240) #11, !srcloc !38
  %arrayidx1.i.i.i = getelementptr i32, ptr %call41.i, i32 1
  %241 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %232, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %242) #11, !srcloc !38
  br label %mlx5e_sq_xmit_mpwqe.exit

err_unmap.i:                                      ; preds = %dma_map_single_attrs.exit.i.err_unmap.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  call fastcc void @mlx5e_dma_unmap_wqe_err(ptr noundef %8, i8 noundef zeroext 1) #11
  %243 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %stats.i, align 32
  %dropped.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %244, i32 0, i32 24
  %245 = ptrtoint ptr %dropped.i to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %dropped.i, align 64
  %inc.i = add i64 %246, 1
  store i64 %inc.i, ptr %dropped.i, align 64
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %mlx5e_sq_xmit_mpwqe.exit

mlx5e_sq_xmit_mpwqe.exit:                         ; preds = %err_unmap.i, %if.then40.i, %__netdev_tx_sent_queue.exit.i.mlx5e_sq_xmit_mpwqe.exit_crit_edge, %if.then33.i, %if.then28.i.mlx5e_sq_xmit_mpwqe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eseg) #11
  br label %cleanup

if.end22:                                         ; preds = %mlx5e_tx_skb_supports_mpwqe.exit.if.end22_crit_edge, %land.lhs.true1.i.if.end22_crit_edge, %land.lhs.true.i64.if.end22_crit_edge, %if.then18.if.end22_crit_edge
  %mpwqe.i.i74 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 8
  %247 = ptrtoint ptr %mpwqe.i.i74 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %mpwqe.i.i74, align 8
  %tobool.i.not.i75 = icmp eq ptr %248, null
  br i1 %tobool.i.not.i75, label %if.end22.if.end23_crit_edge, label %if.then.i76, !prof !30

if.end22.if.end23_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then.i76:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call fastcc ptr @mlx5e_tx_mpwqe_session_complete(ptr noundef nonnull %8) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then.i76, %if.end22.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %insz.i78 = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 4
  %249 = ptrtoint ptr %insz.i78 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %insz.i78, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %250)
  %tobool.not.i79 = icmp eq i16 %250, 0
  %conv.i80 = zext i16 %250 to i32
  %sub.i = add nuw nsw i32 %conv.i80, 19
  %div57.i = lshr i32 %sub.i, 4
  %conv3.i = trunc i32 %div57.i to i16
  %ds_cnt_ids.0.i = select i1 %tobool.not.i79, i16 0, i16 %conv3.i
  %headlen.i = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 1
  %251 = ptrtoint ptr %headlen.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %headlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %252)
  %tobool4.not.i = icmp eq i16 %252, 0
  %253 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %254, i32 0, i32 2
  %255 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %nr_frags.i, align 2
  %conv6.i = zext i8 %256 to i16
  %add7.i = select i1 %tobool4.not.i, i16 2, i16 3
  %add9.i = add nuw nsw i16 %add7.i, %conv6.i
  %add11.i = add nuw nsw i16 %add9.i, %ds_cnt_ids.0.i
  %ihs.i81 = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 2
  %257 = ptrtoint ptr %ihs.i81 to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %ihs.i81, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %258)
  %tobool13.not.i82 = icmp eq i16 %258, 0
  br i1 %tobool13.not.i82, label %if.end23.mlx5e_sq_calc_wqe_attr.exit_crit_edge, label %if.then14.i

if.end23.mlx5e_sq_calc_wqe_attr.exit_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_sq_calc_wqe_attr.exit

if.then14.i:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_present.i83 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %259 = ptrtoint ptr %vlan_present.i83 to i32
  call void @__asan_loadN_noabort(i32 %259, i32 4)
  %bf.load.i84 = load i32, ptr %vlan_present.i83, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i84)
  %tobool19.not58.i = icmp slt i32 %bf.load.i84, 0
  %spec.select.v.i = select i1 %tobool19.not58.i, i16 2, i16 -2
  %spec.select.i = add i16 %spec.select.v.i, %258
  %conv25.i = zext i16 %spec.select.i to i32
  %sub27.i = add nuw nsw i32 %conv25.i, 15
  %div2856.i = lshr i32 %sub27.i, 4
  %conv29.i = trunc i32 %div2856.i to i16
  %conv33.i = add nuw nsw i16 %add11.i, %conv29.i
  br label %mlx5e_sq_calc_wqe_attr.exit

mlx5e_sq_calc_wqe_attr.exit:                      ; preds = %if.then14.i, %if.end23.mlx5e_sq_calc_wqe_attr.exit_crit_edge
  %ds_cnt_inl.0.i = phi i16 [ %conv29.i, %if.then14.i ], [ 0, %if.end23.mlx5e_sq_calc_wqe_attr.exit_crit_edge ]
  %ds_cnt.0.i = phi i16 [ %conv33.i, %if.then14.i ], [ %add11.i, %if.end23.mlx5e_sq_calc_wqe_attr.exit_crit_edge ]
  %conv38.i = zext i16 %ds_cnt.0.i to i32
  %sub40.i = add nuw nsw i32 %conv38.i, 3
  %div4155.i = lshr i32 %sub40.i, 2
  %conv42.i = trunc i32 %div4155.i to i8
  %260 = ptrtoint ptr %wqe_attr to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %ds_cnt.0.i, ptr %wqe_attr, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %wqe_attr, i32 2
  %261 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %ds_cnt_inl.0.i, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %wqe_attr, i32 4
  %262 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %ds_cnt_ids.0.i, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %wqe_attr, i32 6
  %263 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %conv42.i, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 2
  %264 = trunc i32 %div4155.i to i16
  %conv = and i16 %264, 255
  %wq1.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11
  %pc.i85 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 5
  %265 = ptrtoint ptr %pc.i85 to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %pc.i85, align 128
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 0, i32 1
  %267 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %sz_m1.i.i, align 4
  %269 = trunc i32 %268 to i16
  %conv1.i.i86 = and i16 %266, %269
  %conv.i.i87 = zext i16 %conv1.i.i86 to i32
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 0, i32 3
  %270 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %271 to i32
  %add.i.i.i88 = add nuw nsw i32 %conv.i.i87, %conv.i.i.i
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 0, i32 2
  %272 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv1.i.i.i = zext i16 %273 to i32
  %or.i.i.i = or i32 %add.i.i.i88, %conv1.i.i.i
  %sub.i.i.i = sub nsw i32 %or.i.i.i, %conv.i.i.i
  %274 = call i32 @llvm.umin.i32(i32 %sub.i.i.i, i32 %268) #11
  %275 = trunc i32 %274 to i16
  %276 = sub i16 1, %conv1.i.i86
  %conv2.i.i89 = add i16 %276, %275
  call void @__sanitizer_cov_trace_cmp2(i16 %conv2.i.i89, i16 %conv)
  %cmp.i = icmp ult i16 %conv2.i.i89, %conv
  br i1 %cmp.i, label %if.then.i93, label %mlx5e_sq_calc_wqe_attr.exit.mlx5e_txqsq_get_next_pi.exit_crit_edge, !prof !28

mlx5e_sq_calc_wqe_attr.exit.mlx5e_txqsq_get_next_pi.exit_crit_edge: ; preds = %mlx5e_sq_calc_wqe_attr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_txqsq_get_next_pi.exit

if.then.i93:                                      ; preds = %mlx5e_sq_calc_wqe_attr.exit
  %conv.i90 = zext i16 %conv2.i.i89 to i32
  %wqe_info.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 14, i32 2
  %277 = ptrtoint ptr %wqe_info.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %wqe_info.i, align 4
  %arrayidx.i91 = getelementptr %struct.mlx5e_tx_wqe_info, ptr %278, i32 %conv.i.i87
  %add.ptr.i92 = getelementptr %struct.mlx5e_tx_wqe_info, ptr %arrayidx.i91, i32 %conv.i90
  %cmp733.i = icmp ult ptr %arrayidx.i91, %add.ptr.i92
  br i1 %cmp733.i, label %for.body.lr.ph.i, label %if.then.i93.for.end.i_crit_edge

if.then.i93.for.end.i_crit_edge:                  ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then.i93
  %sqn.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %wi.034.i = phi ptr [ %arrayidx.i91, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %279 = ptrtoint ptr %wi.034.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr null, ptr %wi.034.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i94 = getelementptr inbounds i8, ptr %wi.034.i, i32 4
  %280 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i94 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i94, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i95 = getelementptr inbounds i8, ptr %wi.034.i, i32 8
  %281 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i95 to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i95, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i96 = getelementptr inbounds i8, ptr %wi.034.i, i32 9
  %282 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i96 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i96, align 1
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %wi.034.i, i32 10
  %283 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.614.0..sroa_idx.i = getelementptr inbounds i8, ptr %wi.034.i, i32 12
  %284 = ptrtoint ptr %.compoundliteral.sroa.614.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %.compoundliteral.sroa.614.0..sroa_idx.i, align 4
  %285 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %sqn.i, align 4
  call fastcc void @mlx5e_post_nop(ptr noundef %wq1.i, i32 noundef %286, ptr noundef %pc.i85) #11
  %incdec.ptr.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %wi.034.i, i32 1
  %cmp7.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i92
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.i93.for.end.i_crit_edge
  %conv11.i = zext i16 %conv2.i.i89 to i64
  %stats.i97 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 13
  %287 = ptrtoint ptr %stats.i97 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %stats.i97, align 32
  %nop.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %288, i32 0, i32 10
  %289 = ptrtoint ptr %nop.i to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %nop.i, align 16
  %add.i98 = add i64 %290, %conv11.i
  store i64 %add.i98, ptr %nop.i, align 16
  %291 = ptrtoint ptr %pc.i85 to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %pc.i85, align 128
  %293 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %sz_m1.i.i, align 4
  %295 = trunc i32 %294 to i16
  %conv1.i32.i = and i16 %292, %295
  %.pre = zext i16 %conv1.i32.i to i32
  br label %mlx5e_txqsq_get_next_pi.exit

mlx5e_txqsq_get_next_pi.exit:                     ; preds = %for.end.i, %mlx5e_sq_calc_wqe_attr.exit.mlx5e_txqsq_get_next_pi.exit_crit_edge
  %conv.i.i100.pre-phi = phi i32 [ %conv.i.i87, %mlx5e_sq_calc_wqe_attr.exit.mlx5e_txqsq_get_next_pi.exit_crit_edge ], [ %.pre, %for.end.i ]
  %pi.0.i = phi i16 [ %conv1.i.i86, %mlx5e_sq_calc_wqe_attr.exit.mlx5e_txqsq_get_next_pi.exit_crit_edge ], [ %conv1.i32.i, %for.end.i ]
  %296 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i102 = zext i16 %297 to i32
  %add.i.i.i103 = add nuw nsw i32 %conv.i.i100.pre-phi, %conv.i.i.i102
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 0, i32 6
  %298 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i104 = zext i8 %299 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i103, %conv1.i.i.i104
  %300 = ptrtoint ptr %wq1.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %wq1.i, align 4
  %arrayidx.i.i.i105 = getelementptr %struct.mlx5_buf_list, ptr %301, i32 %shr.i.i.i
  %302 = ptrtoint ptr %arrayidx.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx.i.i.i105, align 4
  %304 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %305 to i32
  %and.i.i.i107 = and i32 %add.i.i.i103, %conv2.i.i.i
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %8, i32 0, i32 11, i32 0, i32 5
  %306 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %307 to i32
  %shl.i.i.i = shl i32 %and.i.i.i107, %conv3.i.i.i
  %add.ptr.i.i.i108 = getelementptr i8, ptr %303, i32 %shl.i.i.i
  %308 = call ptr @memset(ptr %add.ptr.i.i.i108, i32 0, i32 32)
  %data = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %add.ptr.i.i.i108, i32 0, i32 2
  %309 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 2
  %conv26 = zext i16 %310 to i32
  %add.ptr = getelementptr %struct.mlx5_wqe_data_seg, ptr %data, i32 %conv26
  %311 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %accel, align 4
  %shl.i.i = shl i32 %312, 8
  %313 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i108, i32 0, i32 5
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %shl.i.i, ptr %313, align 4
  %315 = ptrtoint ptr %state11.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load volatile i32, ptr %state11.i, align 4
  %317 = and i32 %316, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool.not.i109 = icmp eq i32 %317, 0
  br i1 %tobool.not.i109, label %mlx5e_txqsq_get_next_pi.exit.mlx5e_accel_tx_finish.exit_crit_edge, label %land.lhs.true.i112

mlx5e_txqsq_get_next_pi.exit.mlx5e_accel_tx_finish.exit_crit_edge: ; preds = %mlx5e_txqsq_get_next_pi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_accel_tx_finish.exit

land.lhs.true.i112:                               ; preds = %mlx5e_txqsq_get_next_pi.exit
  %ipsec.i110 = getelementptr inbounds %struct.mlx5e_accel_tx_state, ptr %accel, i32 0, i32 1
  %318 = ptrtoint ptr %ipsec.i110 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ipsec.i110, align 4
  %tobool2.not.i111 = icmp eq ptr %319, null
  br i1 %tobool2.not.i111, label %land.lhs.true.i112.mlx5e_accel_tx_finish.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i112.mlx5e_accel_tx_finish.exit_crit_edge: ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_accel_tx_finish.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i112
  %tailen.i = getelementptr inbounds %struct.mlx5e_accel_tx_state, ptr %accel, i32 0, i32 1, i32 2
  %320 = ptrtoint ptr %tailen.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %tailen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool5.not.i = icmp eq i32 %321, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.mlx5e_accel_tx_finish.exit_crit_edge, label %if.then.i113

land.lhs.true3.i.mlx5e_accel_tx_finish.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_accel_tx_finish.exit

if.then.i113:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @mlx5e_ipsec_handle_tx_wqe(ptr noundef %add.ptr.i.i.i108, ptr noundef %ipsec.i110, ptr noundef %add.ptr) #11
  br label %mlx5e_accel_tx_finish.exit

mlx5e_accel_tx_finish.exit:                       ; preds = %if.then.i113, %land.lhs.true3.i.mlx5e_accel_tx_finish.exit_crit_edge, %land.lhs.true.i112.mlx5e_accel_tx_finish.exit_crit_edge, %mlx5e_txqsq_get_next_pi.exit.mlx5e_accel_tx_finish.exit_crit_edge
  %eth = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %add.ptr.i.i.i108, i32 0, i32 1
  call fastcc void @mlx5e_txwqe_build_eseg(ptr noundef %add.ptr.i, ptr noundef nonnull %8, ptr noundef %skb, ptr noundef nonnull %accel, ptr noundef %eth, i16 noundef zeroext %258)
  %322 = call i32 @llvm.read_register.i32(metadata !18) #11
  %and.i.i115 = and i32 %322, -16384
  %323 = inttoptr i32 %and.i.i115 to ptr
  %cpu.i116 = getelementptr inbounds %struct.thread_info, ptr %323, i32 0, i32 3
  %324 = ptrtoint ptr %cpu.i116 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %cpu.i116, align 4
  %arrayidx.i117 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %325
  %326 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx.i117, align 4
  %add.i118 = add i32 %327, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %328 = inttoptr i32 %add.i118 to ptr
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %328, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %330)
  %tobool.i119 = icmp ne i8 %330, 0
  call fastcc void @mlx5e_sq_xmit_wqe(ptr noundef nonnull %8, ptr noundef %skb, ptr noundef nonnull %attr, ptr noundef nonnull %wqe_attr, ptr noundef %add.ptr.i.i.i108, i16 noundef zeroext %pi.0.i, i1 noundef zeroext %tobool.i119)
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_accel_tx_finish.exit, %mlx5e_sq_xmit_mpwqe.exit, %if.then17.i.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %attr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wqe_attr) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %accel) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_sq_xmit_prepare(ptr noundef %sq, ptr noundef readonly %skb, ptr noundef readonly %accel, ptr nocapture noundef %attr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 32
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %6 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %encapsulation.i, align 8
  %7 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i, align 8
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %10 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inner_transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %15 = lshr i16 %bf.load.i.i, 10
  %16 = and i16 %15, 60
  %mul.i.i = zext i16 %16 to i32
  %add.i = add i32 %sub.ptr.sub.i.i, %mul.i.i
  %tso_inner_packets.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %tso_inner_packets.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tso_inner_packets.i, align 8
  %inc.i = add i64 %18, 1
  store i64 %inc.i, ptr %tso_inner_packets.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  %conv3.i = and i32 %add.i, 65535
  %sub.i = sub i32 %20, %conv3.i
  %conv4.i = zext i32 %sub.i to i64
  %tso_inner_bytes.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %tso_inner_bytes.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tso_inner_bytes.i, align 16
  %add5.i = add i64 %22, %conv4.i
  store i64 %add5.i, ptr %tso_inner_bytes.i, align 16
  br label %mlx5e_tx_get_gso_ihs.exit

if.else.i:                                        ; preds = %if.then
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  %head.i.i44.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i44.i, align 8
  %transport_header.i.i45.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %27 = ptrtoint ptr %transport_header.i.i45.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %transport_header.i.i45.i, align 2
  %conv.i.i46.i = zext i16 %28 to i32
  %add.ptr.i.i47.i = getelementptr i8, ptr %26, i32 %conv.i.i46.i
  %data.i48.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i48.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i48.i, align 4
  %sub.ptr.lhs.cast.i49.i = ptrtoint ptr %add.ptr.i.i47.i to i32
  %sub.ptr.rhs.cast.i50.i = ptrtoint ptr %30 to i32
  br i1 %tobool7.not.i, label %if.else12.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.sub.i43.i = sub i32 8, %sub.ptr.rhs.cast.i50.i
  %add10.i = add i32 %sub.ptr.sub.i43.i, %sub.ptr.lhs.cast.i49.i
  br label %if.end.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.sub.i51.i = sub i32 %sub.ptr.lhs.cast.i49.i, %sub.ptr.rhs.cast.i50.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i47.i, i32 0, i32 4
  %31 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %32 = lshr i16 %bf.load.i.i.i, 10
  %33 = and i16 %32, 60
  %mul.i.i.i = zext i16 %33 to i32
  %add15.i = add i32 %sub.ptr.sub.i51.i, %mul.i.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else12.i, %if.then8.i
  %ihs.0.in.i = phi i32 [ %add10.i, %if.then8.i ], [ %add15.i, %if.else12.i ]
  %tso_packets.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %tso_packets.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tso_packets.i, align 8
  %inc17.i = add i64 %35, 1
  store i64 %inc17.i, ptr %tso_packets.i, align 8
  %len18.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len18.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len18.i, align 4
  %conv19.i = and i32 %ihs.0.in.i, 65535
  %sub20.i = sub i32 %37, %conv19.i
  %conv21.i = zext i32 %sub20.i to i64
  %tso_bytes.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %tso_bytes.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %tso_bytes.i, align 32
  %add22.i = add i64 %39, %conv21.i
  store i64 %add22.i, ptr %tso_bytes.i, align 32
  br label %mlx5e_tx_get_gso_ihs.exit

mlx5e_tx_get_gso_ihs.exit:                        ; preds = %if.end.i, %if.then.i
  %conv4.pre-phi = phi i32 [ %conv3.i, %if.then.i ], [ %conv19.i, %if.end.i ]
  %ihs.1.in.i = phi i32 [ %add.i, %if.then.i ], [ %ihs.0.in.i, %if.end.i ]
  %ihs.1.i = trunc i32 %ihs.1.in.i to i16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %42 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %gso_segs, align 2
  %conv = zext i16 %45 to i32
  %sub = add nsw i32 %conv, -1
  %mul = mul i32 %sub, %conv4.pre-phi
  %add = add i32 %mul, %41
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %46 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i, align 8
  %sub.i65 = sub i32 %41, %47
  %48 = trunc i32 %sub.i65 to i16
  %conv8 = sub i16 %48, %ihs.1.i
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 4
  %49 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %gso_size, align 4
  %51 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add, ptr %attr, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %attr, i32 4
  %52 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv8, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %attr, i32 6
  %53 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %ihs.1.i, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 2
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %attr, i32 8
  %54 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %50, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %attr, i32 10
  %55 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 2
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %attr, i32 12
  %56 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 14, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %57 = load ptr, ptr %end.i.i, align 4
  %gso_segs12 = getelementptr inbounds %struct.skb_shared_info, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %gso_segs12 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %gso_segs12, align 2
  %conv13 = zext i16 %59 to i64
  br label %if.end

if.else:                                          ; preds = %entry
  %tobool.not.i68 = icmp eq ptr %accel, null
  br i1 %tobool.not.i68, label %if.else.if.end.i70_crit_edge, label %land.lhs.true.i

if.else.if.end.i70_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i70

land.lhs.true.i:                                  ; preds = %if.else
  %60 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %accel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool1.not.i = icmp eq i32 %61, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i70_crit_edge, label %land.lhs.true.i.sw.bb1.i_crit_edge

land.lhs.true.i.sw.bb1.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

land.lhs.true.i.if.end.i70_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i70

if.end.i70:                                       ; preds = %land.lhs.true.i.if.end.i70_crit_edge, %if.else.if.end.i70_crit_edge
  %min_inline_mode.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 19
  %62 = ptrtoint ptr %min_inline_mode.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %min_inline_mode.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %64 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %bf.load.i69 = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i69)
  %tobool2.not.i = icmp sgt i32 %bf.load.i69, -1
  br i1 %tobool2.not.i, label %if.end.i70.mlx5e_tx_wqe_inline_mode.exit_crit_edge, label %land.lhs.true3.i

if.end.i70.mlx5e_tx_wqe_inline_mode.exit_crit_edge: ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_wqe_inline_mode.exit

land.lhs.true3.i:                                 ; preds = %if.end.i70
  %state.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 22
  %65 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %state.i, align 4
  %67 = and i32 %66, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool4.not.i = icmp ne i32 %67, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp.i = icmp eq i8 %63, 0
  %or.cond = select i1 %tobool4.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond, label %land.lhs.true3.i.sw.default.i_crit_edge, label %land.lhs.true3.i.mlx5e_tx_wqe_inline_mode.exit_crit_edge

land.lhs.true3.i.mlx5e_tx_wqe_inline_mode.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_wqe_inline_mode.exit

land.lhs.true3.i.sw.default.i_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default.i

mlx5e_tx_wqe_inline_mode.exit:                    ; preds = %land.lhs.true3.i.mlx5e_tx_wqe_inline_mode.exit_crit_edge, %if.end.i70.mlx5e_tx_wqe_inline_mode.exit_crit_edge
  %68 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %63, label %mlx5e_tx_wqe_inline_mode.exit.sw.default.i_crit_edge [
    i8 0, label %mlx5e_tx_wqe_inline_mode.exit.mlx5e_calc_min_inline.exit_crit_edge
    i8 3, label %mlx5e_tx_wqe_inline_mode.exit.sw.bb1.i_crit_edge
    i8 2, label %sw.bb7.i
  ]

mlx5e_tx_wqe_inline_mode.exit.sw.bb1.i_crit_edge: ; preds = %mlx5e_tx_wqe_inline_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

mlx5e_tx_wqe_inline_mode.exit.mlx5e_calc_min_inline.exit_crit_edge: ; preds = %mlx5e_tx_wqe_inline_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_calc_min_inline.exit

mlx5e_tx_wqe_inline_mode.exit.sw.default.i_crit_edge: ; preds = %mlx5e_tx_wqe_inline_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default.i

sw.bb1.i:                                         ; preds = %mlx5e_tx_wqe_inline_mode.exit.sw.bb1.i_crit_edge, %land.lhs.true.i.sw.bb1.i_crit_edge
  %69 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %74 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %76 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %75, %77
  %call2.i = tail call i32 @eth_get_headlen(ptr noundef %71, ptr noundef %73, i32 noundef %sub.i.i) #11
  %conv3.i71 = and i32 %call2.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %conv3.i71)
  %cmp.i72 = icmp eq i32 %conv3.i71, 14
  br i1 %cmp.i72, label %land.lhs.true.i76, label %sw.bb1.i.sw.epilog.i_crit_edge

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

land.lhs.true.i76:                                ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_present.i73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %78 = ptrtoint ptr %vlan_present.i73 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %bf.load.i74 = load i32, ptr %vlan_present.i73, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i74)
  %tobool.not.i75 = icmp sgt i32 %bf.load.i74, -1
  %spec.select.i = select i1 %tobool.not.i75, i32 18, i32 %call2.i
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %mlx5e_tx_wqe_inline_mode.exit
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %79 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %transport_header.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %80)
  %cmp.i.not.i.i = icmp eq i16 %80, -1
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %81 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %head.i.i.i.i.i, align 8
  br i1 %cmp.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i = zext i16 %80 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %82, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %83 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %84 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %sw.epilog.i

if.else.i.i:                                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #13
  %network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %85 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %86 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %82, i32 %conv.i.i.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %87 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %88 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %89 = tail call i32 @llvm.smax.i32(i32 %sub.ptr.sub.i.i.i.i, i32 18) #11
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %mlx5e_tx_wqe_inline_mode.exit.sw.default.i_crit_edge, %land.lhs.true3.i.sw.default.i_crit_edge
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %90 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %92 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i32.i = zext i16 %93 to i32
  %add.ptr.i.i.i33.i = getelementptr i8, ptr %91, i32 %conv.i.i.i32.i
  %data.i.i34.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %94 = ptrtoint ptr %data.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i.i34.i, align 4
  %sub.ptr.lhs.cast.i.i35.i = ptrtoint ptr %add.ptr.i.i.i33.i to i32
  %sub.ptr.rhs.cast.i.i36.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i.i37.i = sub i32 %sub.ptr.lhs.cast.i.i35.i, %sub.ptr.rhs.cast.i.i36.i
  %96 = tail call i32 @llvm.smax.i32(i32 %sub.ptr.sub.i.i37.i, i32 18) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.else.i.i, %if.then.i.i, %land.lhs.true.i76, %sw.bb1.i.sw.epilog.i_crit_edge
  %hlen.0.i = phi i32 [ %96, %sw.default.i ], [ %call2.i, %sw.bb1.i.sw.epilog.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i76 ], [ %sub.ptr.sub.i.i.i, %if.then.i.i ], [ %89, %if.else.i.i ]
  %len.i38.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %97 = ptrtoint ptr %len.i38.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len.i38.i, align 4
  %data_len.i39.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %99 = ptrtoint ptr %data_len.i39.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %data_len.i39.i, align 8
  %sub.i40.i = sub i32 %98, %100
  %conv15.i = and i32 %hlen.0.i, 65535
  %conv16.i = and i32 %sub.i40.i, 65535
  %101 = tail call i32 @llvm.umin.i32(i32 %conv15.i, i32 %conv16.i) #11
  %conv21.i77 = trunc i32 %101 to i16
  br label %mlx5e_calc_min_inline.exit

mlx5e_calc_min_inline.exit:                       ; preds = %sw.epilog.i, %mlx5e_tx_wqe_inline_mode.exit.mlx5e_calc_min_inline.exit_crit_edge
  %retval.0.i78 = phi i16 [ %conv21.i77, %sw.epilog.i ], [ 0, %mlx5e_tx_wqe_inline_mode.exit.mlx5e_calc_min_inline.exit_crit_edge ]
  %len21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %102 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len21, align 4
  %104 = tail call i32 @llvm.umax.i32(i32 %103, i32 60)
  %data_len.i80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %105 = ptrtoint ptr %data_len.i80 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data_len.i80, align 8
  %sub.i81 = sub i32 %103, %106
  %107 = trunc i32 %sub.i81 to i16
  %conv27 = sub i16 %107, %retval.0.i78
  %108 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %104, ptr %attr, align 4
  %.compoundliteral19.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %attr, i32 4
  %109 = ptrtoint ptr %.compoundliteral19.sroa.2.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv27, ptr %.compoundliteral19.sroa.2.0..sroa_idx, align 4
  %.compoundliteral19.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %attr, i32 6
  %110 = ptrtoint ptr %.compoundliteral19.sroa.3.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %retval.0.i78, ptr %.compoundliteral19.sroa.3.0..sroa_idx, align 2
  %.compoundliteral19.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %attr, i32 8
  %111 = ptrtoint ptr %.compoundliteral19.sroa.4.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %.compoundliteral19.sroa.4.0..sroa_idx, align 4
  %.compoundliteral19.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %attr, i32 10
  %112 = ptrtoint ptr %.compoundliteral19.sroa.5.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %.compoundliteral19.sroa.5.0..sroa_idx, align 2
  %.compoundliteral19.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %attr, i32 12
  %113 = ptrtoint ptr %.compoundliteral19.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 10, ptr %.compoundliteral19.sroa.6.0..sroa_idx, align 4
  br label %if.end

if.end:                                           ; preds = %mlx5e_calc_min_inline.exit, %mlx5e_tx_get_gso_ihs.exit
  %.sink88 = phi i64 [ 1, %mlx5e_calc_min_inline.exit ], [ %conv13, %mlx5e_tx_get_gso_ihs.exit ]
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %1, align 128
  %inc = add i64 %115, %.sink88
  store i64 %inc, ptr %1, align 128
  %state1.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 22
  %116 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %state1.i, align 4
  %118 = and i32 %117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i82 = icmp eq i32 %118, 0
  br i1 %tobool.not.i82, label %if.end.mlx5e_accel_tx_ids_len.exit_crit_edge, label %if.then.i83

if.end.mlx5e_accel_tx_ids_len.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_accel_tx_ids_len.exit

if.then.i83:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tailen.i.i = getelementptr inbounds %struct.mlx5e_accel_tx_state, ptr %accel, i32 0, i32 1, i32 2
  %119 = ptrtoint ptr %tailen.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tailen.i.i, align 4
  %phi.cast = trunc i32 %120 to i16
  br label %mlx5e_accel_tx_ids_len.exit

mlx5e_accel_tx_ids_len.exit:                      ; preds = %if.then.i83, %if.end.mlx5e_accel_tx_ids_len.exit_crit_edge
  %retval.0.i84 = phi i16 [ %phi.cast, %if.then.i83 ], [ 0, %if.end.mlx5e_accel_tx_ids_len.exit_crit_edge ]
  %insz35 = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 4
  %121 = ptrtoint ptr %insz35 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %retval.0.i84, ptr %insz35, align 2
  %122 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %attr, align 4
  %conv37 = zext i32 %123 to i64
  %bytes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 1
  %124 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %bytes, align 8
  %add38 = add i64 %125, %conv37
  store i64 %add38, ptr %bytes, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_txwqe_build_eseg(ptr noundef %priv, ptr nocapture noundef readonly %sq, ptr noundef %skb, ptr noundef readonly %accel, ptr noundef %eseg, i16 noundef zeroext %ihs) unnamed_addr #0 align 64 {
entry:
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  %offset.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i.i, label %entry.if.end.i_crit_edge, label %skb_sec_path.exit.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

skb_sec_path.exit.i.i:                            ; preds = %entry
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %6 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %4, i32 %shl.i.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %skb_sec_path.exit.i.i.if.end.i_crit_edge, label %lor.lhs.false.i.i

skb_sec_path.exit.i.i.if.end.i_crit_edge:         ; preds = %skb_sec_path.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false.i.i:                                ; preds = %skb_sec_path.exit.i.i
  %olen.i.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %olen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.end.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i.i, label %xfrm_offload.exit.i, label %lor.lhs.false2.i.i.if.end.i_crit_edge

lor.lhs.false2.i.i.if.end.i_crit_edge:            ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

xfrm_offload.exit.i:                              ; preds = %lor.lhs.false2.i.i
  %sub.i.i = add i32 %8, -1
  %arrayidx.i.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 3, i32 %sub.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %xfrm_offload.exit.i.if.end.i_crit_edge, label %if.then.i

xfrm_offload.exit.i.if.end.i_crit_edge:           ; preds = %xfrm_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %xfrm_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_ipsec_tx_build_eseg(ptr noundef %priv, ptr noundef %skb, ptr noundef %eseg) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %xfrm_offload.exit.i.if.end.i_crit_edge, %lor.lhs.false2.i.i.if.end.i_crit_edge, %lor.lhs.false.i.i.if.end.i_crit_edge, %skb_sec_path.exit.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %11 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %encapsulation.i, align 8
  %12 = and i16 %bf.load.i, 1540
  call void @__sanitizer_cov_trace_const_cmp2(i16 1540, i16 %12)
  %13 = icmp eq i16 %12, 1540
  br i1 %13, label %if.then8.i, label %if.end.i.mlx5e_accel_tx_eseg.exit_crit_edge

if.end.i.mlx5e_accel_tx_eseg.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_accel_tx_eseg.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i.i) #11
  %14 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %offset.i.i, align 4
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %17 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i15.i = zext i16 %18 to i32
  %19 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %16, label %if.then8.i.vlan_get_protocol.exit.i.i_crit_edge [
    i16 -30552, label %if.then8.i.if.then.i.i.i.i_crit_edge
    i16 -32512, label %if.then8.i.if.then.i.i.i.i_crit_edge10
  ]

if.then8.i.if.then.i.i.i.i_crit_edge10:           ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

if.then8.i.if.then.i.i.i.i_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

if.then8.i.vlan_get_protocol.exit.i.i_crit_edge:  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.then8.i.if.then.i.i.i.i_crit_edge, %if.then8.i.if.then.i.i.i.i_crit_edge10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i.i.i.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %18)
  %cmp.i.i.i.i = icmp ult i16 %18, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !28

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #11
  br label %mlx5e_tx_tunnel_accel.exit.i

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i15.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %20 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #11
  %21 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !31
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %20, align 2, !annotation !31
  %23 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %27 = add i32 %vlan_depth.1.i.i.i.i, %26
  %sub.i1.i.i.i.i.i = sub i32 %24, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !30

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %29, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !28
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %30 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !28
  br i1 %30, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !28

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #11
  br label %mlx5e_tx_tunnel_accel.exit.i

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #11
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %32, label %do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge11
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge11: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit.i.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge11
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

vlan_get_protocol.exit.i.i:                       ; preds = %do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge, %if.then8.i.vlan_get_protocol.exit.i.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %16, %if.then8.i.vlan_get_protocol.exit.i.i_crit_edge ], [ %32, %do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge ]
  %34 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %retval.2.i.i.i.i, label %vlan_get_protocol.exit.i.i.mlx5e_tx_tunnel_accel.exit.i_crit_edge [
    i16 2048, label %sw.bb.i.i
    i16 -31011, label %sw.bb2.i.i
  ]

vlan_get_protocol.exit.i.i.mlx5e_tx_tunnel_accel.exit.i_crit_edge: ; preds = %vlan_get_protocol.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_tunnel_accel.exit.i

sw.bb.i.i:                                        ; preds = %vlan_get_protocol.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i45.i.i = zext i16 %38 to i32
  %add.ptr.i.i.i16.i = getelementptr i8, ptr %36, i32 %conv.i.i45.i.i
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i16.i, i32 0, i32 6
  %39 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %protocol.i.i, align 1
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %vlan_get_protocol.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %offset.i.i, i32 noundef -1, ptr noundef null, ptr noundef null) #11
  %conv4.i.i = trunc i32 %call3.i.i to i8
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %l4_proto.0.i.i = phi i8 [ %conv4.i.i, %sw.bb2.i.i ], [ %40, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %l4_proto.0.i.i)
  %cmp.not.i17.i = icmp eq i8 %l4_proto.0.i.i, 17
  br i1 %cmp.not.i17.i, label %lor.lhs.false.i18.i, label %sw.epilog.i.i.mlx5e_tx_tunnel_accel.exit.i_crit_edge

sw.epilog.i.i.mlx5e_tx_tunnel_accel.exit.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_tunnel_accel.exit.i

lor.lhs.false.i18.i:                              ; preds = %sw.epilog.i.i
  %head.i.i46.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %41 = ptrtoint ptr %head.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i46.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %43 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i47.i.i = zext i16 %44 to i32
  %add.ptr.i.i48.i.i = getelementptr i8, ptr %42, i32 %conv.i.i47.i.i
  %dest.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i48.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %dest.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6081, i16 %46)
  %cmp9.not.i.i = icmp eq i16 %46, 6081
  br i1 %cmp9.not.i.i, label %if.end.i19.i, label %lor.lhs.false.i18.i.mlx5e_tx_tunnel_accel.exit.i_crit_edge

lor.lhs.false.i18.i.mlx5e_tx_tunnel_accel.exit.i_crit_edge: ; preds = %lor.lhs.false.i18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_tunnel_accel.exit.i

if.end.i19.i:                                     ; preds = %lor.lhs.false.i18.i
  %inner_network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %47 = ptrtoint ptr %inner_network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %inner_network_header.i.i.i.i, align 4
  %conv.i.i50.i.i = zext i16 %48 to i32
  %add.ptr.i.i51.i.i = getelementptr i8, ptr %42, i32 %conv.i.i50.i.i
  %49 = ptrtoint ptr %add.ptr.i.i51.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i51.i.i, align 4
  %bf.lshr.mask.i.i = and i8 %bf.load.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask.i.i)
  %cmp15.i.i = icmp eq i8 %bf.lshr.mask.i.i, 96
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i51.i.i, i32 0, i32 3
  %protocol21.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i51.i.i, i32 0, i32 6
  %swp_spec.sroa.14.0.in.i.i = select i1 %cmp15.i.i, ptr %nexthdr.i.i, ptr %protocol21.i.i
  %50 = ptrtoint ptr %swp_spec.sroa.14.0.in.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %swp_spec.sroa.14.0.i.i = load i8, ptr %swp_spec.sroa.14.0.in.i.i, align 1
  %network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %51 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %52 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %42, i32 %conv.i.i.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %div.i.i.i = sdiv i32 %sub.ptr.sub.i.i.i.i, 2
  %conv.i.i.i = trunc i32 %div.i.i.i to i8
  %swp_outer_l3_offset.i.i.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 1
  %55 = ptrtoint ptr %swp_outer_l3_offset.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i.i.i, ptr %swp_outer_l3_offset.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %retval.2.i.i.i.i)
  %cmp.i.i.i = icmp eq i16 %retval.2.i.i.i.i, -31011
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i19.i.if.then21.i.i.i_crit_edge

if.end.i19.i.if.then21.i.i.i_crit_edge:           ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  %swp_flags.i.i.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 5
  %56 = ptrtoint ptr %swp_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %swp_flags.i.i.i, align 1
  %58 = or i8 %57, 16
  store i8 %58, ptr %swp_flags.i.i.i, align 1
  br label %if.then21.i.i.i

if.then21.i.i.i:                                  ; preds = %if.then.i.i.i, %if.end.i19.i.if.then21.i.i.i_crit_edge
  %59 = ptrtoint ptr %head.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i.i46.i.i, align 8
  %61 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i78.i.i.i = zext i16 %62 to i32
  %add.ptr.i.i79.i.i.i = getelementptr i8, ptr %60, i32 %conv.i.i78.i.i.i
  %63 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i81.i.i.i = ptrtoint ptr %add.ptr.i.i79.i.i.i to i32
  %sub.ptr.rhs.cast.i82.i.i.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i83.i.i.i = sub i32 %sub.ptr.lhs.cast.i81.i.i.i, %sub.ptr.rhs.cast.i82.i.i.i
  %div7.i.i.i = sdiv i32 %sub.ptr.sub.i83.i.i.i, 2
  %conv8.i.i.i = trunc i32 %div7.i.i.i to i8
  %65 = ptrtoint ptr %eseg to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv8.i.i.i, ptr %eseg, align 4
  %swp_flags14.i.i.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 5
  %66 = ptrtoint ptr %swp_flags14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %swp_flags14.i.i.i, align 1
  %68 = or i8 %67, 32
  store i8 %68, ptr %swp_flags14.i.i.i, align 1
  %69 = load ptr, ptr %head.i.i46.i.i, align 8
  %70 = ptrtoint ptr %inner_network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %inner_network_header.i.i.i.i, align 4
  %conv.i.i85.i.i.i = zext i16 %71 to i32
  %add.ptr.i.i86.i.i.i = getelementptr i8, ptr %69, i32 %conv.i.i85.i.i.i
  %72 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i88.i.i.i = ptrtoint ptr %add.ptr.i.i86.i.i.i to i32
  %sub.ptr.rhs.cast.i89.i.i.i = ptrtoint ptr %72 to i32
  %sub.ptr.sub.i90.i.i.i = sub i32 %sub.ptr.lhs.cast.i88.i.i.i, %sub.ptr.rhs.cast.i89.i.i.i
  %div23.i.i.i = sdiv i32 %sub.ptr.sub.i90.i.i.i, 2
  %conv24.i.i.i = trunc i32 %div23.i.i.i to i8
  %swp_inner_l3_offset.i.i.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 3
  %73 = ptrtoint ptr %swp_inner_l3_offset.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv24.i.i.i, ptr %swp_inner_l3_offset.i.i.i, align 1
  br i1 %cmp15.i.i, label %if.end48.sink.split.i.i.i, label %if.then21.i.i.i.if.end48.i.i.i_crit_edge

if.then21.i.i.i.if.end48.i.i.i_crit_edge:         ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i.i.i

if.end48.sink.split.i.i.i:                        ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = or i8 %67, 33
  %75 = ptrtoint ptr %swp_flags14.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %swp_flags14.i.i.i, align 1
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %if.end48.sink.split.i.i.i, %if.then21.i.i.i.if.end48.i.i.i_crit_edge
  %76 = zext i8 %swp_spec.sroa.14.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %swp_spec.sroa.14.0.i.i, label %if.end48.i.i.i.mlx5e_set_eseg_swp.exit.i.i_crit_edge [
    i8 17, label %sw.bb.i.i.i
    i8 6, label %if.end48.i.i.i.sw.bb54.i.i.i_crit_edge
  ]

if.end48.i.i.i.sw.bb54.i.i.i_crit_edge:           ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb54.i.i.i

if.end48.i.i.i.mlx5e_set_eseg_swp.exit.i.i_crit_edge: ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_set_eseg_swp.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %swp_flags14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %swp_flags14.i.i.i, align 1
  %79 = or i8 %78, 2
  store i8 %79, ptr %swp_flags14.i.i.i, align 1
  br label %sw.bb54.i.i.i

sw.bb54.i.i.i:                                    ; preds = %sw.bb.i.i.i, %if.end48.i.i.i.sw.bb54.i.i.i_crit_edge
  %80 = ptrtoint ptr %head.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i.i46.i.i, align 8
  %inner_transport_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %82 = ptrtoint ptr %inner_transport_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %inner_transport_header.i.i.i.i.i, align 2
  %conv.i.i100.i.i.i = zext i16 %83 to i32
  %add.ptr.i.i101.i.i.i = getelementptr i8, ptr %81, i32 %conv.i.i100.i.i.i
  %84 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i103.i.i.i = ptrtoint ptr %add.ptr.i.i101.i.i.i to i32
  %sub.ptr.rhs.cast.i104.i.i.i = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i105.i.i.i = sub i32 %sub.ptr.lhs.cast.i103.i.i.i, %sub.ptr.rhs.cast.i104.i.i.i
  %div56.i.i.i = sdiv i32 %sub.ptr.sub.i105.i.i.i, 2
  %conv57.i.i.i = trunc i32 %div56.i.i.i to i8
  %swp_inner_l4_offset.i.i.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 2
  %86 = ptrtoint ptr %swp_inner_l4_offset.i.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv57.i.i.i, ptr %swp_inner_l4_offset.i.i.i, align 2
  br label %mlx5e_set_eseg_swp.exit.i.i

mlx5e_set_eseg_swp.exit.i.i:                      ; preds = %sw.bb54.i.i.i, %if.end48.i.i.i.mlx5e_set_eseg_swp.exit.i.i_crit_edge
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %87 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %bf.load24.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load24.i.i)
  %tobool.not.i20.i = icmp sgt i32 %bf.load24.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ihs)
  %tobool28.not.i.i = icmp eq i16 %ihs, 0
  %or.cond.i.i = or i1 %tobool28.not.i.i, %tobool.not.i20.i
  br i1 %or.cond.i.i, label %mlx5e_set_eseg_swp.exit.i.i.mlx5e_tx_tunnel_accel.exit.i_crit_edge, label %if.then29.i.i

mlx5e_set_eseg_swp.exit.i.i.mlx5e_tx_tunnel_accel.exit.i_crit_edge: ; preds = %mlx5e_set_eseg_swp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_tunnel_accel.exit.i

if.then29.i.i:                                    ; preds = %mlx5e_set_eseg_swp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i.i = add i8 %conv.i.i.i, 2
  %88 = ptrtoint ptr %swp_outer_l3_offset.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %add.i.i.i, ptr %swp_outer_l3_offset.i.i.i, align 1
  %add3.i.i.i = add i8 %conv8.i.i.i, 2
  %89 = ptrtoint ptr %eseg to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %add3.i.i.i, ptr %eseg, align 4
  %add6.i.i.i = add i8 %conv24.i.i.i, 2
  %90 = ptrtoint ptr %swp_inner_l3_offset.i.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %add6.i.i.i, ptr %swp_inner_l3_offset.i.i.i, align 1
  %swp_inner_l4_offset.i62.i.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 2
  %91 = ptrtoint ptr %swp_inner_l4_offset.i62.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %swp_inner_l4_offset.i62.i.i, align 2
  %add9.i.i.i = add i8 %92, 2
  store i8 %add9.i.i.i, ptr %swp_inner_l4_offset.i62.i.i, align 2
  br label %mlx5e_tx_tunnel_accel.exit.i

mlx5e_tx_tunnel_accel.exit.i:                     ; preds = %if.then29.i.i, %mlx5e_set_eseg_swp.exit.i.i.mlx5e_tx_tunnel_accel.exit.i_crit_edge, %lor.lhs.false.i18.i.mlx5e_tx_tunnel_accel.exit.i_crit_edge, %sw.epilog.i.i.mlx5e_tx_tunnel_accel.exit.i_crit_edge, %vlan_get_protocol.exit.i.i.mlx5e_tx_tunnel_accel.exit.i_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i.i) #11
  br label %mlx5e_accel_tx_eseg.exit

mlx5e_accel_tx_eseg.exit:                         ; preds = %mlx5e_tx_tunnel_accel.exit.i, %if.end.i.mlx5e_accel_tx_eseg.exit_crit_edge
  %flow_table_metadata.i.i.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 7
  %93 = ptrtoint ptr %flow_table_metadata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flow_table_metadata.i.i.i, align 4
  %and.i.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end.i8, label %if.end.i.i

if.end.i.i:                                       ; preds = %mlx5e_accel_tx_eseg.exit
  %cs_flags.i.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 4
  %95 = ptrtoint ptr %cs_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 64, ptr %cs_flags.i.i, align 4
  %96 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %98 = and i8 %97, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.i.not.i.i.i.i.i = icmp eq i8 %98, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %if.end.i.i.xfrm_offload.exit.i.i_crit_edge, label %skb_sec_path.exit.i.i.i

if.end.i.i.xfrm_offload.exit.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_offload.exit.i.i

skb_sec_path.exit.i.i.i:                          ; preds = %if.end.i.i
  %extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %99 = ptrtoint ptr %extensions.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %extensions.i.i.i.i.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.skb_ext, ptr %100, i32 0, i32 1, i32 1
  %101 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  %conv.i.i.i.i.i3 = zext i8 %102 to i32
  %shl.i.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i3, 3
  %add.ptr.i.i.i.i.i4 = getelementptr i8, ptr %100, i32 %shl.i.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i4, null
  br i1 %tobool.not.i.i.i, label %skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge: ; preds = %skb_sec_path.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_offload.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %skb_sec_path.exit.i.i.i
  %olen.i.i.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i.i4, i32 0, i32 1
  %103 = ptrtoint ptr %olen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %olen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool1.not.i.i.i = icmp eq i32 %104, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_offload.exit.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %105 = ptrtoint ptr %add.ptr.i.i.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i.i.i.i.i4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %104)
  %cmp.not.i.i.i = icmp eq i32 %106, %104
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge

lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_offload.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add i32 %104, -1
  %arrayidx.i.i.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i.i4, i32 0, i32 3, i32 %sub.i.i.i
  br label %xfrm_offload.exit.i.i

xfrm_offload.exit.i.i:                            ; preds = %if.end.i.i.i, %lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge, %skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge, %if.end.i.i.xfrm_offload.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %arrayidx.i.i.i, %if.end.i.i.i ], [ null, %lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge ], [ null, %lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge ], [ null, %skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge ], [ null, %if.end.i.i.xfrm_offload.exit.i.i_crit_edge ]
  %inner_ipproto2.i.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i.i.i, i32 0, i32 4
  %107 = ptrtoint ptr %inner_ipproto2.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %inner_ipproto2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i.i5 = icmp eq i8 %108, 0
  br i1 %tobool.not.i.i5, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %xfrm_offload.exit.i.i
  %109 = ptrtoint ptr %cs_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 80, ptr %cs_flags.i.i, align 4
  %110 = zext i8 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %108, label %if.then3.i.i.mlx5e_txwqe_build_eseg_csum.exit_crit_edge [
    i8 6, label %if.then3.i.i.if.then11.i.i_crit_edge
    i8 17, label %if.then3.i.i.if.then11.i.i_crit_edge12
  ]

if.then3.i.i.if.then11.i.i_crit_edge12:           ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then3.i.i.if.then11.i.i_crit_edge:             ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then3.i.i.mlx5e_txwqe_build_eseg_csum.exit_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.then11.i.i:                                    ; preds = %if.then3.i.i.if.then11.i.i_crit_edge, %if.then3.i.i.if.then11.i.i_crit_edge12
  %111 = ptrtoint ptr %cs_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 112, ptr %cs_flags.i.i, align 4
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.else.i.i:                                      ; preds = %xfrm_offload.exit.i.i
  %112 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %bf.load.i.i6 = load i16, ptr %encapsulation.i, align 8
  %113 = and i16 %bf.load.i.i6, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %113)
  %cmp18.i.i = icmp eq i16 %113, 1536
  br i1 %cmp18.i.i, label %if.then22.i.i, label %if.else.i.i.mlx5e_txwqe_build_eseg_csum.exit_crit_edge, !prof !30

if.else.i.i.mlx5e_txwqe_build_eseg_csum.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.then22.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %cs_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -64, ptr %cs_flags.i.i, align 4
  %stats.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %115 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %stats.i.i, align 32
  %csum_partial_inner.i.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %116, i32 0, i32 8
  %117 = ptrtoint ptr %csum_partial_inner.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %csum_partial_inner.i.i, align 64
  %inc.i.i = add i64 %118, 1
  store i64 %inc.i.i, ptr %csum_partial_inner.i.i, align 64
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.end.i8:                                        ; preds = %mlx5e_accel_tx_eseg.exit
  %119 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %bf.load.i7 = load i16, ptr %encapsulation.i, align 8
  %120 = and i16 %bf.load.i7, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %120)
  %cmp.i = icmp eq i16 %120, 1536
  br i1 %cmp.i, label %if.then9.i, label %if.else26.i, !prof !30

if.then9.i:                                       ; preds = %if.end.i8
  %cs_flags.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 4
  %121 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 64, ptr %cs_flags.i, align 4
  %122 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %bf.load10.i = load i16, ptr %encapsulation.i, align 8
  %123 = and i16 %bf.load10.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool14.not.i = icmp eq i16 %123, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 112, ptr %cs_flags.i, align 4
  %stats.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %125 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %stats.i, align 32
  %csum_partial_inner.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %csum_partial_inner.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %csum_partial_inner.i, align 64
  %inc.i = add i64 %128, 1
  store i64 %inc.i, ptr %csum_partial_inner.i, align 64
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.else.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -64, ptr %cs_flags.i, align 4
  %stats23.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %130 = ptrtoint ptr %stats23.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %stats23.i, align 32
  %csum_partial.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %131, i32 0, i32 7
  %132 = ptrtoint ptr %csum_partial.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %csum_partial.i, align 8
  %inc24.i = add i64 %133, 1
  store i64 %inc24.i, ptr %csum_partial.i, align 8
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.else26.i:                                      ; preds = %if.end.i8
  %tobool27.not.i = icmp eq ptr %accel, null
  br i1 %tobool27.not.i, label %if.else26.i.if.else40.i_crit_edge, label %land.rhs.i

if.else26.i.if.else40.i_crit_edge:                ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else40.i

land.rhs.i:                                       ; preds = %if.else26.i
  %134 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %accel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool28.not.i = icmp eq i32 %135, 0
  br i1 %tobool28.not.i, label %land.rhs.i.if.else40.i_crit_edge, label %if.then35.i, !prof !30

land.rhs.i.if.else40.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else40.i

if.then35.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %cs_flags36.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 4
  %136 = ptrtoint ptr %cs_flags36.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 -64, ptr %cs_flags36.i, align 4
  %stats37.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %137 = ptrtoint ptr %stats37.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %stats37.i, align 32
  %csum_partial38.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %138, i32 0, i32 7
  %139 = ptrtoint ptr %csum_partial38.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %csum_partial38.i, align 8
  %inc39.i = add i64 %140, 1
  store i64 %inc39.i, ptr %csum_partial38.i, align 8
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.else40.i:                                      ; preds = %land.rhs.i.if.else40.i_crit_edge, %if.else26.i.if.else40.i_crit_edge
  %stats41.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %141 = ptrtoint ptr %stats41.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %stats41.i, align 32
  %csum_none.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %142, i32 0, i32 22
  %143 = ptrtoint ptr %csum_none.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %csum_none.i, align 16
  %inc42.i = add i64 %144, 1
  store i64 %inc42.i, ptr %csum_none.i, align 16
  br label %mlx5e_txwqe_build_eseg_csum.exit

mlx5e_txwqe_build_eseg_csum.exit:                 ; preds = %if.else40.i, %if.then35.i, %if.else.i, %if.then15.i, %if.then22.i.i, %if.else.i.i.mlx5e_txwqe_build_eseg_csum.exit_crit_edge, %if.then11.i.i, %if.then3.i.i.mlx5e_txwqe_build_eseg_csum.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_sq_xmit_wqe(ptr nocapture noundef %sq, ptr noundef %skb, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %wqe_attr, ptr nocapture noundef %wqe, i16 noundef zeroext %pi, i1 noundef zeroext %xmit_more) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 32
  %conv = zext i1 %xmit_more to i64
  %xmit_more2 = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %xmit_more2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %xmit_more2, align 16
  %add = add i64 %3, %conv
  store i64 %add, ptr %xmit_more2, align 16
  %wqe_info = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %wqe_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wqe_info, align 4
  %idxprom = zext i16 %pi to i32
  %arrayidx = getelementptr %struct.mlx5e_tx_wqe_info, ptr %5, i32 %idxprom
  %data = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %wqe, i32 0, i32 2
  %mss = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 3
  %6 = ptrtoint ptr %mss to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mss, align 4
  %mss3 = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %wqe, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %mss3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %mss3, align 2
  %ihs = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 2
  %9 = ptrtoint ptr %ihs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ihs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool4.not = icmp eq i16 %10, 0
  %vlan_present29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %11 = ptrtoint ptr %vlan_present29 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load30 = load i32, ptr %vlan_present29, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load30)
  %tobool33.not = icmp sgt i32 %bf.load30, -1
  br i1 %tobool4.not, label %if.else28, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool33.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %add9 = add i16 %10, 4
  %12 = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %wqe, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 4
  %or107 = or i16 %14, %add9
  store i16 %or107, ptr %12, align 4
  %start = getelementptr inbounds %struct.anon.210, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %ihs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ihs, align 2
  %conv.i = zext i16 %16 to i32
  %sub.i = add nsw i32 %conv.i, -12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %19 = call ptr @memcpy(ptr %start, ptr %18, i32 12)
  %vlan_proto.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %20 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vlan_proto.i, align 8
  %h_vlan_proto.i = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %wqe, i32 1, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %h_vlan_proto.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %h_vlan_proto.i, align 2
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %23 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vlan_tci.i, align 2
  %h_vlan_TCI.i = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %wqe, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %h_vlan_TCI.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %h_vlan_TCI.i, align 2
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.anon.210, ptr %12, i32 4, i32 1
  %26 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 12
  %27 = call ptr @memcpy(ptr %h_vlan_encapsulated_proto.i, ptr %add.ptr.i, i32 %sub.i)
  %added_vlan_packets = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %added_vlan_packets to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %added_vlan_packets, align 8
  %inc = add i64 %29, 1
  store i64 %inc, ptr %added_vlan_packets, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %30 = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %wqe, i32 0, i32 1, i32 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 4
  %or20106 = or i16 %32, %10
  store i16 %or20106, ptr %30, align 4
  %start22 = getelementptr inbounds %struct.anon.210, ptr %30, i32 0, i32 1
  %data24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data24, align 4
  %35 = ptrtoint ptr %ihs to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ihs, align 2
  %conv26 = zext i16 %36 to i32
  %37 = call ptr @memcpy(ptr %start22, ptr %34, i32 %conv26)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %ds_cnt_inl = getelementptr inbounds %struct.mlx5e_tx_wqe_attr, ptr %wqe_attr, i32 0, i32 1
  %38 = ptrtoint ptr %ds_cnt_inl to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ds_cnt_inl, align 2
  %conv27 = zext i16 %39 to i32
  %add.ptr = getelementptr %struct.mlx5_wqe_data_seg, ptr %data, i32 %conv27
  br label %if.end47

if.else28:                                        ; preds = %entry
  br i1 %tobool33.not, label %if.else28.if.end47_crit_edge, label %if.then34

if.else28.if.end47_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then34:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  %40 = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %wqe, i32 0, i32 1, i32 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -32768, ptr %40, align 4
  %vlan_proto = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %42 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vlan_proto, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30552, i16 %43)
  %cmp = icmp eq i16 %43, -30552
  %spec.store.select = select i1 %cmp, i16 -32767, i16 -32768
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %spec.store.select, ptr %40, align 4
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %45 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vlan_tci, align 2
  %vlan_tci43 = getelementptr inbounds %struct.anon.211, ptr %40, i32 0, i32 1
  %47 = ptrtoint ptr %vlan_tci43 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %vlan_tci43, align 2
  %added_vlan_packets44 = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 9
  %48 = ptrtoint ptr %added_vlan_packets44 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %added_vlan_packets44, align 8
  %inc45 = add i64 %49, 1
  store i64 %inc45, ptr %added_vlan_packets44, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then34, %if.else28.if.end47_crit_edge, %if.end
  %dseg.0 = phi ptr [ %add.ptr, %if.end ], [ %data, %if.then34 ], [ %data, %if.else28.if.end47_crit_edge ]
  %ds_cnt_ids = getelementptr inbounds %struct.mlx5e_tx_wqe_attr, ptr %wqe_attr, i32 0, i32 2
  %50 = ptrtoint ptr %ds_cnt_ids to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %ds_cnt_ids, align 2
  %conv48 = zext i16 %51 to i32
  %add.ptr49 = getelementptr %struct.mlx5_wqe_data_seg, ptr %dseg.0, i32 %conv48
  %data50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %52 = ptrtoint ptr %data50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data50, align 4
  %54 = ptrtoint ptr %ihs to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ihs, align 2
  %conv52 = zext i16 %55 to i32
  %add.ptr53 = getelementptr i8, ptr %53, i32 %conv52
  %headlen = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 1
  %56 = ptrtoint ptr %headlen to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %headlen, align 4
  %call = tail call fastcc i32 @mlx5e_txwqe_build_dsegs(ptr noundef %sq, ptr noundef %skb, ptr noundef %add.ptr53, i16 noundef zeroext %57, ptr noundef %add.ptr49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp54 = icmp slt i32 %call, 0
  br i1 %cmp54, label %err_drop, label %if.end59, !prof !28

if.end59:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %conv60 = trunc i32 %call to i8
  tail call fastcc void @mlx5e_txwqe_complete(ptr noundef %sq, ptr noundef %skb, ptr noundef %attr, ptr noundef %wqe_attr, i8 noundef zeroext %conv60, ptr noundef %arrayidx, ptr noundef %wqe, i1 noundef zeroext %xmit_more)
  br label %cleanup

err_drop:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %dropped = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 24
  %58 = ptrtoint ptr %dropped to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %dropped, align 64
  %inc62 = add i64 %59, 1
  store i64 %inc62, ptr %dropped, align 64
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %err_drop, %if.end59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_sq_xmit_simple(ptr noundef %sq, ptr noundef %skb, i1 noundef zeroext %xmit_more) local_unnamed_addr #0 align 64 {
entry:
  %wqe_attr = alloca %struct.mlx5e_tx_wqe_attr, align 8
  %attr = alloca %struct.mlx5e_tx_attr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wqe_attr) #11
  %0 = ptrtoint ptr %wqe_attr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %wqe_attr, align 8, !annotation !31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %attr) #11
  %1 = call ptr @memset(ptr %attr, i32 255, i32 16)
  call fastcc void @mlx5e_sq_xmit_prepare(ptr noundef %sq, ptr noundef %skb, ptr noundef null, ptr noundef nonnull %attr)
  %insz.i = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 4
  %2 = ptrtoint ptr %insz.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %insz.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  %conv.i = zext i16 %3 to i32
  %sub.i = add nuw nsw i32 %conv.i, 19
  %div57.i = lshr i32 %sub.i, 4
  %conv3.i = trunc i32 %div57.i to i16
  %ds_cnt_ids.0.i = select i1 %tobool.not.i, i16 0, i16 %conv3.i
  %headlen.i = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %headlen.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %headlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool4.not.i = icmp eq i16 %5, 0
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_frags.i, align 2
  %conv6.i = zext i8 %9 to i16
  %add7.i = select i1 %tobool4.not.i, i16 2, i16 3
  %add9.i = add nuw nsw i16 %add7.i, %conv6.i
  %add11.i = add nuw nsw i16 %add9.i, %ds_cnt_ids.0.i
  %ihs.i = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %ihs.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ihs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool13.not.i = icmp eq i16 %11, 0
  br i1 %tobool13.not.i, label %entry.mlx5e_sq_calc_wqe_attr.exit_crit_edge, label %if.then14.i

entry.mlx5e_sq_calc_wqe_attr.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_sq_calc_wqe_attr.exit

if.then14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %12 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i)
  %tobool19.not58.i = icmp slt i32 %bf.load.i, 0
  %spec.select.v.i = select i1 %tobool19.not58.i, i16 2, i16 -2
  %spec.select.i = add i16 %spec.select.v.i, %11
  %conv25.i = zext i16 %spec.select.i to i32
  %sub27.i = add nuw nsw i32 %conv25.i, 15
  %div2856.i = lshr i32 %sub27.i, 4
  %conv29.i = trunc i32 %div2856.i to i16
  %conv33.i = add nuw nsw i16 %add11.i, %conv29.i
  br label %mlx5e_sq_calc_wqe_attr.exit

mlx5e_sq_calc_wqe_attr.exit:                      ; preds = %if.then14.i, %entry.mlx5e_sq_calc_wqe_attr.exit_crit_edge
  %ds_cnt_inl.0.i = phi i16 [ %conv29.i, %if.then14.i ], [ 0, %entry.mlx5e_sq_calc_wqe_attr.exit_crit_edge ]
  %ds_cnt.0.i = phi i16 [ %conv33.i, %if.then14.i ], [ %add11.i, %entry.mlx5e_sq_calc_wqe_attr.exit_crit_edge ]
  %conv38.i = zext i16 %ds_cnt.0.i to i32
  %sub40.i = add nuw nsw i32 %conv38.i, 3
  %div4155.i = lshr i32 %sub40.i, 2
  %conv42.i = trunc i32 %div4155.i to i8
  %13 = ptrtoint ptr %wqe_attr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %ds_cnt.0.i, ptr %wqe_attr, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %wqe_attr, i32 2
  %14 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %ds_cnt_inl.0.i, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %wqe_attr, i32 4
  %15 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %ds_cnt_ids.0.i, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %wqe_attr, i32 6
  %16 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv42.i, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 2
  %17 = trunc i32 %div4155.i to i16
  %conv = and i16 %17, 255
  %wq1.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11
  %pc.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 5
  %18 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pc.i, align 128
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 1
  %20 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sz_m1.i.i, align 4
  %22 = trunc i32 %21 to i16
  %conv1.i.i = and i16 %19, %22
  %conv.i.i = zext i16 %conv1.i.i to i32
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 3
  %23 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %24 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i, %conv.i.i.i
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 2
  %25 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv1.i.i.i = zext i16 %26 to i32
  %or.i.i.i = or i32 %add.i.i.i, %conv1.i.i.i
  %sub.i.i.i = sub nsw i32 %or.i.i.i, %conv.i.i.i
  %27 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i, i32 %21) #11
  %28 = trunc i32 %27 to i16
  %29 = sub i16 1, %conv1.i.i
  %conv2.i.i = add i16 %29, %28
  call void @__sanitizer_cov_trace_cmp2(i16 %conv2.i.i, i16 %conv)
  %cmp.i = icmp ult i16 %conv2.i.i, %conv
  br i1 %cmp.i, label %if.then.i, label %mlx5e_sq_calc_wqe_attr.exit.if.end.i_crit_edge, !prof !28

mlx5e_sq_calc_wqe_attr.exit.if.end.i_crit_edge:   ; preds = %mlx5e_sq_calc_wqe_attr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %mlx5e_sq_calc_wqe_attr.exit
  %conv.i11 = zext i16 %conv2.i.i to i32
  %wqe_info.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 2
  %30 = ptrtoint ptr %wqe_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wqe_info.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %31, i32 %conv.i.i
  %add.ptr.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %arrayidx.i, i32 %conv.i11
  %cmp733.i = icmp ult ptr %arrayidx.i, %add.ptr.i
  br i1 %cmp733.i, label %for.body.lr.ph.i, label %if.then.i.for.end.i_crit_edge

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %sqn.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 17
  %log_frag_strides.i.i.i33 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 6
  %log_stride.i.i.i40 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %wi.034.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %wi.034.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %wi.034.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i12 = getelementptr inbounds i8, ptr %wi.034.i, i32 4
  %33 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i12, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i13 = getelementptr inbounds i8, ptr %wi.034.i, i32 8
  %34 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i13 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i13, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i14 = getelementptr inbounds i8, ptr %wi.034.i, i32 9
  %35 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i14 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i14, align 1
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %wi.034.i, i32 10
  %36 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.614.0..sroa_idx.i = getelementptr inbounds i8, ptr %wi.034.i, i32 12
  %37 = ptrtoint ptr %.compoundliteral.sroa.614.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %.compoundliteral.sroa.614.0..sroa_idx.i, align 4
  %38 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sqn.i, align 4
  %40 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %pc.i, align 2
  %42 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sz_m1.i.i, align 4
  %44 = trunc i32 %43 to i16
  %conv1.i.i28 = and i16 %41, %44
  %conv.i.i29 = zext i16 %conv1.i.i28 to i32
  %45 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i31 = zext i16 %46 to i32
  %add.i.i.i32 = add nuw nsw i32 %conv.i.i29, %conv.i.i.i31
  %47 = ptrtoint ptr %log_frag_strides.i.i.i33 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %log_frag_strides.i.i.i33, align 2
  %conv1.i.i.i34 = zext i8 %48 to i32
  %shr.i.i.i35 = lshr i32 %add.i.i.i32, %conv1.i.i.i34
  %49 = ptrtoint ptr %wq1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wq1.i, align 4
  %arrayidx.i.i.i36 = getelementptr %struct.mlx5_buf_list, ptr %50, i32 %shr.i.i.i35
  %51 = ptrtoint ptr %arrayidx.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i.i36, align 4
  %53 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i38 = zext i16 %54 to i32
  %and.i.i.i39 = and i32 %add.i.i.i32, %conv2.i.i.i38
  %55 = ptrtoint ptr %log_stride.i.i.i40 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %log_stride.i.i.i40, align 1
  %conv3.i.i.i41 = zext i8 %56 to i32
  %shl.i.i.i42 = shl i32 %and.i.i.i39, %conv3.i.i.i41
  %add.ptr.i.i.i43 = getelementptr i8, ptr %52, i32 %shl.i.i.i42
  %57 = call ptr @memset(ptr %add.ptr.i.i.i43, i32 0, i32 16)
  %58 = load i16, ptr %pc.i, align 2
  %conv.i44 = zext i16 %58 to i32
  %shl.i = shl nuw nsw i32 %conv.i44, 8
  %59 = ptrtoint ptr %add.ptr.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %shl.i, ptr %add.ptr.i.i.i43, align 4
  %shl2.i = shl i32 %39, 8
  %or3.i = or i32 %shl2.i, 1
  %qpn_ds.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i43, i32 0, i32 1
  %60 = ptrtoint ptr %qpn_ds.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or3.i, ptr %qpn_ds.i, align 4
  %61 = load i16, ptr %pc.i, align 2
  %inc.i45 = add i16 %61, 1
  store i16 %inc.i45, ptr %pc.i, align 2
  %incdec.ptr.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %wi.034.i, i32 1
  %cmp7.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %conv11.i = zext i16 %conv2.i.i to i64
  %stats.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %62 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stats.i, align 32
  %nop.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %nop.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %nop.i, align 16
  %add.i = add i64 %65, %conv11.i
  store i64 %add.i, ptr %nop.i, align 16
  %66 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %pc.i, align 128
  %68 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sz_m1.i.i, align 4
  %70 = trunc i32 %69 to i16
  %conv1.i32.i = and i16 %67, %70
  %.pre = zext i16 %conv1.i32.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i, %mlx5e_sq_calc_wqe_attr.exit.if.end.i_crit_edge
  %conv.i.i15.pre-phi = phi i32 [ %conv.i.i, %mlx5e_sq_calc_wqe_attr.exit.if.end.i_crit_edge ], [ %.pre, %for.end.i ]
  %pi.0.i = phi i16 [ %conv1.i.i, %mlx5e_sq_calc_wqe_attr.exit.if.end.i_crit_edge ], [ %conv1.i32.i, %for.end.i ]
  %71 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i17 = zext i16 %72 to i32
  %add.i.i.i18 = add nuw nsw i32 %conv.i.i15.pre-phi, %conv.i.i.i17
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 6
  %73 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i19 = zext i8 %74 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i18, %conv1.i.i.i19
  %75 = ptrtoint ptr %wq1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %wq1.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %76, i32 %shr.i.i.i
  %77 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i.i, align 4
  %79 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %80 to i32
  %and.i.i.i = and i32 %add.i.i.i18, %conv2.i.i.i
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 5
  %81 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %82 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %78, i32 %shl.i.i.i
  %83 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 32)
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %84 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load.i24 = load i16, ptr %ip_summed.i, align 8
  %85 = and i16 %bf.load.i24, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %85)
  %cmp.i25 = icmp eq i16 %85, 1536
  br i1 %cmp.i25, label %if.then9.i, label %if.else26.i, !prof !30

if.then9.i:                                       ; preds = %if.end.i
  %eth = getelementptr inbounds %struct.mlx5e_tx_wqe, ptr %add.ptr.i.i.i, i32 0, i32 1
  %cs_flags.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eth, i32 0, i32 4
  %86 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 64, ptr %cs_flags.i, align 4
  %87 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load10.i = load i16, ptr %ip_summed.i, align 8
  %88 = and i16 %bf.load10.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool14.not.i = icmp eq i16 %88, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 112, ptr %cs_flags.i, align 4
  %stats.i26 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %90 = ptrtoint ptr %stats.i26 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %stats.i26, align 32
  %csum_partial_inner.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %csum_partial_inner.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %csum_partial_inner.i, align 64
  %inc.i = add i64 %93, 1
  store i64 %inc.i, ptr %csum_partial_inner.i, align 64
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.else.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -64, ptr %cs_flags.i, align 4
  %stats23.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %95 = ptrtoint ptr %stats23.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %stats23.i, align 32
  %csum_partial.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %csum_partial.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %csum_partial.i, align 8
  %inc24.i = add i64 %98, 1
  store i64 %inc24.i, ptr %csum_partial.i, align 8
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.else26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %stats41.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %99 = ptrtoint ptr %stats41.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %stats41.i, align 32
  %csum_none.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %100, i32 0, i32 22
  %101 = ptrtoint ptr %csum_none.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %csum_none.i, align 16
  %inc42.i = add i64 %102, 1
  store i64 %inc42.i, ptr %csum_none.i, align 16
  br label %mlx5e_txwqe_build_eseg_csum.exit

mlx5e_txwqe_build_eseg_csum.exit:                 ; preds = %if.else26.i, %if.else.i, %if.then15.i
  call fastcc void @mlx5e_sq_xmit_wqe(ptr noundef %sq, ptr noundef %skb, ptr noundef nonnull %attr, ptr noundef nonnull %wqe_attr, ptr noundef %add.ptr.i.i.i, i16 noundef zeroext %pi.0.i, i1 noundef zeroext %xmit_more)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %attr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wqe_attr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_poll_tx_cq(ptr noundef %cq, i32 noundef %napi_budget) local_unnamed_addr #0 align 64 {
entry:
  %hwts.i.i = alloca %struct.skb_shared_hwtstamps, align 8
  %hwts.i = alloca %struct.skb_shared_hwtstamps, align 8
  %dma_fifo_cc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_fifo_cc) #11
  %add.ptr = getelementptr i8, ptr %cq, i32 -384
  %state = getelementptr i8, ptr %cq, i32 340
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !28

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cc.i.i = getelementptr inbounds %struct.mlx5_cqwq, ptr %cq, i32 0, i32 2
  %2 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cc.i.i, align 4
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 1
  %4 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sz_m1.i.i.i, align 4
  %and.i.i.i = and i32 %5, %3
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 3
  %6 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %7 to i32
  %add.i.i.i = add i32 %and.i.i.i, %conv.i.i.i
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 6
  %8 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %9 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %10 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cq, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %11, i32 %shr.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 2
  %14 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %15 to i32
  %and.i.i15.i = and i32 %add.i.i.i, %conv2.i.i.i
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 5
  %16 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %17 to i32
  %shl.i.i.i = shl i32 %and.i.i15.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %17)
  %cmp.i.i = icmp eq i8 %17, 7
  %conv2.i.i = zext i1 %cmp.i.i to i32
  %add.ptr.i.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i, i32 %conv2.i.i
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i, i32 0, i32 23
  %18 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %op_own.i, align 1
  %20 = and i8 %19, 1
  %log_sz.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 4
  %21 = ptrtoint ptr %log_sz.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %log_sz.i.i.i, align 4
  %conv.i.i17.i = zext i8 %22 to i32
  %shr.i.i18.i = lshr i32 %3, %conv.i.i17.i
  %conv5.i = and i32 %shr.i.i18.i, 1
  %conv6.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %conv6.i)
  %cmp.not.i = icmp eq i32 %conv5.i, %conv6.i
  br i1 %cmp.not.i, label %mlx5_cqwq_get_cqe.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mlx5_cqwq_get_cqe.exit:                           ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !39
  %tobool5.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool5.not, label %mlx5_cqwq_get_cqe.exit.cleanup_crit_edge, label %if.end7

mlx5_cqwq_get_cqe.exit.cleanup_crit_edge:         ; preds = %mlx5_cqwq_get_cqe.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %mlx5_cqwq_get_cqe.exit
  %stats8 = getelementptr i8, ptr %cq, i32 288
  %23 = ptrtoint ptr %stats8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stats8, align 32
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr, align 128
  %dma_fifo_cc9 = getelementptr i8, ptr %cq, i32 -380
  %27 = ptrtoint ptr %dma_fifo_cc9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_fifo_cc9, align 4
  %29 = ptrtoint ptr %dma_fifo_cc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dma_fifo_cc, align 4
  %sz_m1.i = getelementptr i8, ptr %cq, i32 260
  %wqe_info = getelementptr i8, ptr %cq, i32 312
  %ptp_cyc2time.i = getelementptr i8, ptr %cq, i32 464
  %clock.i = getelementptr i8, ptr %cq, i32 352
  %ptpsq.i = getelementptr i8, ptr %cq, i32 460
  %skb_fifo.i = getelementptr i8, ptr %cq, i32 296
  %cc.i.i180 = getelementptr i8, ptr %cq, i32 304
  %mask.i.i.i = getelementptr i8, ptr %cq, i32 308
  %wq15.le = getelementptr i8, ptr %cq, i32 256
  %sqn = getelementptr i8, ptr %cq, i32 324
  %priv = getelementptr inbounds %struct.mlx5e_cq, ptr %cq, i32 0, i32 7
  %recover_work = getelementptr i8, ptr %cq, i32 416
  %cqe_err = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %24, i32 0, i32 29
  br label %do.body

do.body:                                          ; preds = %mlx5_cqwq_get_cqe.exit217.do.body_crit_edge, %if.end7
  %cqe.0 = phi ptr [ %add.ptr.i.i, %if.end7 ], [ %add.ptr.i.i207, %mlx5_cqwq_get_cqe.exit217.do.body_crit_edge ]
  %nbytes.0 = phi i32 [ 0, %if.end7 ], [ %nbytes.2, %mlx5_cqwq_get_cqe.exit217.do.body_crit_edge ]
  %sqcc.0 = phi i16 [ %26, %if.end7 ], [ %add, %mlx5_cqwq_get_cqe.exit217.do.body_crit_edge ]
  %i.0 = phi i32 [ 0, %if.end7 ], [ %inc77, %mlx5_cqwq_get_cqe.exit217.do.body_crit_edge ]
  %30 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cc.i.i, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %cc.i.i, align 4
  %wqe_counter11 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe.0, i32 0, i32 21
  %32 = ptrtoint ptr %wqe_counter11 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %wqe_counter11, align 4
  %timestamp_h.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe.0, i32 0, i32 18
  %timestamp_l.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe.0, i32 0, i32 19
  br label %do.body12

do.body12:                                        ; preds = %do.cond.do.body12_crit_edge, %do.body
  %nbytes.1 = phi i32 [ %nbytes.0, %do.body ], [ %nbytes.2, %do.cond.do.body12_crit_edge ]
  %sqcc.1 = phi i16 [ %sqcc.0, %do.body ], [ %add, %do.cond.do.body12_crit_edge ]
  %cmp.not = icmp eq i16 %sqcc.1, %33
  %34 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sz_m1.i, align 4
  %36 = trunc i32 %35 to i16
  %conv1.i = and i16 %sqcc.1, %36
  %37 = ptrtoint ptr %wqe_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wqe_info, align 4
  %idxprom = zext i16 %conv1.i to i32
  %arrayidx = getelementptr %struct.mlx5e_tx_wqe_info, ptr %38, i32 %idxprom
  %num_wqebbs = getelementptr %struct.mlx5e_tx_wqe_info, ptr %38, i32 %idxprom, i32 2
  %39 = ptrtoint ptr %num_wqebbs to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_wqebbs, align 4
  %conv17 = zext i8 %40 to i16
  %add = add i16 %sqcc.1, %conv17
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %42, null
  br i1 %tobool20.not, label %if.end30, label %if.then27, !prof !28

if.then27:                                        ; preds = %do.body12
  call fastcc void @mlx5e_tx_wi_dma_unmap(ptr noundef %add.ptr, ptr noundef %arrayidx, ptr noundef nonnull %dma_fifo_cc)
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 17
  %45 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tx_flags.i, align 1
  %49 = and i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i, label %if.then27.mlx5e_consume_skb.exit_crit_edge, label %if.then.i, !prof !30

if.then27.mlx5e_consume_skb.exit_crit_edge:       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_consume_skb.exit

if.then.i:                                        ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwts.i) #11
  %50 = ptrtoint ptr %timestamp_h.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %timestamp_h.i.i, align 4
  %52 = ptrtoint ptr %timestamp_l.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %timestamp_l.i.i, align 4
  %conv.i.i = zext i32 %53 to i64
  %conv1.i.i = zext i32 %51 to i64
  %shl.i.i = shl nuw i64 %conv1.i.i, 32
  %or.i.i = or i64 %shl.i.i, %conv.i.i
  %54 = ptrtoint ptr %ptp_cyc2time.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ptp_cyc2time.i, align 16
  %56 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clock.i, align 32
  %call.i.i = call i64 %55(ptr noundef %57, i64 noundef %or.i.i) #11
  %58 = ptrtoint ptr %hwts.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %call.i.i, ptr %hwts.i, align 8
  %59 = ptrtoint ptr %ptpsq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ptpsq.i, align 4
  %tobool5.not.i = icmp eq ptr %60, null
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %cq_stats.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %cq_stats.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cq_stats.i, align 4
  call void @mlx5e_skb_cb_hwtstamp_handler(ptr noundef %44, i32 noundef 1, i64 noundef %call.i.i, ptr noundef %62) #11
  br label %if.end.i177

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @skb_tstamp_tx(ptr noundef %44, ptr noundef nonnull %hwts.i) #11
  br label %if.end.i177

if.end.i177:                                      ; preds = %if.else.i, %if.then6.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hwts.i) #11
  br label %mlx5e_consume_skb.exit

mlx5e_consume_skb.exit:                           ; preds = %if.end.i177, %if.then27.mlx5e_consume_skb.exit_crit_edge
  call void @napi_consume_skb(ptr noundef %44, i32 noundef %napi_budget) #11
  %num_bytes = getelementptr %struct.mlx5e_tx_wqe_info, ptr %38, i32 %idxprom, i32 1
  %63 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_bytes, align 4
  %add29 = add i32 %64, %nbytes.1
  br label %do.cond

if.end30:                                         ; preds = %do.body12
  %resync_dump_frag_page.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %38, i32 %idxprom, i32 5
  %65 = ptrtoint ptr %resync_dump_frag_page.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %resync_dump_frag_page.i, align 4
  %tobool.not.i178 = icmp eq ptr %66, null
  br i1 %tobool.not.i178, label %if.end39, label %mlx5e_ktls_tx_try_handle_resync_dump_comp.exit.thread, !prof !30

mlx5e_ktls_tx_try_handle_resync_dump_comp.exit.thread: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  call void @mlx5e_ktls_tx_handle_resync_dump_comp(ptr noundef %add.ptr, ptr noundef %arrayidx, ptr noundef nonnull %dma_fifo_cc) #11
  br label %do.cond

if.end39:                                         ; preds = %if.end30
  %num_fifo_pkts = getelementptr %struct.mlx5e_tx_wqe_info, ptr %38, i32 %idxprom, i32 4
  %67 = ptrtoint ptr %num_fifo_pkts to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num_fifo_pkts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool40.not = icmp eq i8 %68, 0
  br i1 %tobool40.not, label %if.end39.do.cond_crit_edge, label %if.then41

if.end39.do.cond_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

if.then41:                                        ; preds = %if.end39
  call fastcc void @mlx5e_tx_wi_dma_unmap(ptr noundef %add.ptr, ptr noundef %arrayidx, ptr noundef nonnull %dma_fifo_cc)
  %69 = ptrtoint ptr %num_fifo_pkts to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %num_fifo_pkts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp5.not.i = icmp eq i8 %70, 0
  br i1 %cmp5.not.i, label %if.then41.mlx5e_tx_wi_consume_fifo_skbs.exit_crit_edge, label %if.then41.for.body.i_crit_edge

if.then41.for.body.i_crit_edge:                   ; preds = %if.then41
  br label %for.body.i

if.then41.mlx5e_tx_wi_consume_fifo_skbs.exit_crit_edge: ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_wi_consume_fifo_skbs.exit

for.body.i:                                       ; preds = %mlx5e_consume_skb.exit.i.for.body.i_crit_edge, %if.then41.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i186, %mlx5e_consume_skb.exit.i.for.body.i_crit_edge ], [ 0, %if.then41.for.body.i_crit_edge ]
  %71 = ptrtoint ptr %cc.i.i180 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cc.i.i180, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %72, align 2
  %inc.i.i = add i16 %74, 1
  store i16 %inc.i.i, ptr %72, align 2
  %75 = ptrtoint ptr %skb_fifo.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skb_fifo.i, align 4
  %77 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %mask.i.i.i, align 4
  %and4.i.i.i = and i16 %78, %74
  %and.i.i.i181 = zext i16 %and4.i.i.i to i32
  %arrayidx.i.i.i182 = getelementptr ptr, ptr %76, i32 %and.i.i.i181
  %79 = ptrtoint ptr %arrayidx.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.i.i182, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 17
  %81 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %tx_flags.i.i, align 1
  %85 = and i8 %84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i = icmp eq i8 %85, 0
  br i1 %tobool.not.i.i, label %for.body.i.mlx5e_consume_skb.exit.i_crit_edge, label %if.then.i.i, !prof !30

for.body.i.mlx5e_consume_skb.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_consume_skb.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwts.i.i) #11
  %86 = ptrtoint ptr %timestamp_h.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %timestamp_h.i.i, align 4
  %88 = ptrtoint ptr %timestamp_l.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %timestamp_l.i.i, align 4
  %conv.i.i.i183 = zext i32 %89 to i64
  %conv1.i.i.i184 = zext i32 %87 to i64
  %shl.i.i.i185 = shl nuw i64 %conv1.i.i.i184, 32
  %or.i.i.i = or i64 %shl.i.i.i185, %conv.i.i.i183
  %90 = ptrtoint ptr %ptp_cyc2time.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ptp_cyc2time.i, align 16
  %92 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %clock.i, align 32
  %call.i.i.i = call i64 %91(ptr noundef %93, i64 noundef %or.i.i.i) #11
  %94 = ptrtoint ptr %hwts.i.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %call.i.i.i, ptr %hwts.i.i, align 8
  %95 = ptrtoint ptr %ptpsq.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ptpsq.i, align 4
  %tobool5.not.i.i = icmp eq ptr %96, null
  br i1 %tobool5.not.i.i, label %if.else.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cq_stats.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %cq_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cq_stats.i.i, align 4
  call void @mlx5e_skb_cb_hwtstamp_handler(ptr noundef %80, i32 noundef 1, i64 noundef %call.i.i.i, ptr noundef %98) #11
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @skb_tstamp_tx(ptr noundef %80, ptr noundef nonnull %hwts.i.i) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then6.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hwts.i.i) #11
  br label %mlx5e_consume_skb.exit.i

mlx5e_consume_skb.exit.i:                         ; preds = %if.end.i.i, %for.body.i.mlx5e_consume_skb.exit.i_crit_edge
  call void @napi_consume_skb(ptr noundef %80, i32 noundef %napi_budget) #11
  %inc.i186 = add nuw nsw i32 %i.06.i, 1
  %99 = ptrtoint ptr %num_fifo_pkts to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %num_fifo_pkts, align 2
  %conv.i = zext i8 %100 to i32
  %cmp.i = icmp ult i32 %inc.i186, %conv.i
  br i1 %cmp.i, label %mlx5e_consume_skb.exit.i.for.body.i_crit_edge, label %mlx5e_consume_skb.exit.i.mlx5e_tx_wi_consume_fifo_skbs.exit_crit_edge

mlx5e_consume_skb.exit.i.mlx5e_tx_wi_consume_fifo_skbs.exit_crit_edge: ; preds = %mlx5e_consume_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_wi_consume_fifo_skbs.exit

mlx5e_consume_skb.exit.i.for.body.i_crit_edge:    ; preds = %mlx5e_consume_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mlx5e_tx_wi_consume_fifo_skbs.exit:               ; preds = %mlx5e_consume_skb.exit.i.mlx5e_tx_wi_consume_fifo_skbs.exit_crit_edge, %if.then41.mlx5e_tx_wi_consume_fifo_skbs.exit_crit_edge
  %num_bytes47 = getelementptr %struct.mlx5e_tx_wqe_info, ptr %38, i32 %idxprom, i32 1
  %101 = ptrtoint ptr %num_bytes47 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_bytes47, align 4
  %add48 = add i32 %102, %nbytes.1
  br label %do.cond

do.cond:                                          ; preds = %mlx5e_tx_wi_consume_fifo_skbs.exit, %if.end39.do.cond_crit_edge, %mlx5e_ktls_tx_try_handle_resync_dump_comp.exit.thread, %mlx5e_consume_skb.exit
  %nbytes.2 = phi i32 [ %add29, %mlx5e_consume_skb.exit ], [ %add48, %mlx5e_tx_wi_consume_fifo_skbs.exit ], [ %nbytes.1, %if.end39.do.cond_crit_edge ], [ %nbytes.1, %mlx5e_ktls_tx_try_handle_resync_dump_comp.exit.thread ]
  br i1 %cmp.not, label %do.end, label %do.cond.do.body12_crit_edge

do.cond.do.body12_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.end:                                           ; preds = %do.cond
  %op_own.i187 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe.0, i32 0, i32 23
  %103 = ptrtoint ptr %op_own.i187 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %op_own.i187, align 1
  %.mask = and i8 %104, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -48, i8 %.mask)
  %cmp55 = icmp eq i8 %.mask, -48
  br i1 %cmp55, label %if.then63, label %do.end.if.end75_crit_edge, !prof !28

do.end.if.end75_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then63:                                        ; preds = %do.end
  %call65 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.then63.if.end73_crit_edge

if.then63.if.end73_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sqn, align 4
  call fastcc void @mlx5e_dump_error_cqe(ptr noundef %cq, i32 noundef %106, ptr noundef %cqe.0)
  %107 = ptrtoint ptr %num_wqebbs to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %num_wqebbs, align 4
  call void @mlx5_wq_cyc_wqe_dump(ptr noundef %wq15.le, i16 noundef zeroext %conv1.i, i8 noundef zeroext %108) #11
  %109 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %priv, align 64
  %wq71 = getelementptr inbounds %struct.mlx5e_priv, ptr %110, i32 0, i32 14
  %111 = ptrtoint ptr %wq71 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wq71, align 16
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %112, ptr noundef %recover_work) #11
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %if.then63.if.end73_crit_edge
  %113 = ptrtoint ptr %cqe_err to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %cqe_err, align 16
  %inc74 = add i64 %114, 1
  store i64 %inc74, ptr %cqe_err, align 16
  br label %if.end75

if.end75:                                         ; preds = %if.end73, %do.end.if.end75_crit_edge
  %inc77 = add nuw nsw i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %i.0)
  %exitcond.not = icmp eq i32 %i.0, 127
  br i1 %exitcond.not, label %if.end75.do.end83_crit_edge, label %land.rhs

if.end75.do.end83_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end83

land.rhs:                                         ; preds = %if.end75
  %115 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cc.i.i, align 4
  %117 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sz_m1.i.i.i, align 4
  %and.i.i.i190 = and i32 %118, %116
  %119 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i192 = zext i16 %120 to i32
  %add.i.i.i193 = add i32 %and.i.i.i190, %conv.i.i.i192
  %121 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i195 = zext i8 %122 to i32
  %shr.i.i.i196 = lshr i32 %add.i.i.i193, %conv1.i.i.i195
  %123 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cq, align 4
  %arrayidx.i.i.i197 = getelementptr %struct.mlx5_buf_list, ptr %124, i32 %shr.i.i.i196
  %125 = ptrtoint ptr %arrayidx.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i.i197, align 4
  %127 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i199 = zext i16 %128 to i32
  %and.i.i15.i200 = and i32 %add.i.i.i193, %conv2.i.i.i199
  %129 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i202 = zext i8 %130 to i32
  %shl.i.i.i203 = shl i32 %and.i.i15.i200, %conv3.i.i.i202
  %add.ptr.i.i.i204 = getelementptr i8, ptr %126, i32 %shl.i.i.i203
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %130)
  %cmp.i.i205 = icmp eq i8 %130, 7
  %conv2.i.i206 = zext i1 %cmp.i.i205 to i32
  %add.ptr.i.i207 = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i204, i32 %conv2.i.i206
  %op_own.i208 = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i207, i32 0, i32 23
  %131 = ptrtoint ptr %op_own.i208 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %op_own.i208, align 1
  %133 = and i8 %132, 1
  %134 = ptrtoint ptr %log_sz.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %log_sz.i.i.i, align 4
  %conv.i.i17.i210 = zext i8 %135 to i32
  %shr.i.i18.i211 = lshr i32 %116, %conv.i.i17.i210
  %conv5.i212 = and i32 %shr.i.i18.i211, 1
  %conv6.i213 = zext i8 %133 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i212, i32 %conv6.i213)
  %cmp.not.i214 = icmp eq i32 %conv5.i212, %conv6.i213
  br i1 %cmp.not.i214, label %mlx5_cqwq_get_cqe.exit217, label %land.rhs.do.end83_crit_edge

land.rhs.do.end83_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end83

mlx5_cqwq_get_cqe.exit217:                        ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !39
  %tobool82.not = icmp eq ptr %add.ptr.i.i207, null
  br i1 %tobool82.not, label %mlx5_cqwq_get_cqe.exit217.do.end83_crit_edge, label %mlx5_cqwq_get_cqe.exit217.do.body_crit_edge

mlx5_cqwq_get_cqe.exit217.do.body_crit_edge:      ; preds = %mlx5_cqwq_get_cqe.exit217
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

mlx5_cqwq_get_cqe.exit217.do.end83_crit_edge:     ; preds = %mlx5_cqwq_get_cqe.exit217
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end83

do.end83:                                         ; preds = %mlx5_cqwq_get_cqe.exit217.do.end83_crit_edge, %land.rhs.do.end83_crit_edge, %if.end75.do.end83_crit_edge
  %inc77.lcssa = phi i32 [ %inc77, %land.rhs.do.end83_crit_edge ], [ 128, %if.end75.do.end83_crit_edge ], [ %inc77, %mlx5_cqwq_get_cqe.exit217.do.end83_crit_edge ]
  %conv84 = sext i32 %inc77.lcssa to i64
  %cqes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %24, i32 0, i32 27
  %136 = ptrtoint ptr %cqes to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %cqes, align 128
  %add85 = add i64 %137, %conv84
  store i64 %add85, ptr %cqes, align 128
  %138 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cc.i.i, align 4
  %and.i = and i32 %139, 16777215
  %db.i = getelementptr inbounds %struct.mlx5_cqwq, ptr %cq, i32 0, i32 1
  %140 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %db.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %and.i, ptr %141, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !40
  call void @arm_heavy_mb() #11
  %143 = ptrtoint ptr %dma_fifo_cc to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dma_fifo_cc, align 4
  %145 = ptrtoint ptr %dma_fifo_cc9 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %dma_fifo_cc9, align 4
  %146 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %add, ptr %add.ptr, align 128
  %txq = getelementptr i8, ptr %cq, i32 320
  %147 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %txq, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.2)
  %tobool.not.i219 = icmp eq i32 %nbytes.2, 0
  br i1 %tobool.not.i219, label %do.end83.netdev_tx_completed_queue.exit_crit_edge, label %if.end.i221, !prof !28

do.end83.netdev_tx_completed_queue.exit_crit_edge: ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_completed_queue.exit

if.end.i221:                                      ; preds = %do.end83
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %148, i32 0, i32 15
  call void @dql_completed(ptr noundef %dql.i, i32 noundef %nbytes.2) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !41
  %adj_limit.i.i = getelementptr inbounds %struct.netdev_queue, ptr %148, i32 0, i32 15, i32 1
  %149 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %adj_limit.i.i, align 4
  %151 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i = sub i32 %150, %152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i220 = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i220, label %if.end.i221.netdev_tx_completed_queue.exit_crit_edge, label %if.end14.i, !prof !28

if.end.i221.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_completed_queue.exit

if.end14.i:                                       ; preds = %if.end.i221
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %148, i32 0, i32 13
  %call15.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, label %if.then17.i

if.end14.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_completed_queue.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @netif_schedule_queue(ptr noundef %148) #11
  br label %netdev_tx_completed_queue.exit

netdev_tx_completed_queue.exit:                   ; preds = %if.then17.i, %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, %if.end.i221.netdev_tx_completed_queue.exit_crit_edge, %do.end83.netdev_tx_completed_queue.exit_crit_edge
  %153 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %txq, align 64
  %state.i222 = getelementptr inbounds %struct.netdev_queue, ptr %154, i32 0, i32 13
  %155 = ptrtoint ptr %state.i222 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %state.i222, align 4
  %and1.i.i = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %netdev_tx_completed_queue.exit.if.end107_crit_edge, label %land.lhs.true

netdev_tx_completed_queue.exit.if.end107_crit_edge: ; preds = %netdev_tx_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

land.lhs.true:                                    ; preds = %netdev_tx_completed_queue.exit
  %157 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %add.ptr, align 128
  %pc = getelementptr i8, ptr %cq, i32 -128
  %159 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %pc, align 128
  %stop_room = getelementptr i8, ptr %cq, i32 328
  %161 = ptrtoint ptr %stop_room to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %stop_room, align 8
  %sub.i = sub i16 %158, %160
  %163 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %sz_m1.i, align 4
  %165 = trunc i32 %164 to i16
  %conv1.i.i223 = and i16 %sub.i, %165
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i.i223, i16 %162)
  %cmp.not.i224 = icmp uge i16 %conv1.i.i223, %162
  call void @__sanitizer_cov_trace_cmp2(i16 %158, i16 %160)
  %cmp8.i = icmp eq i16 %158, %160
  %spec.select.i = or i1 %cmp8.i, %cmp.not.i224
  br i1 %spec.select.i, label %land.lhs.true100, label %land.lhs.true.if.end107_crit_edge

land.lhs.true.if.end107_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

land.lhs.true100:                                 ; preds = %land.lhs.true
  %166 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %state, align 4
  %168 = and i32 %167, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool103.not = icmp eq i32 %168, 0
  br i1 %tobool103.not, label %if.then104, label %land.lhs.true100.if.end107_crit_edge

land.lhs.true100.if.end107_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then104:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  call void @netif_tx_wake_queue(ptr noundef %154) #11
  %wake = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %24, i32 0, i32 28
  %169 = ptrtoint ptr %wake to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %wake, align 8
  %inc106 = add i64 %170, 1
  store i64 %inc106, ptr %wake, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %land.lhs.true100.if.end107_crit_edge, %land.lhs.true.if.end107_crit_edge, %netdev_tx_completed_queue.exit.if.end107_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc77.lcssa)
  %cmp108 = icmp eq i32 %inc77.lcssa, 128
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %mlx5_cqwq_get_cqe.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp108, %if.end107 ], [ false, %entry.cleanup_crit_edge ], [ false, %mlx5_cqwq_get_cqe.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_fifo_cc) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_tx_wi_dma_unmap(ptr nocapture noundef readonly %sq, ptr nocapture noundef readonly %wi, ptr nocapture noundef %dma_fifo_cc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_dma = getelementptr inbounds %struct.mlx5e_tx_wqe_info, ptr %wi, i32 0, i32 3
  %0 = ptrtoint ptr %num_dma to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_dma, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp6.not = icmp eq i8 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %db.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14
  %dma_fifo_mask.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 12
  %pdev = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %mlx5e_tx_dma_unmap.exit.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc2, %mlx5e_tx_dma_unmap.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %dma_fifo_cc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_fifo_cc, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %dma_fifo_cc, align 4
  %4 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db.i, align 4
  %6 = ptrtoint ptr %dma_fifo_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_fifo_mask.i, align 4
  %and.i = and i32 %7, %3
  %arrayidx.i = getelementptr %struct.mlx5e_sq_dma, ptr %5, i32 %and.i
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %type.i = getelementptr %struct.mlx5e_sq_dma, ptr %5, i32 %and.i, i32 2
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %11, label %land.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %size.i = getelementptr %struct.mlx5e_sq_dma, ptr %5, i32 %and.i, i32 1
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %14, i32 noundef %16, i32 noundef 1, i32 noundef 0) #11
  br label %mlx5e_tx_dma_unmap.exit

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %size3.i = getelementptr %struct.mlx5e_sq_dma, ptr %5, i32 %and.i, i32 1
  %19 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size3.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %18, i32 noundef %20, i32 noundef 1, i32 noundef 0) #11
  br label %mlx5e_tx_dma_unmap.exit

land.end.i:                                       ; preds = %for.body
  %.b43.i = load i1, ptr @mlx5e_tx_dma_unmap.__already_done, align 1
  br i1 %.b43.i, label %land.end.i.mlx5e_tx_dma_unmap.exit_crit_edge, label %if.then.i, !prof !30

land.end.i.mlx5e_tx_dma_unmap.exit_crit_edge:     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_dma_unmap.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mlx5e_tx_dma_unmap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 304, i32 noundef 9, ptr noundef nonnull @.str.4) #11
  br label %mlx5e_tx_dma_unmap.exit

mlx5e_tx_dma_unmap.exit:                          ; preds = %if.then.i, %land.end.i.mlx5e_tx_dma_unmap.exit_crit_edge, %sw.bb1.i, %sw.bb.i
  %inc2 = add nuw nsw i32 %i.07, 1
  %21 = ptrtoint ptr %num_dma to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_dma, align 1
  %conv = zext i8 %22 to i32
  %cmp = icmp ult i32 %inc2, %conv
  br i1 %cmp, label %mlx5e_tx_dma_unmap.exit.for.body_crit_edge, label %mlx5e_tx_dma_unmap.exit.for.end_crit_edge

mlx5e_tx_dma_unmap.exit.for.end_crit_edge:        ; preds = %mlx5e_tx_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

mlx5e_tx_dma_unmap.exit.for.body_crit_edge:       ; preds = %mlx5e_tx_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %mlx5e_tx_dma_unmap.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_dump_error_cqe(ptr nocapture noundef readonly %cq, i32 noundef %qn, ptr noundef %err_cqe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %cc = getelementptr inbounds %struct.mlx5_cqwq, ptr %cq, i32 0, i32 2
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cc, align 4
  %sub = add i32 %1, -1
  %sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 1
  %2 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sz_m1.i, align 4
  %and.i = and i32 %3, %sub
  %netdev = getelementptr inbounds %struct.mlx5e_cq, ptr %cq, i32 0, i32 5
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 8
  %mcq = getelementptr inbounds %struct.mlx5e_cq, ptr %cq, i32 0, i32 3
  %6 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcq, align 32
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %err_cqe, i32 0, i32 23
  %8 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %op_own.i, align 1
  %10 = lshr i8 %9, 4
  %conv = zext i8 %10 to i32
  %syndrome = getelementptr inbounds %struct.mlx5_err_cqe, ptr %err_cqe, i32 0, i32 4
  %11 = ptrtoint ptr %syndrome to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %syndrome, align 1
  %conv3 = zext i8 %12 to i32
  %vendor_err_synd = getelementptr inbounds %struct.mlx5_err_cqe, ptr %err_cqe, i32 0, i32 3
  %13 = ptrtoint ptr %vendor_err_synd to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vendor_err_synd, align 2
  %conv4 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %7, i32 noundef %and.i, i32 noundef %qn, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #15
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %err_cqe, i32 noundef 64, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_wq_cyc_wqe_dump(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_free_txqsq_descs(ptr noundef %sq) local_unnamed_addr #0 align 64 {
entry:
  %dma_fifo_cc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_fifo_cc) #11
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sq, align 128
  %dma_fifo_cc1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 2
  %2 = ptrtoint ptr %dma_fifo_cc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_fifo_cc1, align 4
  %4 = ptrtoint ptr %dma_fifo_cc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dma_fifo_cc, align 4
  %pc = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 5
  %5 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pc, align 128
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %6)
  %cmp.not6974 = icmp eq i16 %1, %6
  br i1 %cmp.not6974, label %while.end.thread, label %while.body.lr.ph.lr.ph

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dma_fifo_cc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_fifo_cc, align 4
  %9 = ptrtoint ptr %dma_fifo_cc1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dma_fifo_cc1, align 4
  br label %netdev_tx_completed_queue.exit

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %sz_m1.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 1
  %wqe_info = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 2
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.backedge.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %sqcc.0.ph76 = phi i16 [ %1, %while.body.lr.ph.lr.ph ], [ %add, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %nbytes.0.ph75 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %nbytes.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %mlx5e_ktls_tx_try_handle_resync_dump_comp.exit.while.body_crit_edge, %while.body.lr.ph
  %sqcc.070 = phi i16 [ %sqcc.0.ph76, %while.body.lr.ph ], [ %add, %mlx5e_ktls_tx_try_handle_resync_dump_comp.exit.while.body_crit_edge ]
  %10 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sz_m1.i, align 4
  %12 = trunc i32 %11 to i16
  %conv1.i = and i16 %sqcc.070, %12
  %13 = ptrtoint ptr %wqe_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wqe_info, align 4
  %idxprom = zext i16 %conv1.i to i32
  %arrayidx = getelementptr %struct.mlx5e_tx_wqe_info, ptr %14, i32 %idxprom
  %num_wqebbs = getelementptr %struct.mlx5e_tx_wqe_info, ptr %14, i32 %idxprom, i32 2
  %15 = ptrtoint ptr %num_wqebbs to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_wqebbs, align 4
  %conv4 = zext i8 %16 to i16
  %add = add i16 %sqcc.070, %conv4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !28

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @mlx5e_tx_wi_dma_unmap(ptr noundef %sq, ptr noundef %arrayidx, ptr noundef nonnull %dma_fifo_cc)
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  call void @__dev_kfree_skb_any(ptr noundef %20, i32 noundef 1) #11
  br label %while.cond.outer.backedge.sink.split

while.cond.outer.backedge.sink.split:             ; preds = %if.then21, %if.then
  %num_bytes27.sink = getelementptr %struct.mlx5e_tx_wqe_info, ptr %14, i32 %idxprom, i32 1
  %21 = ptrtoint ptr %num_bytes27.sink to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_bytes27.sink, align 4
  %add28 = add i32 %22, %nbytes.0.ph75
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end19.while.cond.outer.backedge_crit_edge, %while.cond.outer.backedge.sink.split
  %nbytes.0.ph.be = phi i32 [ %nbytes.0.ph75, %if.end19.while.cond.outer.backedge_crit_edge ], [ %add28, %while.cond.outer.backedge.sink.split ]
  %23 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pc, align 128
  %cmp.not69 = icmp eq i16 %add, %24
  br i1 %cmp.not69, label %while.cond.outer.backedge.while.end_crit_edge, label %while.cond.outer.backedge.while.body.lr.ph_crit_edge

while.cond.outer.backedge.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

while.cond.outer.backedge.while.end_crit_edge:    ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %while.body
  %resync_dump_frag_page.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %14, i32 %idxprom, i32 5
  %25 = ptrtoint ptr %resync_dump_frag_page.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resync_dump_frag_page.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end19, label %mlx5e_ktls_tx_try_handle_resync_dump_comp.exit, !prof !30

mlx5e_ktls_tx_try_handle_resync_dump_comp.exit:   ; preds = %if.end
  call void @mlx5e_ktls_tx_handle_resync_dump_comp(ptr noundef %sq, ptr noundef %arrayidx, ptr noundef nonnull %dma_fifo_cc) #11
  %27 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pc, align 128
  %cmp.not = icmp eq i16 %add, %28
  br i1 %cmp.not, label %mlx5e_ktls_tx_try_handle_resync_dump_comp.exit.while.end_crit_edge, label %mlx5e_ktls_tx_try_handle_resync_dump_comp.exit.while.body_crit_edge

mlx5e_ktls_tx_try_handle_resync_dump_comp.exit.while.body_crit_edge: ; preds = %mlx5e_ktls_tx_try_handle_resync_dump_comp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

mlx5e_ktls_tx_try_handle_resync_dump_comp.exit.while.end_crit_edge: ; preds = %mlx5e_ktls_tx_try_handle_resync_dump_comp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end19:                                         ; preds = %if.end
  %num_fifo_pkts = getelementptr %struct.mlx5e_tx_wqe_info, ptr %14, i32 %idxprom, i32 4
  %29 = ptrtoint ptr %num_fifo_pkts to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_fifo_pkts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool20.not = icmp eq i8 %30, 0
  br i1 %tobool20.not, label %if.end19.while.cond.outer.backedge_crit_edge, label %if.then21

if.end19.while.cond.outer.backedge_crit_edge:     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.outer.backedge

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @mlx5e_tx_wi_dma_unmap(ptr noundef %sq, ptr noundef %arrayidx, ptr noundef nonnull %dma_fifo_cc)
  call fastcc void @mlx5e_tx_wi_kfree_fifo_skbs(ptr noundef %sq, ptr noundef %arrayidx)
  br label %while.cond.outer.backedge.sink.split

while.end:                                        ; preds = %mlx5e_ktls_tx_try_handle_resync_dump_comp.exit.while.end_crit_edge, %while.cond.outer.backedge.while.end_crit_edge
  %nbytes.0.ph.lcssa = phi i32 [ %nbytes.0.ph75, %mlx5e_ktls_tx_try_handle_resync_dump_comp.exit.while.end_crit_edge ], [ %nbytes.0.ph.be, %while.cond.outer.backedge.while.end_crit_edge ]
  %31 = ptrtoint ptr %dma_fifo_cc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_fifo_cc, align 4
  %33 = ptrtoint ptr %dma_fifo_cc1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dma_fifo_cc1, align 4
  %34 = ptrtoint ptr %sq to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %add, ptr %sq, align 128
  %txq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 16
  %35 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %txq, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.0.ph.lcssa)
  %tobool.not.i61 = icmp eq i32 %nbytes.0.ph.lcssa, 0
  br i1 %tobool.not.i61, label %while.end.netdev_tx_completed_queue.exit_crit_edge, label %if.end.i, !prof !28

while.end.netdev_tx_completed_queue.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_completed_queue.exit

if.end.i:                                         ; preds = %while.end
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 15
  call void @dql_completed(ptr noundef %dql.i, i32 noundef %nbytes.0.ph.lcssa) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !41
  %adj_limit.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 15, i32 1
  %37 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %adj_limit.i.i, align 4
  %39 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i = sub i32 %38, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i, label %if.end.i.netdev_tx_completed_queue.exit_crit_edge, label %if.end14.i, !prof !28

if.end.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_completed_queue.exit

if.end14.i:                                       ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 13
  %call15.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, label %if.then17.i

if.end14.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_completed_queue.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @netif_schedule_queue(ptr noundef %36) #11
  br label %netdev_tx_completed_queue.exit

netdev_tx_completed_queue.exit:                   ; preds = %if.then17.i, %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, %if.end.i.netdev_tx_completed_queue.exit_crit_edge, %while.end.netdev_tx_completed_queue.exit_crit_edge, %while.end.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_fifo_cc) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_tx_wi_kfree_fifo_skbs(ptr nocapture noundef readonly %sq, ptr nocapture noundef readonly %wi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_fifo_pkts = getelementptr inbounds %struct.mlx5e_tx_wqe_info, ptr %wi, i32 0, i32 4
  %0 = ptrtoint ptr %num_fifo_pkts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_fifo_pkts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp4.not = icmp eq i8 %1, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %skb_fifo = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 1
  %cc.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 1, i32 2
  %mask.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %inc.i = add i16 %5, 1
  store i16 %inc.i, ptr %3, align 2
  %6 = ptrtoint ptr %skb_fifo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb_fifo, align 4
  %8 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mask.i.i, align 4
  %and4.i.i = and i16 %9, %5
  %and.i.i = zext i16 %and4.i.i to i32
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %and.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %11, i32 noundef 1) #11
  %inc = add nuw nsw i32 %i.05, 1
  %12 = ptrtoint ptr %num_fifo_pkts to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_fifo_pkts, align 2
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5i_sq_xmit(ptr noundef %sq, ptr noundef %skb, ptr nocapture noundef readonly %av, i32 noundef %dqpn, i32 noundef %dqkey, i1 noundef zeroext %xmit_more) local_unnamed_addr #0 align 64 {
entry:
  %wqe_attr = alloca %struct.mlx5e_tx_wqe_attr, align 8
  %attr = alloca %struct.mlx5e_tx_attr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wqe_attr) #11
  %0 = ptrtoint ptr %wqe_attr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -4294901761, ptr %wqe_attr, align 8, !annotation !31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %attr) #11
  %1 = call ptr @memset(ptr %attr, i32 255, i32 16)
  %stats1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 32
  call fastcc void @mlx5e_sq_xmit_prepare(ptr noundef %sq, ptr noundef %skb, ptr noundef null, ptr noundef nonnull %attr)
  %headlen.i = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %headlen.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %headlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %9 to i16
  %add.i = select i1 %tobool.not.i, i16 6, i16 7
  %add3.i = add nuw nsw i16 %add.i, %conv.i
  %ihs.i = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %ihs.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ihs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool5.not.i = icmp eq i16 %11, 0
  br i1 %tobool5.not.i, label %entry.mlx5i_sq_calc_wqe_attr.exit_crit_edge, label %if.then.i

entry.mlx5i_sq_calc_wqe_attr.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5i_sq_calc_wqe_attr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i16 %11, -2
  %conv9.i = zext i16 %sub.i to i32
  %sub11.i = add nuw nsw i32 %conv9.i, 15
  %div31.i = lshr i32 %sub11.i, 4
  %conv12.i = trunc i32 %div31.i to i16
  %conv16.i = add nuw nsw i16 %add3.i, %conv12.i
  br label %mlx5i_sq_calc_wqe_attr.exit

mlx5i_sq_calc_wqe_attr.exit:                      ; preds = %if.then.i, %entry.mlx5i_sq_calc_wqe_attr.exit_crit_edge
  %ds_cnt_inl.0.i = phi i16 [ %conv12.i, %if.then.i ], [ 0, %entry.mlx5i_sq_calc_wqe_attr.exit_crit_edge ]
  %ds_cnt.0.i = phi i16 [ %conv16.i, %if.then.i ], [ %add3.i, %entry.mlx5i_sq_calc_wqe_attr.exit_crit_edge ]
  %conv19.i = zext i16 %ds_cnt.0.i to i32
  %sub21.i = add nuw nsw i32 %conv19.i, 3
  %div2230.i = lshr i32 %sub21.i, 2
  %conv23.i = trunc i32 %div2230.i to i8
  %12 = ptrtoint ptr %wqe_attr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %ds_cnt.0.i, ptr %wqe_attr, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %wqe_attr, i32 2
  %13 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %ds_cnt_inl.0.i, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %wqe_attr, i32 6
  %14 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv23.i, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 2
  %15 = trunc i32 %div2230.i to i16
  %conv = and i16 %15, 255
  %wq1.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11
  %pc.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 5
  %16 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pc.i, align 128
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 1
  %18 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sz_m1.i.i, align 4
  %20 = trunc i32 %19 to i16
  %conv1.i.i = and i16 %17, %20
  %conv.i.i = zext i16 %conv1.i.i to i32
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 3
  %21 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %22 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i, %conv.i.i.i
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 2
  %23 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv1.i.i.i = zext i16 %24 to i32
  %or.i.i.i = or i32 %add.i.i.i, %conv1.i.i.i
  %sub.i.i.i = sub nsw i32 %or.i.i.i, %conv.i.i.i
  %25 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i, i32 %19) #11
  %26 = trunc i32 %25 to i16
  %27 = sub i16 1, %conv1.i.i
  %conv2.i.i = add i16 %27, %26
  call void @__sanitizer_cov_trace_cmp2(i16 %conv2.i.i, i16 %conv)
  %cmp.i = icmp ult i16 %conv2.i.i, %conv
  br i1 %cmp.i, label %if.then.i62, label %mlx5i_sq_calc_wqe_attr.exit.mlx5e_txqsq_get_next_pi.exit_crit_edge, !prof !28

mlx5i_sq_calc_wqe_attr.exit.mlx5e_txqsq_get_next_pi.exit_crit_edge: ; preds = %mlx5i_sq_calc_wqe_attr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_txqsq_get_next_pi.exit

if.then.i62:                                      ; preds = %mlx5i_sq_calc_wqe_attr.exit
  %conv.i61 = zext i16 %conv2.i.i to i32
  %wqe_info.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 2
  %28 = ptrtoint ptr %wqe_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wqe_info.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %29, i32 %conv.i.i
  %add.ptr.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %arrayidx.i, i32 %conv.i61
  %cmp733.i = icmp ult ptr %arrayidx.i, %add.ptr.i
  br i1 %cmp733.i, label %for.body.lr.ph.i, label %if.then.i62.for.end.i_crit_edge

if.then.i62.for.end.i_crit_edge:                  ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then.i62
  %sqn.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %wi.034.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %wi.034.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %wi.034.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i63 = getelementptr inbounds i8, ptr %wi.034.i, i32 4
  %31 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i63 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i63, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i64 = getelementptr inbounds i8, ptr %wi.034.i, i32 8
  %32 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i64 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i64, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i65 = getelementptr inbounds i8, ptr %wi.034.i, i32 9
  %33 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i65 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i65, align 1
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %wi.034.i, i32 10
  %34 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.614.0..sroa_idx.i = getelementptr inbounds i8, ptr %wi.034.i, i32 12
  %35 = ptrtoint ptr %.compoundliteral.sroa.614.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %.compoundliteral.sroa.614.0..sroa_idx.i, align 4
  %36 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sqn.i, align 4
  tail call fastcc void @mlx5e_post_nop(ptr noundef %wq1.i, i32 noundef %37, ptr noundef %pc.i) #11
  %incdec.ptr.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %wi.034.i, i32 1
  %cmp7.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.i62.for.end.i_crit_edge
  %conv11.i = zext i16 %conv2.i.i to i64
  %38 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stats1, align 32
  %nop.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %nop.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %nop.i, align 16
  %add.i66 = add i64 %41, %conv11.i
  store i64 %add.i66, ptr %nop.i, align 16
  %42 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pc.i, align 128
  %44 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sz_m1.i.i, align 4
  %46 = trunc i32 %45 to i16
  %conv1.i32.i = and i16 %43, %46
  %.pre = zext i16 %conv1.i32.i to i32
  br label %mlx5e_txqsq_get_next_pi.exit

mlx5e_txqsq_get_next_pi.exit:                     ; preds = %for.end.i, %mlx5i_sq_calc_wqe_attr.exit.mlx5e_txqsq_get_next_pi.exit_crit_edge
  %conv.i.i67.pre-phi = phi i32 [ %conv.i.i, %mlx5i_sq_calc_wqe_attr.exit.mlx5e_txqsq_get_next_pi.exit_crit_edge ], [ %.pre, %for.end.i ]
  %47 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i69 = zext i16 %48 to i32
  %add.i.i.i70 = add nuw nsw i32 %conv.i.i67.pre-phi, %conv.i.i.i69
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 6
  %49 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i71 = zext i8 %50 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i70, %conv1.i.i.i71
  %51 = ptrtoint ptr %wq1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wq1.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %52, i32 %shr.i.i.i
  %53 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i.i, align 4
  %55 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %56 to i32
  %and.i.i.i = and i32 %add.i.i.i70, %conv2.i.i.i
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 5
  %57 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %58 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 %shl.i.i.i
  %59 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 96)
  %conv3 = zext i1 %xmit_more to i64
  %xmit_more4 = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %3, i32 0, i32 2
  %60 = ptrtoint ptr %xmit_more4 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %xmit_more4, align 16
  %add = add i64 %61, %conv3
  store i64 %add, ptr %xmit_more4, align 16
  %wqe_info = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 2
  %62 = ptrtoint ptr %wqe_info to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wqe_info, align 4
  %arrayidx = getelementptr %struct.mlx5e_tx_wqe_info, ptr %63, i32 %conv.i.i67.pre-phi
  %datagram5 = getelementptr inbounds %struct.mlx5i_tx_wqe, ptr %add.ptr.i.i.i, i32 0, i32 1
  %eth = getelementptr inbounds %struct.mlx5i_tx_wqe, ptr %add.ptr.i.i.i, i32 0, i32 3
  %data = getelementptr inbounds %struct.mlx5i_tx_wqe, ptr %add.ptr.i.i.i, i32 0, i32 4
  %64 = call ptr @memcpy(ptr %datagram5, ptr %av, i32 48)
  %or.i = or i32 %dqpn, -2147483648
  %dqp_dct.i = getelementptr inbounds %struct.mlx5_av, ptr %datagram5, i32 0, i32 1
  %65 = ptrtoint ptr %dqp_dct.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or.i, ptr %dqp_dct.i, align 8
  %66 = ptrtoint ptr %datagram5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %dqkey, ptr %datagram5, align 8
  %flow_table_metadata.i.i.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eth, i32 0, i32 7
  %67 = ptrtoint ptr %flow_table_metadata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flow_table_metadata.i.i.i, align 4
  %and.i.i.i73 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i73)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i73, 0
  br i1 %tobool.i.i.not.i, label %if.end.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %mlx5e_txqsq_get_next_pi.exit
  %cs_flags.i.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eth, i32 0, i32 4
  %69 = ptrtoint ptr %cs_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 64, ptr %cs_flags.i.i, align 4
  %active_extensions.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %70 = ptrtoint ptr %active_extensions.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %active_extensions.i.i.i.i.i.i, align 1
  %72 = and i8 %71, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.i.not.i.i.i.i.i = icmp eq i8 %72, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %if.end.i.i.xfrm_offload.exit.i.i_crit_edge, label %skb_sec_path.exit.i.i.i

if.end.i.i.xfrm_offload.exit.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_offload.exit.i.i

skb_sec_path.exit.i.i.i:                          ; preds = %if.end.i.i
  %extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %73 = ptrtoint ptr %extensions.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %extensions.i.i.i.i.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.skb_ext, ptr %74, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %76 to i32
  %shl.i.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i, 3
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %74, i32 %shl.i.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge: ; preds = %skb_sec_path.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_offload.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %skb_sec_path.exit.i.i.i
  %olen.i.i.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %olen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %olen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool1.not.i.i.i = icmp eq i32 %78, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_offload.exit.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %79 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %78)
  %cmp.not.i.i.i = icmp eq i32 %80, %78
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge

lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_offload.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i74 = add i32 %78, -1
  %arrayidx.i.i.i75 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i.i, i32 0, i32 3, i32 %sub.i.i.i74
  br label %xfrm_offload.exit.i.i

xfrm_offload.exit.i.i:                            ; preds = %if.end.i.i.i, %lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge, %skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge, %if.end.i.i.xfrm_offload.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %arrayidx.i.i.i75, %if.end.i.i.i ], [ null, %lor.lhs.false2.i.i.i.xfrm_offload.exit.i.i_crit_edge ], [ null, %lor.lhs.false.i.i.i.xfrm_offload.exit.i.i_crit_edge ], [ null, %skb_sec_path.exit.i.i.i.xfrm_offload.exit.i.i_crit_edge ], [ null, %if.end.i.i.xfrm_offload.exit.i.i_crit_edge ]
  %inner_ipproto2.i.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i.i.i, i32 0, i32 4
  %81 = ptrtoint ptr %inner_ipproto2.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %inner_ipproto2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %xfrm_offload.exit.i.i
  %83 = ptrtoint ptr %cs_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 80, ptr %cs_flags.i.i, align 4
  %84 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %82, label %if.then3.i.i.mlx5e_txwqe_build_eseg_csum.exit_crit_edge [
    i8 6, label %if.then3.i.i.if.then11.i.i_crit_edge
    i8 17, label %if.then3.i.i.if.then11.i.i_crit_edge79
  ]

if.then3.i.i.if.then11.i.i_crit_edge79:           ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then3.i.i.if.then11.i.i_crit_edge:             ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then3.i.i.mlx5e_txwqe_build_eseg_csum.exit_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.then11.i.i:                                    ; preds = %if.then3.i.i.if.then11.i.i_crit_edge, %if.then3.i.i.if.then11.i.i_crit_edge79
  %85 = ptrtoint ptr %cs_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 112, ptr %cs_flags.i.i, align 4
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.else.i.i:                                      ; preds = %xfrm_offload.exit.i.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %86 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %87 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %87)
  %cmp18.i.i = icmp eq i16 %87, 1536
  br i1 %cmp18.i.i, label %if.then22.i.i, label %if.else.i.i.mlx5e_txwqe_build_eseg_csum.exit_crit_edge, !prof !30

if.else.i.i.mlx5e_txwqe_build_eseg_csum.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.then22.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %cs_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -64, ptr %cs_flags.i.i, align 4
  %89 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %stats1, align 32
  %csum_partial_inner.i.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %90, i32 0, i32 8
  %91 = ptrtoint ptr %csum_partial_inner.i.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %csum_partial_inner.i.i, align 64
  %inc.i.i = add i64 %92, 1
  store i64 %inc.i.i, ptr %csum_partial_inner.i.i, align 64
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.end.i:                                         ; preds = %mlx5e_txqsq_get_next_pi.exit
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %93 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %94 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %94)
  %cmp.i76 = icmp eq i16 %94, 1536
  br i1 %cmp.i76, label %if.then9.i, label %if.else26.i, !prof !30

if.then9.i:                                       ; preds = %if.end.i
  %cs_flags.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eth, i32 0, i32 4
  %95 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 64, ptr %cs_flags.i, align 4
  %96 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load10.i = load i16, ptr %ip_summed.i, align 8
  %97 = and i16 %bf.load10.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool14.not.i = icmp eq i16 %97, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 112, ptr %cs_flags.i, align 4
  %99 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %stats1, align 32
  %csum_partial_inner.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %100, i32 0, i32 8
  %101 = ptrtoint ptr %csum_partial_inner.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %csum_partial_inner.i, align 64
  %inc.i = add i64 %102, 1
  store i64 %inc.i, ptr %csum_partial_inner.i, align 64
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.else.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -64, ptr %cs_flags.i, align 4
  %104 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %stats1, align 32
  %csum_partial.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %csum_partial.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %csum_partial.i, align 8
  %inc24.i = add i64 %107, 1
  store i64 %inc24.i, ptr %csum_partial.i, align 8
  br label %mlx5e_txwqe_build_eseg_csum.exit

if.else26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %stats1, align 32
  %csum_none.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %109, i32 0, i32 22
  %110 = ptrtoint ptr %csum_none.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %csum_none.i, align 16
  %inc42.i = add i64 %111, 1
  store i64 %inc42.i, ptr %csum_none.i, align 16
  br label %mlx5e_txwqe_build_eseg_csum.exit

mlx5e_txwqe_build_eseg_csum.exit:                 ; preds = %if.else26.i, %if.else.i, %if.then15.i, %if.then22.i.i, %if.else.i.i.mlx5e_txwqe_build_eseg_csum.exit_crit_edge, %if.then11.i.i, %if.then3.i.i.mlx5e_txwqe_build_eseg_csum.exit_crit_edge
  %mss = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 3
  %112 = ptrtoint ptr %mss to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %mss, align 4
  %mss6 = getelementptr inbounds %struct.mlx5i_tx_wqe, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 6
  %114 = ptrtoint ptr %mss6 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %mss6, align 2
  br i1 %tobool5.not.i, label %mlx5e_txwqe_build_eseg_csum.exit.if.end_crit_edge, label %if.then

mlx5e_txwqe_build_eseg_csum.exit.if.end_crit_edge: ; preds = %mlx5e_txwqe_build_eseg_csum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %mlx5e_txwqe_build_eseg_csum.exit
  call void @__sanitizer_cov_trace_pc() #13
  %115 = getelementptr inbounds %struct.mlx5i_tx_wqe, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 8
  %start = getelementptr inbounds %struct.anon.210, ptr %115, i32 0, i32 1
  %data9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %116 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data9, align 4
  %conv11 = zext i16 %11 to i32
  %118 = call ptr @memcpy(ptr %start, ptr %117, i32 %conv11)
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %11, ptr %115, align 4
  %120 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 2
  %conv13 = zext i16 %121 to i32
  %add.ptr = getelementptr %struct.mlx5_wqe_data_seg, ptr %data, i32 %conv13
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5e_txwqe_build_eseg_csum.exit.if.end_crit_edge
  %conv16.pre-phi = phi i32 [ %conv11, %if.then ], [ 0, %mlx5e_txwqe_build_eseg_csum.exit.if.end_crit_edge ]
  %dseg.0 = phi ptr [ %add.ptr, %if.then ], [ %data, %mlx5e_txwqe_build_eseg_csum.exit.if.end_crit_edge ]
  %data14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %122 = ptrtoint ptr %data14 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data14, align 4
  %add.ptr17 = getelementptr i8, ptr %123, i32 %conv16.pre-phi
  %call18 = tail call fastcc i32 @mlx5e_txwqe_build_dsegs(ptr noundef %sq, ptr noundef %skb, ptr noundef %add.ptr17, i16 noundef zeroext %5, ptr noundef %dseg.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %err_drop, label %if.end23, !prof !28

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv24 = trunc i32 %call18 to i8
  call fastcc void @mlx5e_txwqe_complete(ptr noundef %sq, ptr noundef %skb, ptr noundef nonnull %attr, ptr noundef nonnull %wqe_attr, i8 noundef zeroext %conv24, ptr noundef %arrayidx, ptr noundef %add.ptr.i.i.i, i1 noundef zeroext %xmit_more)
  br label %cleanup

err_drop:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dropped = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %3, i32 0, i32 24
  %124 = ptrtoint ptr %dropped to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %dropped, align 64
  %inc = add i64 %125, 1
  store i64 %inc, ptr %dropped, align 64
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %err_drop, %if.end23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %attr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wqe_attr) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_txwqe_build_dsegs(ptr nocapture noundef %sq, ptr nocapture noundef readonly %skb, ptr noundef %skb_data, i16 noundef zeroext %headlen, ptr nocapture noundef writeonly %dseg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %headlen)
  %tobool.not = icmp eq i16 %headlen, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %pdev = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 20
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %conv = zext i16 %headlen to i32
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %skb_data) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !30

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %1) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef -1) #11
  br label %dma_unmap_wqe_err

dma_map_single_attrs.exit:                        ; preds = %if.then
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef %skb_data, i32 noundef %conv) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %skb_data to i32
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %8, i32 %shr.i
  %and.i = and i32 %9, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %conv, i32 noundef 1, i32 noundef 0) #11
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %11, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.dma_unmap_wqe_err_crit_edge, label %if.end

dma_map_single_attrs.exit.dma_unmap_wqe_err_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_unmap_wqe_err

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv7 = zext i32 %call41.i to i64
  %addr = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %dseg, i32 0, i32 2
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv7, ptr %addr, align 8
  %mkey_be = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 21
  %13 = ptrtoint ptr %mkey_be to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mkey_be, align 16
  %lkey = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %dseg, i32 0, i32 1
  %15 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %lkey, align 4
  %16 = ptrtoint ptr %dseg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %dseg, align 8
  %dma_fifo_pc.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 7
  %17 = ptrtoint ptr %dma_fifo_pc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_fifo_pc.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %dma_fifo_pc.i, align 4
  %db.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14
  %19 = ptrtoint ptr %db.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %db.i.i, align 4
  %dma_fifo_mask.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 12
  %21 = ptrtoint ptr %dma_fifo_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_fifo_mask.i.i, align 4
  %and.i.i = and i32 %22, %18
  %arrayidx.i.i = getelementptr %struct.mlx5e_sq_dma, ptr %20, i32 %and.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call41.i, ptr %arrayidx.i.i, align 4
  %size2.i = getelementptr %struct.mlx5e_sq_dma, ptr %20, i32 %and.i.i, i32 1
  %24 = ptrtoint ptr %size2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %size2.i, align 4
  %type.i = getelementptr %struct.mlx5e_sq_dma, ptr %20, i32 %and.i.i, i32 2
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type.i, align 4
  %incdec.ptr = getelementptr %struct.mlx5_wqe_data_seg, ptr %dseg, i32 1
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %dseg.addr.0 = phi ptr [ %incdec.ptr, %if.end ], [ %dseg, %entry.if.end10_crit_edge ]
  %num_dma.0 = phi i8 [ 1, %if.end ], [ 0, %entry.if.end10_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i, align 4
  %nr_frags100 = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %nr_frags100 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_frags100, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp102.not = icmp eq i8 %29, 0
  br i1 %cmp102.not, label %if.end10.for.end_crit_edge, label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %pdev16 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 20
  %mkey_be31 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 21
  %dma_fifo_pc.i78 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 7
  %db.i.i80 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14
  %dma_fifo_mask.i.i81 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %30 = phi ptr [ %27, %for.body.lr.ph ], [ %56, %for.inc.for.body_crit_edge ]
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %for.inc.for.body_crit_edge ]
  %num_dma.1104 = phi i8 [ %num_dma.0, %for.body.lr.ph ], [ %inc34, %for.inc.for.body_crit_edge ]
  %dseg.addr.1103 = phi ptr [ %dseg.addr.0, %for.body.lr.ph ], [ %incdec.ptr35, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %30, i32 0, i32 12, i32 %i.0105
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %30, i32 0, i32 12, i32 %i.0105, i32 1
  %31 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bv_len.i, align 4
  %33 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev16, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %30, i32 0, i32 12, i32 %i.0105, i32 2
  %37 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %34, ptr noundef %36, i32 noundef %38, i32 noundef %32, i32 noundef 1, i32 noundef 0) #11
  %39 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev16, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %40, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i76.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i76.not, label %for.body.dma_unmap_wqe_err_crit_edge, label %for.inc, !prof !28

for.body.dma_unmap_wqe_err_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_unmap_wqe_err

for.inc:                                          ; preds = %for.body
  %conv29 = zext i32 %call2.i to i64
  %addr30 = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %dseg.addr.1103, i32 0, i32 2
  %41 = ptrtoint ptr %addr30 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv29, ptr %addr30, align 8
  %42 = ptrtoint ptr %mkey_be31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mkey_be31, align 16
  %lkey32 = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %dseg.addr.1103, i32 0, i32 1
  %44 = ptrtoint ptr %lkey32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %lkey32, align 4
  %45 = ptrtoint ptr %dseg.addr.1103 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %32, ptr %dseg.addr.1103, align 8
  %46 = ptrtoint ptr %dma_fifo_pc.i78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_fifo_pc.i78, align 4
  %inc.i79 = add i32 %47, 1
  store i32 %inc.i79, ptr %dma_fifo_pc.i78, align 4
  %48 = ptrtoint ptr %db.i.i80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %db.i.i80, align 4
  %50 = ptrtoint ptr %dma_fifo_mask.i.i81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_fifo_mask.i.i81, align 4
  %and.i.i82 = and i32 %51, %47
  %arrayidx.i.i83 = getelementptr %struct.mlx5e_sq_dma, ptr %49, i32 %and.i.i82
  %52 = ptrtoint ptr %arrayidx.i.i83 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call2.i, ptr %arrayidx.i.i83, align 4
  %size2.i84 = getelementptr %struct.mlx5e_sq_dma, ptr %49, i32 %and.i.i82, i32 1
  %53 = ptrtoint ptr %size2.i84 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %32, ptr %size2.i84, align 4
  %type.i85 = getelementptr %struct.mlx5e_sq_dma, ptr %49, i32 %and.i.i82, i32 2
  %54 = ptrtoint ptr %type.i85 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %type.i85, align 4
  %inc34 = add i8 %num_dma.1104, 1
  %incdec.ptr35 = getelementptr %struct.mlx5_wqe_data_seg, ptr %dseg.addr.1103, i32 1
  %inc37 = add nuw nsw i32 %i.0105, 1
  %55 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %nr_frags, align 2
  %conv12 = zext i8 %58 to i32
  %cmp = icmp ult i32 %inc37, %conv12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end10.for.end_crit_edge
  %num_dma.1.lcssa = phi i8 [ %num_dma.0, %if.end10.for.end_crit_edge ], [ %inc34, %for.inc.for.end_crit_edge ]
  %conv38 = zext i8 %num_dma.1.lcssa to i32
  br label %cleanup39

dma_unmap_wqe_err:                                ; preds = %for.body.dma_unmap_wqe_err_crit_edge, %dma_map_single_attrs.exit.dma_unmap_wqe_err_crit_edge, %dma_map_single_attrs.exit.thread
  %num_dma.3 = phi i8 [ 0, %dma_map_single_attrs.exit.dma_unmap_wqe_err_crit_edge ], [ 0, %dma_map_single_attrs.exit.thread ], [ %num_dma.1104, %for.body.dma_unmap_wqe_err_crit_edge ]
  tail call fastcc void @mlx5e_dma_unmap_wqe_err(ptr noundef %sq, i8 noundef zeroext %num_dma.3)
  br label %cleanup39

cleanup39:                                        ; preds = %dma_unmap_wqe_err, %for.end
  %retval.0 = phi i32 [ -12, %dma_unmap_wqe_err ], [ %conv38, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_txwqe_complete(ptr nocapture noundef %sq, ptr noundef %skb, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %wqe_attr, i8 noundef zeroext %num_dma, ptr nocapture noundef %wi, ptr nocapture noundef %cseg, i1 noundef zeroext %xmit_more) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 4
  %num_wqebbs4 = getelementptr inbounds %struct.mlx5e_tx_wqe_attr, ptr %wqe_attr, i32 0, i32 3
  %2 = ptrtoint ptr %num_wqebbs4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_wqebbs4, align 2
  %4 = ptrtoint ptr %wi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %wi, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %wi, i32 4
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %wi, i32 8
  %6 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %3, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %wi, i32 9
  %7 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %num_dma, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 1
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %wi, i32 10
  %8 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 2
  %.compoundliteral.sroa.626.0..sroa_idx = getelementptr inbounds i8, ptr %wi, i32 12
  %9 = ptrtoint ptr %.compoundliteral.sroa.626.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %.compoundliteral.sroa.626.0..sroa_idx, align 4
  %pc = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 5
  %10 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pc, align 128
  %conv = zext i16 %11 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %opcode = getelementptr inbounds %struct.mlx5e_tx_attr, ptr %attr, i32 0, i32 5
  %12 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %opcode, align 4
  %conv6 = zext i8 %13 to i32
  %or = or i32 %shl, %conv6
  %14 = ptrtoint ptr %cseg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %cseg, align 4
  %sqn = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 17
  %15 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sqn, align 4
  %shl7 = shl i32 %16, 8
  %17 = ptrtoint ptr %wqe_attr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %wqe_attr, align 2
  %conv8 = zext i16 %18 to i32
  %or9 = or i32 %shl7, %conv8
  %qpn_ds = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %cseg, i32 0, i32 1
  %19 = ptrtoint ptr %qpn_ds to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or9, ptr %qpn_ds, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %20 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx_flags.i, align 1
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %entry.mlx5e_tx_skb_update_hwts_flags.exit_crit_edge, label %if.then.i, !prof !30

entry.mlx5e_tx_skb_update_hwts_flags.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_skb_update_hwts_flags.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %25 = or i8 %23, 4
  %26 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %tx_flags.i, align 1
  br label %mlx5e_tx_skb_update_hwts_flags.exit

mlx5e_tx_skb_update_hwts_flags.exit:              ; preds = %if.then.i, %entry.mlx5e_tx_skb_update_hwts_flags.exit_crit_edge
  %27 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %conv11 = zext i8 %28 to i16
  %29 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pc, align 128
  %add = add i16 %30, %conv11
  store i16 %add, ptr %pc, align 128
  %31 = ptrtoint ptr %sq to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sq, align 128
  %stop_room.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 18
  %33 = ptrtoint ptr %stop_room.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %stop_room.i, align 8
  %sub.i.i = sub i16 %32, %add
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 1
  %35 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sz_m1.i.i.i, align 4
  %37 = trunc i32 %36 to i16
  %conv1.i.i.i = and i16 %sub.i.i, %37
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i.i.i, i16 %34)
  %cmp.not.i.i = icmp uge i16 %conv1.i.i.i, %34
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %add)
  %cmp8.i.i = icmp eq i16 %32, %add
  %spec.select.i.i = or i1 %cmp8.i.i, %cmp.not.i.i
  br i1 %spec.select.i.i, label %mlx5e_tx_skb_update_hwts_flags.exit.mlx5e_tx_check_stop.exit_crit_edge, label %if.then.i46, !prof !30

mlx5e_tx_skb_update_hwts_flags.exit.mlx5e_tx_check_stop.exit_crit_edge: ; preds = %mlx5e_tx_skb_update_hwts_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_check_stop.exit

if.then.i46:                                      ; preds = %mlx5e_tx_skb_update_hwts_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  %txq.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 16
  %38 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %txq.i, align 64
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %39, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %stats.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %40 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stats.i, align 32
  %stopped.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %41, i32 0, i32 23
  %42 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %stopped.i, align 8
  %inc.i = add i64 %43, 1
  store i64 %inc.i, ptr %stopped.i, align 8
  br label %mlx5e_tx_check_stop.exit

mlx5e_tx_check_stop.exit:                         ; preds = %if.then.i46, %mlx5e_tx_skb_update_hwts_flags.exit.mlx5e_tx_check_stop.exit_crit_edge
  %ptpsq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 34
  %44 = ptrtoint ptr %ptpsq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptpsq, align 4
  %tobool.not = icmp eq ptr %45, null
  br i1 %tobool.not, label %mlx5e_tx_check_stop.exit.if.end_crit_edge, label %if.then, !prof !30

mlx5e_tx_check_stop.exit.if.end_crit_edge:        ; preds = %mlx5e_tx_check_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %mlx5e_tx_check_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_skb_cb_hwtstamp_init(ptr noundef %skb) #11
  %46 = ptrtoint ptr %ptpsq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ptpsq, align 4
  %skb_fifo = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %47, i32 0, i32 4
  %pc.i47 = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %47, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %pc.i47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pc.i47, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 2
  %inc.i48 = add i16 %51, 1
  store i16 %inc.i48, ptr %49, align 2
  %52 = ptrtoint ptr %skb_fifo to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb_fifo, align 4
  %mask.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %47, i32 0, i32 4, i32 3
  %54 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mask.i.i, align 4
  %and4.i.i = and i16 %55, %51
  %and.i.i = zext i16 %and4.i.i to i32
  %arrayidx.i.i = getelementptr ptr, ptr %53, i32 %and.i.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %skb, ptr %arrayidx.i.i, align 4
  tail call fastcc void @skb_get(ptr noundef %skb)
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5e_tx_check_stop.exit.if.end_crit_edge
  %txq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 16
  %57 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %txq, align 64
  %59 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %attr, align 4
  br i1 %xmit_more, label %if.then.i49, label %if.end.i

if.then.i49:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %60)
  %cmp.i.i = icmp ugt i32 %60, 268435455
  br i1 %cmp.i.i, label %do.body2.i.i, label %__netdev_tx_sent_queue.exit, !prof !28

do.body2.i.i:                                     ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !33
  unreachable

if.end.i:                                         ; preds = %if.end
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %58, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %60)
  %cmp.i.i.i = icmp ugt i32 %60, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !28

do.body2.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !33
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.end.i
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %58, i32 0, i32 15, i32 2
  %61 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %62 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %63, %60
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %58, i32 0, i32 15, i32 1
  %64 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %66 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %65, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i4.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i4.i, label %dql_queued.exit.i.i.if.then23_crit_edge, label %if.end.i.i, !prof !30

dql_queued.exit.i.i.if.then23_crit_edge:          ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.end.i.i:                                       ; preds = %dql_queued.exit.i.i
  %state.i5.i = getelementptr inbounds %struct.netdev_queue, ptr %58, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i5.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !35
  %67 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %69 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %68, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i.if.then23_crit_edge, !prof !28

if.end.i.i.if.then23_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i5.i) #11
  br label %if.then23

__netdev_tx_sent_queue.exit:                      ; preds = %if.then.i49
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %58, i32 0, i32 15
  %last_obj_cnt.i.i = getelementptr inbounds %struct.netdev_queue, ptr %58, i32 0, i32 15, i32 2
  %71 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %60, ptr %last_obj_cnt.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %72 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dql.i, align 128
  %add.i.i = add i32 %73, %60
  store i32 %add.i.i, ptr %dql.i, align 128
  %state.i.i50 = getelementptr inbounds %struct.netdev_queue, ptr %58, i32 0, i32 13
  %74 = ptrtoint ptr %state.i.i50 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %state.i.i50, align 4
  %and1.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %__netdev_tx_sent_queue.exit.if.end25_crit_edge, label %__netdev_tx_sent_queue.exit.if.then23_crit_edge

__netdev_tx_sent_queue.exit.if.then23_crit_edge:  ; preds = %__netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

__netdev_tx_sent_queue.exit.if.end25_crit_edge:   ; preds = %__netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %__netdev_tx_sent_queue.exit.if.then23_crit_edge, %if.then14.i.i, %if.end.i.i.if.then23_crit_edge, %dql_queued.exit.i.i.if.then23_crit_edge
  %76 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %pc, align 128
  %uar_map = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 15
  %78 = ptrtoint ptr %uar_map to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %uar_map, align 4
  %fm_ce_se.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %cseg, i32 0, i32 4
  %80 = ptrtoint ptr %fm_ce_se.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %fm_ce_se.i, align 1
  %82 = or i8 %81, 8
  store i8 %82, ptr %fm_ce_se.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !36
  %conv2.i = zext i16 %77 to i32
  %db.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 1
  %83 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %db.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv2.i, ptr %84, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !37
  tail call void @arm_heavy_mb() #11
  %86 = ptrtoint ptr %cseg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cseg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %87) #11, !srcloc !38
  %88 = ptrtoint ptr %qpn_ds to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qpn_ds, align 4
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %89) #11, !srcloc !38
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %__netdev_tx_sent_queue.exit.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_get_txq_by_classid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_tls_handle_tx_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_ipsec_handle_tx_skb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tls_validate_xmit_skb(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_get_headlen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ipsec_tx_build_eseg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__netdev_tx_sent_queue(ptr noundef %dev_queue, i32 noundef %bytes, i1 noundef zeroext %xmit_more) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br i1 %xmit_more, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bytes)
  %cmp.i = icmp ugt i32 %bytes, 268435455
  br i1 %cmp.i, label %do.body2.i, label %dql_queued.exit, !prof !28

do.body2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !33
  unreachable

dql_queued.exit:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dql = getelementptr inbounds %struct.netdev_queue, ptr %dev_queue, i32 0, i32 15
  %last_obj_cnt.i = getelementptr inbounds %struct.netdev_queue, ptr %dev_queue, i32 0, i32 15, i32 2
  %0 = ptrtoint ptr %last_obj_cnt.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %bytes, ptr %last_obj_cnt.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %1 = ptrtoint ptr %dql to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dql, align 128
  %add.i = add i32 %2, %bytes
  store i32 %add.i, ptr %dql, align 128
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %dev_queue, i32 0, i32 13
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i = icmp ne i32 %and1.i.i, 0
  br label %return

if.end:                                           ; preds = %entry
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %dev_queue, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bytes)
  %cmp.i.i = icmp ugt i32 %bytes, 268435455
  br i1 %cmp.i.i, label %do.body2.i.i, label %dql_queued.exit.i, !prof !28

do.body2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !33
  unreachable

dql_queued.exit.i:                                ; preds = %if.end
  %last_obj_cnt.i.i = getelementptr inbounds %struct.netdev_queue, ptr %dev_queue, i32 0, i32 15, i32 2
  %5 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bytes, ptr %last_obj_cnt.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %6 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dql.i, align 128
  %add.i.i = add i32 %7, %bytes
  store i32 %add.i.i, ptr %dql.i, align 128
  %adj_limit.i.i = getelementptr inbounds %struct.netdev_queue, ptr %dev_queue, i32 0, i32 15, i32 1
  %8 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %adj_limit.i.i, align 4
  %10 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i = sub i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp.i4 = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i4, label %dql_queued.exit.i.return_crit_edge, label %if.end.i, !prof !30

dql_queued.exit.i.return_crit_edge:               ; preds = %dql_queued.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %dql_queued.exit.i
  %state.i5 = getelementptr inbounds %struct.netdev_queue, ptr %dev_queue, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i5) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !35
  %11 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %adj_limit.i.i, align 4
  %13 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dql.i, align 128
  %sub.i22.i = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i)
  %cmp7.i = icmp sgt i32 %sub.i22.i, -1
  br i1 %cmp7.i, label %if.then14.i, label %if.end.i.return_crit_edge, !prof !28

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i5) #11
  br label %return

return:                                           ; preds = %if.then14.i, %if.end.i.return_crit_edge, %dql_queued.exit.i.return_crit_edge, %dql_queued.exit
  %retval.0 = phi i1 [ %tobool.i, %dql_queued.exit ], [ true, %dql_queued.exit.i.return_crit_edge ], [ true, %if.end.i.return_crit_edge ], [ true, %if.then14.i ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_notify_hw(ptr nocapture noundef readonly %wq, i16 noundef zeroext %pc, ptr noundef %uar_map, ptr nocapture noundef %ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %fm_ce_se = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %ctrl, i32 0, i32 4
  %0 = ptrtoint ptr %fm_ce_se to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fm_ce_se, align 1
  %2 = or i8 %1, 8
  store i8 %2, ptr %fm_ce_se, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !36
  %conv2 = zext i16 %pc to i32
  %db = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %wq, i32 0, i32 1
  %3 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %db, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv2, ptr %4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !37
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %uar_map, i32 %7) #11, !srcloc !38
  %arrayidx1.i = getelementptr i32, ptr %ctrl, i32 1
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %uar_map, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #11, !srcloc !38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_dma_unmap_wqe_err(ptr nocapture noundef %sq, i8 noundef zeroext %num_dma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %num_dma to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_dma)
  %cmp5.not = icmp eq i8 %num_dma, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dma_fifo_pc = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 7
  %db.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14
  %dma_fifo_mask.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 12
  %pdev = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %mlx5e_tx_dma_unmap.exit.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mlx5e_tx_dma_unmap.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %dma_fifo_pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_fifo_pc, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %dma_fifo_pc, align 4
  %2 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db.i, align 4
  %4 = ptrtoint ptr %dma_fifo_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_fifo_mask.i, align 4
  %and.i = and i32 %5, %dec
  %arrayidx.i = getelementptr %struct.mlx5e_sq_dma, ptr %3, i32 %and.i
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %type.i = getelementptr %struct.mlx5e_sq_dma, ptr %3, i32 %and.i, i32 2
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %9, label %land.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %size.i = getelementptr %struct.mlx5e_sq_dma, ptr %3, i32 %and.i, i32 1
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %12, i32 noundef %14, i32 noundef 1, i32 noundef 0) #11
  br label %mlx5e_tx_dma_unmap.exit

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %size3.i = getelementptr %struct.mlx5e_sq_dma, ptr %3, i32 %and.i, i32 1
  %17 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size3.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %16, i32 noundef %18, i32 noundef 1, i32 noundef 0) #11
  br label %mlx5e_tx_dma_unmap.exit

land.end.i:                                       ; preds = %for.body
  %.b43.i = load i1, ptr @mlx5e_tx_dma_unmap.__already_done, align 1
  br i1 %.b43.i, label %land.end.i.mlx5e_tx_dma_unmap.exit_crit_edge, label %if.then.i, !prof !30

land.end.i.mlx5e_tx_dma_unmap.exit_crit_edge:     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_tx_dma_unmap.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mlx5e_tx_dma_unmap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 304, i32 noundef 9, ptr noundef nonnull @.str.4) #11
  br label %mlx5e_tx_dma_unmap.exit

mlx5e_tx_dma_unmap.exit:                          ; preds = %if.then.i, %land.end.i.mlx5e_tx_dma_unmap.exit_crit_edge, %sw.bb1.i, %sw.bb.i
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %mlx5e_tx_dma_unmap.exit.for.end_crit_edge, label %mlx5e_tx_dma_unmap.exit.for.body_crit_edge

mlx5e_tx_dma_unmap.exit.for.body_crit_edge:       ; preds = %mlx5e_tx_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

mlx5e_tx_dma_unmap.exit.for.end_crit_edge:        ; preds = %mlx5e_tx_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %mlx5e_tx_dma_unmap.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mlx5e_post_nop(ptr nocapture noundef readonly %wq, i32 noundef %sqn, ptr nocapture noundef %pc) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pc, align 2
  %sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 1
  %2 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sz_m1.i, align 4
  %4 = trunc i32 %3 to i16
  %conv1.i = and i16 %1, %4
  %conv.i = zext i16 %conv1.i to i32
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %5 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %add.i.i = add nuw nsw i32 %conv.i, %conv.i.i
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %7 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %8 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %9 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wq, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %10, i32 %shr.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %13 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %14 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  %15 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %16 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shl.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 16)
  %18 = load i16, ptr %pc, align 2
  %conv = zext i16 %18 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl, ptr %add.ptr.i.i, align 4
  %shl2 = shl i32 %sqn, 8
  %or3 = or i32 %shl2, 1
  %qpn_ds = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %qpn_ds to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or3, ptr %qpn_ds, align 4
  %21 = load i16, ptr %pc, align 2
  %inc = add i16 %21, 1
  store i16 %inc, ptr %pc, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ipsec_handle_tx_wqe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_skb_cb_hwtstamp_handler(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ktls_tx_handle_resync_dump_comp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_skb_cb_hwtstamp_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_get(ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %users = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #11, !srcloc !42
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !28

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !30

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !10, !12, !14, !16}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h", i32 304, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h", i32 335, i32 6}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/mlx5/cq.h", i32 199, i32 17}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/mlx5/cq.h", i32 199, i32 31}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2161311677}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{!"auto-init"}
!32 = !{i64 2161258690}
!33 = !{i64 2154954530, i64 2154955030, i64 2154954567, i64 2154954623, i64 2154954657, i64 2154954681, i64 2154954722, i64 2154954743, i64 2154954771, i64 2154954805}
!34 = !{i64 2154955874}
!35 = !{i64 2155883847}
!36 = !{i64 2159950527}
!37 = !{i64 2159950721}
!38 = !{i64 6067073}
!39 = !{i64 2159730331}
!40 = !{i64 2161329620}
!41 = !{i64 2155884918}
!42 = !{i64 2148393379, i64 2148393411, i64 2148393440, i64 2148393474, i64 2148393505, i64 2148393528}
