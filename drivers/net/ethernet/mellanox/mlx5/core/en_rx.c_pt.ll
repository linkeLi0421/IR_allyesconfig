; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_rx_handlers = type { ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.163 }
%struct.atomic_t = type { i32 }
%union.anon.163 = type { i32 }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.205, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.208, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.205 = type { %struct.anon.206 }
%struct.anon.206 = type { i8, i8, i16, i32 }
%union.anon.208 = type { i32 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.anon = type { %struct.mlx5_wq_cyc, ptr, ptr, %struct.mlx5e_rq_frags_info, ptr }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.mlx5e_rq_frags_info = type { [4 x %struct.mlx5e_rq_frag_info], i8, i8, i8 }
%struct.mlx5e_rq_frag_info = type { i32, i32 }
%struct.mlx5e_wqe_frag_info = type { ptr, i32, i8 }
%struct.mlx5e_rq = type { %union.anon, %struct.anon.217, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon = type { %struct.anon.209 }
%struct.anon.209 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.212 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.210 }
%union.anon.210 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.211, i64, i32, [28 x i8] }
%union.anon.211 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.212 = type { %struct.anon.213 }
%struct.anon.213 = type { %struct.anon.214, [0 x %struct.mlx5_mtt] }
%struct.anon.214 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.217 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.273, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.273 = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_mini_cqe8 = type { %union.anon.275, i32 }
%union.anon.275 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.274, i32, i32 }
%union.anon.274 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_rq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_mpw_info = type { %struct.mlx5e_umr_dma_info, i16, [2 x i32] }
%struct.mlx5e_umr_dma_info = type { [64 x %struct.mlx5e_dma_info] }
%struct.mpwrq_cqe_bc = type { i16, i16 }
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5_wqe_srq_next_seg = type { [2 x i8], i16, i8, [11 x i8] }
%struct.mlx5e_shampo_hd = type { i32, ptr, ptr, i16, i16, ptr, i16, i16, i32, i64 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.mlx5e_hw_gro_data = type { ptr, [4 x i8], %struct.flow_keys, i32, [4 x i8] }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.283, i16 }
%union.anon.283 = type { %struct.anon.284 }
%struct.anon.284 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.285 }
%union.anon.285 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.287, i16 }
%struct.anon.287 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.288 }
%union.anon.288 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.178, %struct.atomic_t, i32 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.178 = type { %struct.atomic_t }
%struct.mlx5e_icosq = type { i16, i16, ptr, [120 x i8], %struct.mlx5e_cq, %struct.anon.278, %struct.mlx5_wq_cyc, ptr, i32, i16, i32, ptr, %struct.mlx5_wq_ctrl, ptr, %struct.work_struct, [120 x i8] }
%struct.anon.278 = type { ptr }
%struct.mlx5e_icosq_wqe_info = type { i8, i8, %union.anon.279 }
%union.anon.279 = type { %struct.anon.280 }
%struct.anon.280 = type { ptr }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.297, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.297 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.298 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.298 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.299 }
%struct.anon.299 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.179, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.204, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.179 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.204 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlx5_err_cqe = type { [32 x i8], i32, [18 x i8], i8, i8, i32, i16, i8, i8 }
%struct.mlx5_eswitch_rep = type { [2 x %struct.mlx5_eswitch_rep_data], i16, i16, i16, i32, ptr }
%struct.mlx5_eswitch_rep_data = type { ptr, %struct.atomic_t }
%struct.anon.276 = type { i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.anon.53 = type { i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.mlx5e_profile = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.page_pool_params = type { i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr }
%struct.mlx5_wqe_data_seg = type { i32, i32, i64 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.219, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.258, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.219 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.257] }
%struct.anon.257 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.188 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.188 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.258 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.vlan_hdr = type { i16, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mlx5_klm = type { i32, i32, i64 }
%struct.xdp_buff_xsk = type { %struct.xdp_buff, i32, i32, ptr, i64, %struct.list_head }

@mlx5e_rx_handlers_nic = dso_local constant { %struct.mlx5e_rx_handlers, [20 x i8] } { %struct.mlx5e_rx_handlers { ptr @mlx5e_handle_rx_cqe, ptr @mlx5e_handle_rx_cqe_mpwrq, ptr @mlx5e_handle_rx_cqe_mpwrq_shampo }, [20 x i8] zeroinitializer }, align 32
@mlx5e_poll_ico_cq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en_rx.c\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"netdevice: %s%s: Bad OP in ICOSQ CQE: 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx5e_poll_ico_cq.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"netdevice: %s%s: Bad WQE type in ICOSQ WQE info: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx5e_rx_handlers_rep = dso_local constant { %struct.mlx5e_rx_handlers, [20 x i8] } { %struct.mlx5e_rx_handlers { ptr @mlx5e_handle_rx_cqe_rep, ptr @mlx5e_handle_rx_cqe_mpwrq_rep, ptr null }, [20 x i8] zeroinitializer }, align 32
@mlx5i_rx_handlers = dso_local constant { %struct.mlx5e_rx_handlers, [20 x i8] } { %struct.mlx5e_rx_handlers { ptr @mlx5i_handle_rx_cqe, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"MPWQE RQ with Innova IPSec offload not supported\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RX handler of SHAMPO MPWQE RQ is not set\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RX handler of MPWQE RQ is not set\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RX handler of RQ is not set\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (uninitialized)\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (unregistering)\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (unregistered)\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (released)\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (dummy)\00", [23 x i8] zeroinitializer }, align 32
@netdev_reg_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown reg_state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (unknown)\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Error cqe on cqn 0x%x, ci 0x%x, qn 0x%x, opcode 0x%x, syndrome 0x%x, vendor syndrome 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@mlx5i_complete_rx_cqe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlx5i_complete_rx_cqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 2198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014Unable to map QPN %u to dev - dropping skb\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5i_complete_rx_cqe\00", [42 x i8] zeroinitializer }, align 32
@mlx5i_complete_rx_cqe._entry_ptr = internal global ptr @mlx5i_complete_rx_cqe._entry, section ".printk_index", align 4
@switch.table.netdev_reg_state = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"mlx5e_rx_handlers_nic\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 71, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 895, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 926, i32 5 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"mlx5e_rx_handlers_rep\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1764, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"mlx5i_rx_handlers\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 2295, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 2358, i32 23 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 2364, i32 24 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 2370, i32 24 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 2393, i32 23 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1368, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 717, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 4963, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 4975, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 4976, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 4977, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 4978, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 4979, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 4980, i32 28 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 4983, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 4984, i32 9 }
@___asan_gen_.100 = private unnamed_addr constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 335, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"../include/linux/mlx5/cq.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 199, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 598, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [51 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_rx.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 2198, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [30 x i8] c"switch.table.netdev_reg_state\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @mlx5i_complete_rx_cqe._entry, ptr @mlx5i_complete_rx_cqe._entry_ptr, ptr @mlx5e_rx_handlers_nic, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @mlx5e_rx_handlers_rep, ptr @mlx5i_rx_handlers, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.netdev_reg_state], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_handlers_nic to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_handlers_rep to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_rx_handlers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_complete_rx_cqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.netdev_reg_state to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_handle_rx_cqe(ptr noundef %rq, ptr noundef %cqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wqe_counter = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 21
  %0 = ptrtoint ptr %wqe_counter to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wqe_counter, align 4
  %sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 1
  %2 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sz_m1.i, align 4
  %4 = trunc i32 %3 to i16
  %conv1.i = and i16 %1, %4
  %frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 1
  %5 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frags.i, align 4
  %conv.i = zext i16 %conv1.i to i32
  %log_num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %log_num_frags.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %log_num_frags.i, align 1
  %conv1.i43 = zext i8 %8 to i32
  %shl.i = shl i32 %conv.i, %conv1.i43
  %arrayidx.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %6, i32 %shl.i
  %byte_cnt = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 17
  %9 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %byte_cnt, align 4
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 23
  %11 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %op_own.i, align 1
  %.mask = and i8 %12, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask)
  %cmp.not = icmp eq i8 %.mask, 32
  br i1 %cmp.not, label %if.end, label %if.then, !prof !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx5e_handle_rx_err_cqe(ptr noundef %rq, ptr noundef %cqe)
  br label %free_wqe

if.end:                                           ; preds = %entry
  %skb_from_cqe = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 4
  %13 = ptrtoint ptr %skb_from_cqe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb_from_cqe, align 8
  %call6 = tail call ptr %14(ptr noundef %rq, ptr noundef %cqe, ptr noundef %arrayidx.i, i32 noundef %10) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 23
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and.i = and i32 %16, -2
  store i32 %and.i, ptr %flags, align 4
  %and1.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool10.not = icmp eq i32 %and1.i, 0
  br i1 %tobool10.not, label %if.then8.free_wqe_crit_edge, label %if.then8.wq_cyc_pop_crit_edge

if.then8.wq_cyc_pop_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %wq_cyc_pop

if.then8.free_wqe_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_wqe

if.end13:                                         ; preds = %if.end
  %stats1.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %17 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats1.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %inc.i = add i64 %20, 1
  store i64 %inc.i, ptr %18, align 8
  %conv.i44 = zext i32 %10 to i64
  %bytes.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes.i, align 8
  %add.i = add i64 %22, %conv.i44
  store i64 %add.i, ptr %bytes.i, align 8
  tail call fastcc void @mlx5e_build_rx_skb(ptr noundef %cqe, i32 noundef %10, ptr noundef %rq, ptr noundef nonnull %call6) #10
  %23 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 15
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %25)
  %tobool.not.i = icmp ult i32 %25, 16777216
  %and.i45 = and i32 %25, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool1.not.i = icmp ne i32 %and.i45, 0
  %retval.0.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %retval.0.i, label %if.then15, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  %call16 = tail call zeroext i1 @mlx5e_tc_update_skb(ptr noundef %cqe, ptr noundef nonnull %call6) #10
  br i1 %call16, label %if.then15.if.end19_crit_edge, label %if.then17

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call6, i32 noundef 1) #10
  br label %free_wqe

if.end19:                                         ; preds = %if.then15.if.end19_crit_edge, %if.end13.if.end19_crit_edge
  %napi = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %napi, align 4
  %call20 = tail call i32 @napi_gro_receive(ptr noundef %27, ptr noundef nonnull %call6) #10
  br label %free_wqe

free_wqe:                                         ; preds = %if.end19, %if.then17, %if.then8.free_wqe_crit_edge, %if.then
  %num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_frags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp6.not.i = icmp eq i8 %29, 0
  br i1 %cmp6.not.i, label %free_wqe.wq_cyc_pop_crit_edge, label %for.body.lr.ph.i

free_wqe.wq_cyc_pop_crit_edge:                    ; preds = %free_wqe
  call void @__sanitizer_cov_trace_pc() #12
  br label %wq_cyc_pop

for.body.lr.ph.i:                                 ; preds = %free_wqe
  %xsk_pool.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i46, %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge ]
  %wi.addr.07.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge ]
  %last_in_page.i.i = getelementptr inbounds %struct.mlx5e_wqe_frag_info, ptr %wi.addr.07.i, i32 0, i32 2
  %30 = ptrtoint ptr %last_in_page.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %last_in_page.i.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i, label %for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge, label %if.then.i.i

for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_put_rx_frag.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  %32 = ptrtoint ptr %wi.addr.07.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wi.addr.07.i, align 4
  %34 = ptrtoint ptr %xsk_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xsk_pool.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %33, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  tail call void @xp_free(ptr noundef %38) #10
  br label %mlx5e_put_rx_frag.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_page_release_dynamic(ptr noundef %rq, ptr noundef %33, i1 noundef zeroext true) #10
  br label %mlx5e_put_rx_frag.exit.i

mlx5e_put_rx_frag.exit.i:                         ; preds = %if.else.i.i.i, %if.then.i.i.i, %for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge
  %inc.i46 = add nuw nsw i32 %i.09.i, 1
  %incdec.ptr.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %wi.addr.07.i, i32 1
  %39 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_frags.i, align 4
  %conv.i47 = zext i8 %40 to i32
  %cmp.i = icmp ult i32 %inc.i46, %conv.i47
  br i1 %cmp.i, label %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge, label %mlx5e_put_rx_frag.exit.i.wq_cyc_pop_crit_edge

mlx5e_put_rx_frag.exit.i.wq_cyc_pop_crit_edge:    ; preds = %mlx5e_put_rx_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wq_cyc_pop

mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge:    ; preds = %mlx5e_put_rx_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

wq_cyc_pop:                                       ; preds = %mlx5e_put_rx_frag.exit.i.wq_cyc_pop_crit_edge, %free_wqe.wq_cyc_pop_crit_edge, %if.then8.wq_cyc_pop_crit_edge
  %cur_sz.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %rq, i32 0, i32 4
  %41 = ptrtoint ptr %cur_sz.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cur_sz.i, align 4
  %dec.i = add i16 %42, -1
  store i16 %dec.i, ptr %cur_sz.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_handle_rx_cqe_mpwrq(ptr noundef %rq, ptr noundef %cqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_cnt.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 17
  %0 = ptrtoint ptr %byte_cnt.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %byte_cnt.i, align 2
  %2 = and i16 %1, 32767
  %wqe_id1 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 2
  %3 = ptrtoint ptr %wqe_id1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %wqe_id1, align 2
  %info = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 2
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 32
  %idxprom = zext i16 %4 to i32
  %arrayidx = getelementptr %struct.mlx5e_mpw_info, ptr %6, i32 %idxprom
  %wqe_counter.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 21
  %7 = ptrtoint ptr %wqe_counter.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %wqe_counter.i, align 4
  %conv = zext i16 %8 to i32
  %log_stride_sz = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 6
  %9 = ptrtoint ptr %log_stride_sz to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %log_stride_sz, align 4
  %conv3 = zext i8 %10 to i32
  %shl = shl i32 %conv, %conv3
  %and = and i32 %shl, 4095
  %shr = lshr i32 %shl, 12
  %consumed_strides = getelementptr %struct.mlx5e_mpw_info, ptr %6, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %consumed_strides to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %consumed_strides, align 4
  %add = add i16 %12, %2
  store i16 %add, ptr %consumed_strides, align 4
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 23
  %13 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %op_own.i, align 1
  %.mask = and i8 %14, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask)
  %cmp.not = icmp eq i8 %.mask, 32
  br i1 %cmp.not, label %if.end, label %if.then, !prof !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx5e_handle_rx_err_cqe(ptr noundef %rq, ptr noundef %cqe)
  br label %mpwrq_cqe_out

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %byte_cnt.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %byte_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.i = icmp slt i16 %16, 0
  br i1 %tobool.i, label %if.then18, label %if.end22, !prof !69

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %stats19 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %17 = ptrtoint ptr %stats19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats19, align 4
  %mpwqe_filler_cqes = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %mpwqe_filler_cqes to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %mpwqe_filler_cqes, align 8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %mpwqe_filler_cqes, align 8
  %conv20 = zext i16 %2 to i64
  %mpwqe_filler_strides = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %18, i32 0, i32 22
  %21 = ptrtoint ptr %mpwqe_filler_strides to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %mpwqe_filler_strides, align 8
  %add21 = add i64 %22, %conv20
  store i64 %add21, ptr %mpwqe_filler_strides, align 8
  br label %mpwrq_cqe_out

if.end22:                                         ; preds = %if.end
  %byte_cnt1.i = getelementptr inbounds %struct.mpwrq_cqe_bc, ptr %byte_cnt.i, i32 0, i32 1
  %23 = ptrtoint ptr %byte_cnt1.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %byte_cnt1.i, align 2
  %skb_from_cqe_mpwrq = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 3
  %25 = ptrtoint ptr %skb_from_cqe_mpwrq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb_from_cqe_mpwrq, align 4
  %call24 = tail call ptr %26(ptr noundef %rq, ptr noundef %arrayidx, i16 noundef zeroext %24, i32 noundef %and, i32 noundef %shr) #10
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end22.mpwrq_cqe_out_crit_edge, label %if.end27

if.end22.mpwrq_cqe_out_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %mpwrq_cqe_out

if.end27:                                         ; preds = %if.end22
  %conv28 = zext i16 %24 to i32
  %stats1.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %27 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stats1.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %inc.i = add i64 %30, 1
  store i64 %inc.i, ptr %28, align 8
  %conv.i = zext i16 %24 to i64
  %bytes.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bytes.i, align 8
  %add.i = add i64 %32, %conv.i
  store i64 %add.i, ptr %bytes.i, align 8
  tail call fastcc void @mlx5e_build_rx_skb(ptr noundef %cqe, i32 noundef %conv28, ptr noundef %rq, ptr noundef nonnull %call24) #10
  %33 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 15
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %35)
  %tobool.not.i = icmp ult i32 %35, 16777216
  %and.i = and i32 %35, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp ne i32 %and.i, 0
  %retval.0.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %retval.0.i, label %if.then30, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then30:                                        ; preds = %if.end27
  %call31 = tail call zeroext i1 @mlx5e_tc_update_skb(ptr noundef %cqe, ptr noundef nonnull %call24) #10
  br i1 %call31, label %if.then30.if.end34_crit_edge, label %if.then32

if.then30.if.end34_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call24, i32 noundef 1) #10
  br label %mpwrq_cqe_out

if.end34:                                         ; preds = %if.then30.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %napi = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 2
  %36 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %napi, align 4
  %call35 = tail call i32 @napi_gro_receive(ptr noundef %37, ptr noundef nonnull %call24) #10
  br label %mpwrq_cqe_out

mpwrq_cqe_out:                                    ; preds = %if.end34, %if.then32, %if.end22.mpwrq_cqe_out_crit_edge, %if.then18, %if.then
  %38 = ptrtoint ptr %consumed_strides to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %consumed_strides, align 4
  %num_strides = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 4
  %40 = ptrtoint ptr %num_strides to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %num_strides, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp39 = icmp ult i16 %39, %41
  br i1 %cmp39, label %mpwrq_cqe_out.cleanup_crit_edge, label %if.end48, !prof !67

mpwrq_cqe_out.cleanup_crit_edge:                  ; preds = %mpwrq_cqe_out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %mpwrq_cqe_out
  call void @__sanitizer_cov_trace_pc() #12
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 3
  %42 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i = zext i16 %43 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, %idxprom
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 6
  %44 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %45 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %46 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rq, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %47, i32 %shr.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 2
  %50 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %51 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 5
  %52 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %53 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %shl.i.i
  tail call fastcc void @mlx5e_free_rx_mpwqe(ptr noundef %rq, ptr noundef %arrayidx, i1 noundef zeroext true)
  %54 = ptrtoint ptr %wqe_id1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %wqe_id1, align 2
  %next_wqe_index = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i, i32 0, i32 1
  %tail_next.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 2
  %56 = ptrtoint ptr %tail_next.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tail_next.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %55, ptr %57, align 2
  store ptr %next_wqe_index, ptr %tail_next.i, align 4
  %cur_sz.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 5
  %59 = ptrtoint ptr %cur_sz.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %cur_sz.i, align 4
  %dec.i = add i16 %60, -1
  store i16 %dec.i, ptr %cur_sz.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %mpwrq_cqe_out.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_handle_rx_cqe_mpwrq_shampo(ptr noundef %rq, ptr noundef %cqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_cnt.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 17
  %byte_cnt1.i = getelementptr inbounds %struct.mpwrq_cqe_bc, ptr %byte_cnt.i, i32 0, i32 1
  %0 = ptrtoint ptr %byte_cnt1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %byte_cnt1.i, align 2
  %2 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3
  %header_size = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3, i32 0, i32 1
  %3 = ptrtoint ptr %header_size to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %header_size, align 1
  %conv1 = zext i8 %4 to i16
  %sub = sub i16 %1, %conv1
  %header_entry_index.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3, i32 0, i32 2
  %5 = ptrtoint ptr %header_entry_index.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %header_entry_index.i, align 2
  %shampo.i = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 10
  %7 = ptrtoint ptr %shampo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shampo.i, align 16
  %hd_per_wq.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %hd_per_wq.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hd_per_wq.i, align 4
  %sub.i = add i16 %10, -1
  %and.i = and i16 %sub.i, %6
  %data_offset = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3, i32 0, i32 3
  %11 = ptrtoint ptr %data_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_offset, align 4
  %13 = ptrtoint ptr %byte_cnt.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %byte_cnt.i, align 2
  %15 = and i16 %14, 32767
  %and = and i32 %12, 4095
  %conv7 = zext i16 %1 to i32
  %wqe_id8 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 2
  %16 = ptrtoint ptr %wqe_id8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wqe_id8, align 2
  %shr = lshr i32 %12, 12
  %hw_gro_data = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 13
  %18 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_gro_data, align 8
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %2, align 4
  %21 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  %22 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool15.not = icmp eq i8 %22, 0
  %stats17 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %23 = ptrtoint ptr %stats17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stats17, align 4
  %info = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 2
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 32
  %idxprom = zext i16 %17 to i32
  %arrayidx = getelementptr %struct.mlx5e_mpw_info, ptr %26, i32 %idxprom
  %consumed_strides = getelementptr %struct.mlx5e_mpw_info, ptr %26, i32 %idxprom, i32 1
  %27 = ptrtoint ptr %consumed_strides to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %consumed_strides, align 4
  %add = add i16 %28, %15
  store i16 %add, ptr %consumed_strides, align 4
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 23
  %29 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %op_own.i, align 1
  %.mask = and i8 %30, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask)
  %cmp.not = icmp eq i8 %.mask, 32
  br i1 %cmp.not, label %if.end, label %if.then, !prof !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx5e_handle_rx_err_cqe(ptr noundef %rq, ptr noundef %cqe)
  br label %mpwrq_cqe_out

if.end:                                           ; preds = %entry
  %31 = ptrtoint ptr %byte_cnt.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %byte_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.i = icmp slt i16 %32, 0
  br i1 %tobool.i, label %if.then33, label %if.end36, !prof !69

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mpwqe_filler_cqes = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %24, i32 0, i32 21
  %33 = ptrtoint ptr %mpwqe_filler_cqes to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %mpwqe_filler_cqes, align 8
  %inc = add i64 %34, 1
  store i64 %inc, ptr %mpwqe_filler_cqes, align 8
  %conv34 = zext i16 %15 to i64
  %mpwqe_filler_strides = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %24, i32 0, i32 22
  %35 = ptrtoint ptr %mpwqe_filler_strides to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %mpwqe_filler_strides, align 8
  %add35 = add i64 %36, %conv34
  store i64 %add35, ptr %mpwqe_filler_strides, align 8
  br label %mpwrq_cqe_out

if.end36:                                         ; preds = %if.end
  %.lobit219 = lshr exact i8 %22, 6
  %37 = zext i8 %.lobit219 to i64
  %gro_match_packets = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %24, i32 0, i32 13
  %38 = ptrtoint ptr %gro_match_packets to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %gro_match_packets, align 8
  %add39 = add i64 %39, %37
  store i64 %add39, ptr %gro_match_packets, align 8
  %40 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %19, align 4
  %tobool40.not = icmp eq ptr %41, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %extract.t220 = icmp ne i8 %22, 0
  br i1 %tobool40.not, label %if.end36.if.then47_crit_edge, label %land.lhs.true

if.end36.if.then47_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

land.lhs.true:                                    ; preds = %if.end36
  br i1 %tobool15.not, label %land.lhs.true.if.then43_crit_edge, label %lor.lhs.false

land.lhs.true.if.then43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

lor.lhs.false:                                    ; preds = %land.lhs.true
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i, align 4
  %nr_frags1.i = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %nr_frags1.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nr_frags1.i, align 2
  %conv.i = zext i8 %45 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %conv2.i = zext i16 %sub to i32
  %add.i = add nuw nsw i32 %mul.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 65537
  br i1 %cmp.i, label %lor.lhs.false.if.end45_crit_edge, label %lor.lhs.false.if.then43_crit_edge

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %land.lhs.true.if.then43_crit_edge
  tail call fastcc void @mlx5e_shampo_flush_skb(ptr noundef %rq, ptr noundef %cqe, i1 noundef zeroext false)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %lor.lhs.false.if.end45_crit_edge
  %match.0.off0.ph = phi i1 [ false, %if.then43 ], [ true, %lor.lhs.false.if.end45_crit_edge ]
  %46 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load ptr, ptr %19, align 4
  %tobool46.not = icmp eq ptr %.pr, null
  br i1 %tobool46.not, label %if.end45.if.then47_crit_edge, label %if.else75

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %if.end36.if.then47_crit_edge
  %match.0.off0241 = phi i1 [ %match.0.off0.ph, %if.end45.if.then47_crit_edge ], [ %extract.t220, %if.end36.if.then47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool48.not = icmp eq i8 %4, 0
  br i1 %tobool48.not, label %if.else, label %if.then55, !prof !69

if.then55:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %call56 = tail call fastcc ptr @mlx5e_skb_from_cqe_shampo(ptr noundef %rq, ptr noundef %cqe, i16 noundef zeroext %and.i)
  br label %if.end59

if.else:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = tail call ptr @mlx5e_skb_from_cqe_mpwrq_nonlinear(ptr noundef %rq, ptr noundef %arrayidx, i16 noundef zeroext %1, i32 noundef %and, i32 noundef %shr)
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then55
  %storemerge = phi ptr [ %call58, %if.else ], [ %call56, %if.then55 ]
  %47 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %storemerge, ptr %19, align 4
  %tobool60.not = icmp eq ptr %storemerge, null
  br i1 %tobool60.not, label %if.end59.free_hd_entry_crit_edge, label %if.end70, !prof !69

if.end59.free_hd_entry_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_hd_entry

if.end70:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %count = getelementptr inbounds %struct.sk_buff, ptr %storemerge, i32 0, i32 3, i32 16
  %48 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %count, align 8
  %49 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %19, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 17
  %51 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %gso_size to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %sub, ptr %gso_size, align 4
  br label %if.end101

if.else75:                                        ; preds = %if.end45
  %count78 = getelementptr inbounds %struct.sk_buff, ptr %.pr, i32 0, i32 3, i32 16
  %54 = ptrtoint ptr %count78 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %count78, align 8
  %inc79 = add i16 %55, 1
  store i16 %inc79, ptr %count78, align 8
  %56 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %19, align 4
  %count82 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 3, i32 16
  %58 = ptrtoint ptr %count82 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %count82, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %59)
  %cmp84 = icmp eq i16 %59, 2
  br i1 %cmp84, label %land.lhs.true86, label %if.else75.if.end101_crit_edge

if.else75.if.end101_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

land.lhs.true86:                                  ; preds = %if.else75
  %60 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_gro_data, align 8
  %basic = getelementptr inbounds %struct.mlx5e_hw_gro_data, ptr %61, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %basic, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %63)
  %cmp89 = icmp eq i16 %63, 2048
  br i1 %cmp89, label %if.then91, label %land.lhs.true86.if.end101_crit_edge

land.lhs.true86.if.end101_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then91:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %shampo.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %shampo.i, align 16
  %info.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %info.i, align 4
  %idxprom.i = zext i16 %and.i to i32
  %arrayidx.i = getelementptr %struct.mlx5e_dma_info, ptr %67, i32 %idxprom.i
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  %buff.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1
  %70 = ptrtoint ptr %buff.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %buff.i, align 8
  %72 = trunc i32 %69 to i16
  %73 = and i16 %72, 4095
  %conv1.i = add i16 %73, %71
  %74 = getelementptr %struct.mlx5e_dma_info, ptr %67, i32 %idxprom.i, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %call.i = tail call ptr @page_address(ptr noundef %76) #10
  %conv2.i226 = zext i16 %conv1.i to i32
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %conv2.i226
  %77 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw_gro_data, align 8
  %fk94 = getelementptr inbounds %struct.mlx5e_hw_gro_data, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %fk94 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %fk94, align 8
  %conv95 = zext i16 %80 to i32
  %sub97 = add nsw i32 %conv95, -6
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %sub97
  %id = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 3
  %81 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %id, align 4
  %conv98 = zext i16 %82 to i32
  %second_ip_id = getelementptr inbounds %struct.mlx5e_hw_gro_data, ptr %78, i32 0, i32 3
  %83 = ptrtoint ptr %second_ip_id to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv98, ptr %second_ip_id, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then91, %land.lhs.true86.if.end101_crit_edge, %if.else75.if.end101_crit_edge, %if.end70
  %match.0.off0240 = phi i1 [ %match.0.off0.ph, %if.else75.if.end101_crit_edge ], [ %match.0.off0.ph, %land.lhs.true86.if.end101_crit_edge ], [ %match.0.off0.ph, %if.then91 ], [ %match.0.off0241, %if.end70 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool102.not = icmp eq i8 %4, 0
  br i1 %tobool102.not, label %if.end101.if.end112_crit_edge, label %if.then109, !prof !69

if.end101.if.end112_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then109:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx110 = getelementptr [64 x %struct.mlx5e_dma_info], ptr %arrayidx, i32 0, i32 %shr
  %84 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %19, align 4
  %conv111 = zext i16 %sub to i32
  tail call fastcc void @mlx5e_fill_skb_data(ptr noundef %85, ptr noundef %rq, ptr noundef %arrayidx110, i32 noundef %conv111, i32 noundef %and)
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end101.if.end112_crit_edge
  %86 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %19, align 4
  %88 = ptrtoint ptr %stats17 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %stats17, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %89, align 8
  %inc.i = add i64 %91, 1
  store i64 %inc.i, ptr %89, align 8
  %gro_packets.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %89, i32 0, i32 10
  %92 = ptrtoint ptr %gro_packets.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %gro_packets.i, align 8
  %inc2.i = add i64 %93, 1
  store i64 %inc2.i, ptr %gro_packets.i, align 8
  %conv.i227 = zext i16 %1 to i64
  %bytes.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %89, i32 0, i32 1
  %94 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %bytes.i, align 8
  %add.i228 = add i64 %95, %conv.i227
  store i64 %add.i228, ptr %bytes.i, align 8
  %gro_bytes.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %89, i32 0, i32 11
  %96 = ptrtoint ptr %gro_bytes.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %gro_bytes.i, align 8
  %add4.i = add i64 %97, %conv.i227
  store i64 %add4.i, ptr %gro_bytes.i, align 8
  %count.i = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 3, i32 16
  %98 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %99)
  %cmp.not.i = icmp eq i16 %99, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end112.mlx5e_shampo_complete_rx_cqe.exit_crit_edge

if.end112.mlx5e_shampo_complete_rx_cqe.exit_crit_edge: ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_shampo_complete_rx_cqe.exit

if.end.i:                                         ; preds = %if.end112
  tail call fastcc void @mlx5e_build_rx_skb(ptr noundef %cqe, i32 noundef %conv7, ptr noundef %rq, ptr noundef %87) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 19
  %100 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 18
  %102 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %101 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 15, i32 0, i32 20
  %104 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %105 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw_gro_data, align 8
  %fk.i = getelementptr inbounds %struct.mlx5e_hw_gro_data, ptr %106, i32 0, i32 2
  %107 = call ptr @memset(ptr %fk.i, i32 0, i32 72)
  %call.i.i = tail call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %87, ptr noundef nonnull @flow_keys_dissector, ptr noundef %fk.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br i1 %call.i.i, label %if.end.i.mlx5e_shampo_complete_rx_cqe.exit_crit_edge, label %if.then7.i

if.end.i.mlx5e_shampo_complete_rx_cqe.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_shampo_complete_rx_cqe.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %napi.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 2
  %108 = ptrtoint ptr %napi.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %napi.i, align 4
  %call8.i = tail call i32 @napi_gro_receive(ptr noundef %109, ptr noundef %87) #10
  %110 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw_gro_data, align 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %111, align 8
  br label %mlx5e_shampo_complete_rx_cqe.exit

mlx5e_shampo_complete_rx_cqe.exit:                ; preds = %if.then7.i, %if.end.i.mlx5e_shampo_complete_rx_cqe.exit_crit_edge, %if.end112.mlx5e_shampo_complete_rx_cqe.exit_crit_edge
  br i1 %tobool.not, label %mlx5e_shampo_complete_rx_cqe.exit.free_hd_entry_crit_edge, label %if.then114

mlx5e_shampo_complete_rx_cqe.exit.free_hd_entry_crit_edge: ; preds = %mlx5e_shampo_complete_rx_cqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_hd_entry

if.then114:                                       ; preds = %mlx5e_shampo_complete_rx_cqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx5e_shampo_flush_skb(ptr noundef %rq, ptr noundef %cqe, i1 noundef zeroext %match.0.off0240)
  br label %free_hd_entry

free_hd_entry:                                    ; preds = %if.then114, %mlx5e_shampo_complete_rx_cqe.exit.free_hd_entry_crit_edge, %if.end59.free_hd_entry_crit_edge
  %113 = ptrtoint ptr %shampo.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %shampo.i, align 16
  %idxprom.i229 = zext i16 %and.i to i32
  %add.i230 = add nuw nsw i32 %idxprom.i229, 1
  %and.i231 = and i32 %add.i230, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i231)
  %cmp.i232 = icmp eq i32 %and.i231, 0
  br i1 %cmp.i232, label %if.then.i, label %free_hd_entry.mlx5e_free_rx_shampo_hd_entry.exit_crit_edge

free_hd_entry.mlx5e_free_rx_shampo_hd_entry.exit_crit_edge: ; preds = %free_hd_entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_free_rx_shampo_hd_entry.exit

if.then.i:                                        ; preds = %free_hd_entry
  %info.i233 = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %info.i233 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %info.i233, align 4
  %arrayidx.i234 = getelementptr %struct.mlx5e_dma_info, ptr %116, i32 %idxprom.i229
  %117 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i234, align 4
  %119 = and i32 %118, -4096
  store i32 %119, ptr %arrayidx.i234, align 4
  %120 = load ptr, ptr %info.i233, align 4
  %xsk_pool.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  %121 = ptrtoint ptr %xsk_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %xsk_pool.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %122, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %123 = getelementptr %struct.mlx5e_dma_info, ptr %120, i32 %idxprom.i229, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  tail call void @xp_free(ptr noundef %125) #10
  br label %mlx5e_free_rx_shampo_hd_entry.exit

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx14.i = getelementptr %struct.mlx5e_dma_info, ptr %120, i32 %idxprom.i229
  tail call void @mlx5e_page_release_dynamic(ptr noundef %rq, ptr noundef %arrayidx14.i, i1 noundef zeroext true) #10
  br label %mlx5e_free_rx_shampo_hd_entry.exit

mlx5e_free_rx_shampo_hd_entry.exit:               ; preds = %if.else.i.i, %if.then.i.i, %free_hd_entry.mlx5e_free_rx_shampo_hd_entry.exit_crit_edge
  %bitmap.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %114, i32 0, i32 5
  %126 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bitmap.i, align 8
  %rem.i.i.i = and i32 %idxprom.i229, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %idxprom.i229, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %127, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %128 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %129, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  br label %mpwrq_cqe_out

mpwrq_cqe_out:                                    ; preds = %mlx5e_free_rx_shampo_hd_entry.exit, %if.then33, %if.then
  %130 = ptrtoint ptr %consumed_strides to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %consumed_strides, align 4
  %num_strides = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 4
  %132 = ptrtoint ptr %num_strides to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %num_strides, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %131, i16 %133)
  %cmp120 = icmp ult i16 %131, %133
  br i1 %cmp120, label %mpwrq_cqe_out.cleanup_crit_edge, label %if.end129, !prof !67

mpwrq_cqe_out.cleanup_crit_edge:                  ; preds = %mpwrq_cqe_out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end129:                                        ; preds = %mpwrq_cqe_out
  call void @__sanitizer_cov_trace_pc() #12
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 3
  %134 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i237 = zext i16 %135 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i237, %idxprom
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 6
  %136 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %137 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %138 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rq, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %139, i32 %shr.i.i
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i.i, align 4
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 2
  %142 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %143 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 5
  %144 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %145 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %141, i32 %shl.i.i
  tail call fastcc void @mlx5e_free_rx_mpwqe(ptr noundef %rq, ptr noundef %arrayidx, i1 noundef zeroext true)
  %146 = ptrtoint ptr %wqe_id8 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %wqe_id8, align 2
  %next_wqe_index = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i, i32 0, i32 1
  %tail_next.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 2
  %148 = ptrtoint ptr %tail_next.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %tail_next.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %147, ptr %149, align 2
  store ptr %next_wqe_index, ptr %tail_next.i, align 4
  %cur_sz.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 5
  %151 = ptrtoint ptr %cur_sz.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %cur_sz.i, align 4
  %dec.i = add i16 %152, -1
  store i16 %dec.i, ptr %cur_sz.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %mpwrq_cqe_out.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_page_dma_unmap(ptr nocapture noundef readonly %rq, ptr nocapture noundef readonly %dma_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %2 = ptrtoint ptr %dma_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_info, align 4
  %map_dir = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %map_dir to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %map_dir, align 8
  %conv = zext i8 %5 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %3, i32 noundef 4096, i32 noundef %conv, i32 noundef 32) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_page_release_dynamic(ptr nocapture noundef %rq, ptr nocapture noundef readonly %dma_info, i1 noundef zeroext %recycle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %recycle, label %if.then, label %if.else, !prof !67

if.then:                                          ; preds = %entry
  %page_cache.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 8
  %tail.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %1, 1
  %and.i = and i32 %add.i, 255
  %stats1.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %2 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1.i, align 4
  %4 = ptrtoint ptr %page_cache.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_cache.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp.i = icmp eq i32 %and.i, %5
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %cache_full.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %3, i32 0, i32 28
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %6 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %dma_info, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %dev_page_is_reusable.exit.i, !prof !69

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.8) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #10, !srcloc !70
  unreachable

dev_page_is_reusable.exit.i:                      ; preds = %if.end.i
  %11 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  %and.i.i.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %mlx5e_rx_cache_put.exit, label %if.then2.i

if.then2.i:                                       ; preds = %dev_page_is_reusable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %cache_waive.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %3, i32 0, i32 31
  br label %if.end

mlx5e_rx_cache_put.exit:                          ; preds = %dev_page_is_reusable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.mlx5e_rq, ptr %rq, i32 0, i32 8, i32 2, i32 %1
  %15 = ptrtoint ptr %dma_info to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %dma_info, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i, ptr %tail.i, align 4
  br label %if.end5

if.end:                                           ; preds = %if.then2.i, %if.then.i
  %cache_full.i.sink19 = phi ptr [ %cache_full.i, %if.then.i ], [ %cache_waive.i, %if.then2.i ]
  %19 = ptrtoint ptr %cache_full.i.sink19 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %cache_full.i.sink19, align 8
  %inc.i = add i64 %20, 1
  store i64 %inc.i, ptr %cache_full.i.sink19, align 8
  %pdev.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  %23 = ptrtoint ptr %dma_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_info, align 4
  %map_dir.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %map_dir.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %map_dir.i, align 8
  %conv.i = zext i8 %26 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %24, i32 noundef 4096, i32 noundef %conv.i, i32 noundef 32) #10
  %page_pool = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 24
  %27 = ptrtoint ptr %page_pool to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %page_pool, align 4
  %29 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %dma_info, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  tail call void @page_pool_put_page(ptr noundef %28, ptr noundef %31, i32 noundef -1, i1 noundef zeroext true) #10
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i15 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %32 = ptrtoint ptr %pdev.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i15, align 4
  %34 = ptrtoint ptr %dma_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_info, align 4
  %map_dir.i16 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %map_dir.i16 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %map_dir.i16, align 8
  %conv.i17 = zext i8 %37 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %33, i32 noundef %35, i32 noundef 4096, i32 noundef %conv.i17, i32 noundef 32) #10
  %page_pool4 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 24
  %38 = ptrtoint ptr %page_pool4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %page_pool4, align 4
  %40 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %dma_info, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  tail call void @page_pool_release_page(ptr noundef %39, ptr noundef %42) #10
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  tail call fastcc void @put_page(ptr noundef %44)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end, %mlx5e_rx_cache_put.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_release_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !67

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !69

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !71
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !75

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #10
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %4) #10
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_shampo_dealloc_hd(ptr nocapture noundef readonly %rq, i16 noundef zeroext %len, i16 noundef zeroext %start, i1 noundef zeroext %close) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shampo1 = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 10
  %0 = ptrtoint ptr %shampo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shampo1, align 16
  %hd_per_wq2 = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hd_per_wq2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hd_per_wq2, align 4
  %conv = zext i16 %3 to i32
  %conv3 = zext i16 %start to i32
  %conv4 = zext i16 %len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len)
  %cmp88.not = icmp eq i16 %len, 0
  br i1 %cmp88.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bitmap = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %1, i32 0, i32 5
  %info = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %1, i32 0, i32 1
  %xsk_pool.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  %pdev.i15.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %map_dir.i16.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1, i32 2
  %page_pool4.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.092 = phi i32 [ %conv3, %for.body.lr.ph ], [ %inc17, %for.inc.for.body_crit_edge ]
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %deleted_page.089 = phi ptr [ null, %for.body.lr.ph ], [ %deleted_page.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.092, i32 %conv)
  %cmp6 = icmp eq i32 %index.092, %conv
  %spec.store.select = select i1 %cmp6, i32 0, i32 %index.092
  br i1 %close, label %land.lhs.true, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %for.body
  %4 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bitmap, align 8
  %div3.i = lshr i32 %spec.store.select, 5
  %arrayidx.i = getelementptr i32, ptr %5, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %spec.store.select, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr %struct.mlx5e_dma_info, ptr %11, i32 %spec.store.select
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %and = and i32 %13, -4096
  store i32 %and, ptr %arrayidx, align 4
  %14 = getelementptr %struct.mlx5e_dma_info, ptr %11, i32 %spec.store.select, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %cmp13.not = icmp eq ptr %16, %deleted_page.089
  br i1 %cmp13.not, label %if.end11.for.inc_crit_edge, label %if.then15

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then15:                                        ; preds = %if.end11
  %17 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xsk_pool.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.else.i84, label %if.then.i83

if.then.i83:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  tail call void @xp_free(ptr noundef %20) #10
  br label %for.inc

if.else.i84:                                      ; preds = %if.then15
  %21 = ptrtoint ptr %pdev.i15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i15.i, align 4
  %23 = ptrtoint ptr %map_dir.i16.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %map_dir.i16.i, align 8
  %conv.i17.i = zext i8 %24 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %and, i32 noundef 4096, i32 noundef %conv.i17.i, i32 noundef 32) #10
  %25 = ptrtoint ptr %page_pool4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page_pool4.i, align 4
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %14, align 4
  tail call void @page_pool_release_page(ptr noundef %26, ptr noundef %28) #10
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i86 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i86)
  %tobool.not.i.i = icmp eq i32 %and.i.i86, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !67

if.then.i.i:                                      ; preds = %if.else.i84
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %33, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else.i84
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %30 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %34, %if.end.i.i ]
  %35 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %36 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i.i.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !69

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %38, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !71
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mlx5e_shampo_dealloc_hd, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !75

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %35, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %35) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %if.then.i83, %if.end11.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %deleted_page.1 = phi ptr [ %deleted_page.089, %if.end11.for.inc_crit_edge ], [ %deleted_page.089, %land.lhs.true.for.inc_crit_edge ], [ %16, %if.then.i4.i ], [ %16, %folio_put_testzero.exit.i.i.for.inc_crit_edge ], [ %16, %if.then.i83 ]
  %inc = add nuw nsw i32 %i.091, 1
  %inc17 = add i32 %spec.store.select, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %add20 = add nuw nsw i32 %conv3, %conv4
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %conv)
  %cmp21 = icmp ugt i32 %add20, %conv
  br i1 %cmp21, label %if.then23, label %for.end.if.end33_crit_edge

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub25 = sub nsw i32 %conv, %conv3
  %40 = trunc i32 %sub25 to i16
  %conv28 = sub i16 %len, %40
  %bitmap29 = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %bitmap29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bitmap29, align 8
  tail call void @__bitmap_clear(ptr noundef %42, i32 noundef %conv3, i32 noundef %sub25) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then23, %for.end.if.end33_crit_edge
  %start.addr.0 = phi i16 [ %start, %for.end.if.end33_crit_edge ], [ 0, %if.then23 ]
  %len.addr.0 = phi i16 [ %len, %for.end.if.end33_crit_edge ], [ %conv28, %if.then23 ]
  %bitmap34 = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %bitmap34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bitmap34, align 8
  %conv35 = zext i16 %start.addr.0 to i32
  %conv36 = zext i16 %len.addr.0 to i32
  tail call void @__bitmap_clear(ptr noundef %44, i32 noundef %conv35, i32 noundef %conv36) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_free_icosq_descs(ptr noundef %sq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sq, align 128
  %pc = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 1
  %2 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pc, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not20 = icmp eq i16 %1, %3
  br i1 %cmp.not20, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sz_m1.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6, i32 0, i32 1
  %db = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %sqcc.021 = phi i16 [ %1, %while.body.lr.ph ], [ %add, %sw.epilog.while.body_crit_edge ]
  %4 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sz_m1.i, align 4
  %6 = trunc i32 %5 to i16
  %conv1.i = and i16 %sqcc.021, %6
  %7 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %db, align 128
  %idxprom = zext i16 %conv1.i to i32
  %arrayidx = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %8, i32 %idxprom
  %num_wqebbs = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %8, i32 %idxprom, i32 1
  %9 = ptrtoint ptr %num_wqebbs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_wqebbs, align 1
  %conv3 = zext i8 %10 to i16
  %add = add i16 %sqcc.021, %conv3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %while.body.sw.epilog_crit_edge [
    i8 4, label %sw.bb
    i8 5, label %sw.bb7
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_ktls_handle_ctx_completion(ptr noundef %arrayidx) #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_ktls_handle_get_psv_completion(ptr noundef %arrayidx, ptr noundef %sq) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %while.body.sw.epilog_crit_edge
  %14 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pc, align 2
  %cmp.not = icmp eq i16 %add, %15
  br i1 %cmp.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  %sqcc.0.lcssa = phi i16 [ %1, %entry.while.end_crit_edge ], [ %add, %sw.epilog.while.end_crit_edge ]
  %16 = ptrtoint ptr %sq to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %sqcc.0.lcssa, ptr %sq, align 128
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ktls_handle_ctx_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ktls_handle_get_psv_completion(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_poll_ico_cq(ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cq, i32 -128
  %state = getelementptr i8, ptr %cq, i32 300
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup175_crit_edge, label %if.end, !prof !69

entry.cleanup175_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup175

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
  br i1 %cmp.not.i, label %mlx5_cqwq_get_cqe.exit, label %if.end.cleanup175_crit_edge

if.end.cleanup175_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup175

mlx5_cqwq_get_cqe.exit:                           ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  %tobool5.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool5.not, label %mlx5_cqwq_get_cqe.exit.cleanup175_crit_edge, label %if.end15, !prof !67

mlx5_cqwq_get_cqe.exit.cleanup175_crit_edge:      ; preds = %mlx5_cqwq_get_cqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup175

if.end15:                                         ; preds = %mlx5_cqwq_get_cqe.exit
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr, align 128
  %sz_m1.i = getelementptr i8, ptr %cq, i32 264
  %db = getelementptr i8, ptr %cq, i32 256
  %shampo3.i = getelementptr i8, ptr %cq, i32 -11344
  %netdev130 = getelementptr inbounds %struct.mlx5e_cq, ptr %cq, i32 0, i32 5
  %wq21.le = getelementptr i8, ptr %cq, i32 260
  %sqn = getelementptr i8, ptr %cq, i32 292
  %priv = getelementptr inbounds %struct.mlx5e_cq, ptr %cq, i32 0, i32 7
  %recover_work = getelementptr i8, ptr %cq, i32 348
  br label %do.body

do.body:                                          ; preds = %land.rhs167.do.body_crit_edge, %if.end15
  %i.0 = phi i32 [ 0, %if.end15 ], [ %inc164, %land.rhs167.do.body_crit_edge ]
  %sqcc.0 = phi i16 [ %24, %if.end15 ], [ %add, %land.rhs167.do.body_crit_edge ]
  %cqe.0 = phi ptr [ %add.ptr.i.i, %if.end15 ], [ %call169, %land.rhs167.do.body_crit_edge ]
  %25 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cc.i.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %cc.i.i, align 4
  %wqe_counter17 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe.0, i32 0, i32 21
  %27 = ptrtoint ptr %wqe_counter17 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %wqe_counter17, align 4
  %op_own.i223 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe.0, i32 0, i32 23
  br label %do.body18

do.body18:                                        ; preds = %cleanup.do.body18_crit_edge, %do.body
  %sqcc.1 = phi i16 [ %sqcc.0, %do.body ], [ %add, %cleanup.do.body18_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %sqcc.1, i16 %28)
  %cmp = icmp eq i16 %sqcc.1, %28
  %29 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sz_m1.i, align 4
  %31 = trunc i32 %30 to i16
  %conv1.i = and i16 %sqcc.1, %31
  %32 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %db, align 128
  %idxprom = zext i16 %conv1.i to i32
  %arrayidx = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %33, i32 %idxprom
  %num_wqebbs = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %33, i32 %idxprom, i32 1
  %34 = ptrtoint ptr %num_wqebbs to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_wqebbs, align 1
  %conv23 = zext i8 %35 to i16
  %add = add i16 %sqcc.1, %conv23
  br i1 %cmp, label %land.lhs.true, label %do.body18.if.end97_crit_edge

do.body18.if.end97_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

land.lhs.true:                                    ; preds = %do.body18
  %36 = ptrtoint ptr %op_own.i223 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %op_own.i223, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %37)
  %cmp30.not = icmp ult i8 %37, 16
  br i1 %cmp30.not, label %land.lhs.true.if.end97_crit_edge, label %land.end, !prof !67

land.lhs.true.if.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

land.end:                                         ; preds = %land.lhs.true
  %.b222 = load i1, ptr @mlx5e_poll_ico_cq.__already_done, align 1
  br i1 %.b222, label %land.end.if.end79_crit_edge, label %if.then50, !prof !67

land.end.if.end79_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then50:                                        ; preds = %land.end
  store i1 true, ptr @mlx5e_poll_ico_cq.__already_done, align 1
  %38 = ptrtoint ptr %netdev130 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev130, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %if.then50.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.then50.netdev_name.exit_crit_edge:             ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @strchr(ptr noundef %39, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %39, ptr @.str.10
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.then50.netdev_name.exit_crit_edge
  %retval.0.i224 = phi ptr [ @.str.10, %if.then50.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call63 = tail call fastcc ptr @netdev_reg_state(ptr noundef %39)
  %42 = ptrtoint ptr %op_own.i223 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %op_own.i223, align 1
  %44 = lshr i8 %43, 4
  %conv65 = zext i8 %44 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 897, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i224, ptr noundef nonnull %call63, i32 noundef %conv65) #10
  br label %if.end79

if.end79:                                         ; preds = %netdev_name.exit, %land.end.if.end79_crit_edge
  %45 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sqn, align 4
  tail call fastcc void @mlx5e_dump_error_cqe(ptr noundef %cq, i32 noundef %46, ptr noundef %cqe.0)
  %47 = ptrtoint ptr %num_wqebbs to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_wqebbs, align 1
  tail call void @mlx5_wq_cyc_wqe_dump(ptr noundef %wq21.le, i16 noundef zeroext %conv1.i, i8 noundef zeroext %48) #10
  %call91 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then93, label %if.end79.do.end162_crit_edge

if.end79.do.end162_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end162

if.then93:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 64
  %wq94 = getelementptr inbounds %struct.mlx5e_priv, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %wq94 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wq94, align 16
  %call.i226 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %recover_work) #10
  br label %do.end162

if.end97:                                         ; preds = %land.lhs.true.if.end97_crit_edge, %do.body18.if.end97_crit_edge
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx, align 4
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %54, label %land.end109 [
    i8 1, label %sw.bb
    i8 0, label %if.end97.cleanup_crit_edge
    i8 2, label %sw.bb99
    i8 3, label %if.end97.cleanup_crit_edge278
    i8 4, label %sw.bb100
    i8 5, label %sw.bb101
  ]

if.end97.cleanup_crit_edge278:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %56 = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %33, i32 %idxprom, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %umr_completed = getelementptr inbounds %struct.anon.209, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %umr_completed to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %umr_completed, align 1
  %inc = add i8 %60, 1
  store i8 %inc, ptr %umr_completed, align 1
  br label %cleanup

sw.bb99:                                          ; preds = %if.end97
  %61 = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %33, i32 %idxprom, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load2_noabort(i32 %62)
  %coerce.dive.coerce.sroa.0.0.copyload = load i16, ptr %61, align 4
  %coerce.dive.coerce.sroa.0.0.insert.ext = zext i16 %coerce.dive.coerce.sroa.0.0.copyload to i32
  %63 = ptrtoint ptr %shampo3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %shampo3.i, align 16
  %hd_per_wq.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %hd_per_wq.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %hd_per_wq.i, align 4
  %conv4.i = zext i16 %66 to i32
  %ci.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %64, i32 0, i32 7
  %67 = ptrtoint ptr %ci.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %ci.i, align 2
  %conv5.i227 = zext i16 %68 to i32
  %add.i = add nuw nsw i32 %conv5.i227, %coerce.dive.coerce.sroa.0.0.insert.ext
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv4.i)
  %cmp.i = icmp ugt i32 %add.i, %conv4.i
  br i1 %cmp.i, label %if.then.i, label %sw.bb99.if.end.i232_crit_edge

sw.bb99.if.end.i232_crit_edge:                    ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i232

if.then.i:                                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub nsw i32 %conv4.i, %conv5.i227
  %sub9.i = sub nsw i32 %coerce.dive.coerce.sroa.0.0.insert.ext, %sub.i
  %bitmap.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %64, i32 0, i32 5
  %69 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bitmap.i, align 8
  tail call void @__bitmap_set(ptr noundef %70, i32 noundef %conv5.i227, i32 noundef %sub.i) #10
  br label %if.end.i232

if.end.i232:                                      ; preds = %if.then.i, %sw.bb99.if.end.i232_crit_edge
  %from.0.i = phi i32 [ %conv5.i227, %sw.bb99.if.end.i232_crit_edge ], [ 0, %if.then.i ]
  %len.0.i = phi i32 [ %coerce.dive.coerce.sroa.0.0.insert.ext, %sw.bb99.if.end.i232_crit_edge ], [ %sub9.i, %if.then.i ]
  %bitmap11.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %64, i32 0, i32 5
  %71 = ptrtoint ptr %bitmap11.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bitmap11.i, align 8
  tail call void @__bitmap_set(ptr noundef %72, i32 noundef %from.0.i, i32 noundef %len.0.i) #10
  %73 = ptrtoint ptr %ci.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %ci.i, align 2
  %add16.i = add i16 %74, %coerce.dive.coerce.sroa.0.0.copyload
  %75 = ptrtoint ptr %hd_per_wq.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %hd_per_wq.i, align 4
  %sub19.i = add i16 %76, -1
  %and.i = and i16 %sub19.i, %add16.i
  store i16 %and.i, ptr %ci.i, align 2
  br label %cleanup

sw.bb100:                                         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_ktls_handle_ctx_completion(ptr noundef %arrayidx) #10
  br label %cleanup

sw.bb101:                                         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_ktls_handle_get_psv_completion(ptr noundef %arrayidx, ptr noundef %add.ptr) #10
  br label %cleanup

land.end109:                                      ; preds = %if.end97
  %.b220221 = load i1, ptr @mlx5e_poll_ico_cq.__already_done.2, align 1
  br i1 %.b220221, label %land.end109.cleanup_crit_edge, label %if.then116, !prof !67

land.end109.cleanup_crit_edge:                    ; preds = %land.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then116:                                       ; preds = %land.end109
  store i1 true, ptr @mlx5e_poll_ico_cq.__already_done.2, align 1
  %77 = ptrtoint ptr %netdev130 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %netdev130, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i233 = icmp eq i8 %80, 0
  br i1 %tobool.not.i233, label %if.then116.netdev_name.exit239_crit_edge, label %lor.lhs.false.i237

if.then116.netdev_name.exit239_crit_edge:         ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_name.exit239

lor.lhs.false.i237:                               ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  %call.i234 = tail call ptr @strchr(ptr noundef %78, i32 noundef 37) #10
  %tobool2.not.i235 = icmp eq ptr %call.i234, null
  %spec.select.i236 = select i1 %tobool2.not.i235, ptr %78, ptr @.str.10
  br label %netdev_name.exit239

netdev_name.exit239:                              ; preds = %lor.lhs.false.i237, %if.then116.netdev_name.exit239_crit_edge
  %retval.0.i238 = phi ptr [ @.str.10, %if.then116.netdev_name.exit239_crit_edge ], [ %spec.select.i236, %lor.lhs.false.i237 ]
  %call133 = tail call fastcc ptr @netdev_reg_state(ptr noundef %78)
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx, align 4
  %conv135 = zext i8 %82 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 928, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i238, ptr noundef nonnull %call133, i32 noundef %conv135) #10
  br label %cleanup

cleanup:                                          ; preds = %netdev_name.exit239, %land.end109.cleanup_crit_edge, %sw.bb101, %sw.bb100, %if.end.i232, %sw.bb, %if.end97.cleanup_crit_edge, %if.end97.cleanup_crit_edge278
  br i1 %cmp, label %cleanup.do.end162_crit_edge, label %cleanup.do.body18_crit_edge

cleanup.do.body18_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

cleanup.do.end162_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end162

do.end162:                                        ; preds = %cleanup.do.end162_crit_edge, %if.then93, %if.end79.do.end162_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %i.0)
  %exitcond.not = icmp eq i32 %i.0, 127
  br i1 %exitcond.not, label %do.end162.do.end172_crit_edge, label %land.rhs167

do.end162.do.end172_crit_edge:                    ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end172

land.rhs167:                                      ; preds = %do.end162
  %inc164 = add nuw nsw i32 %i.0, 1
  %call169 = tail call fastcc ptr @mlx5_cqwq_get_cqe(ptr noundef %cq)
  %tobool170.not = icmp eq ptr %call169, null
  br i1 %tobool170.not, label %land.rhs167.do.end172_crit_edge, label %land.rhs167.do.body_crit_edge

land.rhs167.do.body_crit_edge:                    ; preds = %land.rhs167
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.rhs167.do.end172_crit_edge:                  ; preds = %land.rhs167
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end172

do.end172:                                        ; preds = %land.rhs167.do.end172_crit_edge, %do.end162.do.end172_crit_edge
  %inc164.lcssa = phi i32 [ 128, %do.end162.do.end172_crit_edge ], [ %inc164, %land.rhs167.do.end172_crit_edge ]
  %83 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %add, ptr %add.ptr, align 128
  %84 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cc.i.i, align 4
  %and.i241 = and i32 %85, 16777215
  %db.i = getelementptr inbounds %struct.mlx5_cqwq, ptr %cq, i32 0, i32 1
  %86 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %db.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and.i241, ptr %87, align 4
  br label %cleanup175

cleanup175:                                       ; preds = %do.end172, %mlx5_cqwq_get_cqe.exit.cleanup175_crit_edge, %if.end.cleanup175_crit_edge, %entry.cleanup175_crit_edge
  %retval.0 = phi i32 [ %inc164.lcssa, %do.end172 ], [ 0, %entry.cleanup175_crit_edge ], [ 0, %mlx5_cqwq_get_cqe.exit.cleanup175_crit_edge ], [ 0, %if.end.cleanup175_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_cqwq_get_cqe(ptr nocapture noundef readonly %wq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %cc.i = getelementptr inbounds %struct.mlx5_cqwq, ptr %wq, i32 0, i32 2
  %0 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cc.i, align 4
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 1
  %2 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sz_m1.i.i, align 4
  %and.i.i = and i32 %3, %1
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %4 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.i.i = add i32 %and.i.i, %conv.i.i
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %6 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %7 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %8 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wq, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %9, i32 %shr.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %12 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %13 to i32
  %and.i.i15 = and i32 %add.i.i, %conv2.i.i
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  %14 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %15 to i32
  %shl.i.i = shl i32 %and.i.i15, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cmp.i = icmp eq i8 %15, 7
  %conv2.i = zext i1 %cmp.i to i32
  %add.ptr.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i, i32 %conv2.i
  %op_own = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i, i32 0, i32 23
  %16 = ptrtoint ptr %op_own to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %op_own, align 1
  %18 = and i8 %17, 1
  %log_sz.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 4
  %19 = ptrtoint ptr %log_sz.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %log_sz.i.i, align 4
  %conv.i.i17 = zext i8 %20 to i32
  %shr.i.i18 = lshr i32 %1, %conv.i.i17
  %conv5 = and i32 %shr.i.i18, 1
  %conv6 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %conv6)
  %cmp.not = icmp eq i32 %conv5, %conv6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr.i, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc nonnull ptr @netdev_reg_state(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %reg_state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 121
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load45 = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45)
  %1 = icmp ult i8 %bf.load45, 6
  br i1 %1, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b46 = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46, label %land.end.return_crit_edge, label %if.then, !prof !67

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21 = zext i8 %bf.load45 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %dev, i32 noundef %bf.cast21) #10
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = sext i8 %bf.load45 to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.netdev_reg_state, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.then, %land.end.return_crit_edge
  %retval.0 = phi ptr [ @.str.19, %if.then ], [ @.str.19, %land.end.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_dump_error_cqe(ptr nocapture noundef readonly %cq, i32 noundef %qn, ptr noundef %err_cqe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %7, i32 noundef %and.i, i32 noundef %qn, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #13
  tail call void @print_hex_dump(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.12, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %err_cqe, i32 noundef 64, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_wq_cyc_wqe_dump(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_handle_rx_cqe_rep(ptr noundef %rq, ptr noundef %cqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %ppriv = getelementptr i8, ptr %1, i32 30240
  %2 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppriv, align 32
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %wqe_counter = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 21
  %6 = ptrtoint ptr %wqe_counter to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wqe_counter, align 4
  %sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 1
  %8 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sz_m1.i, align 4
  %10 = trunc i32 %9 to i16
  %conv1.i = and i16 %7, %10
  %frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 1
  %11 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %frags.i, align 4
  %conv.i = zext i16 %conv1.i to i32
  %log_num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %log_num_frags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %log_num_frags.i, align 1
  %conv1.i46 = zext i8 %14 to i32
  %shl.i = shl i32 %conv.i, %conv1.i46
  %arrayidx.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %12, i32 %shl.i
  %byte_cnt = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 17
  %15 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %byte_cnt, align 4
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 23
  %17 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %op_own.i, align 1
  %.mask = and i8 %18, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask)
  %cmp.not = icmp eq i8 %.mask, 32
  br i1 %cmp.not, label %if.end, label %if.then, !prof !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx5e_handle_rx_err_cqe(ptr noundef %rq, ptr noundef %cqe)
  br label %free_wqe

if.end:                                           ; preds = %entry
  %skb_from_cqe = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 4
  %19 = ptrtoint ptr %skb_from_cqe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb_from_cqe, align 8
  %call9 = tail call ptr %20(ptr noundef %rq, ptr noundef %cqe, ptr noundef %arrayidx.i, i32 noundef %16) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end
  %flags = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 23
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and.i = and i32 %22, -2
  store i32 %and.i, ptr %flags, align 4
  %and1.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool13.not = icmp eq i32 %and1.i, 0
  br i1 %tobool13.not, label %if.then11.free_wqe_crit_edge, label %if.then11.wq_cyc_pop_crit_edge

if.then11.wq_cyc_pop_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %wq_cyc_pop

if.then11.free_wqe_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_wqe

if.end16:                                         ; preds = %if.end
  %stats1.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %23 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stats1.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %24, align 8
  %inc.i = add i64 %26, 1
  store i64 %inc.i, ptr %24, align 8
  %conv.i47 = zext i32 %16 to i64
  %bytes.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bytes.i, align 8
  %add.i = add i64 %28, %conv.i47
  store i64 %add.i, ptr %bytes.i, align 8
  tail call fastcc void @mlx5e_build_rx_skb(ptr noundef %cqe, i32 noundef %16, ptr noundef %rq, ptr noundef nonnull %call9) #10
  %vlan = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %5, i32 0, i32 2
  %29 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vlan, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool18.not = icmp eq i16 %30, 0
  br i1 %tobool18.not, label %if.end16.if.end23_crit_edge, label %land.lhs.true

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end16
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 15, i32 0, i32 3
  %31 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool20.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool20.not, label %land.lhs.true.if.end23_crit_edge, label %if.then21

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 @skb_vlan_pop(ptr noundef nonnull %call9) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true.if.end23_crit_edge, %if.end16.if.end23_crit_edge
  tail call void @mlx5e_rep_tc_receive(ptr noundef %cqe, ptr noundef %rq, ptr noundef nonnull %call9) #10
  br label %free_wqe

free_wqe:                                         ; preds = %if.end23, %if.then11.free_wqe_crit_edge, %if.then
  %num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_frags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp6.not.i = icmp eq i8 %33, 0
  br i1 %cmp6.not.i, label %free_wqe.wq_cyc_pop_crit_edge, label %for.body.lr.ph.i

free_wqe.wq_cyc_pop_crit_edge:                    ; preds = %free_wqe
  call void @__sanitizer_cov_trace_pc() #12
  br label %wq_cyc_pop

for.body.lr.ph.i:                                 ; preds = %free_wqe
  %xsk_pool.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i48, %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge ]
  %wi.addr.07.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge ]
  %last_in_page.i.i = getelementptr inbounds %struct.mlx5e_wqe_frag_info, ptr %wi.addr.07.i, i32 0, i32 2
  %34 = ptrtoint ptr %last_in_page.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %last_in_page.i.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i.i, label %for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge, label %if.then.i.i

for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_put_rx_frag.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  %36 = ptrtoint ptr %wi.addr.07.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wi.addr.07.i, align 4
  %38 = ptrtoint ptr %xsk_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xsk_pool.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  tail call void @xp_free(ptr noundef %42) #10
  br label %mlx5e_put_rx_frag.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_page_release_dynamic(ptr noundef %rq, ptr noundef %37, i1 noundef zeroext true) #10
  br label %mlx5e_put_rx_frag.exit.i

mlx5e_put_rx_frag.exit.i:                         ; preds = %if.else.i.i.i, %if.then.i.i.i, %for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge
  %inc.i48 = add nuw nsw i32 %i.09.i, 1
  %incdec.ptr.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %wi.addr.07.i, i32 1
  %43 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_frags.i, align 4
  %conv.i49 = zext i8 %44 to i32
  %cmp.i = icmp ult i32 %inc.i48, %conv.i49
  br i1 %cmp.i, label %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge, label %mlx5e_put_rx_frag.exit.i.wq_cyc_pop_crit_edge

mlx5e_put_rx_frag.exit.i.wq_cyc_pop_crit_edge:    ; preds = %mlx5e_put_rx_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wq_cyc_pop

mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge:    ; preds = %mlx5e_put_rx_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

wq_cyc_pop:                                       ; preds = %mlx5e_put_rx_frag.exit.i.wq_cyc_pop_crit_edge, %free_wqe.wq_cyc_pop_crit_edge, %if.then11.wq_cyc_pop_crit_edge
  %cur_sz.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %rq, i32 0, i32 4
  %45 = ptrtoint ptr %cur_sz.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cur_sz.i, align 4
  %dec.i = add i16 %46, -1
  store i16 %dec.i, ptr %cur_sz.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_handle_rx_cqe_mpwrq_rep(ptr noundef %rq, ptr noundef %cqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_cnt.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 17
  %0 = ptrtoint ptr %byte_cnt.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %byte_cnt.i, align 2
  %2 = and i16 %1, 32767
  %wqe_id1 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 2
  %3 = ptrtoint ptr %wqe_id1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %wqe_id1, align 2
  %info = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 2
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 32
  %idxprom = zext i16 %4 to i32
  %arrayidx = getelementptr %struct.mlx5e_mpw_info, ptr %6, i32 %idxprom
  %wqe_counter.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 21
  %7 = ptrtoint ptr %wqe_counter.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %wqe_counter.i, align 4
  %conv = zext i16 %8 to i32
  %log_stride_sz = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 6
  %9 = ptrtoint ptr %log_stride_sz to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %log_stride_sz, align 4
  %conv3 = zext i8 %10 to i32
  %shl = shl i32 %conv, %conv3
  %and = and i32 %shl, 4095
  %shr = lshr i32 %shl, 12
  %consumed_strides = getelementptr %struct.mlx5e_mpw_info, ptr %6, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %consumed_strides to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %consumed_strides, align 4
  %add = add i16 %12, %2
  store i16 %add, ptr %consumed_strides, align 4
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 23
  %13 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %op_own.i, align 1
  %.mask = and i8 %14, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask)
  %cmp.not = icmp eq i8 %.mask, 32
  br i1 %cmp.not, label %if.end, label %if.then, !prof !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx5e_handle_rx_err_cqe(ptr noundef %rq, ptr noundef %cqe)
  br label %mpwrq_cqe_out

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %byte_cnt.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %byte_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.i = icmp slt i16 %16, 0
  br i1 %tobool.i, label %if.then18, label %if.end22, !prof !69

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %stats19 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %17 = ptrtoint ptr %stats19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats19, align 4
  %mpwqe_filler_cqes = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %mpwqe_filler_cqes to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %mpwqe_filler_cqes, align 8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %mpwqe_filler_cqes, align 8
  %conv20 = zext i16 %2 to i64
  %mpwqe_filler_strides = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %18, i32 0, i32 22
  %21 = ptrtoint ptr %mpwqe_filler_strides to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %mpwqe_filler_strides, align 8
  %add21 = add i64 %22, %conv20
  store i64 %add21, ptr %mpwqe_filler_strides, align 8
  br label %mpwrq_cqe_out

if.end22:                                         ; preds = %if.end
  %byte_cnt1.i = getelementptr inbounds %struct.mpwrq_cqe_bc, ptr %byte_cnt.i, i32 0, i32 1
  %23 = ptrtoint ptr %byte_cnt1.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %byte_cnt1.i, align 2
  %skb_from_cqe_mpwrq = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 3
  %25 = ptrtoint ptr %skb_from_cqe_mpwrq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb_from_cqe_mpwrq, align 4
  %call24 = tail call ptr %26(ptr noundef %rq, ptr noundef %arrayidx, i16 noundef zeroext %24, i32 noundef %and, i32 noundef %shr) #10
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end22.mpwrq_cqe_out_crit_edge, label %if.end27

if.end22.mpwrq_cqe_out_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %mpwrq_cqe_out

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %conv28 = zext i16 %24 to i32
  %stats1.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %27 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stats1.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %inc.i = add i64 %30, 1
  store i64 %inc.i, ptr %28, align 8
  %conv.i = zext i16 %24 to i64
  %bytes.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bytes.i, align 8
  %add.i = add i64 %32, %conv.i
  store i64 %add.i, ptr %bytes.i, align 8
  tail call fastcc void @mlx5e_build_rx_skb(ptr noundef %cqe, i32 noundef %conv28, ptr noundef %rq, ptr noundef nonnull %call24) #10
  tail call void @mlx5e_rep_tc_receive(ptr noundef %cqe, ptr noundef %rq, ptr noundef nonnull %call24) #10
  br label %mpwrq_cqe_out

mpwrq_cqe_out:                                    ; preds = %if.end27, %if.end22.mpwrq_cqe_out_crit_edge, %if.then18, %if.then
  %33 = ptrtoint ptr %consumed_strides to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %consumed_strides, align 4
  %num_strides = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 4
  %35 = ptrtoint ptr %num_strides to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_strides, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %36)
  %cmp32 = icmp ult i16 %34, %36
  br i1 %cmp32, label %mpwrq_cqe_out.cleanup_crit_edge, label %if.end41, !prof !67

mpwrq_cqe_out.cleanup_crit_edge:                  ; preds = %mpwrq_cqe_out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %mpwrq_cqe_out
  call void @__sanitizer_cov_trace_pc() #12
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 3
  %37 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i = zext i16 %38 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, %idxprom
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 6
  %39 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %40 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %41 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rq, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %42, i32 %shr.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 2
  %45 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %46 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 5
  %47 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %48 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 %shl.i.i
  tail call fastcc void @mlx5e_free_rx_mpwqe(ptr noundef %rq, ptr noundef %arrayidx, i1 noundef zeroext true)
  %49 = ptrtoint ptr %wqe_id1 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %wqe_id1, align 2
  %next_wqe_index = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i, i32 0, i32 1
  %tail_next.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 2
  %51 = ptrtoint ptr %tail_next.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail_next.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %50, ptr %52, align 2
  store ptr %next_wqe_index, ptr %tail_next.i, align 4
  %cur_sz.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 5
  %54 = ptrtoint ptr %cur_sz.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %cur_sz.i, align 4
  %dec.i = add i16 %55, -1
  store i16 %dec.i, ptr %cur_sz.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %mpwrq_cqe_out.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_poll_rx_cq(ptr noundef %cq, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cq, i32 -256
  %state = getelementptr i8, ptr %cq, i32 2600
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !69

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %left = getelementptr i8, ptr %cq, i32 386
  %2 = ptrtoint ptr %left to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %left, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool4.not = icmp eq i16 %3, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %if.end
  %call6 = tail call fastcc i32 @mlx5e_decompress_cqes_cont(ptr noundef %add.ptr, ptr noundef %cq, i32 noundef 0, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %budget)
  %cmp.not = icmp slt i32 %call6, %budget
  br i1 %cmp.not, label %if.then5.if.end9_crit_edge, label %if.then5.out_crit_edge

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %if.then5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %work_done.0 = phi i32 [ %call6, %if.then5.if.end9_crit_edge ], [ 0, %if.end.if.end9_crit_edge ]
  %cc.i.i = getelementptr inbounds %struct.mlx5_cqwq, ptr %cq, i32 0, i32 2
  %4 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cc.i.i, align 4
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 1
  %6 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sz_m1.i.i.i, align 4
  %and.i.i.i = and i32 %7, %5
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 3
  %8 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %9 to i32
  %add.i.i.i = add i32 %and.i.i.i, %conv.i.i.i
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 6
  %10 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %11 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %12 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cq, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %13, i32 %shr.i.i.i
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.i, align 4
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 2
  %16 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %17 to i32
  %and.i.i15.i = and i32 %add.i.i.i, %conv2.i.i.i
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 5
  %18 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %19 to i32
  %shl.i.i.i = shl i32 %and.i.i15.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %19)
  %cmp.i.i = icmp eq i8 %19, 7
  %conv2.i.i = zext i1 %cmp.i.i to i32
  %add.ptr.i.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i, i32 %conv2.i.i
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i, i32 0, i32 23
  %20 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %op_own.i, align 1
  %22 = and i8 %21, 1
  %log_sz.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %cq, i32 0, i32 4
  %23 = ptrtoint ptr %log_sz.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %log_sz.i.i.i, align 4
  %conv.i.i17.i = zext i8 %24 to i32
  %shr.i.i18.i = lshr i32 %5, %conv.i.i17.i
  %conv5.i = and i32 %shr.i.i18.i, 1
  %conv6.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %conv6.i)
  %cmp.not.i = icmp eq i32 %conv5.i, %conv6.i
  br i1 %cmp.not.i, label %mlx5_cqwq_get_cqe.exit, label %if.end9.if.then12_crit_edge

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

mlx5_cqwq_get_cqe.exit:                           ; preds = %if.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  %tobool11.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool11.not, label %mlx5_cqwq_get_cqe.exit.if.then12_crit_edge, label %do.body.preheader

mlx5_cqwq_get_cqe.exit.if.then12_crit_edge:       ; preds = %mlx5_cqwq_get_cqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

do.body.preheader:                                ; preds = %mlx5_cqwq_get_cqe.exit
  %handle_rx_cqe = getelementptr i8, ptr %cq, i32 2588
  %cqd1.i = getelementptr i8, ptr %cq, i32 256
  %byte_cnt.i.i = getelementptr i8, ptr %cq, i32 300
  %wqe_counter.i.i = getelementptr i8, ptr %cq, i32 316
  %wqe_counter3.i.i = getelementptr i8, ptr %cq, i32 388
  %stats.i.i = getelementptr i8, ptr %cq, i32 -52
  %mini_arr.i.i = getelementptr i8, ptr %cq, i32 320
  %mini_arr_idx.i.i = getelementptr i8, ptr %cq, i32 384
  %byte_cnt.i36.i = getelementptr i8, ptr %cq, i32 324
  %check_sum.i.i = getelementptr i8, ptr %cq, i32 276
  %op_own.i.i = getelementptr i8, ptr %cq, i32 319
  %stridx.i.i = getelementptr i8, ptr %cq, i32 322
  %wq_type.i.i = getelementptr i8, ptr %cq, i32 2848
  %sz_m1.i.i.i84 = getelementptr i8, ptr %cq, i32 -252
  br label %do.body

if.then12:                                        ; preds = %mlx5_cqwq_get_cqe.exit.if.then12_crit_edge, %if.end9.if.then12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work_done.0)
  %tobool13.not = icmp eq i32 %work_done.0, 0
  br i1 %tobool13.not, label %if.then12.cleanup_crit_edge, label %if.then12.out_crit_edge, !prof !67

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %mlx5_cqwq_get_cqe.exit116.do.body_crit_edge, %do.body.preheader
  %cqe.0 = phi ptr [ %add.ptr.i.i106, %mlx5_cqwq_get_cqe.exit116.do.body_crit_edge ], [ %add.ptr.i.i, %do.body.preheader ]
  %work_done.1 = phi i32 [ %inc, %mlx5_cqwq_get_cqe.exit116.do.body_crit_edge ], [ %work_done.0, %do.body.preheader ]
  %op_own.i82 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe.0, i32 0, i32 23
  %25 = ptrtoint ptr %op_own.i82 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %op_own.i82, align 1
  %27 = and i8 %26, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %27)
  %cmp24 = icmp eq i8 %27, 12
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %do.body
  %sub = sub i32 %budget, %work_done.1
  %28 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cc.i.i, align 4
  %30 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sz_m1.i.i.i, align 4
  %and.i.i.i.i = and i32 %31, %29
  %32 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %33 to i32
  %add.i.i.i.i.i = add i32 %and.i.i.i.i, %conv.i.i.i.i.i
  %34 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i.i.i = zext i8 %35 to i32
  %shr.i.i.i.i.i = lshr i32 %add.i.i.i.i.i, %conv1.i.i.i.i.i
  %36 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cq, align 4
  %arrayidx.i.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %37, i32 %shr.i.i.i.i.i
  %38 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i.i.i = zext i16 %41 to i32
  %and.i.i.i.i.i = and i32 %add.i.i.i.i.i, %conv2.i.i.i.i.i
  %42 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i.i.i = zext i8 %43 to i32
  %shl.i.i.i.i.i = shl i32 %and.i.i.i.i.i, %conv3.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %39, i32 %shl.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %43)
  %cmp.i.i.i.i = icmp eq i8 %43, 7
  %conv2.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add.ptr.i.i.i.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i.i.i, i32 %conv2.i.i.i.i
  %44 = call ptr @memcpy(ptr %cqd1.i, ptr %add.ptr.i.i.i.i, i32 64)
  %45 = ptrtoint ptr %byte_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %byte_cnt.i.i, align 4
  %conv.i.i = trunc i32 %46 to i16
  %47 = ptrtoint ptr %left to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i.i, ptr %left, align 2
  %48 = ptrtoint ptr %wqe_counter.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %wqe_counter.i.i, align 4
  %50 = ptrtoint ptr %wqe_counter3.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %wqe_counter3.i.i, align 4
  %51 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stats.i.i, align 4
  %cqe_compress_blks.i.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %52, i32 0, i32 25
  %53 = ptrtoint ptr %cqe_compress_blks.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %cqe_compress_blks.i.i, align 8
  %inc.i.i = add i64 %54, 1
  store i64 %inc.i.i, ptr %cqe_compress_blks.i.i, align 8
  %add.i = add i32 %29, 1
  %55 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sz_m1.i.i.i, align 4
  %and.i.i.i17.i = and i32 %56, %add.i
  %57 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i.i19.i = zext i16 %58 to i32
  %add.i.i.i.i20.i = add i32 %and.i.i.i17.i, %conv.i.i.i.i19.i
  %59 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i.i22.i = zext i8 %60 to i32
  %shr.i.i.i.i23.i = lshr i32 %add.i.i.i.i20.i, %conv1.i.i.i.i22.i
  %61 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cq, align 4
  %arrayidx.i.i.i.i24.i = getelementptr %struct.mlx5_buf_list, ptr %62, i32 %shr.i.i.i.i23.i
  %63 = ptrtoint ptr %arrayidx.i.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i.i.i24.i, align 4
  %65 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i.i26.i = zext i16 %66 to i32
  %and.i.i.i.i27.i = and i32 %add.i.i.i.i20.i, %conv2.i.i.i.i26.i
  %67 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i.i29.i = zext i8 %68 to i32
  %shl.i.i.i.i30.i = shl i32 %and.i.i.i.i27.i, %conv3.i.i.i.i29.i
  %add.ptr.i.i.i.i31.i = getelementptr i8, ptr %64, i32 %shl.i.i.i.i30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %68)
  %cmp.i.i.i32.i = icmp eq i8 %68, 7
  %conv2.i.i.i33.i = zext i1 %cmp.i.i.i32.i to i32
  %add.ptr.i.i.i34.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i.i31.i, i32 %conv2.i.i.i33.i
  %69 = call ptr @memcpy(ptr %mini_arr.i.i, ptr %add.ptr.i.i.i34.i, i32 64)
  %70 = ptrtoint ptr %mini_arr_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %mini_arr_idx.i.i, align 128
  %71 = ptrtoint ptr %byte_cnt.i36.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %byte_cnt.i36.i, align 4
  %73 = ptrtoint ptr %byte_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %byte_cnt.i.i, align 4
  %74 = ptrtoint ptr %mini_arr.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %mini_arr.i.i, align 4
  %76 = ptrtoint ptr %check_sum.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %check_sum.i.i, align 4
  %77 = ptrtoint ptr %op_own.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %op_own.i.i, align 1
  %79 = and i8 %78, -16
  %80 = ptrtoint ptr %log_sz.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %log_sz.i.i.i, align 4
  %conv5.i.i = zext i8 %81 to i32
  %shr.i.i = lshr i32 %29, %conv5.i.i
  %82 = trunc i32 %shr.i.i to i8
  %83 = and i8 %82, 1
  %conv9.i.i = or i8 %83, %79
  store i8 %conv9.i.i, ptr %op_own.i.i, align 1
  %84 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %state, align 4
  %86 = and i32 %85, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %stridx.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %stridx.i.i, align 2
  %89 = ptrtoint ptr %wqe_counter.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %wqe_counter.i.i, align 4
  br label %mlx5e_decompress_cqes_start.exit

if.end.i.i:                                       ; preds = %if.then26
  %90 = ptrtoint ptr %wqe_counter3.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %wqe_counter3.i.i, align 4
  %92 = ptrtoint ptr %wqe_counter.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %wqe_counter.i.i, align 4
  %93 = ptrtoint ptr %wq_type.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %wq_type.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp.i.i83 = icmp eq i8 %94, 2
  br i1 %cmp.i.i83, label %if.then14.i.i, label %if.else.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %byte_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %byte_cnt.i.i, align 2
  %97 = and i16 %96, 32767
  %add.i.i = add i16 %97, %91
  br label %if.end27.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add23.i.i = add i16 %91, 1
  %98 = ptrtoint ptr %sz_m1.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sz_m1.i.i.i84, align 4
  %100 = trunc i32 %99 to i16
  %conv1.i.i.i85 = and i16 %add23.i.i, %100
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.else.i.i, %if.then14.i.i
  %storemerge.i.i = phi i16 [ %conv1.i.i.i85, %if.else.i.i ], [ %add.i.i, %if.then14.i.i ]
  %101 = ptrtoint ptr %wqe_counter3.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %storemerge.i.i, ptr %wqe_counter3.i.i, align 4
  br label %mlx5e_decompress_cqes_start.exit

mlx5e_decompress_cqes_start.exit:                 ; preds = %if.end27.i.i, %if.then.i.i
  %102 = ptrtoint ptr %handle_rx_cqe to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %handle_rx_cqe, align 4
  tail call void %103(ptr noundef %add.ptr, ptr noundef %cqd1.i) #10
  %104 = ptrtoint ptr %mini_arr_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %mini_arr_idx.i.i, align 128
  %inc.i = add i8 %105, 1
  store i8 %inc.i, ptr %mini_arr_idx.i.i, align 128
  %call.i = tail call fastcc i32 @mlx5e_decompress_cqes_cont(ptr noundef %add.ptr, ptr noundef %cq, i32 noundef 1, i32 noundef %sub) #10
  %sub.i = add i32 %work_done.1, -1
  %add28 = add i32 %sub.i, %call.i
  br label %do.cond

if.end29:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cc.i.i, align 4
  %inc.i86 = add i32 %107, 1
  store i32 %inc.i86, ptr %cc.i.i, align 4
  %108 = ptrtoint ptr %handle_rx_cqe to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %handle_rx_cqe, align 4
  tail call void %109(ptr noundef %add.ptr, ptr noundef nonnull %cqe.0) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end29, %mlx5e_decompress_cqes_start.exit
  %work_done.2 = phi i32 [ %add28, %mlx5e_decompress_cqes_start.exit ], [ %work_done.1, %if.end29 ]
  %inc = add i32 %work_done.2, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %budget)
  %cmp30 = icmp slt i32 %inc, %budget
  br i1 %cmp30, label %land.rhs, label %do.cond.out_crit_edge

do.cond.out_crit_edge:                            ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.rhs:                                         ; preds = %do.cond
  %110 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cc.i.i, align 4
  %112 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sz_m1.i.i.i, align 4
  %and.i.i.i89 = and i32 %113, %111
  %114 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i91 = zext i16 %115 to i32
  %add.i.i.i92 = add i32 %and.i.i.i89, %conv.i.i.i91
  %116 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i94 = zext i8 %117 to i32
  %shr.i.i.i95 = lshr i32 %add.i.i.i92, %conv1.i.i.i94
  %118 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cq, align 4
  %arrayidx.i.i.i96 = getelementptr %struct.mlx5_buf_list, ptr %119, i32 %shr.i.i.i95
  %120 = ptrtoint ptr %arrayidx.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i.i96, align 4
  %122 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i98 = zext i16 %123 to i32
  %and.i.i15.i99 = and i32 %add.i.i.i92, %conv2.i.i.i98
  %124 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i101 = zext i8 %125 to i32
  %shl.i.i.i102 = shl i32 %and.i.i15.i99, %conv3.i.i.i101
  %add.ptr.i.i.i103 = getelementptr i8, ptr %121, i32 %shl.i.i.i102
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %125)
  %cmp.i.i104 = icmp eq i8 %125, 7
  %conv2.i.i105 = zext i1 %cmp.i.i104 to i32
  %add.ptr.i.i106 = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i103, i32 %conv2.i.i105
  %op_own.i107 = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i106, i32 0, i32 23
  %126 = ptrtoint ptr %op_own.i107 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %op_own.i107, align 1
  %128 = and i8 %127, 1
  %129 = ptrtoint ptr %log_sz.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %log_sz.i.i.i, align 4
  %conv.i.i17.i109 = zext i8 %130 to i32
  %shr.i.i18.i110 = lshr i32 %111, %conv.i.i17.i109
  %conv5.i111 = and i32 %shr.i.i18.i110, 1
  %conv6.i112 = zext i8 %128 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i111, i32 %conv6.i112)
  %cmp.not.i113 = icmp eq i32 %conv5.i111, %conv6.i112
  br i1 %cmp.not.i113, label %mlx5_cqwq_get_cqe.exit116, label %land.rhs.out_crit_edge

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

mlx5_cqwq_get_cqe.exit116:                        ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  %tobool33.not = icmp eq ptr %add.ptr.i.i106, null
  br i1 %tobool33.not, label %mlx5_cqwq_get_cqe.exit116.out_crit_edge, label %mlx5_cqwq_get_cqe.exit116.do.body_crit_edge

mlx5_cqwq_get_cqe.exit116.do.body_crit_edge:      ; preds = %mlx5_cqwq_get_cqe.exit116
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

mlx5_cqwq_get_cqe.exit116.out_crit_edge:          ; preds = %mlx5_cqwq_get_cqe.exit116
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %mlx5_cqwq_get_cqe.exit116.out_crit_edge, %land.rhs.out_crit_edge, %do.cond.out_crit_edge, %if.then12.out_crit_edge, %if.then5.out_crit_edge
  %work_done.3 = phi i32 [ %call6, %if.then5.out_crit_edge ], [ %work_done.0, %if.then12.out_crit_edge ], [ %inc, %mlx5_cqwq_get_cqe.exit116.out_crit_edge ], [ %inc, %do.cond.out_crit_edge ], [ %inc, %land.rhs.out_crit_edge ]
  %131 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %state, align 4
  %133 = and i32 %132, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool36.not = icmp eq i32 %133, 0
  br i1 %tobool36.not, label %out.if.end39_crit_edge, label %land.lhs.true

out.if.end39_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true:                                    ; preds = %out
  %hw_gro_data = getelementptr i8, ptr %cq, i32 2584
  %134 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw_gro_data, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 8
  %tobool37.not = icmp eq ptr %137, null
  br i1 %tobool37.not, label %land.lhs.true.if.end39_crit_edge, label %if.then38

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx5e_shampo_flush_skb(ptr noundef %add.ptr, ptr noundef null, i1 noundef zeroext false)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %land.lhs.true.if.end39_crit_edge, %out.if.end39_crit_edge
  %xdp_prog = getelementptr i8, ptr %cq, i32 2744
  %138 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile ptr, ptr %xdp_prog, align 8
  %tobool45.not = icmp eq ptr %139, null
  br i1 %tobool45.not, label %if.end39.if.end47_crit_edge, label %if.then46

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_xdp_rx_poll_complete(ptr noundef %add.ptr) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end39.if.end47_crit_edge
  %cc.i117 = getelementptr inbounds %struct.mlx5_cqwq, ptr %cq, i32 0, i32 2
  %140 = ptrtoint ptr %cc.i117 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cc.i117, align 4
  %and.i = and i32 %141, 16777215
  %db.i = getelementptr inbounds %struct.mlx5_cqwq, ptr %cq, i32 0, i32 1
  %142 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %db.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %and.i, ptr %143, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @arm_heavy_mb() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %work_done.3, %if.end47 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_decompress_cqes_cont(ptr noundef %rq, ptr noundef %wq, i32 noundef %update_owner_only, i32 noundef %budget_rem) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %cqd1 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 7
  %cc = getelementptr inbounds %struct.mlx5_cqwq, ptr %wq, i32 0, i32 2
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cc, align 4
  %add = add i32 %1, %update_owner_only
  %left = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %left to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %left, align 2
  %conv = zext i16 %3 to i32
  %4 = tail call i32 @llvm.umin.i32(i32 %conv, i32 %budget_rem)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %update_owner_only)
  %cmp353 = icmp ugt i32 %4, %update_owner_only
  br i1 %cmp353, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mini_arr_idx = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 7, i32 2
  %mini_arr.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 7, i32 1
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 1
  %strides_offset.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %log_stride.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  %byte_cnt3.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 7, i32 0, i32 17
  %check_sum.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 7, i32 0, i32 8
  %op_own.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 7, i32 0, i32 23
  %log_sz.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 4
  %state.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 17
  %wqe_counter.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 7, i32 0, i32 21
  %wqe_counter10.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 7, i32 4
  %wq_type.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 29
  %sz_m1.i.i.i44 = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 1
  %rss_hash_type.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 7, i32 0, i32 5
  %rss_hash_result.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 7, i32 0, i32 4
  %handle_rx_cqe = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 14
  %5 = ptrtoint ptr %mini_arr_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %.pr = load i8, ptr %mini_arr_idx, align 128
  br label %for.body

for.body:                                         ; preds = %mlx5e_decompress_cqe_no_hash.exit.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i8 [ %.pr, %for.body.lr.ph ], [ %inc9, %mlx5e_decompress_cqe_no_hash.exit.for.body_crit_edge ]
  %i.055 = phi i32 [ %update_owner_only, %for.body.lr.ph ], [ %inc, %mlx5e_decompress_cqe_no_hash.exit.for.body_crit_edge ]
  %cqcc.054 = phi i32 [ %add, %for.body.lr.ph ], [ %inc10, %mlx5e_decompress_cqe_no_hash.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp6 = icmp eq i8 %6, 8
  br i1 %cmp6, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sz_m1.i.i.i, align 4
  %and.i.i.i = and i32 %8, %cqcc.054
  %9 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %10 to i32
  %add.i.i.i.i = add i32 %and.i.i.i, %conv.i.i.i.i
  %11 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i.i = zext i8 %12 to i32
  %shr.i.i.i.i = lshr i32 %add.i.i.i.i, %conv1.i.i.i.i
  %13 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wq, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %14, i32 %shr.i.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %17 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i.i = zext i16 %18 to i32
  %and.i.i.i.i = and i32 %add.i.i.i.i, %conv2.i.i.i.i
  %19 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %20 to i32
  %shl.i.i.i.i = shl i32 %and.i.i.i.i, %conv3.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %cmp.i.i.i = icmp eq i8 %20, 7
  %conv2.i.i.i = zext i1 %cmp.i.i.i to i32
  %add.ptr.i.i.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i.i, i32 %conv2.i.i.i
  %21 = call ptr @memcpy(ptr %mini_arr.i, ptr %add.ptr.i.i.i, i32 64)
  %22 = ptrtoint ptr %mini_arr_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %mini_arr_idx, align 128
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %23 = ptrtoint ptr %mini_arr_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mini_arr_idx, align 128
  %idxprom.i.i = zext i8 %24 to i32
  %arrayidx.i.i = getelementptr %struct.mlx5e_rq, ptr %rq, i32 0, i32 7, i32 1, i32 %idxprom.i.i
  %byte_cnt.i.i = getelementptr %struct.mlx5e_rq, ptr %rq, i32 0, i32 7, i32 1, i32 %idxprom.i.i, i32 1
  %25 = ptrtoint ptr %byte_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %byte_cnt.i.i, align 4
  %27 = ptrtoint ptr %byte_cnt3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %byte_cnt3.i.i, align 4
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i.i, align 4
  %30 = ptrtoint ptr %check_sum.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %check_sum.i.i, align 4
  %31 = ptrtoint ptr %op_own.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %op_own.i.i, align 1
  %33 = and i8 %32, -16
  store i8 %33, ptr %op_own.i.i, align 1
  %34 = ptrtoint ptr %log_sz.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %log_sz.i.i, align 4
  %conv5.i.i = zext i8 %35 to i32
  %shr.i.i = lshr i32 %cqcc.054, %conv5.i.i
  %36 = trunc i32 %shr.i.i to i8
  %37 = and i8 %36, 1
  %conv9.i.i = or i8 %37, %33
  store i8 %conv9.i.i, ptr %op_own.i.i, align 1
  %38 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %state.i.i, align 4
  %40 = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %stridx.i.i = getelementptr inbounds %struct.anon.276, ptr %arrayidx.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %stridx.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %stridx.i.i, align 2
  %43 = ptrtoint ptr %wqe_counter.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %wqe_counter.i.i, align 4
  br label %mlx5e_decompress_cqe_no_hash.exit

if.end.i.i:                                       ; preds = %if.end
  %44 = ptrtoint ptr %wqe_counter10.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %wqe_counter10.i.i, align 4
  %46 = ptrtoint ptr %wqe_counter.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %wqe_counter.i.i, align 4
  %47 = ptrtoint ptr %wq_type.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %wq_type.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp.i.i = icmp eq i8 %48, 2
  br i1 %cmp.i.i, label %if.then14.i.i, label %if.else.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %byte_cnt3.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %byte_cnt3.i.i, align 2
  %51 = and i16 %50, 32767
  %add.i.i = add i16 %51, %45
  br label %if.end27.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add23.i.i = add i16 %45, 1
  %52 = ptrtoint ptr %sz_m1.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sz_m1.i.i.i44, align 4
  %54 = trunc i32 %53 to i16
  %conv1.i.i.i = and i16 %add23.i.i, %54
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.else.i.i, %if.then14.i.i
  %storemerge.i.i = phi i16 [ %conv1.i.i.i, %if.else.i.i ], [ %add.i.i, %if.then14.i.i ]
  %55 = ptrtoint ptr %wqe_counter10.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %storemerge.i.i, ptr %wqe_counter10.i.i, align 4
  br label %mlx5e_decompress_cqe_no_hash.exit

mlx5e_decompress_cqe_no_hash.exit:                ; preds = %if.end27.i.i, %if.then.i.i
  %56 = ptrtoint ptr %rss_hash_type.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %rss_hash_type.i, align 16
  %57 = ptrtoint ptr %rss_hash_result.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %rss_hash_result.i, align 4
  %58 = ptrtoint ptr %handle_rx_cqe to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %handle_rx_cqe, align 4
  tail call void %59(ptr noundef %rq, ptr noundef %cqd1) #10
  %inc = add nsw i32 %i.055, 1
  %60 = ptrtoint ptr %mini_arr_idx to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %mini_arr_idx, align 128
  %inc9 = add i8 %61, 1
  store i8 %inc9, ptr %mini_arr_idx, align 128
  %inc10 = add i32 %cqcc.054, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %mlx5e_decompress_cqe_no_hash.exit.for.end_crit_edge, label %mlx5e_decompress_cqe_no_hash.exit.for.body_crit_edge

mlx5e_decompress_cqe_no_hash.exit.for.body_crit_edge: ; preds = %mlx5e_decompress_cqe_no_hash.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

mlx5e_decompress_cqe_no_hash.exit.for.end_crit_edge: ; preds = %mlx5e_decompress_cqe_no_hash.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %mlx5e_decompress_cqe_no_hash.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %cqcc.0.lcssa = phi i32 [ %add, %entry.for.end_crit_edge ], [ %inc10, %mlx5e_decompress_cqe_no_hash.exit.for.end_crit_edge ]
  %62 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cc, align 4
  %sub = sub i32 %cqcc.0.lcssa, %63
  %log_sz.i.i45 = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 4
  %64 = ptrtoint ptr %log_sz.i.i45 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %log_sz.i.i45, align 4
  %conv.i.i = zext i8 %65 to i32
  %shr.i.i46 = lshr i32 %63, %conv.i.i
  %66 = trunc i32 %shr.i.i46 to i8
  %conv.i = and i8 %66, 1
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 1
  %67 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sz_m1.i.i, align 4
  %and.i.i = and i32 %68, %63
  %add.i.i47 = add i32 %68, 1
  %add.i = add i32 %and.i.i, %sub
  %69 = tail call i32 @llvm.umin.i32(i32 %add.i.i47, i32 %add.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %69)
  %cmp463.i = icmp ult i32 %and.i.i, %69
  br i1 %cmp463.i, label %for.body.lr.ph.i, label %for.end.for.end.i_crit_edge

for.end.for.end.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.end
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ci.064.i = phi i32 [ %and.i.i, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %70 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %71 to i32
  %add.i.i.i = add i32 %ci.064.i, %conv.i.i.i
  %72 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i48 = zext i8 %73 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i48
  %74 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wq, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %75, i32 %shr.i.i.i
  %76 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i.i, align 4
  %78 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i49 = zext i16 %79 to i32
  %and.i.i.i50 = and i32 %add.i.i.i, %conv2.i.i.i49
  %80 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %81 to i32
  %shl.i.i.i = shl i32 %and.i.i.i50, %conv3.i.i.i
  %add.ptr.i.i.i51 = getelementptr i8, ptr %77, i32 %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %81)
  %cmp.i.i52 = icmp eq i8 %81, 7
  %conv2.i.i = zext i1 %cmp.i.i52 to i32
  %add.ptr.i.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i51, i32 %conv2.i.i
  %op_own7.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i, i32 0, i32 23
  %82 = ptrtoint ptr %op_own7.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i, ptr %op_own7.i, align 1
  %inc.i = add nuw i32 %ci.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %69
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = sub i32 %add.i, %69
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.end.for.end.i_crit_edge
  %ci.0.lcssa.i = phi i32 [ %and.i.i, %for.end.for.end.i_crit_edge ], [ %69, %for.end.loopexit.i ]
  %n.addr.0.lcssa.i = phi i32 [ %sub, %for.end.for.end.i_crit_edge ], [ %83, %for.end.loopexit.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ci.0.lcssa.i, i32 %add.i.i47)
  %cmp8.i = icmp eq i32 %ci.0.lcssa.i, %add.i.i47
  br i1 %cmp8.i, label %if.then.i, label %for.end.i.mlx5e_cqes_update_owner.exit_crit_edge, !prof !69

for.end.i.mlx5e_cqes_update_owner.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_cqes_update_owner.exit

if.then.i:                                        ; preds = %for.end.i
  %84 = xor i8 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.lcssa.i)
  %cmp1667.not.i = icmp eq i32 %n.addr.0.lcssa.i, 0
  br i1 %cmp1667.not.i, label %if.then.i.mlx5e_cqes_update_owner.exit_crit_edge, label %for.body18.lr.ph.i

if.then.i.mlx5e_cqes_update_owner.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_cqes_update_owner.exit

for.body18.lr.ph.i:                               ; preds = %if.then.i
  %strides_offset.i.i46.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %log_frag_strides.i.i49.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %frag_sz_m1.i.i53.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %log_stride.i.i56.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %ci.168.i = phi i32 [ 0, %for.body18.lr.ph.i ], [ %inc23.i, %for.body18.i.for.body18.i_crit_edge ]
  %85 = ptrtoint ptr %strides_offset.i.i46.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %strides_offset.i.i46.i, align 2
  %conv.i.i47.i = zext i16 %86 to i32
  %add.i.i48.i = add i32 %ci.168.i, %conv.i.i47.i
  %87 = ptrtoint ptr %log_frag_strides.i.i49.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %log_frag_strides.i.i49.i, align 2
  %conv1.i.i50.i = zext i8 %88 to i32
  %shr.i.i51.i = lshr i32 %add.i.i48.i, %conv1.i.i50.i
  %89 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %wq, align 4
  %arrayidx.i.i52.i = getelementptr %struct.mlx5_buf_list, ptr %90, i32 %shr.i.i51.i
  %91 = ptrtoint ptr %arrayidx.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i.i52.i, align 4
  %93 = ptrtoint ptr %frag_sz_m1.i.i53.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %frag_sz_m1.i.i53.i, align 4
  %conv2.i.i54.i = zext i16 %94 to i32
  %and.i.i55.i = and i32 %add.i.i48.i, %conv2.i.i54.i
  %95 = ptrtoint ptr %log_stride.i.i56.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %log_stride.i.i56.i, align 1
  %conv3.i.i57.i = zext i8 %96 to i32
  %shl.i.i58.i = shl i32 %and.i.i55.i, %conv3.i.i57.i
  %add.ptr.i.i59.i = getelementptr i8, ptr %92, i32 %shl.i.i58.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %96)
  %cmp.i60.i = icmp eq i8 %96, 7
  %conv2.i61.i = zext i1 %cmp.i60.i to i32
  %add.ptr.i62.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i59.i, i32 %conv2.i61.i
  %op_own21.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i62.i, i32 0, i32 23
  %97 = ptrtoint ptr %op_own21.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %84, ptr %op_own21.i, align 1
  %inc23.i = add nuw i32 %ci.168.i, 1
  %exitcond56.not = icmp eq i32 %inc23.i, %n.addr.0.lcssa.i
  br i1 %exitcond56.not, label %for.body18.i.mlx5e_cqes_update_owner.exit_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18.i

for.body18.i.mlx5e_cqes_update_owner.exit_crit_edge: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_cqes_update_owner.exit

mlx5e_cqes_update_owner.exit:                     ; preds = %for.body18.i.mlx5e_cqes_update_owner.exit_crit_edge, %if.then.i.mlx5e_cqes_update_owner.exit_crit_edge, %for.end.i.mlx5e_cqes_update_owner.exit_crit_edge
  %98 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %cqcc.0.lcssa, ptr %cc, align 4
  %99 = ptrtoint ptr %left to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %left, align 2
  %101 = trunc i32 %4 to i16
  %conv16 = sub i16 %100, %101
  store i16 %conv16, ptr %left, align 2
  %conv17 = zext i32 %4 to i64
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %102 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %stats, align 4
  %cqe_compress_pkts = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %103, i32 0, i32 26
  %104 = ptrtoint ptr %cqe_compress_pkts to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %cqe_compress_pkts, align 8
  %add18 = add i64 %105, %conv17
  store i64 %add18, ptr %cqe_compress_pkts, align 8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_shampo_flush_skb(ptr nocapture noundef readonly %rq, ptr nocapture noundef readonly %cqe, i1 noundef zeroext %match) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_gro_data = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 13
  %0 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_gro_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %stats2 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %4 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats2, align 4
  %gro_skbs = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %gro_skbs to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %gro_skbs, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %gro_skbs, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !69

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %log_stride_sz = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 6
  %12 = ptrtoint ptr %log_stride_sz to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %log_stride_sz, align 4
  %conv.i = zext i8 %11 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %9, i32 0, i32 12, i32 %sub.i, i32 1
  %14 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bv_len.i.i, align 4
  %conv3.i = zext i8 %13 to i32
  %notmask.i = shl nsw i32 -1, %conv3.i
  %sub4.i = xor i32 %notmask.i, -1
  %add.i = add i32 %15, %sub4.i
  %and.i = and i32 %add.i, %notmask.i
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 20
  %16 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %truesize.i, align 8
  %sub8.i = sub i32 %17, %15
  %add9.i = add i32 %sub8.i, %and.i
  store i32 %add9.i, ptr %truesize.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 16
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp = icmp ugt i16 %19, 1
  br i1 %cmp, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.end
  %20 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_gro_data, align 8
  %basic.i = getelementptr inbounds %struct.mlx5e_hw_gro_data, ptr %21, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %basic.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %basic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %23)
  %cmp.i = icmp eq i16 %23, 2048
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %count.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3, i32 16
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %count.i, align 8
  %end.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i20, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %27, ptr %gso_segs.i, align 2
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 15
  %31 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.set.i = or i16 %bf.load.i, 1536
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %32 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_gro_data, align 8
  %fk6.i = getelementptr inbounds %struct.mlx5e_hw_gro_data, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %fk6.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %fk6.i, align 8
  %conv7.i = zext i16 %35 to i32
  br i1 %cmp.i, label %if.then.i, label %if.else16.i

if.then.i:                                        ; preds = %if.then6
  %sub.i21 = add nsw i32 %conv7.i, -20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 19
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 %sub.i21
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 6
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  %sub8.i22 = sub i32 %39, %sub.i21
  %conv9.i = trunc i32 %sub8.i22 to i16
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 7
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 2
  %40 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tot_len.i, align 2
  %42 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %check.i, align 2
  %neg.i.i = xor i16 %43, -1
  %neg.i.i.i = xor i16 %41, -1
  %add.i.i.i.i = add i16 %neg.i.i, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i.i, i16 %neg.i.i.i)
  %cmp.i.i.i.i = icmp ult i16 %add.i.i.i.i, %neg.i.i.i
  %conv6.i.i.i.i = zext i1 %cmp.i.i.i.i to i16
  %add7.i.i.i.i = add i16 %add.i.i.i.i, %conv9.i
  %add.i.i.i = add i16 %add7.i.i.i.i, %conv6.i.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %conv9.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %conv9.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv6.i.i.i
  %neg4.i.i = xor i16 %add7.i.i.i, -1
  %44 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %neg4.i.i, ptr %check.i, align 2
  %45 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv9.i, ptr %tot_len.i, align 2
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 6
  %46 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %47)
  %cmp12.i = icmp eq i8 %47, 6
  %48 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_gro_data, align 8
  %fk.i.i = getelementptr inbounds %struct.mlx5e_hw_gro_data, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %fk.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %fk.i.i, align 8
  %conv.i.i = zext i16 %51 to i32
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %conv.i.i
  br i1 %cmp12.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.then.i
  br i1 %match, label %if.then.i.i, label %if.then14.i.if.end.i.i_crit_edge

if.then14.i.if.end.i.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  %header_entry_index.i.i.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3, i32 0, i32 2
  %56 = ptrtoint ptr %header_entry_index.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %header_entry_index.i.i.i.i, align 2
  %shampo.i.i.i.i = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 10
  %58 = ptrtoint ptr %shampo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %shampo.i.i.i.i, align 16
  %hd_per_wq.i.i.i.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %hd_per_wq.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %hd_per_wq.i.i.i.i, align 4
  %sub.i.i.i.i = add i16 %61, -1
  %and.i.i.i.i = and i16 %sub.i.i.i.i, %57
  %info.i.i.i.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %info.i.i.i.i, align 4
  %idxprom.i.i.i.i = zext i16 %and.i.i.i.i to i32
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5e_dma_info, ptr %63, i32 %idxprom.i.i.i.i
  %64 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %buff.i.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1
  %66 = ptrtoint ptr %buff.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %buff.i.i.i.i, align 8
  %68 = trunc i32 %65 to i16
  %69 = and i16 %68, 4095
  %conv1.i.i.i.i = add i16 %69, %67
  %70 = getelementptr %struct.mlx5e_dma_info, ptr %63, i32 %idxprom.i.i.i.i, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %call.i.i.i.i = tail call ptr @page_address(ptr noundef %72) #10
  %conv2.i.i.i.i = zext i16 %conv1.i.i.i.i to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %conv2.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 14
  %73 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw_gro_data, align 8
  %fk.i.i.i = getelementptr inbounds %struct.mlx5e_hw_gro_data, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %fk.i.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %fk.i.i.i, align 8
  %conv.i.i.i = zext i16 %76 to i32
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv.i.i.i
  %arrayidx.i.i.i = getelementptr [5 x i32], ptr %add.ptr2.i.i.i, i32 0, i32 3
  %77 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %78, 589824
  %arrayidx3.i.i.i = getelementptr [5 x i32], ptr %add.ptr.i.i, i32 0, i32 3
  %79 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx3.i.i.i, align 4
  %or.i.i.i = or i32 %80, %and.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx3.i.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then14.i.if.end.i.i_crit_edge
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 6
  %81 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len.i.i, align 4
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 8
  %83 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %saddr.i.i, align 4
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 9
  %85 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %daddr.i.i, align 4
  %sub.i.i = sub nsw i32 6, %conv.i.i
  %add.i.i.i.i.i = add i32 %sub.i.i, %82
  %87 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %86, i32 %84, i32 %add.i.i.i.i.i) #14, !srcloc !78
  %88 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %87) #14, !srcloc !79
  %neg.i.i.i.i.i = xor i32 %88, -1
  %shr.i.i.i.i.i = lshr i32 %neg.i.i.i.i.i, 16
  %conv.i2.i.i.i.i = trunc i32 %shr.i.i.i.i.i to i16
  %neg.i64.i = xor i16 %conv.i2.i.i.i.i, -1
  %check.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %89 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %neg.i64.i, ptr %check.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 17
  %90 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i.i.i, align 4
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %gso_type.i.i, align 8
  %or.i.i = or i32 %93, 1
  store i32 %or.i.i, ptr %gso_type.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 3
  %94 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %id.i.i, align 4
  %conv6.i.i = zext i16 %95 to i32
  %96 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw_gro_data, align 8
  %second_ip_id.i.i = getelementptr inbounds %struct.mlx5e_hw_gro_data, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %second_ip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %second_ip_id.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %conv6.i.i)
  %cmp.i.i = icmp eq i32 %99, %conv6.i.i
  br i1 %cmp.i.i, label %if.then9.i.i, label %if.end.i.i.if.end13.i.i_crit_edge

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %end.i.i.i, align 4
  %gso_type11.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %gso_type11.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %gso_type11.i.i, align 8
  %or12.i.i = or i32 %103, 8
  store i32 %or12.i.i, ptr %gso_type11.i.i, align 8
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i, %if.end.i.i.if.end13.i.i_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 18
  %104 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %105 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv14.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %106 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 15, i32 0, i32 5
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv14.i.i, ptr %106, align 8
  %csum_offset.i.i = getelementptr inbounds %struct.anon.53, ptr %106, i32 0, i32 1
  %108 = ptrtoint ptr %csum_offset.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 16, ptr %csum_offset.i.i, align 2
  %cwr.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %109 = ptrtoint ptr %cwr.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %bf.load.i.i = load i16, ptr %cwr.i.i, align 4
  %110 = and i16 %bf.load.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool15.not.i.i = icmp eq i16 %110, 0
  br i1 %tobool15.not.i.i, label %if.end13.i.i.if.end8_crit_edge, label %if.end13.i.i.if.end37.sink.split.i_crit_edge

if.end13.i.i.if.end37.sink.split.i_crit_edge:     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.sink.split.i

if.end13.i.i.if.end8_crit_edge:                   ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.else.i:                                        ; preds = %if.then.i
  %len.i70.i = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 6
  %111 = ptrtoint ptr %len.i70.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len.i70.i, align 4
  %113 = trunc i32 %112 to i16
  %conv3.i.i = sub i16 %113, %51
  %len4.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %114 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv3.i.i, ptr %len4.i.i, align 2
  %check.i71.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %115 = ptrtoint ptr %check.i71.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %check.i71.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool.not.i.i = icmp eq i16 %116, 0
  br i1 %tobool.not.i.i, label %if.else.i.if.end37.sink.split.sink.split.i_crit_edge, label %if.then.i79.i

if.else.i.if.end37.sink.split.sink.split.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.sink.split.sink.split.i

if.then.i79.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %len.i70.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %len.i70.i, align 4
  %saddr.i72.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 8
  %119 = ptrtoint ptr %saddr.i72.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %saddr.i72.i, align 4
  %daddr.i73.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 9
  %121 = ptrtoint ptr %daddr.i73.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %daddr.i73.i, align 4
  %sub6.i.i = sub nsw i32 17, %conv.i.i
  %add.i.i.i.i74.i = add i32 %sub6.i.i, %118
  %123 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %122, i32 %120, i32 %add.i.i.i.i74.i) #14, !srcloc !78
  %124 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %123) #14, !srcloc !79
  br label %if.end37.sink.split.sink.split.i.sink.split

if.else16.i:                                      ; preds = %if.then6
  %sub23.i = add nsw i32 %conv7.i, -40
  %data24.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 19
  %125 = ptrtoint ptr %data24.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data24.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %126, i32 %sub23.i
  %len26.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 6
  %127 = ptrtoint ptr %len26.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len26.i, align 4
  %sub27.i = sub i32 %128, %sub23.i
  %129 = trunc i32 %sub27.i to i16
  %conv29.i = add i16 %129, -40
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr25.i, i32 0, i32 2
  %130 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv29.i, ptr %payload_len.i, align 4
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr25.i, i32 0, i32 3
  %131 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %nexthdr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %132)
  %cmp31.i = icmp eq i8 %132, 6
  %133 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hw_gro_data, align 8
  %fk.i90.i = getelementptr inbounds %struct.mlx5e_hw_gro_data, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %fk.i90.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %fk.i90.i, align 8
  %conv.i91.i = zext i16 %136 to i32
  %137 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %134, align 8
  %data.i92.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 19
  %139 = ptrtoint ptr %data.i92.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i92.i, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %140, i32 %conv.i91.i
  br i1 %cmp31.i, label %if.then33.i, label %if.else35.i

if.then33.i:                                      ; preds = %if.else16.i
  br i1 %match, label %if.then.i115.i, label %if.then33.i.if.end.i135.i_crit_edge

if.then33.i.if.end.i135.i_crit_edge:              ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i135.i

if.then.i115.i:                                   ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  %header_entry_index.i.i.i94.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3, i32 0, i32 2
  %141 = ptrtoint ptr %header_entry_index.i.i.i94.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %header_entry_index.i.i.i94.i, align 2
  %shampo.i.i.i95.i = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 10
  %143 = ptrtoint ptr %shampo.i.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %shampo.i.i.i95.i, align 16
  %hd_per_wq.i.i.i96.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %hd_per_wq.i.i.i96.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %hd_per_wq.i.i.i96.i, align 4
  %sub.i.i.i97.i = add i16 %146, -1
  %and.i.i.i98.i = and i16 %sub.i.i.i97.i, %142
  %info.i.i.i99.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %144, i32 0, i32 1
  %147 = ptrtoint ptr %info.i.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %info.i.i.i99.i, align 4
  %idxprom.i.i.i100.i = zext i16 %and.i.i.i98.i to i32
  %arrayidx.i.i.i101.i = getelementptr %struct.mlx5e_dma_info, ptr %148, i32 %idxprom.i.i.i100.i
  %149 = ptrtoint ptr %arrayidx.i.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx.i.i.i101.i, align 4
  %buff.i.i.i102.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1
  %151 = ptrtoint ptr %buff.i.i.i102.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %buff.i.i.i102.i, align 8
  %153 = trunc i32 %150 to i16
  %154 = and i16 %153, 4095
  %conv1.i.i.i103.i = add i16 %154, %152
  %155 = getelementptr %struct.mlx5e_dma_info, ptr %148, i32 %idxprom.i.i.i100.i, i32 1
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %call.i.i.i104.i = tail call ptr @page_address(ptr noundef %157) #10
  %conv2.i.i.i105.i = zext i16 %conv1.i.i.i103.i to i32
  %add.ptr.i.i.i106.i = getelementptr i8, ptr %call.i.i.i104.i, i32 %conv2.i.i.i105.i
  %add.ptr.i.i107.i = getelementptr i8, ptr %add.ptr.i.i.i106.i, i32 14
  %158 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw_gro_data, align 8
  %fk.i.i108.i = getelementptr inbounds %struct.mlx5e_hw_gro_data, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %fk.i.i108.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %fk.i.i108.i, align 8
  %conv.i.i109.i = zext i16 %161 to i32
  %add.ptr2.i.i110.i = getelementptr i8, ptr %add.ptr.i.i107.i, i32 %conv.i.i109.i
  %arrayidx.i.i111.i = getelementptr [5 x i32], ptr %add.ptr2.i.i110.i, i32 0, i32 3
  %162 = ptrtoint ptr %arrayidx.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i.i111.i, align 4
  %and.i.i112.i = and i32 %163, 589824
  %arrayidx3.i.i113.i = getelementptr [5 x i32], ptr %add.ptr.i93.i, i32 0, i32 3
  %164 = ptrtoint ptr %arrayidx3.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx3.i.i113.i, align 4
  %or.i.i114.i = or i32 %165, %and.i.i112.i
  store i32 %or.i.i114.i, ptr %arrayidx3.i.i113.i, align 4
  br label %if.end.i135.i

if.end.i135.i:                                    ; preds = %if.then.i115.i, %if.then33.i.if.end.i135.i_crit_edge
  %len.i116.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 6
  %166 = ptrtoint ptr %len.i116.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %len.i116.i, align 4
  %sub.i117.i = sub i32 %167, %conv.i91.i
  %saddr.i118.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr25.i, i32 0, i32 5
  %daddr.i119.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr25.i, i32 0, i32 6
  %call.i.i26.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i118.i, ptr noundef %daddr.i119.i, i32 noundef %sub.i117.i, i32 noundef 6, i32 noundef 0) #10
  %168 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i26.i.i) #14, !srcloc !79
  %neg.i.i.i.i120.i = xor i32 %168, -1
  %shr.i.i.i.i121.i = lshr i32 %neg.i.i.i.i120.i, 16
  %conv.i.i.i.i.i = trunc i32 %shr.i.i.i.i121.i to i16
  %neg.i122.i = xor i16 %conv.i.i.i.i.i, -1
  %check.i123.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i93.i, i32 0, i32 6
  %169 = ptrtoint ptr %check.i123.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %neg.i122.i, ptr %check.i123.i, align 4
  %end.i.i124.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 17
  %170 = ptrtoint ptr %end.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %end.i.i124.i, align 4
  %gso_type.i125.i = getelementptr inbounds %struct.skb_shared_info, ptr %171, i32 0, i32 8
  %172 = ptrtoint ptr %gso_type.i125.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %gso_type.i125.i, align 8
  %or.i126.i = or i32 %173, 16
  store i32 %or.i126.i, ptr %gso_type.i125.i, align 8
  %head.i127.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 18
  %174 = ptrtoint ptr %head.i127.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %head.i127.i, align 8
  %sub.ptr.lhs.cast.i128.i = ptrtoint ptr %add.ptr.i93.i to i32
  %sub.ptr.rhs.cast.i129.i = ptrtoint ptr %175 to i32
  %sub.ptr.sub.i130.i = sub i32 %sub.ptr.lhs.cast.i128.i, %sub.ptr.rhs.cast.i129.i
  %conv6.i131.i = trunc i32 %sub.ptr.sub.i130.i to i16
  %176 = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 15, i32 0, i32 5
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %conv6.i131.i, ptr %176, align 8
  %csum_offset.i132.i = getelementptr inbounds %struct.anon.53, ptr %176, i32 0, i32 1
  %178 = ptrtoint ptr %csum_offset.i132.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 16, ptr %csum_offset.i132.i, align 2
  %cwr.i133.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i93.i, i32 0, i32 4
  %179 = ptrtoint ptr %cwr.i133.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %bf.load.i134.i = load i16, ptr %cwr.i133.i, align 4
  %180 = and i16 %bf.load.i134.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %tobool7.not.i.i = icmp eq i16 %180, 0
  br i1 %tobool7.not.i.i, label %if.end.i135.i.if.end8_crit_edge, label %if.end.i135.i.if.end37.sink.split.i_crit_edge

if.end.i135.i.if.end37.sink.split.i_crit_edge:    ; preds = %if.end.i135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.sink.split.i

if.end.i135.i.if.end8_crit_edge:                  ; preds = %if.end.i135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.else35.i:                                      ; preds = %if.else16.i
  %len.i141.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 6
  %181 = ptrtoint ptr %len.i141.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %len.i141.i, align 4
  %183 = trunc i32 %182 to i16
  %conv3.i142.i = sub i16 %183, %136
  %len4.i143.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i93.i, i32 0, i32 2
  %184 = ptrtoint ptr %len4.i143.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv3.i142.i, ptr %len4.i143.i, align 2
  %check.i144.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i93.i, i32 0, i32 3
  %185 = ptrtoint ptr %check.i144.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %check.i144.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %186)
  %tobool.not.i145.i = icmp eq i16 %186, 0
  br i1 %tobool.not.i145.i, label %if.else35.i.if.end37.sink.split.sink.split.i_crit_edge, label %if.then.i154.i

if.else35.i.if.end37.sink.split.sink.split.i_crit_edge: ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.sink.split.sink.split.i

if.then.i154.i:                                   ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %len.i141.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %len.i141.i, align 4
  %sub6.i146.i = sub i32 %188, %conv.i91.i
  %saddr.i147.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr25.i, i32 0, i32 5
  %daddr.i148.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr25.i, i32 0, i32 6
  %call.i.i.i149.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i147.i, ptr noundef %daddr.i148.i, i32 noundef %sub6.i146.i, i32 noundef 17, i32 noundef 0) #10
  %189 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i149.i) #14, !srcloc !79
  br label %if.end37.sink.split.sink.split.i.sink.split

if.end37.sink.split.sink.split.i.sink.split:      ; preds = %if.then.i154.i, %if.then.i79.i
  %.sink24 = phi i32 [ %189, %if.then.i154.i ], [ %124, %if.then.i79.i ]
  %check.i144.i.sink = phi ptr [ %check.i144.i, %if.then.i154.i ], [ %check.i71.i, %if.then.i79.i ]
  %.sink.ph = phi ptr [ %138, %if.then.i154.i ], [ %53, %if.then.i79.i ]
  %add.ptr.i93.i.sink.ph = phi ptr [ %add.ptr.i93.i, %if.then.i154.i ], [ %add.ptr.i.i, %if.then.i79.i ]
  %neg.i.i.i.i150.i = xor i32 %.sink24, -1
  %shr.i.i.i.i151.i = lshr i32 %neg.i.i.i.i150.i, 16
  %conv.i.i.i.i152.i = trunc i32 %shr.i.i.i.i151.i to i16
  %neg.i153.i = xor i16 %conv.i.i.i.i152.i, -1
  %190 = ptrtoint ptr %check.i144.i.sink to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %neg.i153.i, ptr %check.i144.i.sink, align 2
  br label %if.end37.sink.split.sink.split.i

if.end37.sink.split.sink.split.i:                 ; preds = %if.end37.sink.split.sink.split.i.sink.split, %if.else35.i.if.end37.sink.split.sink.split.i_crit_edge, %if.else.i.if.end37.sink.split.sink.split.i_crit_edge
  %.sink = phi ptr [ %53, %if.else.i.if.end37.sink.split.sink.split.i_crit_edge ], [ %138, %if.else35.i.if.end37.sink.split.sink.split.i_crit_edge ], [ %.sink.ph, %if.end37.sink.split.sink.split.i.sink.split ]
  %add.ptr.i93.i.sink = phi ptr [ %add.ptr.i.i, %if.else.i.if.end37.sink.split.sink.split.i_crit_edge ], [ %add.ptr.i93.i, %if.else35.i.if.end37.sink.split.sink.split.i_crit_edge ], [ %add.ptr.i93.i.sink.ph, %if.end37.sink.split.sink.split.i.sink.split ]
  %head.i155.i = getelementptr inbounds %struct.sk_buff, ptr %.sink, i32 0, i32 18
  %191 = ptrtoint ptr %head.i155.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %head.i155.i, align 8
  %sub.ptr.lhs.cast.i156.i = ptrtoint ptr %add.ptr.i93.i.sink to i32
  %sub.ptr.rhs.cast.i157.i = ptrtoint ptr %192 to i32
  %sub.ptr.sub.i158.i = sub i32 %sub.ptr.lhs.cast.i156.i, %sub.ptr.rhs.cast.i157.i
  %conv10.i159.i = trunc i32 %sub.ptr.sub.i158.i to i16
  %193 = getelementptr inbounds %struct.sk_buff, ptr %.sink, i32 0, i32 15, i32 0, i32 5
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv10.i159.i, ptr %193, align 8
  %195 = getelementptr inbounds %struct.sk_buff, ptr %.sink, i32 0, i32 15, i32 0, i32 5
  %csum_offset.i84.i = getelementptr inbounds %struct.anon.53, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %csum_offset.i84.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 6, ptr %csum_offset.i84.i, align 2
  %end.i.i85.i = getelementptr inbounds %struct.sk_buff, ptr %.sink, i32 0, i32 17
  br label %if.end37.sink.split.i

if.end37.sink.split.i:                            ; preds = %if.end37.sink.split.sink.split.i, %if.end.i135.i.if.end37.sink.split.i_crit_edge, %if.end13.i.i.if.end37.sink.split.i_crit_edge
  %end.i.i85.sink.i = phi ptr [ %end.i.i.i, %if.end13.i.i.if.end37.sink.split.i_crit_edge ], [ %end.i.i124.i, %if.end.i135.i.if.end37.sink.split.i_crit_edge ], [ %end.i.i85.i, %if.end37.sink.split.sink.split.i ]
  %.sink165.i = phi i32 [ 4, %if.end13.i.i.if.end37.sink.split.i_crit_edge ], [ 4, %if.end.i135.i.if.end37.sink.split.i_crit_edge ], [ 131072, %if.end37.sink.split.sink.split.i ]
  %197 = ptrtoint ptr %end.i.i85.sink.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %end.i.i85.sink.i, align 4
  %gso_type.i86.i = getelementptr inbounds %struct.skb_shared_info, ptr %198, i32 0, i32 8
  %199 = ptrtoint ptr %gso_type.i86.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %gso_type.i86.i, align 8
  %or11.i.i = or i32 %200, %.sink165.i
  store i32 %or11.i.i, ptr %gso_type.i86.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end37.sink.split.i, %if.end.i135.i.if.end8_crit_edge, %if.end13.i.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %napi = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 2
  %201 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %napi, align 4
  %call9 = tail call i32 @napi_gro_receive(ptr noundef %202, ptr noundef %3) #10
  %203 = ptrtoint ptr %hw_gro_data to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hw_gro_data, align 8
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %204, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_xdp_rx_poll_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5i_handle_rx_cqe(ptr noundef %rq, ptr noundef %cqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wqe_counter = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 21
  %0 = ptrtoint ptr %wqe_counter to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wqe_counter, align 4
  %sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 1
  %2 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sz_m1.i, align 4
  %4 = trunc i32 %3 to i16
  %conv1.i = and i16 %1, %4
  %frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 1
  %5 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frags.i, align 4
  %conv.i = zext i16 %conv1.i to i32
  %log_num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %log_num_frags.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %log_num_frags.i, align 1
  %conv1.i40 = zext i8 %8 to i32
  %shl.i = shl i32 %conv.i, %conv1.i40
  %arrayidx.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %6, i32 %shl.i
  %byte_cnt = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 17
  %9 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %byte_cnt, align 4
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 23
  %11 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %op_own.i, align 1
  %.mask = and i8 %12, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask)
  %cmp.not = icmp eq i8 %.mask, 32
  br i1 %cmp.not, label %if.end, label %if.then, !prof !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %13 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stats, align 4
  %wqe_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %wqe_err to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %wqe_err, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %wqe_err, align 8
  br label %wq_free_wqe

if.end:                                           ; preds = %entry
  %skb_from_cqe = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 4
  %17 = ptrtoint ptr %skb_from_cqe to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb_from_cqe, align 8
  %call6 = tail call ptr %18(ptr noundef %rq, ptr noundef %cqe, ptr noundef %arrayidx.i, i32 noundef %10) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.wq_free_wqe_crit_edge, label %if.end9

if.end.wq_free_wqe_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %wq_free_wqe

if.end9:                                          ; preds = %if.end
  %sop_drop_qpn.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 20
  %19 = ptrtoint ptr %sop_drop_qpn.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sop_drop_qpn.i, align 4
  %and.i = and i32 %20, 16777215
  %netdev1.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 3
  %21 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev1.i, align 8
  %call.i = tail call ptr @mlx5i_pkey_get_netdev(ptr noundef %22, i32 noundef %and.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end24.i, !prof !69

if.then.i:                                        ; preds = %if.end9
  %23 = getelementptr inbounds %struct.anon.44, ptr %call6, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %23, align 8
  %.b160.i = load i1, ptr @mlx5i_complete_rx_cqe.__already_done, align 1
  br i1 %.b160.i, label %if.then.i.mlx5i_complete_rx_cqe.exit_crit_edge, label %if.then15.i, !prof !67

if.then.i.mlx5i_complete_rx_cqe.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5i_complete_rx_cqe.exit

if.then15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5i_complete_rx_cqe.__already_done, align 1
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i) #13
  br label %mlx5i_complete_rx_cqe.exit

if.end24.i:                                       ; preds = %if.end9
  %stats27.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %25 = ptrtoint ptr %stats27.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stats27.i, align 4
  %flags_rqpn28.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 10
  %27 = ptrtoint ptr %flags_rqpn28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags_rqpn28.i, align 4
  %shr.i = lshr i32 %28, 28
  %29 = trunc i32 %shr.i to i8
  %conv.i41 = and i8 %29, 3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i41)
  %tobool30.not.i = icmp eq i8 %conv.i41, 0
  br i1 %tobool30.not.i, label %if.end24.i.if.then33.i_crit_edge, label %lor.lhs.false.i

if.end24.i.if.then33.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33.i

lor.lhs.false.i:                                  ; preds = %if.end24.i
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp.not.i = icmp eq i8 %33, -1
  br i1 %cmp.not.i, label %if.else.i, label %lor.lhs.false.i.if.then33.i_crit_edge

lor.lhs.false.i.if.then33.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33.i

if.then33.i:                                      ; preds = %lor.lhs.false.i.if.then33.i_crit_edge, %if.end24.i.if.then33.i_crit_edge
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 15
  %34 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  br label %if.end50.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %add.ptr35.i = getelementptr %struct.net_device, ptr %call.i, i32 0, i32 99, i32 4
  %bcmp159.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %add.ptr.i, ptr noundef dereferenceable(16) %add.ptr35.i, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp159.i)
  %cmp37.i = icmp eq i32 %bcmp159.i, 0
  %pkt_type40.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 15
  %35 = ptrtoint ptr %pkt_type40.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load41.i = load i16, ptr %pkt_type40.i, align 8
  %bf.clear42.i = and i16 %bf.load41.i, 8191
  br i1 %cmp37.i, label %if.then39.i, label %if.else44.i

if.then39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set43.i = or i16 %bf.clear42.i, 8192
  %36 = ptrtoint ptr %pkt_type40.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %bf.set43.i, ptr %pkt_type40.i, align 8
  br label %if.end50.i

if.else44.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set48.i = or i16 %bf.clear42.i, 16384
  %37 = ptrtoint ptr %pkt_type40.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %bf.set48.i, ptr %pkt_type40.i, align 8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else44.i, %if.then39.i, %if.then33.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i41)
  %tobool52.not.i = icmp ne i8 %conv.i41, 0
  %and53.i = and i32 %28, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and53.i)
  %cmp54.i = icmp eq i32 %and.i, %and53.i
  %or.cond.i = select i1 %tobool52.not.i, i1 %cmp54.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true56.i, label %if.end50.i.if.end64.i_crit_edge

if.end50.i.if.end64.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

land.lhs.true56.i:                                ; preds = %if.end50.i
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr.i, align 64
  %add.ptr57.i = getelementptr i8, ptr %39, i32 4
  %add.ptr59.i = getelementptr i8, ptr %31, i32 8
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %add.ptr57.i, ptr noundef dereferenceable(16) %add.ptr59.i, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp61.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp61.i, label %if.then63.i, label %land.lhs.true56.i.if.end64.i_crit_edge

land.lhs.true56.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

if.then63.i:                                      ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = getelementptr inbounds %struct.anon.44, ptr %call6, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %40, align 8
  br label %mlx5i_complete_rx_cqe.exit

if.end64.i:                                       ; preds = %land.lhs.true56.i.if.end64.i_crit_edge, %if.end50.i.if.end64.i_crit_edge
  %call65.i = tail call ptr @skb_pull(ptr noundef nonnull %call6, i32 noundef 40) #10
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 2
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 15, i32 0, i32 18
  %46 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %protocol.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 23
  %47 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %features.i, align 16
  %and67.i = and i64 %48, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and67.i)
  %tobool68.not.i = icmp eq i64 %and67.i, 0
  %ip_summed75.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 15
  %49 = ptrtoint ptr %ip_summed75.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load76.i = load i16, ptr %ip_summed75.i, align 8
  %bf.clear77.i = and i16 %bf.load76.i, -1537
  br i1 %tobool68.not.i, label %if.else74.i, label %if.then69.i

if.then69.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set72.i = or i16 %bf.clear77.i, 1024
  %50 = ptrtoint ptr %ip_summed75.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %bf.set72.i, ptr %ip_summed75.i, align 8
  %check_sum.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 8
  %51 = ptrtoint ptr %check_sum.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %check_sum.i, align 4
  %conv.i.i = zext i16 %52 to i32
  %53 = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 15, i32 0, i32 5
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv.i.i, ptr %53, align 8
  %csum_complete.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %26, i32 0, i32 2
  br label %if.end80.i

if.else74.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %ip_summed75.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %bf.clear77.i, ptr %ip_summed75.i, align 8
  %csum_none.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %26, i32 0, i32 7
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.else74.i, %if.then69.i
  %csum_none.sink163.i = phi ptr [ %csum_none.i, %if.else74.i ], [ %csum_complete.i, %if.then69.i ]
  %56 = ptrtoint ptr %csum_none.sink163.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %csum_none.sink163.i, align 8
  %inc79.i = add i64 %57, 1
  store i64 %inc79.i, ptr %csum_none.sink163.i, align 8
  %rx_filter.i.i = getelementptr i8, ptr %call.i, i32 30156
  %58 = ptrtoint ptr %rx_filter.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_filter.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i.i = icmp eq i32 %59, 1
  br i1 %cmp.i.i, label %if.then88.i, label %if.end80.i.if.end92.i_crit_edge, !prof !69

if.end80.i.if.end92.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

if.then88.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  %ptp_cyc2time.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 36
  %60 = ptrtoint ptr %ptp_cyc2time.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ptp_cyc2time.i, align 128
  %clock.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 10
  %62 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clock.i, align 4
  %timestamp_h.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 18
  %64 = ptrtoint ptr %timestamp_h.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %timestamp_h.i.i, align 4
  %timestamp_l.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 19
  %66 = ptrtoint ptr %timestamp_l.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %timestamp_l.i.i, align 4
  %conv.i161.i = zext i32 %67 to i64
  %conv1.i.i = zext i32 %65 to i64
  %shl.i.i = shl nuw i64 %conv1.i.i, 32
  %or.i.i = or i64 %shl.i.i, %conv.i161.i
  %call.i.i = tail call i64 %61(ptr noundef %63, i64 noundef %or.i.i) #10
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 17
  %68 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call.i.i, ptr %hwtstamps.i.i, align 8
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then88.i, %if.end80.i.if.end92.i_crit_edge
  %ix.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 18
  %71 = ptrtoint ptr %ix.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ix.i, align 4
  %conv93.i = trunc i32 %72 to i16
  %add.i.i = add i16 %conv93.i, 1
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 10
  %73 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %add.i.i, ptr %queue_mapping.i.i, align 8
  %74 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %features.i, align 16
  %and95.i = and i64 %75, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and95.i)
  %tobool96.not.i = icmp eq i64 %and95.i, 0
  br i1 %tobool96.not.i, label %if.end92.i.if.end104.i_crit_edge, label %if.then103.i, !prof !69

if.end92.i.if.end104.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

if.then103.i:                                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  %rss_hash_type.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 5
  %76 = ptrtoint ptr %rss_hash_type.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %rss_hash_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %77)
  %tobool.not.not.i.i = icmp ult i8 %77, 64
  %rss_hash_result.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 4
  %78 = ptrtoint ptr %rss_hash_result.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rss_hash_result.i.i, align 4
  %80 = ptrtoint ptr %ip_summed75.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load.i.i.i.i = load i16, ptr %ip_summed75.i, align 8
  %bf.shl.i.i.i.i = select i1 %tobool.not.not.i.i, i16 0, i16 128
  %bf.clear.i.i.i.i = and i16 %bf.load.i.i.i.i, -193
  %bf.set.i.i.i.i = or i16 %bf.clear.i.i.i.i, %bf.shl.i.i.i.i
  store i16 %bf.set.i.i.i.i, ptr %ip_summed75.i, align 8
  %hash10.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 15, i32 0, i32 8
  %81 = ptrtoint ptr %hash10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %79, ptr %hash10.i.i.i.i, align 4
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then103.i, %if.end92.i.if.end104.i_crit_edge
  %call105.i = tail call ptr @skb_push(ptr noundef nonnull %call6, i32 noundef 20) #10
  %82 = call ptr @memset(ptr %call105.i, i32 0, i32 20)
  %83 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 18
  %85 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %84 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %86 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i162.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 15, i32 0, i32 21
  %87 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i162.i, ptr %mac_header.i.i, align 2
  %call106.i = tail call ptr @skb_pull(ptr noundef nonnull %call6, i32 noundef 24) #10
  %88 = getelementptr inbounds %struct.anon.44, ptr %call6, i32 0, i32 2
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i, ptr %88, align 8
  %90 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %26, align 8
  %inc107.i = add i64 %91, 1
  store i64 %inc107.i, ptr %26, align 8
  %conv108.i = zext i32 %10 to i64
  %bytes.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %26, i32 0, i32 1
  %92 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %bytes.i, align 8
  %add.i = add i64 %93, %conv108.i
  store i64 %add.i, ptr %bytes.i, align 8
  br label %mlx5i_complete_rx_cqe.exit

mlx5i_complete_rx_cqe.exit:                       ; preds = %if.end104.i, %if.then63.i, %if.then15.i, %if.then.i.mlx5i_complete_rx_cqe.exit_crit_edge
  %94 = getelementptr inbounds %struct.anon.44, ptr %call6, i32 0, i32 2
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %tobool10.not = icmp eq ptr %96, null
  br i1 %tobool10.not, label %if.then19, label %if.end20, !prof !69

if.then19:                                        ; preds = %mlx5i_complete_rx_cqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call6, i32 noundef 1) #10
  br label %wq_free_wqe

if.end20:                                         ; preds = %mlx5i_complete_rx_cqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  %napi = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 2
  %97 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %napi, align 4
  %call21 = tail call i32 @napi_gro_receive(ptr noundef %98, ptr noundef nonnull %call6) #10
  br label %wq_free_wqe

wq_free_wqe:                                      ; preds = %if.end20, %if.then19, %if.end.wq_free_wqe_crit_edge, %if.then
  %num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 1
  %99 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %num_frags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp6.not.i = icmp eq i8 %100, 0
  br i1 %cmp6.not.i, label %wq_free_wqe.mlx5e_free_rx_wqe.exit_crit_edge, label %for.body.lr.ph.i

wq_free_wqe.mlx5e_free_rx_wqe.exit_crit_edge:     ; preds = %wq_free_wqe
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_free_rx_wqe.exit

for.body.lr.ph.i:                                 ; preds = %wq_free_wqe
  %xsk_pool.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge ]
  %wi.addr.07.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge ]
  %last_in_page.i.i = getelementptr inbounds %struct.mlx5e_wqe_frag_info, ptr %wi.addr.07.i, i32 0, i32 2
  %101 = ptrtoint ptr %last_in_page.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %last_in_page.i.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i.i, label %for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge, label %if.then.i.i

for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_put_rx_frag.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  %103 = ptrtoint ptr %wi.addr.07.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %wi.addr.07.i, align 4
  %105 = ptrtoint ptr %xsk_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %xsk_pool.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %104, i32 0, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  tail call void @xp_free(ptr noundef %109) #10
  br label %mlx5e_put_rx_frag.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_page_release_dynamic(ptr noundef %rq, ptr noundef %104, i1 noundef zeroext true) #10
  br label %mlx5e_put_rx_frag.exit.i

mlx5e_put_rx_frag.exit.i:                         ; preds = %if.else.i.i.i, %if.then.i.i.i, %for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %incdec.ptr.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %wi.addr.07.i, i32 1
  %110 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %num_frags.i, align 4
  %conv.i42 = zext i8 %111 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i42
  br i1 %cmp.i, label %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge, label %mlx5e_put_rx_frag.exit.i.mlx5e_free_rx_wqe.exit_crit_edge

mlx5e_put_rx_frag.exit.i.mlx5e_free_rx_wqe.exit_crit_edge: ; preds = %mlx5e_put_rx_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_free_rx_wqe.exit

mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge:    ; preds = %mlx5e_put_rx_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mlx5e_free_rx_wqe.exit:                           ; preds = %mlx5e_put_rx_frag.exit.i.mlx5e_free_rx_wqe.exit_crit_edge, %wq_free_wqe.mlx5e_free_rx_wqe.exit_crit_edge
  %cur_sz.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %rq, i32 0, i32 4
  %112 = ptrtoint ptr %cur_sz.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %cur_sz.i, align 4
  %dec.i = add i16 %113, -1
  store i16 %dec.i, ptr %cur_sz.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rq_set_handlers(ptr nocapture noundef %rq, ptr noundef %params, i1 noundef zeroext %xsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %mdev2 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 31
  %2 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev2, align 8
  %priv3 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 12
  %4 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv3, align 4
  %wq_type = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 29
  %6 = ptrtoint ptr %wq_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wq_type, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cond50 = icmp eq i8 %7, 2
  br i1 %cond50, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  br i1 %xsk, label %sw.bb.cond.end_crit_edge, label %cond.false

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %3, ptr noundef %params, ptr noundef null) #10
  %cond = select i1 %call, ptr @mlx5e_skb_from_cqe_mpwrq_linear, ptr @mlx5e_skb_from_cqe_mpwrq_nonlinear
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb.cond.end_crit_edge
  %cond6 = phi ptr [ %cond, %cond.false ], [ @mlx5e_xsk_skb_from_cqe_mpwrq_linear, %sw.bb.cond.end_crit_edge ]
  %skb_from_cqe_mpwrq = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 3
  %8 = ptrtoint ptr %skb_from_cqe_mpwrq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cond6, ptr %skb_from_cqe_mpwrq, align 4
  %post_wqes = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 15
  %9 = ptrtoint ptr %post_wqes to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mlx5e_post_rx_mpwqes, ptr %post_wqes, align 32
  %dealloc_wqe = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 16
  %10 = ptrtoint ptr %dealloc_wqe to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mlx5e_dealloc_rx_mpwqe, ptr %dealloc_wqe, align 4
  %call7 = tail call zeroext i1 @mlx5_fpga_is_ipsec_device(ptr noundef %3) #10
  br i1 %call7, label %cond.end.cleanup.sink.split_crit_edge, label %if.end

cond.end.cleanup.sink.split_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %cond.end
  %packet_merge = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9
  %11 = ptrtoint ptr %packet_merge to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %packet_merge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  %profile = getelementptr inbounds %struct.mlx5e_priv, ptr %5, i32 0, i32 42
  %13 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %profile, align 4
  %rx_handlers = getelementptr inbounds %struct.mlx5e_profile, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %rx_handlers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_handlers, align 4
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %handle_rx_cqe_mpwqe_shampo = getelementptr inbounds %struct.mlx5e_rx_handlers, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %handle_rx_cqe_mpwqe_shampo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handle_rx_cqe_mpwqe_shampo, align 4
  %handle_rx_cqe = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 14
  %19 = ptrtoint ptr %handle_rx_cqe to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %handle_rx_cqe, align 4
  %tobool11.not = icmp eq ptr %18, null
  br i1 %tobool11.not, label %if.then9.cleanup.sink.split_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %handle_rx_cqe_mpwqe = getelementptr inbounds %struct.mlx5e_rx_handlers, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %handle_rx_cqe_mpwqe to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle_rx_cqe_mpwqe, align 4
  %handle_rx_cqe16 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 14
  %22 = ptrtoint ptr %handle_rx_cqe16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %handle_rx_cqe16, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %if.else.cleanup.sink.split_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.default:                                       ; preds = %entry
  br i1 %xsk, label %sw.default.cond.end29_crit_edge, label %cond.false25

sw.default.cond.end29_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end29

cond.false25:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call zeroext i1 @mlx5e_rx_is_linear_skb(ptr noundef %params, ptr noundef null) #10
  %cond28 = select i1 %call26, ptr @mlx5e_skb_from_cqe_linear, ptr @mlx5e_skb_from_cqe_nonlinear
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false25, %sw.default.cond.end29_crit_edge
  %cond30 = phi ptr [ %cond28, %cond.false25 ], [ @mlx5e_xsk_skb_from_cqe_linear, %sw.default.cond.end29_crit_edge ]
  %skb_from_cqe = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 4
  %23 = ptrtoint ptr %skb_from_cqe to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cond30, ptr %skb_from_cqe, align 8
  %post_wqes31 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 15
  %24 = ptrtoint ptr %post_wqes31 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mlx5e_post_rx_wqes, ptr %post_wqes31, align 32
  %dealloc_wqe32 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 16
  %25 = ptrtoint ptr %dealloc_wqe32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mlx5e_dealloc_rx_wqe, ptr %dealloc_wqe32, align 4
  %call33 = tail call i32 @mlx5_fpga_ipsec_device_caps(ptr noundef %3) #10
  %and = and i32 %call33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %cond.end29.if.else38_crit_edge, label %land.lhs.true

cond.end29.if.else38_crit_edge:                   ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

land.lhs.true:                                    ; preds = %cond.end29
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %5, i32 0, i32 44
  %26 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ipsec, align 4
  %tobool35.not = icmp eq ptr %27, null
  br i1 %tobool35.not, label %land.lhs.true.if.else38_crit_edge, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true.if.else38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

if.else38:                                        ; preds = %land.lhs.true.if.else38_crit_edge, %cond.end29.if.else38_crit_edge
  %profile39 = getelementptr inbounds %struct.mlx5e_priv, ptr %5, i32 0, i32 42
  %28 = ptrtoint ptr %profile39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %profile39, align 4
  %rx_handlers40 = getelementptr inbounds %struct.mlx5e_profile, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %rx_handlers40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_handlers40, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else38, %land.lhs.true.if.end43_crit_edge
  %.sink = phi ptr [ %33, %if.else38 ], [ @mlx5e_ipsec_handle_rx_cqe, %land.lhs.true.if.end43_crit_edge ]
  %handle_rx_cqe42 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 14
  %34 = ptrtoint ptr %handle_rx_cqe42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %.sink, ptr %handle_rx_cqe42, align 4
  %tobool45.not = icmp eq ptr %.sink, null
  br i1 %tobool45.not, label %if.end43.cleanup.sink.split_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end43.cleanup.sink.split_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end43.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.then9.cleanup.sink.split_crit_edge, %cond.end.cleanup.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.4, %cond.end.cleanup.sink.split_crit_edge ], [ @.str.5, %if.then9.cleanup.sink.split_crit_edge ], [ @.str.6, %if.else.cleanup.sink.split_crit_edge ], [ @.str.7, %if.end43.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull %.str.7.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end43.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_xsk_skb_from_cqe_mpwrq_linear(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5e_skb_from_cqe_mpwrq_linear(ptr noundef %rq, ptr noundef %wi, i16 noundef zeroext %cqe_bcnt, i32 noundef %head_offset, i32 noundef %page_idx) #0 align 64 {
entry:
  %cqe_bcnt32 = alloca i32, align 4
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buff = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1
  %0 = ptrtoint ptr %buff to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %buff, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cqe_bcnt32) #10
  %conv = zext i16 %cqe_bcnt to i32
  %2 = ptrtoint ptr %cqe_bcnt32 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %cqe_bcnt32, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #10
  %3 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %hw_mtu = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 19
  %4 = getelementptr inbounds i8, ptr %xdp, i32 20
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %hw_mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_mtu, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp ult i32 %7, %conv
  br i1 %cmp, label %if.then, label %if.end, !prof !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats, align 4
  %oversize_pkts_sw_drop = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %oversize_pkts_sw_drop to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %oversize_pkts_sw_drop, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %oversize_pkts_sw_drop, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %13 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %14 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %15 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %arrayidx = getelementptr [64 x %struct.mlx5e_dma_info], ptr %wi, i32 0, i32 %page_idx
  %16 = getelementptr [64 x %struct.mlx5e_dma_info], ptr %wi, i32 0, i32 %page_idx, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call = tail call ptr @page_address(ptr noundef %18) #10
  %add.ptr = getelementptr i8, ptr %call, i32 %head_offset
  %conv4 = zext i16 %1 to i32
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %conv4
  %19 = ptrtoint ptr %cqe_bcnt32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cqe_bcnt32, align 4
  %add = add nuw nsw i32 %conv4, 383
  %21 = add i32 %add, %20
  %add8 = and i32 %21, -128
  %pdev = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %25, %head_offset
  tail call void @dma_sync_single_for_cpu(ptr noundef %23, i32 noundef %add.i, i32 noundef %add8, i32 noundef 2) #10
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr5) #10, !srcloc !80
  %frame0_sz.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %frame0_sz.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frame0_sz.i, align 4
  %xdp_rxq.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 35
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %12, align 4
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %xdp_rxq.i, ptr %13, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr, ptr %3, align 4
  %31 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr5, ptr %xdp, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr5, i32 %20
  %32 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr2.i.i, ptr %15, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr5, i32 1
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr3.i.i, ptr %14, align 4
  %call9 = call zeroext i1 @mlx5e_xdp_handle(ptr noundef %rq, ptr noundef %arrayidx, ptr noundef nonnull %cqe_bcnt32, ptr noundef nonnull %xdp) #10
  br i1 %call9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end
  %flags = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 23
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and.i = and i32 %35, -2
  store i32 %and.i, ptr %flags, align 4
  %and1.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool12.not = icmp eq i32 %and1.i, 0
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %if.then13

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %xdp_xmit_bitmap = getelementptr inbounds %struct.mlx5e_mpw_info, ptr %wi, i32 0, i32 2
  %rem.i = and i32 %page_idx, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %page_idx, 5
  %add.ptr.i = getelementptr i32, ptr %xdp_xmit_bitmap, i32 %div2.i
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %37, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %38 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xdp, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %41 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv19 = and i32 %sub.ptr.sub, 65535
  %42 = ptrtoint ptr %cqe_bcnt32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cqe_bcnt32, align 4
  %add20 = add i32 %43, 383
  %44 = add i32 %add20, %conv19
  %add23 = and i32 %44, -128
  %call.i = call ptr @build_skb(ptr noundef %add.ptr, i32 noundef %add23) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %mlx5e_build_linear_skb.exit.thread, label %if.end35, !prof !69

mlx5e_build_linear_skb.exit.thread:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %stats.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %45 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stats.i, align 4
  %buff_alloc_err.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %46, i32 0, i32 24
  %47 = ptrtoint ptr %buff_alloc_err.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %buff_alloc_err.i, align 8
  %inc.i = add i64 %48, 1
  store i64 %inc.i, ptr %buff_alloc_err.i, align 8
  br label %cleanup

if.end35:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %49 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %50, i32 %conv19
  store ptr %add.ptr.i.i67, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %51 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %52, i32 %conv19
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call4.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %43) #10
  %53 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %16, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #10
  %55 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #10, !srcloc !81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mlx5e_skb_from_cqe_mpwrq_linear, %if.then.i68)) #10
          to label %cleanup [label %if.then.i68], !srcloc !75

if.then.i68:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  call void @__page_ref_mod(ptr noundef %54, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i68, %if.end35, %mlx5e_build_linear_skb.exit.thread, %if.then13, %if.then10.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then13 ], [ null, %if.then10.cleanup_crit_edge ], [ null, %mlx5e_build_linear_skb.exit.thread ], [ %call.i, %if.end35 ], [ %call.i, %if.then.i68 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cqe_bcnt32) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5e_skb_from_cqe_mpwrq_nonlinear(ptr noundef %rq, ptr nocapture noundef readonly %wi, i16 noundef zeroext %cqe_bcnt, i32 noundef %head_offset, i32 noundef %page_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = zext i16 %cqe_bcnt to i32
  %0 = tail call i16 @llvm.umin.i16(i16 %cqe_bcnt, i16 256)
  %1 = zext i16 %0 to i32
  %arrayidx = getelementptr [64 x %struct.mlx5e_dma_info], ptr %wi, i32 0, i32 %page_idx
  %add = add i32 %1, %head_offset
  %sub = sub nsw i32 %conv1, %1
  %napi = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %napi, align 4
  %call.i = tail call ptr @__napi_alloc_skb(ptr noundef %3, i32 noundef 256, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats, align 4
  %buff_alloc_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %buff_alloc_err to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %buff_alloc_err, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %buff_alloc_err, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  tail call void @llvm.prefetch.p0(ptr %9, i32 1, i32 3, i32 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp12 = icmp ugt i32 %add, 4095
  br i1 %cmp12, label %if.then20, label %if.end.if.end22_crit_edge, !prof !69

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr = getelementptr %struct.mlx5e_dma_info, ptr %arrayidx, i32 1
  %sub21 = add i32 %add, -4096
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end.if.end22_crit_edge
  %di.0 = phi ptr [ %incdec.ptr, %if.then20 ], [ %arrayidx, %if.end.if.end22_crit_edge ]
  %frag_offset.0 = phi i32 [ %sub21, %if.then20 ], [ %add, %if.end.if.end22_crit_edge ]
  tail call fastcc void @mlx5e_fill_skb_data(ptr noundef nonnull %call.i, ptr noundef %rq, ptr noundef %di.0, i32 noundef %sub, i32 noundef %frag_offset.0)
  %pdev = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %12 = getelementptr [64 x %struct.mlx5e_dma_info], ptr %wi, i32 0, i32 %page_idx, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call.i54 = tail call ptr @page_address(ptr noundef %14) #10
  %add.ptr.i = getelementptr i8, ptr %call.i54, i32 %head_offset
  %add.i = add nuw nsw i32 %1, 3
  %and.i = and i32 %add.i, 1020
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add1.i = add i32 %16, %head_offset
  tail call void @dma_sync_single_for_cpu(ptr noundef %11, i32 noundef %add1.i, i32 noundef %and.i, i32 noundef 2) #10
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = call ptr @memcpy(ptr %18, ptr %add.ptr.i, i32 %and.i)
  %tail = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail, align 8
  %add.ptr = getelementptr i8, ptr %21, i32 %1
  store ptr %add.ptr, ptr %tail, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %add26 = add i32 %23, %1
  store i32 %add26, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlx5e_post_rx_mpwqes(ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %umr_completed2 = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 9
  %0 = ptrtoint ptr %umr_completed2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %umr_completed2, align 1
  %icosq = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 11
  %2 = ptrtoint ptr %icosq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icosq, align 16
  %state = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 17
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !69

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool6.not = icmp eq i8 %1, 0
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %if.end
  %head.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 3
  %strides_offset.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 3
  %6 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %7 to i32
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 6
  %8 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rq, align 4
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 2
  %12 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i.i = zext i16 %13 to i32
  %log_stride.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 5
  %14 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %15 to i32
  %wqe_ctr.i.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 4
  %cur_sz.i.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then7
  %n.addr.0.i = phi i8 [ %1, %if.then7 ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %head.i, align 4
  %conv.i.i.i = zext i16 %17 to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i, %conv.i.i.i.i
  %shr.i.i.i.i = lshr i32 %add.i.i.i.i, %conv1.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %11, i32 %shr.i.i.i.i
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %add.i.i.i.i, %conv2.i.i.i.i
  %shl.i.i.i.i = shl i32 %and.i.i.i.i, %conv3.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 %shl.i.i.i.i
  %next_wqe_index.i.i = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %next_wqe_index.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %next_wqe_index.i.i, align 2
  store i16 %21, ptr %head.i, align 4
  %22 = ptrtoint ptr %wqe_ctr.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %wqe_ctr.i.i, align 2
  %inc.i.i = add i16 %23, 1
  store i16 %inc.i.i, ptr %wqe_ctr.i.i, align 2
  %24 = ptrtoint ptr %cur_sz.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cur_sz.i.i, align 4
  %inc1.i.i = add i16 %25, 1
  store i16 %inc1.i.i, ptr %cur_sz.i.i, align 4
  %dec.i = add i8 %n.addr.0.i, -1
  %tobool.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool.not.i, label %mlx5e_post_rx_mpwqe.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

mlx5e_post_rx_mpwqe.exit:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  %26 = ptrtoint ptr %wqe_ctr.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %wqe_ctr.i.i, align 2
  %conv.i.i = zext i16 %27 to i32
  %db.i.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 1
  %28 = ptrtoint ptr %db.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %db.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i.i, ptr %29, align 4
  %umr_in_progress = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 7
  %31 = ptrtoint ptr %umr_in_progress to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %umr_in_progress, align 1
  %sub = sub i8 %32, %1
  store i8 %sub, ptr %umr_in_progress, align 1
  %33 = ptrtoint ptr %umr_completed2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %umr_completed2, align 1
  br label %if.end11

if.end11:                                         ; preds = %mlx5e_post_rx_mpwqe.exit, %if.end.if.end11_crit_edge
  %sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 1
  %34 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sz_m1.i, align 4
  %cur_sz.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 5
  %36 = ptrtoint ptr %cur_sz.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %cur_sz.i, align 4
  %conv.i = zext i16 %37 to i32
  %sub.i = sub i32 %35, %conv.i
  %umr_in_progress13 = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 7
  %38 = ptrtoint ptr %umr_in_progress13 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %umr_in_progress13, align 1
  %40 = trunc i32 %sub.i to i8
  %conv16 = sub i8 %40, %39
  %umr_last_bulk = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 8
  %41 = ptrtoint ptr %umr_last_bulk to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %umr_last_bulk, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %42)
  %cmp = icmp ugt i8 %39, %42
  br i1 %cmp, label %if.then27, label %if.end11.if.end28_crit_edge, !prof !69

if.end11.if.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then27:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %43 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stats, align 4
  %congst_umr = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %44, i32 0, i32 32
  %45 = ptrtoint ptr %congst_umr to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %congst_umr, align 8
  %inc = add i64 %46, 1
  store i64 %inc, ptr %congst_umr, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end11.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv16)
  %cmp30 = icmp ult i8 %conv16, 2
  br i1 %cmp30, label %if.end28.cleanup_crit_edge, label %if.end39, !prof !67

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %page_pool = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 24
  %47 = ptrtoint ptr %page_pool to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %page_pool, align 4
  %tobool40.not = icmp eq ptr %48, null
  br i1 %tobool40.not, label %if.end39.if.end44_crit_edge, label %if.then41

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then41:                                        ; preds = %if.end39
  %nid.i = getelementptr inbounds %struct.page_pool_params, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.not.i = icmp eq i32 %50, 0
  br i1 %cmp.not.i, label %if.then41.if.end44_crit_edge, label %if.then.i, !prof !67

if.then41.if.end44_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @page_pool_update_nid(ptr noundef nonnull %48, i32 noundef 0) #10
  br label %if.end44

if.end44:                                         ; preds = %if.then.i, %if.then41.if.end44_crit_edge, %if.end39.if.end44_crit_edge
  %actual_wq_head = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 5
  %51 = ptrtoint ptr %actual_wq_head to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %actual_wq_head, align 2
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 3
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 6
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 2
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end54.do.body_crit_edge, %if.end44
  %i.0 = phi i8 [ %conv16, %if.end44 ], [ %dec, %if.end54.do.body_crit_edge ]
  %head.0 = phi i16 [ %52, %if.end44 ], [ %66, %if.end54.do.body_crit_edge ]
  %call45 = tail call fastcc i32 @mlx5e_alloc_rx_mpwqe(ptr noundef %rq, i16 noundef zeroext %head.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end54, label %do.body.do.end_crit_edge, !prof !67

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end54:                                         ; preds = %do.body
  %conv.i.i126 = zext i16 %head.0 to i32
  %53 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i127 = zext i16 %54 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i127, %conv.i.i126
  %55 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %56 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %57 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rq, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %58, i32 %shr.i.i.i
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i.i, align 4
  %61 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %62 to i32
  %and.i.i.i = and i32 %add.i.i.i, %conv2.i.i.i
  %63 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %64 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %60, i32 %shl.i.i.i
  %next_wqe_index.i = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %next_wqe_index.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %next_wqe_index.i, align 2
  %dec = add i8 %i.0, -1
  %tobool56.not = icmp eq i8 %dec, 0
  br i1 %tobool56.not, label %if.end54.do.end_crit_edge, label %if.end54.do.body_crit_edge

if.end54.do.body_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end54.do.end_crit_edge:                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end54.do.end_crit_edge, %do.body.do.end_crit_edge
  %i.1 = phi i8 [ %i.0, %do.body.do.end_crit_edge ], [ 0, %if.end54.do.end_crit_edge ]
  %head.1 = phi i16 [ %head.0, %do.body.do.end_crit_edge ], [ %66, %if.end54.do.end_crit_edge ]
  %sub59 = sub i8 %conv16, %i.1
  %67 = ptrtoint ptr %umr_last_bulk to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %sub59, ptr %umr_last_bulk, align 2
  %doorbell_cseg = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 2
  %68 = ptrtoint ptr %doorbell_cseg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %doorbell_cseg, align 4
  %tobool62.not = icmp eq ptr %69, null
  br i1 %tobool62.not, label %do.end.if.end67_crit_edge, label %if.then63

do.end.if.end67_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then63:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %wq64 = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 6
  %pc = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 1
  %70 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %pc, align 2
  %uar_map = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 7
  %72 = ptrtoint ptr %uar_map to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %uar_map, align 32
  tail call fastcc void @mlx5e_notify_hw(ptr noundef %wq64, i16 noundef zeroext %71, ptr noundef %73, ptr noundef nonnull %69)
  %74 = ptrtoint ptr %doorbell_cseg to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %doorbell_cseg, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %do.end.if.end67_crit_edge
  %75 = ptrtoint ptr %umr_last_bulk to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %umr_last_bulk, align 2
  %77 = ptrtoint ptr %umr_in_progress13 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %umr_in_progress13, align 1
  %add = add i8 %78, %76
  store i8 %add, ptr %umr_in_progress13, align 1
  %79 = ptrtoint ptr %actual_wq_head to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %head.1, ptr %actual_wq_head, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call45)
  %cmp74 = icmp eq i32 %call45, -12
  br i1 %cmp74, label %land.rhs, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %xsk_pool = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  %80 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %xsk_pool, align 8
  %tobool76 = icmp ne ptr %81, null
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.end67.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end28.cleanup_crit_edge ], [ false, %if.end67.cleanup_crit_edge ], [ %tobool76, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_dealloc_rx_mpwqe(ptr nocapture noundef readonly %rq, i16 noundef zeroext %ix) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 32
  %idxprom = zext i16 %ix to i32
  %arrayidx = getelementptr %struct.mlx5e_mpw_info, ptr %1, i32 %idxprom
  %xdp_xmit_bitmap.i = getelementptr %struct.mlx5e_mpw_info, ptr %1, i32 %idxprom, i32 2
  %call.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %xdp_xmit_bitmap.i, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i.i)
  %cmp4.i.i = icmp eq i32 %call.i.i, 64
  br i1 %cmp4.i.i, label %entry.mlx5e_free_rx_mpwqe.exit_crit_edge, label %if.end.i

entry.mlx5e_free_rx_mpwqe.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_free_rx_mpwqe.exit

if.end.i:                                         ; preds = %entry
  %call.i22.i = tail call i32 @_find_first_bit_be(ptr noundef %xdp_xmit_bitmap.i, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i22.i)
  %cmp4.i23.i = icmp eq i32 %call.i22.i, 64
  %xsk_pool.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  %pdev.i15.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %map_dir.i16.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1, i32 2
  %page_pool4.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.024.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %cmp4.i23.i, label %for.body.i.if.then11.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then11.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %div3.i.i = lshr i32 %i.024.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %xdp_xmit_bitmap.i, i32 %div3.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.024.i, 31
  %4 = shl nuw i32 1, %and.i.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not.i = icmp eq i32 %5, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i.if.then11.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false.i.if.then11.i_crit_edge, %for.body.i.if.then11.i_crit_edge
  %6 = ptrtoint ptr %xsk_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xsk_pool.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = getelementptr %struct.mlx5e_dma_info, ptr %arrayidx, i32 %i.024.i, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void @xp_free(ptr noundef %10) #10
  br label %for.inc.i

if.else.i.i:                                      ; preds = %if.then11.i
  %arrayidx.i = getelementptr %struct.mlx5e_dma_info, ptr %arrayidx, i32 %i.024.i
  %11 = ptrtoint ptr %pdev.i15.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i15.i, align 4
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %map_dir.i16.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %map_dir.i16.i, align 8
  %conv.i17.i = zext i8 %16 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %14, i32 noundef 4096, i32 noundef %conv.i17.i, i32 noundef 32) #10
  %17 = ptrtoint ptr %page_pool4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %page_pool4.i, align 4
  %19 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %arrayidx.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  tail call void @page_pool_release_page(ptr noundef %18, ptr noundef %21) #10
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i2 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2)
  %tobool.not.i.i3 = icmp eq i32 %and.i.i2, 0
  br i1 %tobool.not.i.i3, label %if.end.i.i, label %if.then.i.i4, !prof !67

if.then.i.i4:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %26, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %23 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i4
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i4 ], [ %27, %if.end.i.i ]
  %28 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %29 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i.i.i = icmp eq i32 %30, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !69

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !71
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mlx5e_dealloc_rx_mpwqe, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !75

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %28, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc.i_crit_edge

folio_put_testzero.exit.i.i.for.inc.i_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %28) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc.i_crit_edge, %if.then.i.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.mlx5e_free_rx_mpwqe.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.mlx5e_free_rx_mpwqe.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_free_rx_mpwqe.exit

mlx5e_free_rx_mpwqe.exit:                         ; preds = %for.inc.i.mlx5e_free_rx_mpwqe.exit_crit_edge, %entry.mlx5e_free_rx_mpwqe.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_fpga_is_ipsec_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_xsk_skb_from_cqe_linear(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_rx_is_linear_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5e_skb_from_cqe_linear(ptr noundef %rq, ptr nocapture noundef readnone %cqe, ptr nocapture noundef readonly %wi, i32 noundef %cqe_bcnt) #0 align 64 {
entry:
  %cqe_bcnt.addr = alloca i32, align 4
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cqe_bcnt.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cqe_bcnt, ptr %cqe_bcnt.addr, align 4
  %1 = ptrtoint ptr %wi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wi, align 4
  %buff = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1
  %3 = ptrtoint ptr %buff to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %buff, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #10
  %5 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %6 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %7 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %8 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %9 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %10 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %xdp, i32 20
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %call = tail call ptr @page_address(ptr noundef %14) #10
  %offset = getelementptr inbounds %struct.mlx5e_wqe_frag_info, ptr %wi, i32 0, i32 1
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call, i32 %16
  %conv = zext i16 %4 to i32
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %conv
  %add = add nuw nsw i32 %conv, 383
  %17 = add i32 %add, %cqe_bcnt
  %add5 = and i32 %17, -128
  %pdev = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  %add.i = add i32 %21, %16
  tail call void @dma_sync_single_for_cpu(ptr noundef %19, i32 noundef %add.i, i32 noundef %add5, i32 noundef 2) #10
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr2) #10, !srcloc !80
  %frame0_sz.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %frame0_sz.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frame0_sz.i, align 4
  %xdp_rxq.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 35
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %9, align 4
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %xdp_rxq.i, ptr %8, align 4
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %7, align 4
  %27 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr2, ptr %xdp, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr2, i32 %cqe_bcnt
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr2.i.i, ptr %5, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr2, i32 1
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr3.i.i, ptr %6, align 4
  %call7 = call zeroext i1 @mlx5e_xdp_handle(ptr noundef %rq, ptr noundef %2, ptr noundef nonnull %cqe_bcnt.addr, ptr noundef nonnull %xdp) #10
  br i1 %call7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %30 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xdp, align 4
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %7, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %33 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv10 = and i32 %sub.ptr.sub, 65535
  %34 = ptrtoint ptr %cqe_bcnt.addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cqe_bcnt.addr, align 4
  %add11 = add i32 %35, 383
  %36 = add i32 %add11, %conv10
  %add14 = and i32 %36, -128
  %call.i = call ptr @build_skb(ptr noundef %add.ptr, i32 noundef %add14) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %mlx5e_build_linear_skb.exit.thread, label %if.end20, !prof !69

mlx5e_build_linear_skb.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %stats.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %37 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stats.i, align 4
  %buff_alloc_err.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %buff_alloc_err.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %buff_alloc_err.i, align 8
  %inc.i = add i64 %40, 1
  store i64 %inc.i, ptr %buff_alloc_err.i, align 8
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %42, i32 %conv10
  store ptr %add.ptr.i.i46, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %44, i32 %conv10
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call4.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %35) #10
  %45 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %10, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #10
  %47 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #10, !srcloc !81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mlx5e_skb_from_cqe_linear, %if.then.i47)) #10
          to label %cleanup [label %if.then.i47], !srcloc !75

if.then.i47:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void @__page_ref_mod(ptr noundef %46, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i47, %if.end20, %mlx5e_build_linear_skb.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %mlx5e_build_linear_skb.exit.thread ], [ %call.i, %if.end20 ], [ %call.i, %if.then.i47 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5e_skb_from_cqe_nonlinear(ptr nocapture noundef readonly %rq, ptr nocapture noundef readnone %cqe, ptr nocapture noundef readonly %wi, i32 noundef %cqe_bcnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %cqe_bcnt, i32 256)
  %napi = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 2
  %1 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %napi, align 4
  %call.i = tail call ptr @__napi_alloc_skb(ptr noundef %2, i32 noundef 256, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %3 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stats, align 4
  %buff_alloc_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %buff_alloc_err to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %buff_alloc_err, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %buff_alloc_err, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = trunc i32 %0 to i16
  %phi.cast = trunc i32 %cqe_bcnt to i16
  %conv2 = sub i16 %phi.cast, %7
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  tail call void @llvm.prefetch.p0(ptr %9, i32 1, i32 3, i32 1) #10
  call void @__sanitizer_cov_trace_cmp2(i16 %phi.cast, i16 %7)
  %tobool6.not74 = icmp eq i16 %phi.cast, %7
  br i1 %tobool6.not74, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %info = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3
  %pdev.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %12 = trunc i32 %11 to i16
  %conv9.peel = sub i16 %12, %7
  %13 = tail call i16 @llvm.umin.i16(i16 %conv9.peel, i16 %conv2)
  %14 = ptrtoint ptr %wi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wi, align 4
  %offset.peel = getelementptr inbounds %struct.mlx5e_wqe_frag_info, ptr %wi, i32 0, i32 1
  %16 = ptrtoint ptr %offset.peel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset.peel, align 4
  %add.peel = add i32 %17, %0
  %conv23.peel = zext i16 %13 to i32
  %frag_stride.peel = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %frag_stride.peel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frag_stride.peel, align 4
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %15, align 4
  %add.i.peel = add i32 %23, %add.peel
  tail call void @dma_sync_single_for_cpu(ptr noundef %21, i32 noundef %add.i.peel, i32 noundef %conv23.peel, i32 noundef 2) #10
  %24 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %15, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %_refcount.i.i.peel = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  %call.i.i.i.i.peel = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.peel, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.peel, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.peel, ptr %_refcount.i.i.peel, i32 1, ptr elementtype(i32) %_refcount.i.i.peel) #10, !srcloc !81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mlx5e_skb_from_cqe_nonlinear, %if.then.i.i.peel)) #10
          to label %mlx5e_add_skb_frag.exit.peel [label %if.then.i.i.peel], !srcloc !75

if.then.i.i.peel:                                 ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %26, i32 noundef 1) #10
  br label %mlx5e_add_skb_frag.exit.peel

mlx5e_add_skb_frag.exit.peel:                     ; preds = %if.then.i.i.peel, %while.body.lr.ph
  %28 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i.peel = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %nr_frags.i.peel to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nr_frags.i.peel, align 2
  %conv.i.peel = zext i8 %31 to i32
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %24, align 4
  tail call void @skb_add_rx_frag(ptr noundef nonnull %call.i, i32 noundef %conv.i.peel, ptr noundef %33, i32 noundef %add.peel, i32 noundef %conv23.peel, i32 noundef %19) #10
  %sub26.peel = sub i16 %conv2, %13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub26.peel)
  %tobool6.not.peel = icmp eq i16 %sub26.peel, 0
  br i1 %tobool6.not.peel, label %mlx5e_add_skb_frag.exit.peel.while.end_crit_edge, label %while.body.peel.next

mlx5e_add_skb_frag.exit.peel.while.end_crit_edge: ; preds = %mlx5e_add_skb_frag.exit.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.peel.next:                             ; preds = %mlx5e_add_skb_frag.exit.peel
  %incdec.ptr.peel = getelementptr %struct.anon, ptr %rq, i32 0, i32 3, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %mlx5e_add_skb_frag.exit.while.body_crit_edge, %while.body.peel.next
  %byte_cnt.078 = phi i16 [ %sub26.peel, %while.body.peel.next ], [ %sub26, %mlx5e_add_skb_frag.exit.while.body_crit_edge ]
  %wi.pn = phi ptr [ %wi, %while.body.peel.next ], [ %wi.addr.076, %mlx5e_add_skb_frag.exit.while.body_crit_edge ]
  %frag_info.075 = phi ptr [ %incdec.ptr.peel, %while.body.peel.next ], [ %incdec.ptr, %mlx5e_add_skb_frag.exit.while.body_crit_edge ]
  %wi.addr.076 = getelementptr %struct.mlx5e_wqe_frag_info, ptr %wi.pn, i32 1
  %34 = ptrtoint ptr %frag_info.075 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frag_info.075, align 4
  %36 = trunc i32 %35 to i16
  %37 = tail call i16 @llvm.umin.i16(i16 %36, i16 %byte_cnt.078)
  %38 = ptrtoint ptr %wi.addr.076 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wi.addr.076, align 4
  %offset = getelementptr %struct.mlx5e_wqe_frag_info, ptr %wi.pn, i32 1, i32 1
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset, align 4
  %conv23 = zext i16 %37 to i32
  %frag_stride = getelementptr inbounds %struct.mlx5e_rq_frag_info, ptr %frag_info.075, i32 0, i32 1
  %42 = ptrtoint ptr %frag_stride to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %frag_stride, align 4
  %44 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %39, align 4
  %add.i = add i32 %47, %41
  tail call void @dma_sync_single_for_cpu(ptr noundef %45, i32 noundef %add.i, i32 noundef %conv23, i32 noundef 2) #10
  %48 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %39, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i, i32 1, i32 3, i32 1) #10
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i, ptr %_refcount.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i) #10, !srcloc !81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mlx5e_skb_from_cqe_nonlinear, %if.then.i.i)) #10
          to label %mlx5e_add_skb_frag.exit [label %if.then.i.i], !srcloc !75

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %50, i32 noundef 1) #10
  br label %mlx5e_add_skb_frag.exit

mlx5e_add_skb_frag.exit:                          ; preds = %if.then.i.i, %while.body
  %52 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %55 to i32
  %56 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %48, align 4
  tail call void @skb_add_rx_frag(ptr noundef nonnull %call.i, i32 noundef %conv.i, ptr noundef %57, i32 noundef %41, i32 noundef %conv23, i32 noundef %43) #10
  %sub26 = sub i16 %byte_cnt.078, %37
  %incdec.ptr = getelementptr %struct.mlx5e_rq_frag_info, ptr %frag_info.075, i32 1
  %tobool6.not = icmp eq i16 %sub26, 0
  br i1 %tobool6.not, label %mlx5e_add_skb_frag.exit.while.end_crit_edge, label %mlx5e_add_skb_frag.exit.while.body_crit_edge, !llvm.loop !83

mlx5e_add_skb_frag.exit.while.body_crit_edge:     ; preds = %mlx5e_add_skb_frag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

mlx5e_add_skb_frag.exit.while.end_crit_edge:      ; preds = %mlx5e_add_skb_frag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %mlx5e_add_skb_frag.exit.while.end_crit_edge, %mlx5e_add_skb_frag.exit.peel.while.end_crit_edge, %if.end.while.end_crit_edge
  %pdev = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %58 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev, align 4
  %60 = ptrtoint ptr %wi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wi, align 4
  %offset30 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, ptr %wi, i32 0, i32 1
  %62 = ptrtoint ptr %offset30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset30, align 4
  %64 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %61, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %call.i71 = tail call ptr @page_address(ptr noundef %66) #10
  %add.ptr.i = getelementptr i8, ptr %call.i71, i32 %63
  %add.i72 = add nuw nsw i32 %0, 3
  %and.i = and i32 %add.i72, 1020
  %67 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %61, align 4
  %add1.i = add i32 %68, %63
  tail call void @dma_sync_single_for_cpu(ptr noundef %59, i32 noundef %add1.i, i32 noundef %and.i, i32 noundef 2) #10
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 4
  %71 = call ptr @memcpy(ptr %70, ptr %add.ptr.i, i32 %and.i)
  %tail = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %72 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tail, align 8
  %add.ptr = getelementptr i8, ptr %73, i32 %0
  store ptr %add.ptr, ptr %tail, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %74 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len, align 4
  %add35 = add i32 %75, %0
  store i32 %add35, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlx5e_post_rx_wqes(ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 17
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup35_crit_edge, label %if.end, !prof !69

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

if.end:                                           ; preds = %entry
  %wqe_bulk5 = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %wqe_bulk5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wqe_bulk5, align 2
  %sz.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %rq, i32 0, i32 2
  %4 = ptrtoint ptr %sz.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sz.i, align 4
  %conv.i = zext i16 %5 to i32
  %cur_sz.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %rq, i32 0, i32 4
  %6 = ptrtoint ptr %cur_sz.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cur_sz.i, align 4
  %conv1.i = zext i16 %7 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv)
  %cmp = icmp slt i32 %sub.i, %conv
  br i1 %cmp, label %if.end.cleanup35_crit_edge, label %if.end9

if.end.cleanup35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

if.end9:                                          ; preds = %if.end
  %page_pool = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 24
  %8 = ptrtoint ptr %page_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page_pool, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  %nid.i = getelementptr inbounds %struct.page_pool_params, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %if.then11.if.end14_crit_edge, label %if.then.i, !prof !67

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @page_pool_update_nid(ptr noundef nonnull %9, i32 noundef 0) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %if.then11.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  %wqe_ctr.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %rq, i32 0, i32 3
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 1
  %xsk_pool.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  %log_num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp64.not.i = icmp eq i8 %3, 0
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 3
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 6
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 2
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 5
  %num_frags.i.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 1
  %frags.i.i.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 1
  %buff.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1
  %conv.i53 = zext i8 %3 to i16
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end14
  %12 = ptrtoint ptr %wqe_ctr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %wqe_ctr.i, align 2
  %14 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sz_m1.i.i, align 4
  %16 = trunc i32 %15 to i16
  %conv1.i.i = and i16 %13, %16
  %17 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xsk_pool.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.body.if.end8.i_crit_edge, label %if.then.i52

do.body.if.end8.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then.i52:                                      ; preds = %do.body
  %19 = ptrtoint ptr %log_num_frags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %log_num_frags.i, align 1
  %conv2.i = zext i8 %20 to i32
  %shl.i = shl i32 %conv, %conv2.i
  %call.i.i = tail call zeroext i1 @xp_can_alloc(ptr noundef nonnull %18, i32 noundef %shl.i) #10
  br i1 %call.i.i, label %if.then.i52.if.end8.i_crit_edge, label %if.then.i52.cleanup_crit_edge

if.then.i52.cleanup_crit_edge:                    ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i52.if.end8.i_crit_edge:                  ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i52.if.end8.i_crit_edge, %do.body.if.end8.i_crit_edge
  br i1 %cmp64.not.i, label %if.end8.i.do.cond_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

if.end8.i.do.cond_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %i.065.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end8.i.for.body.i_crit_edge ]
  %21 = trunc i32 %i.065.i to i16
  %conv12.i = add i16 %conv1.i.i, %21
  %conv.i.i = zext i16 %conv12.i to i32
  %22 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %23 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i, %conv.i.i.i
  %24 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %25 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %26 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rq, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %27, i32 %shr.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i, align 4
  %30 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %31 to i32
  %and.i.i.i = and i32 %add.i.i.i, %conv2.i.i.i
  %32 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %33 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %shl.i.i.i
  %34 = ptrtoint ptr %num_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_frags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp34.not.i.i = icmp eq i8 %35, 0
  br i1 %cmp34.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %36 = ptrtoint ptr %frags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %frags.i.i.i, align 4
  %38 = ptrtoint ptr %log_num_frags.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %log_num_frags.i, align 1
  %conv1.i.i54.i = zext i8 %39 to i32
  %shl.i.i55.i = shl i32 %conv.i.i, %conv1.i.i54.i
  %arrayidx.i.i56.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %37, i32 %shl.i.i55.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.037.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %frag.035.i.i = phi ptr [ %arrayidx.i.i56.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %offset.i.i.i = getelementptr inbounds %struct.mlx5e_wqe_frag_info, ptr %frag.035.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i, label %mlx5e_get_rx_frag.exit.i.i, label %for.body.i.i.if.end.i.i_crit_edge

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

mlx5e_get_rx_frag.exit.i.i:                       ; preds = %for.body.i.i
  %42 = ptrtoint ptr %frag.035.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %frag.035.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @mlx5e_page_alloc(ptr noundef %rq, ptr noundef %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %mlx5e_get_rx_frag.exit.i.i.if.end.i.i_crit_edge, label %while.cond.preheader.i.i, !prof !67

mlx5e_get_rx_frag.exit.i.i.if.end.i.i_crit_edge:  ; preds = %mlx5e_get_rx_frag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

while.cond.preheader.i.i:                         ; preds = %mlx5e_get_rx_frag.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.037.i.i)
  %cmp940.not.i.i = icmp eq i32 %i.037.i.i, 0
  br i1 %cmp940.not.i.i, label %while.cond.preheader.i.i.mlx5e_alloc_rx_wqe.exit.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.mlx5e_alloc_rx_wqe.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_alloc_rx_wqe.exit.i

if.end.i.i:                                       ; preds = %mlx5e_get_rx_frag.exit.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %44 = ptrtoint ptr %frag.035.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %frag.035.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %48 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i.i.i, align 4
  %add.i.i = add i32 %49, %47
  %50 = ptrtoint ptr %buff.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %buff.i.i, align 8
  %conv5.i.i = zext i16 %51 to i32
  %add6.i.i = add i32 %add.i.i, %conv5.i.i
  %conv7.i.i = zext i32 %add6.i.i to i64
  %addr8.i.i = getelementptr [0 x %struct.mlx5_wqe_data_seg], ptr %add.ptr.i.i.i, i32 0, i32 %i.037.i.i, i32 2
  %52 = ptrtoint ptr %addr8.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv7.i.i, ptr %addr8.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.037.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %frag.035.i.i, i32 1
  %53 = ptrtoint ptr %num_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_frags.i.i, align 4
  %conv.i57.i = zext i8 %54 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i57.i
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.for.inc.i_crit_edge

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

while.body.i.i:                                   ; preds = %mlx5e_put_rx_frag.exit.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %dec42.in.i.i = phi i32 [ %dec42.i.i, %mlx5e_put_rx_frag.exit.i.i.while.body.i.i_crit_edge ], [ %i.037.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %frag.141.i.i = phi ptr [ %incdec.ptr11.i.i, %mlx5e_put_rx_frag.exit.i.i.while.body.i.i_crit_edge ], [ %frag.035.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec42.i.i = add nsw i32 %dec42.in.i.i, -1
  %incdec.ptr11.i.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %frag.141.i.i, i32 -1
  %last_in_page.i.i.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %frag.141.i.i, i32 -1, i32 2
  %55 = ptrtoint ptr %last_in_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %last_in_page.i.i.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i26.i.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i26.i.i, label %while.body.i.i.mlx5e_put_rx_frag.exit.i.i_crit_edge, label %if.then.i27.i.i

while.body.i.i.mlx5e_put_rx_frag.exit.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_put_rx_frag.exit.i.i

if.then.i27.i.i:                                  ; preds = %while.body.i.i
  %57 = ptrtoint ptr %incdec.ptr11.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %incdec.ptr11.i.i, align 4
  %59 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %xsk_pool.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %58, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  tail call void @xp_free(ptr noundef %63) #10
  br label %mlx5e_put_rx_frag.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_page_release_dynamic(ptr noundef %rq, ptr noundef %58, i1 noundef zeroext true) #10
  br label %mlx5e_put_rx_frag.exit.i.i

mlx5e_put_rx_frag.exit.i.i:                       ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i, %while.body.i.i.mlx5e_put_rx_frag.exit.i.i_crit_edge
  %cmp9.i.i = icmp sgt i32 %dec42.in.i.i, 1
  br i1 %cmp9.i.i, label %mlx5e_put_rx_frag.exit.i.i.while.body.i.i_crit_edge, label %mlx5e_put_rx_frag.exit.i.i.mlx5e_alloc_rx_wqe.exit.i_crit_edge

mlx5e_put_rx_frag.exit.i.i.mlx5e_alloc_rx_wqe.exit.i_crit_edge: ; preds = %mlx5e_put_rx_frag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_alloc_rx_wqe.exit.i

mlx5e_put_rx_frag.exit.i.i.while.body.i.i_crit_edge: ; preds = %mlx5e_put_rx_frag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

mlx5e_alloc_rx_wqe.exit.i:                        ; preds = %mlx5e_put_rx_frag.exit.i.i.mlx5e_alloc_rx_wqe.exit.i_crit_edge, %while.cond.preheader.i.i.mlx5e_alloc_rx_wqe.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.065.i)
  %cmp3068.not.i = icmp eq i32 %i.065.i, 0
  br i1 %cmp3068.not.i, label %mlx5e_alloc_rx_wqe.exit.i.cleanup_crit_edge, label %mlx5e_alloc_rx_wqe.exit.i.while.body.i_crit_edge

mlx5e_alloc_rx_wqe.exit.i.while.body.i_crit_edge: ; preds = %mlx5e_alloc_rx_wqe.exit.i
  br label %while.body.i

mlx5e_alloc_rx_wqe.exit.i.cleanup_crit_edge:      ; preds = %mlx5e_alloc_rx_wqe.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.inc.i.do.cond_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.cond_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %mlx5e_alloc_rx_wqe.exit.i.while.body.i_crit_edge
  %dec69.in.i = phi i32 [ %dec69.i, %while.body.i.while.body.i_crit_edge ], [ %i.065.i, %mlx5e_alloc_rx_wqe.exit.i.while.body.i_crit_edge ]
  %dec69.i = add nsw i32 %dec69.in.i, -1
  %64 = trunc i32 %dec69.i to i16
  %conv34.i = add i16 %conv1.i.i, %64
  tail call void @mlx5e_dealloc_rx_wqe(ptr noundef %rq, i16 noundef zeroext %conv34.i) #10
  %cmp30.i = icmp sgt i32 %dec69.in.i, 1
  br i1 %cmp30.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %mlx5e_alloc_rx_wqe.exit.i.cleanup_crit_edge, %if.then.i52.cleanup_crit_edge
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %65 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %stats, align 4
  %buff_alloc_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %66, i32 0, i32 24
  %67 = ptrtoint ptr %buff_alloc_err to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %buff_alloc_err, align 8
  %inc = add i64 %68, 1
  store i64 %inc, ptr %buff_alloc_err, align 8
  br label %do.end

do.cond:                                          ; preds = %for.inc.i.do.cond_crit_edge, %if.end8.i.do.cond_crit_edge
  %69 = ptrtoint ptr %wqe_ctr.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %wqe_ctr.i, align 2
  %conv2.i55 = add i16 %70, %conv.i53
  store i16 %conv2.i55, ptr %wqe_ctr.i, align 2
  %71 = ptrtoint ptr %cur_sz.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %cur_sz.i, align 4
  %add5.i = add i16 %72, %conv.i53
  store i16 %add5.i, ptr %cur_sz.i, align 4
  %73 = ptrtoint ptr %sz.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %sz.i, align 4
  %conv.i58 = zext i16 %74 to i32
  %conv1.i60 = zext i16 %add5.i to i32
  %sub.i61 = sub nsw i32 %conv.i58, %conv1.i60
  %cmp28.not = icmp slt i32 %sub.i61, %conv
  br i1 %cmp28.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %cleanup
  %tobool176675 = phi i1 [ true, %cleanup ], [ false, %do.cond.do.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  %75 = ptrtoint ptr %wqe_ctr.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %wqe_ctr.i, align 2
  %conv.i63 = zext i16 %76 to i32
  %db.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %rq, i32 0, i32 1
  %77 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %db.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv.i63, ptr %78, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %do.end, %if.end.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.0 = phi i1 [ %tobool176675, %do.end ], [ false, %entry.cleanup35_crit_edge ], [ false, %if.end.cleanup35_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_dealloc_rx_wqe(ptr nocapture noundef readonly %rq, i16 noundef zeroext %ix) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_frags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp6.not.i = icmp eq i8 %1, 0
  br i1 %cmp6.not.i, label %entry.mlx5e_free_rx_wqe.exit_crit_edge, label %for.body.lr.ph.i

entry.mlx5e_free_rx_wqe.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_free_rx_wqe.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 1
  %2 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frags.i, align 4
  %conv.i = zext i16 %ix to i32
  %log_num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %log_num_frags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %log_num_frags.i, align 1
  %conv1.i = zext i8 %5 to i32
  %shl.i = shl i32 %conv.i, %conv1.i
  %arrayidx.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %3, i32 %shl.i
  %xsk_pool.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  %pdev.i15.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %map_dir.i16.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1, i32 2
  %page_pool4.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge ]
  %wi.addr.07.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge ]
  %last_in_page.i.i = getelementptr inbounds %struct.mlx5e_wqe_frag_info, ptr %wi.addr.07.i, i32 0, i32 2
  %6 = ptrtoint ptr %last_in_page.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %last_in_page.i.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge, label %if.then.i.i

for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_put_rx_frag.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  %8 = ptrtoint ptr %wi.addr.07.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wi.addr.07.i, align 4
  %10 = ptrtoint ptr %xsk_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xsk_pool.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void @xp_free(ptr noundef %14) #10
  br label %mlx5e_put_rx_frag.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %15 = ptrtoint ptr %pdev.i15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i15.i, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %9, align 4
  %19 = ptrtoint ptr %map_dir.i16.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %map_dir.i16.i, align 8
  %conv.i17.i = zext i8 %20 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %18, i32 noundef 4096, i32 noundef %conv.i17.i, i32 noundef 32) #10
  %21 = ptrtoint ptr %page_pool4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %page_pool4.i, align 4
  %23 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %9, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  tail call void @page_pool_release_page(ptr noundef %22, ptr noundef %25) #10
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i3 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i3, label %if.end.i.i, label %if.then.i.i4, !prof !67

if.then.i.i4:                                     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %30, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %27 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i4
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i4 ], [ %31, %if.end.i.i ]
  %32 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !69

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !71
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mlx5e_dealloc_rx_wqe, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !75

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %32, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.mlx5e_put_rx_frag.exit.i_crit_edge

folio_put_testzero.exit.i.i.mlx5e_put_rx_frag.exit.i_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_put_rx_frag.exit.i

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %32) #10
  br label %mlx5e_put_rx_frag.exit.i

mlx5e_put_rx_frag.exit.i:                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.mlx5e_put_rx_frag.exit.i_crit_edge, %if.then.i.i.i, %for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %incdec.ptr.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %wi.addr.07.i, i32 1
  %37 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_frags.i, align 4
  %conv.i2 = zext i8 %38 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i2
  br i1 %cmp.i, label %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge, label %mlx5e_put_rx_frag.exit.i.mlx5e_free_rx_wqe.exit_crit_edge

mlx5e_put_rx_frag.exit.i.mlx5e_free_rx_wqe.exit_crit_edge: ; preds = %mlx5e_put_rx_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_free_rx_wqe.exit

mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge:    ; preds = %mlx5e_put_rx_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mlx5e_free_rx_wqe.exit:                           ; preds = %mlx5e_put_rx_frag.exit.i.mlx5e_free_rx_wqe.exit_crit_edge, %entry.mlx5e_free_rx_wqe.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_ipsec_device_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_ipsec_handle_rx_cqe(ptr noundef %rq, ptr noundef %cqe) #0 align 64 {
entry:
  %cqe_bcnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cqe_bcnt) #10
  %wqe_counter = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 21
  %0 = ptrtoint ptr %wqe_counter to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wqe_counter, align 4
  %sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 1
  %2 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sz_m1.i, align 4
  %4 = trunc i32 %3 to i16
  %conv1.i = and i16 %1, %4
  %frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 1
  %5 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frags.i, align 4
  %conv.i = zext i16 %conv1.i to i32
  %log_num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %log_num_frags.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %log_num_frags.i, align 1
  %conv1.i49 = zext i8 %8 to i32
  %shl.i = shl i32 %conv.i, %conv1.i49
  %arrayidx.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %6, i32 %shl.i
  %byte_cnt = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 17
  %9 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %byte_cnt, align 4
  %11 = ptrtoint ptr %cqe_bcnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cqe_bcnt, align 4
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 23
  %12 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %op_own.i, align 1
  %.mask = and i8 %13, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask)
  %cmp.not = icmp eq i8 %.mask, 32
  br i1 %cmp.not, label %if.end, label %if.then, !prof !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %14 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stats, align 4
  %wqe_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %wqe_err to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %wqe_err, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %wqe_err, align 8
  br label %wq_free_wqe

if.end:                                           ; preds = %entry
  %skb_from_cqe = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 4
  %18 = ptrtoint ptr %skb_from_cqe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb_from_cqe, align 8
  %call6 = tail call ptr %19(ptr noundef %rq, ptr noundef %cqe, ptr noundef %arrayidx.i, i32 noundef %10) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.wq_free_wqe_crit_edge, label %if.end17, !prof !69

if.end.wq_free_wqe_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %wq_free_wqe

if.end17:                                         ; preds = %if.end
  %netdev = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 3
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 8
  %call18 = call ptr @mlx5e_ipsec_handle_rx_skb(ptr noundef %21, ptr noundef nonnull %call6, ptr noundef nonnull %cqe_bcnt) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.wq_free_wqe_crit_edge, label %if.end29, !prof !69

if.end17.wq_free_wqe_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %wq_free_wqe

if.end29:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %cqe_bcnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cqe_bcnt, align 4
  %stats1.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %24 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stats1.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %25, align 8
  %inc.i = add i64 %27, 1
  store i64 %inc.i, ptr %25, align 8
  %conv.i50 = zext i32 %23 to i64
  %bytes.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bytes.i, align 8
  %add.i = add i64 %29, %conv.i50
  store i64 %add.i, ptr %bytes.i, align 8
  call fastcc void @mlx5e_build_rx_skb(ptr noundef %cqe, i32 noundef %23, ptr noundef %rq, ptr noundef nonnull %call18) #10
  %napi = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %napi, align 4
  %call30 = call i32 @napi_gro_receive(ptr noundef %31, ptr noundef nonnull %call18) #10
  br label %wq_free_wqe

wq_free_wqe:                                      ; preds = %if.end29, %if.end17.wq_free_wqe_crit_edge, %if.end.wq_free_wqe_crit_edge, %if.then
  %num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_frags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp6.not.i = icmp eq i8 %33, 0
  br i1 %cmp6.not.i, label %wq_free_wqe.mlx5e_free_rx_wqe.exit_crit_edge, label %for.body.lr.ph.i

wq_free_wqe.mlx5e_free_rx_wqe.exit_crit_edge:     ; preds = %wq_free_wqe
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_free_rx_wqe.exit

for.body.lr.ph.i:                                 ; preds = %wq_free_wqe
  %xsk_pool.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i51, %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge ]
  %wi.addr.07.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge ]
  %last_in_page.i.i = getelementptr inbounds %struct.mlx5e_wqe_frag_info, ptr %wi.addr.07.i, i32 0, i32 2
  %34 = ptrtoint ptr %last_in_page.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %last_in_page.i.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i.i, label %for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge, label %if.then.i.i

for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_put_rx_frag.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  %36 = ptrtoint ptr %wi.addr.07.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wi.addr.07.i, align 4
  %38 = ptrtoint ptr %xsk_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xsk_pool.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  call void @xp_free(ptr noundef %42) #10
  br label %mlx5e_put_rx_frag.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @mlx5e_page_release_dynamic(ptr noundef %rq, ptr noundef %37, i1 noundef zeroext true) #10
  br label %mlx5e_put_rx_frag.exit.i

mlx5e_put_rx_frag.exit.i:                         ; preds = %if.else.i.i.i, %if.then.i.i.i, %for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge
  %inc.i51 = add nuw nsw i32 %i.09.i, 1
  %incdec.ptr.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %wi.addr.07.i, i32 1
  %43 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_frags.i, align 4
  %conv.i52 = zext i8 %44 to i32
  %cmp.i = icmp ult i32 %inc.i51, %conv.i52
  br i1 %cmp.i, label %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge, label %mlx5e_put_rx_frag.exit.i.mlx5e_free_rx_wqe.exit_crit_edge

mlx5e_put_rx_frag.exit.i.mlx5e_free_rx_wqe.exit_crit_edge: ; preds = %mlx5e_put_rx_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_free_rx_wqe.exit

mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge:    ; preds = %mlx5e_put_rx_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mlx5e_free_rx_wqe.exit:                           ; preds = %mlx5e_put_rx_frag.exit.i.mlx5e_free_rx_wqe.exit_crit_edge, %wq_free_wqe.mlx5e_free_rx_wqe.exit_crit_edge
  %cur_sz.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %rq, i32 0, i32 4
  %45 = ptrtoint ptr %cur_sz.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cur_sz.i, align 4
  %dec.i = add i16 %46, -1
  store i16 %dec.i, ptr %cur_sz.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cqe_bcnt) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rq_set_trap_handlers(ptr nocapture noundef writeonly %rq, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mlx5e_rx_is_linear_skb(ptr noundef %params, ptr noundef null) #10
  %cond = select i1 %call, ptr @mlx5e_skb_from_cqe_linear, ptr @mlx5e_skb_from_cqe_nonlinear
  %skb_from_cqe = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 4
  %0 = ptrtoint ptr %skb_from_cqe to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cond, ptr %skb_from_cqe, align 8
  %post_wqes = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 15
  %1 = ptrtoint ptr %post_wqes to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mlx5e_post_rx_wqes, ptr %post_wqes, align 32
  %dealloc_wqe = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 16
  %2 = ptrtoint ptr %dealloc_wqe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mlx5e_dealloc_rx_wqe, ptr %dealloc_wqe, align 4
  %handle_rx_cqe = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 14
  %3 = ptrtoint ptr %handle_rx_cqe to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mlx5e_trap_handle_rx_cqe, ptr %handle_rx_cqe, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_trap_handle_rx_cqe(ptr noundef %rq, ptr noundef %cqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 8
  %sop_drop_qpn.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 20
  %2 = ptrtoint ptr %sop_drop_qpn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sop_drop_qpn.i, align 4
  %conv.i = and i32 %3, 4095
  %wqe_counter = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 21
  %4 = ptrtoint ptr %wqe_counter to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wqe_counter, align 4
  %sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 1
  %6 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sz_m1.i, align 4
  %8 = trunc i32 %7 to i16
  %conv1.i = and i16 %5, %8
  %frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 1
  %9 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %frags.i, align 4
  %conv.i34 = zext i16 %conv1.i to i32
  %log_num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %log_num_frags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %log_num_frags.i, align 1
  %conv1.i35 = zext i8 %12 to i32
  %shl.i = shl i32 %conv.i34, %conv1.i35
  %arrayidx.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %10, i32 %shl.i
  %byte_cnt = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 17
  %13 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %byte_cnt, align 4
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 23
  %15 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %op_own.i, align 1
  %.mask = and i8 %16, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask)
  %cmp.not = icmp eq i8 %.mask, 32
  br i1 %cmp.not, label %if.end, label %if.then, !prof !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats, align 4
  %wqe_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %wqe_err to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wqe_err, align 8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %wqe_err, align 8
  br label %free_wqe

if.end:                                           ; preds = %entry
  %call8 = tail call ptr @mlx5e_skb_from_cqe_nonlinear(ptr noundef %rq, ptr noundef %cqe, ptr noundef %arrayidx.i, i32 noundef %14)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.free_wqe_crit_edge, label %if.end11

if.end.free_wqe_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_wqe

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %stats1.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %21 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stats1.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %inc.i = add i64 %24, 1
  store i64 %inc.i, ptr %22, align 8
  %conv.i36 = zext i32 %14 to i64
  %bytes.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bytes.i, align 8
  %add.i = add i64 %26, %conv.i36
  store i64 %add.i, ptr %bytes.i, align 8
  tail call fastcc void @mlx5e_build_rx_skb(ptr noundef %cqe, i32 noundef %14, ptr noundef %rq, ptr noundef nonnull %call8) #10
  %call12 = tail call ptr @skb_push(ptr noundef nonnull %call8, i32 noundef 14) #10
  %mdev.i = getelementptr i8, ptr %1, i32 11328
  %27 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdev.i, align 64
  %dl_port.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %28, i32 0, i32 20, i32 1
  %mdev = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 31
  %29 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdev, align 8
  tail call void @mlx5_devlink_trap_report(ptr noundef %30, i32 noundef %conv.i, ptr noundef nonnull %call8, ptr noundef %dl_port.i) #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call8, i32 noundef 1) #10
  br label %free_wqe

free_wqe:                                         ; preds = %if.end11, %if.end.free_wqe_crit_edge, %if.then
  %num_frags.i = getelementptr inbounds %struct.anon, ptr %rq, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_frags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp6.not.i = icmp eq i8 %32, 0
  br i1 %cmp6.not.i, label %free_wqe.mlx5e_free_rx_wqe.exit_crit_edge, label %for.body.lr.ph.i

free_wqe.mlx5e_free_rx_wqe.exit_crit_edge:        ; preds = %free_wqe
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_free_rx_wqe.exit

for.body.lr.ph.i:                                 ; preds = %free_wqe
  %xsk_pool.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  %pdev.i15.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %map_dir.i16.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1, i32 2
  %page_pool4.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i37, %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge ]
  %wi.addr.07.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge ]
  %last_in_page.i.i = getelementptr inbounds %struct.mlx5e_wqe_frag_info, ptr %wi.addr.07.i, i32 0, i32 2
  %33 = ptrtoint ptr %last_in_page.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %last_in_page.i.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge, label %if.then.i.i

for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_put_rx_frag.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  %35 = ptrtoint ptr %wi.addr.07.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wi.addr.07.i, align 4
  %37 = ptrtoint ptr %xsk_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xsk_pool.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  tail call void @xp_free(ptr noundef %41) #10
  br label %mlx5e_put_rx_frag.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %42 = ptrtoint ptr %pdev.i15.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev.i15.i, align 4
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %36, align 4
  %46 = ptrtoint ptr %map_dir.i16.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %map_dir.i16.i, align 8
  %conv.i17.i = zext i8 %47 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %43, i32 noundef %45, i32 noundef 4096, i32 noundef %conv.i17.i, i32 noundef 32) #10
  %48 = ptrtoint ptr %page_pool4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %page_pool4.i, align 4
  %50 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %36, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  tail call void @page_pool_release_page(ptr noundef %49, ptr noundef %52) #10
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %55 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %and.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i39 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i39, label %if.end.i.i, label %if.then.i.i40, !prof !67

if.then.i.i40:                                    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %57, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %54 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i40
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i40 ], [ %58, %if.end.i.i ]
  %59 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %60 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.i.i.i = icmp eq i32 %61, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !69

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %62, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !71
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mlx5e_trap_handle_rx_cqe, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !75

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %59, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.mlx5e_put_rx_frag.exit.i_crit_edge

folio_put_testzero.exit.i.i.mlx5e_put_rx_frag.exit.i_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_put_rx_frag.exit.i

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %59) #10
  br label %mlx5e_put_rx_frag.exit.i

mlx5e_put_rx_frag.exit.i:                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.mlx5e_put_rx_frag.exit.i_crit_edge, %if.then.i.i.i, %for.body.i.mlx5e_put_rx_frag.exit.i_crit_edge
  %inc.i37 = add nuw nsw i32 %i.09.i, 1
  %incdec.ptr.i = getelementptr %struct.mlx5e_wqe_frag_info, ptr %wi.addr.07.i, i32 1
  %64 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %num_frags.i, align 4
  %conv.i38 = zext i8 %65 to i32
  %cmp.i = icmp ult i32 %inc.i37, %conv.i38
  br i1 %cmp.i, label %mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge, label %mlx5e_put_rx_frag.exit.i.mlx5e_free_rx_wqe.exit_crit_edge

mlx5e_put_rx_frag.exit.i.mlx5e_free_rx_wqe.exit_crit_edge: ; preds = %mlx5e_put_rx_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_free_rx_wqe.exit

mlx5e_put_rx_frag.exit.i.for.body.i_crit_edge:    ; preds = %mlx5e_put_rx_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mlx5e_free_rx_wqe.exit:                           ; preds = %mlx5e_put_rx_frag.exit.i.mlx5e_free_rx_wqe.exit_crit_edge, %free_wqe.mlx5e_free_rx_wqe.exit_crit_edge
  %cur_sz.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %rq, i32 0, i32 4
  %66 = ptrtoint ptr %cur_sz.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %cur_sz.i, align 4
  %dec.i = add i16 %67, -1
  store i16 %dec.i, ptr %cur_sz.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_handle_rx_err_cqe(ptr noundef %rq, ptr noundef %cqe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 12
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %syndrome.i = getelementptr inbounds %struct.mlx5_err_cqe, ptr %cqe, i32 0, i32 4
  %2 = ptrtoint ptr %syndrome.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %syndrome.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %3, label %entry.trigger_report.exit_crit_edge [
    i8 2, label %entry.land.lhs.true.i_crit_edge
    i8 4, label %entry.land.lhs.true.i_crit_edge2
    i8 5, label %entry.land.lhs.true.i_crit_edge3
  ]

entry.land.lhs.true.i_crit_edge3:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

entry.land.lhs.true.i_crit_edge2:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

entry.trigger_report.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trigger_report.exit

land.lhs.true.i:                                  ; preds = %entry.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge2, %entry.land.lhs.true.i_crit_edge3
  %state.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 17
  %call2.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.trigger_report.exit_crit_edge

land.lhs.true.i.trigger_report.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %trigger_report.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %rqn.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 30
  %5 = ptrtoint ptr %rqn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rqn.i, align 4
  %cc.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 0, i32 2
  %7 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cc.i.i, align 4
  %sub.i.i = add i32 %8, -1
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sz_m1.i.i.i, align 4
  %and.i.i.i = and i32 %10, %sub.i.i
  %netdev.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 5
  %11 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev.i.i, align 8
  %mcq.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %mcq.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mcq.i.i, align 32
  %op_own.i.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 23
  %15 = ptrtoint ptr %op_own.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %op_own.i.i.i, align 1
  %17 = lshr i8 %16, 4
  %conv.i.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %syndrome.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %syndrome.i, align 1
  %conv3.i.i = zext i8 %19 to i32
  %vendor_err_synd.i.i = getelementptr inbounds %struct.mlx5_err_cqe, ptr %cqe, i32 0, i32 3
  %20 = ptrtoint ptr %vendor_err_synd.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vendor_err_synd.i.i, align 2
  %conv4.i.i = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.20, i32 noundef %14, i32 noundef %and.i.i.i, i32 noundef %6, i32 noundef %conv.i.i, i32 noundef %conv3.i.i, i32 noundef %conv4.i.i) #13
  tail call void @print_hex_dump(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.12, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %cqe, i32 noundef 64, i1 noundef zeroext false) #10
  %wq.i = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wq.i, align 16
  %recover_work.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 26
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %recover_work.i) #10
  br label %trigger_report.exit

trigger_report.exit:                              ; preds = %if.then.i, %land.lhs.true.i.trigger_report.exit_crit_edge, %entry.trigger_report.exit_crit_edge
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %24 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stats, align 4
  %wqe_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %wqe_err to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %wqe_err, align 8
  %inc = add i64 %27, 1
  store i64 %inc, ptr %wqe_err, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_tc_update_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_build_rx_skb(ptr noundef %cqe, i32 noundef %cqe_bcnt, ptr noundef %rq, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  %network_depth.i = alloca i32, align 4
  %proto.i = alloca i16, align 2
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  %cqe_bcnt.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %cqe_bcnt.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cqe_bcnt, ptr %cqe_bcnt.addr, align 4
  %srqn = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 14
  %1 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %srqn, align 4
  %shr = lshr i32 %2, 24
  %stats1 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %3 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stats1, align 4
  %netdev2 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 3
  %5 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev2, align 8
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %7 = ptrtoint ptr %mac_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 14, ptr %mac_len, align 4
  %8 = ptrtoint ptr %cqe to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cqe, align 4
  %10 = and i8 %9, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !67

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @mlx5e_ktls_handle_rx_skb(ptr noundef %rq, ptr noundef %skb, ptr noundef %cqe, ptr noundef nonnull %cqe_bcnt.addr) #10
  br label %mlx5e_tls_handle_rx_skb.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 17
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not.i = icmp eq i32 %13, 0
  br i1 %tobool4.not.i, label %if.end.i.mlx5e_tls_handle_rx_skb.exit_crit_edge, label %land.rhs.i

if.end.i.mlx5e_tls_handle_rx_skb.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_tls_handle_rx_skb.exit

land.rhs.i:                                       ; preds = %if.end.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %15)
  %cmp.i.i = icmp ult i32 %15, 22
  br i1 %cmp.i.i, label %land.rhs.i.mlx5e_tls_handle_rx_skb.exit_crit_edge, label %is_metadata_hdr_valid.exit.i, !prof !69

land.rhs.i.mlx5e_tls_handle_rx_skb.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_tls_handle_rx_skb.exit

is_metadata_hdr_valid.exit.i:                     ; preds = %land.rhs.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 12
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -29468, i16 %19)
  %cmp2.not.i.i = icmp eq i16 %19, -29468
  br i1 %cmp2.not.i.i, label %if.then12.i, label %is_metadata_hdr_valid.exit.i.mlx5e_tls_handle_rx_skb.exit_crit_edge, !prof !69

is_metadata_hdr_valid.exit.i.mlx5e_tls_handle_rx_skb.exit_crit_edge: ; preds = %is_metadata_hdr_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_tls_handle_rx_skb.exit

if.then12.i:                                      ; preds = %is_metadata_hdr_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @mlx5e_tls_handle_rx_skb_metadata(ptr noundef %rq, ptr noundef %skb, ptr noundef nonnull %cqe_bcnt.addr) #10
  br label %mlx5e_tls_handle_rx_skb.exit

mlx5e_tls_handle_rx_skb.exit:                     ; preds = %if.then12.i, %is_metadata_hdr_valid.exit.i.mlx5e_tls_handle_rx_skb.exit_crit_edge, %land.rhs.i.mlx5e_tls_handle_rx_skb.exit_crit_edge, %if.end.i.mlx5e_tls_handle_rx_skb.exit_crit_edge, %if.then.i
  %20 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 15
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i = icmp slt i32 %22, 0
  br i1 %tobool.i, label %if.then, label %mlx5e_tls_handle_rx_skb.exit.if.end_crit_edge, !prof !69

mlx5e_tls_handle_rx_skb.exit.if.end_crit_edge:    ; preds = %mlx5e_tls_handle_rx_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %mlx5e_tls_handle_rx_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @mlx5e_ipsec_offload_handle_rx_skb(ptr noundef %6, ptr noundef %skb, ptr noundef %cqe) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5e_tls_handle_rx_skb.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %2)
  %cmp = icmp ugt i32 %2, 33554431
  br i1 %cmp, label %if.then6, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then6:                                         ; preds = %if.end
  %23 = ptrtoint ptr %cqe_bcnt.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cqe_bcnt.addr, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %h_proto.i, align 1
  %29 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mac_len, align 4
  %conv.i74.i = zext i16 %30 to i32
  %31 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %28, label %if.then6.__vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %if.then6.if.then.i.i_crit_edge
    i16 -32512, label %if.then6.if.then.i.i_crit_edge141
  ]

if.then6.if.then.i.i_crit_edge141:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then6.if.then.i.i_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then6.__vlan_get_protocol.exit.i_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %__vlan_get_protocol.exit.i

if.then.i.i:                                      ; preds = %if.then6.if.then.i.i_crit_edge, %if.then6.if.then.i.i_crit_edge141
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %30)
  %cmp.i.i116 = icmp ult i16 %30, 4
  br i1 %cmp.i.i116, label %do.end.i.i, label %if.end25.i.i, !prof !69

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 598, i32 noundef 9, ptr noundef null) #10
  br label %__vlan_get_protocol.exit.thread.i

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add nsw i32 %conv.i74.i, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %32 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.i.i.backedge, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.i.i.backedge ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.i.i.backedge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #10
  %33 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !86
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %32, align 2, !annotation !86
  %35 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i.i.i.i, align 4
  %37 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i.i.i.i, align 8
  %39 = add i32 %vlan_depth.1.i.i, %38
  %sub.i4.i.i.i = sub i32 %36, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i.i.i)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i4.i.i.i, 4
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !69

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %41, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !69
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %42 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !69
  br i1 %42, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !69

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #10
  br label %__vlan_get_protocol.exit.thread.i

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #10
  %45 = zext i16 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %44, label %do.cond42.i.i.__vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.i.i.backedge_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.i.i.backedge_crit_edge142
  ]

do.cond42.i.i.do.body27.i.i.backedge_crit_edge142: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.i.i.backedge

do.cond42.i.i.do.body27.i.i.backedge_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.i.i.backedge

do.cond42.i.i.__vlan_get_protocol.exit.i_crit_edge: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__vlan_get_protocol.exit.i

do.body27.i.i.backedge:                           ; preds = %do.cond42.i.i.do.body27.i.i.backedge_crit_edge, %do.cond42.i.i.do.body27.i.i.backedge_crit_edge142
  br label %do.body27.i.i

__vlan_get_protocol.exit.thread.i:                ; preds = %cleanup.thread.i.i, %do.end.i.i
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  br label %if.else.i

__vlan_get_protocol.exit.i:                       ; preds = %do.cond42.i.i.__vlan_get_protocol.exit.i_crit_edge, %if.then6.__vlan_get_protocol.exit.i_crit_edge
  %network_depth.0.i = phi i32 [ %conv.i74.i, %if.then6.__vlan_get_protocol.exit.i_crit_edge ], [ %add.i.i, %do.cond42.i.i.__vlan_get_protocol.exit.i_crit_edge ]
  %retval.2.i.i = phi i16 [ %28, %if.then6.__vlan_get_protocol.exit.i_crit_edge ], [ %44, %do.cond42.i.i.__vlan_get_protocol.exit.i_crit_edge ]
  %sub.i = sub i32 %24, %network_depth.0.i
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 %network_depth.0.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %retval.2.i.i)
  %cmp.i = icmp eq i16 %retval.2.i.i, 2048
  br i1 %cmp.i, label %if.then.i117, label %__vlan_get_protocol.exit.i.if.else.i_crit_edge

__vlan_get_protocol.exit.i.if.else.i_crit_edge:   ; preds = %__vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i117:                                     ; preds = %__vlan_get_protocol.exit.i
  %conv.i = trunc i32 %sub.i to i16
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 20
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %50 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %gso_type.i, align 8
  %min_ttl.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3, i32 0, i32 1
  %53 = ptrtoint ptr %min_ttl.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %min_ttl.i, align 1
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 5
  %55 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %ttl.i, align 4
  %tot_len6.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 2
  %56 = ptrtoint ptr %tot_len6.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i, ptr %tot_len6.i, align 2
  %check7.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 7
  %57 = ptrtoint ptr %check7.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %check7.i, align 2
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i = load i8, ptr %add.ptr.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv8.i = zext i8 %bf.clear.i to i32
  %59 = call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i, i32 %conv8.i) #10, !srcloc !87
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %59, 0
  %60 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #14, !srcloc !79
  %neg.i.i.i = xor i32 %60, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %61 = ptrtoint ptr %check7.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i.i.i, ptr %check7.i, align 2
  %l4_l3_hdr_type.i.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 12
  %62 = ptrtoint ptr %l4_l3_hdr_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %l4_l3_hdr_type.i.i.i, align 1
  %64 = lshr i8 %63, 4
  %65 = and i8 %64, 7
  %check.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr4.i, i32 0, i32 6
  %66 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %check.i.i, align 4
  %67 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 4
  %psh.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr4.i, i32 0, i32 4
  %70 = ptrtoint ptr %psh.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load.i.i = load i16, ptr %psh.i.i, align 4
  %71 = lshr i8 %69, 3
  %72 = and i8 %71, 8
  %bf.shl.i.i = zext i8 %72 to i16
  %bf.clear.i.i = and i16 %bf.load.i.i, -9
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %psh.i.i, align 4
  %call.off.i.i = add nsw i8 %65, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.off.i.i)
  %switch.i.i = icmp ult i8 %call.off.i.i, 2
  br i1 %switch.i.i, label %if.then.i75.i, label %if.then.i117.mlx5e_lro_update_tcp_hdr.exit.i_crit_edge

if.then.i117.mlx5e_lro_update_tcp_hdr.exit.i_crit_edge: ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_lro_update_tcp_hdr.exit.i

if.then.i75.i:                                    ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set10.i.i = or i16 %bf.set.i.i, 16
  %73 = ptrtoint ptr %psh.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %bf.set10.i.i, ptr %psh.i.i, align 4
  %ack_seq_num.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3, i32 0, i32 3
  %74 = ptrtoint ptr %ack_seq_num.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ack_seq_num.i.i, align 4
  %ack_seq.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr4.i, i32 0, i32 3
  %76 = ptrtoint ptr %ack_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %ack_seq.i.i, align 4
  %tcp_win.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3, i32 0, i32 2
  %77 = ptrtoint ptr %tcp_win.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %tcp_win.i.i, align 2
  %window.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr4.i, i32 0, i32 5
  %79 = ptrtoint ptr %window.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %window.i.i, align 2
  br label %mlx5e_lro_update_tcp_hdr.exit.i

mlx5e_lro_update_tcp_hdr.exit.i:                  ; preds = %if.then.i75.i, %if.then.i117.mlx5e_lro_update_tcp_hdr.exit.i_crit_edge
  %80 = ptrtoint ptr %psh.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load11.i = load i16, ptr %psh.i.i, align 4
  %81 = lshr i16 %bf.load11.i, 10
  %82 = and i16 %81, 60
  %mul.i = zext i16 %82 to i32
  %check_sum.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 8
  %83 = ptrtoint ptr %check_sum.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %check_sum.i, align 4
  %conv.i.i = zext i16 %84 to i32
  %call14.i = call i32 @csum_partial(ptr noundef %add.ptr4.i, i32 noundef %mul.i, i32 noundef %conv.i.i) #10
  %conv15.i = and i32 %sub.i, 65535
  %add.i.i.i = add nsw i32 %conv15.i, -14
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 9
  %85 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %daddr.i, align 4
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 8
  %87 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %saddr.i, align 4
  %89 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %call14.i, i32 %86, i32 %88, i32 %add.i.i.i) #14, !srcloc !88
  %90 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %89) #14, !srcloc !79
  br label %mlx5e_lro_update_hdr.exit

if.else.i:                                        ; preds = %__vlan_get_protocol.exit.i.if.else.i_crit_edge, %__vlan_get_protocol.exit.thread.i
  %add.ptr104.i = phi ptr [ %47, %__vlan_get_protocol.exit.thread.i ], [ %add.ptr.i, %__vlan_get_protocol.exit.i.if.else.i_crit_edge ]
  %sub103.i = phi i32 [ %24, %__vlan_get_protocol.exit.thread.i ], [ %sub.i, %__vlan_get_protocol.exit.i.if.else.i_crit_edge ]
  %91 = trunc i32 %sub103.i to i16
  %conv21.i = add i16 %91, -40
  %add.ptr22.i = getelementptr i8, ptr %add.ptr104.i, i32 40
  %end.i78.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %92 = ptrtoint ptr %end.i78.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %end.i78.i, align 4
  %gso_type24.i = getelementptr inbounds %struct.skb_shared_info, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %gso_type24.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 16, ptr %gso_type24.i, align 8
  %min_ttl25.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3, i32 0, i32 1
  %95 = ptrtoint ptr %min_ttl25.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %min_ttl25.i, align 1
  %hop_limit.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr104.i, i32 0, i32 4
  %97 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %hop_limit.i, align 1
  %payload_len26.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr104.i, i32 0, i32 2
  %98 = ptrtoint ptr %payload_len26.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv21.i, ptr %payload_len26.i, align 4
  %l4_l3_hdr_type.i.i79.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 12
  %99 = ptrtoint ptr %l4_l3_hdr_type.i.i79.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %l4_l3_hdr_type.i.i79.i, align 1
  %101 = lshr i8 %100, 4
  %102 = and i8 %101, 7
  %check.i80.i = getelementptr i8, ptr %add.ptr104.i, i32 56
  %103 = ptrtoint ptr %check.i80.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %check.i80.i, align 4
  %104 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %104, align 4
  %psh.i81.i = getelementptr i8, ptr %add.ptr104.i, i32 52
  %107 = ptrtoint ptr %psh.i81.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %bf.load.i82.i = load i16, ptr %psh.i81.i, align 4
  %108 = lshr i8 %106, 3
  %109 = and i8 %108, 8
  %bf.shl.i83.i = zext i8 %109 to i16
  %bf.clear.i84.i = and i16 %bf.load.i82.i, -9
  %bf.set.i85.i = or i16 %bf.clear.i84.i, %bf.shl.i83.i
  store i16 %bf.set.i85.i, ptr %psh.i81.i, align 4
  %call.off.i86.i = add nsw i8 %102, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.off.i86.i)
  %switch.i87.i = icmp ult i8 %call.off.i86.i, 2
  br i1 %switch.i87.i, label %if.then.i93.i, label %if.else.i.mlx5e_lro_update_tcp_hdr.exit94.i_crit_edge

if.else.i.mlx5e_lro_update_tcp_hdr.exit94.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_lro_update_tcp_hdr.exit94.i

if.then.i93.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set10.i88.i = or i16 %bf.set.i85.i, 16
  %110 = ptrtoint ptr %psh.i81.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %bf.set10.i88.i, ptr %psh.i81.i, align 4
  %ack_seq_num.i89.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3, i32 0, i32 3
  %111 = ptrtoint ptr %ack_seq_num.i89.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ack_seq_num.i89.i, align 4
  %ack_seq.i90.i = getelementptr i8, ptr %add.ptr104.i, i32 48
  %113 = ptrtoint ptr %ack_seq.i90.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %ack_seq.i90.i, align 4
  %tcp_win.i91.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3, i32 0, i32 2
  %114 = ptrtoint ptr %tcp_win.i91.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %tcp_win.i91.i, align 2
  %window.i92.i = getelementptr i8, ptr %add.ptr104.i, i32 54
  %116 = ptrtoint ptr %window.i92.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %window.i92.i, align 2
  br label %mlx5e_lro_update_tcp_hdr.exit94.i

mlx5e_lro_update_tcp_hdr.exit94.i:                ; preds = %if.then.i93.i, %if.else.i.mlx5e_lro_update_tcp_hdr.exit94.i_crit_edge
  %117 = ptrtoint ptr %psh.i81.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %bf.load28.i = load i16, ptr %psh.i81.i, align 4
  %118 = lshr i16 %bf.load28.i, 10
  %119 = and i16 %118, 60
  %mul31.i = zext i16 %119 to i32
  %check_sum32.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 8
  %120 = ptrtoint ptr %check_sum32.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %check_sum32.i, align 4
  %conv.i73.i = zext i16 %121 to i32
  %call34.i = call i32 @csum_partial(ptr noundef %add.ptr22.i, i32 noundef %mul31.i, i32 noundef %conv.i73.i) #10
  %saddr35.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr104.i, i32 0, i32 5
  %daddr36.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr104.i, i32 0, i32 6
  %conv37.i = zext i16 %conv21.i to i32
  %call.i.i = call i32 @__csum_ipv6_magic(ptr noundef %saddr35.i, ptr noundef %daddr36.i, i32 noundef %conv37.i, i32 noundef 6, i32 noundef %call34.i) #10
  %122 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #14, !srcloc !79
  br label %mlx5e_lro_update_hdr.exit

mlx5e_lro_update_hdr.exit:                        ; preds = %mlx5e_lro_update_tcp_hdr.exit94.i, %mlx5e_lro_update_tcp_hdr.exit.i
  %.sink.i = phi i32 [ %122, %mlx5e_lro_update_tcp_hdr.exit94.i ], [ %90, %mlx5e_lro_update_tcp_hdr.exit.i ]
  %check.i80.sink.i = phi ptr [ %check.i80.i, %mlx5e_lro_update_tcp_hdr.exit94.i ], [ %check.i.i, %mlx5e_lro_update_tcp_hdr.exit.i ]
  %neg.i.i95.i = xor i32 %.sink.i, -1
  %shr.i.i96.i = lshr i32 %neg.i.i95.i, 16
  %conv.i.i97.i = trunc i32 %shr.i.i96.i to i16
  %123 = ptrtoint ptr %check.i80.sink.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv.i.i97.i, ptr %check.i80.sink.i, align 4
  %124 = ptrtoint ptr %cqe_bcnt.addr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cqe_bcnt.addr, align 4
  %add = add nsw i32 %shr, -1
  %sub = add i32 %add, %125
  %div = udiv i32 %sub, %shr
  %conv9 = trunc i32 %div to i16
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %126 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %gso_size to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv9, ptr %gso_size, align 4
  %129 = zext i32 %add to i64
  %130 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %4, align 8
  %add14 = add i64 %131, %129
  store i64 %add14, ptr %4, align 8
  %lro_packets = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %4, i32 0, i32 8
  %132 = ptrtoint ptr %lro_packets to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %lro_packets, align 8
  %inc = add i64 %133, 1
  store i64 %inc, ptr %lro_packets, align 8
  %conv15 = zext i32 %125 to i64
  %lro_bytes = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %4, i32 0, i32 9
  %134 = ptrtoint ptr %lro_bytes to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %lro_bytes, align 8
  %add16 = add i64 %135, %conv15
  store i64 %add16, ptr %lro_bytes, align 8
  br label %if.end17

if.end17:                                         ; preds = %mlx5e_lro_update_hdr.exit, %if.end.if.end17_crit_edge
  %tstamp = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 9
  %136 = ptrtoint ptr %tstamp to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %tstamp, align 8
  %rx_filter.i = getelementptr inbounds %struct.hwtstamp_config, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %rx_filter.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rx_filter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %139)
  %cmp.i119 = icmp eq i32 %139, 1
  br i1 %cmp.i119, label %if.then25, label %if.end17.if.end29_crit_edge, !prof !69

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %ptp_cyc2time = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 36
  %140 = ptrtoint ptr %ptp_cyc2time to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ptp_cyc2time, align 128
  %clock = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 10
  %142 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %clock, align 4
  %timestamp_h.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 18
  %144 = ptrtoint ptr %timestamp_h.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %timestamp_h.i, align 4
  %timestamp_l.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 19
  %146 = ptrtoint ptr %timestamp_l.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %timestamp_l.i, align 4
  %conv.i120 = zext i32 %147 to i64
  %conv1.i = zext i32 %145 to i64
  %shl.i = shl nuw i64 %conv1.i, 32
  %or.i = or i64 %shl.i, %conv.i120
  %call.i = call i64 %141(ptr noundef %143, i64 noundef %or.i) #10
  %end.i.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %148 = ptrtoint ptr %end.i.i121 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %end.i.i121, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %149, i32 0, i32 7
  %150 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %call.i, ptr %hwtstamps.i, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end17.if.end29_crit_edge
  %ix = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 18
  %151 = ptrtoint ptr %ix to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ix, align 4
  %conv30 = trunc i32 %152 to i16
  %add.i = add i16 %conv30, 1
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %153 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %add.i, ptr %queue_mapping.i, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %154 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %features, align 16
  %and = and i64 %155, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool31.not = icmp eq i64 %and, 0
  br i1 %tobool31.not, label %if.end29.if.end39_crit_edge, label %if.then38, !prof !69

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %rss_hash_type.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 5
  %156 = ptrtoint ptr %rss_hash_type.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %rss_hash_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %157)
  %tobool.not.not.i = icmp ult i8 %157, 64
  %rss_hash_result.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 4
  %158 = ptrtoint ptr %rss_hash_result.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rss_hash_result.i, align 4
  %l4_hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %160 = ptrtoint ptr %l4_hash.i.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %bf.load.i.i.i = load i16, ptr %l4_hash.i.i.i, align 8
  %bf.shl.i.i.i = select i1 %tobool.not.not.i, i16 0, i16 128
  %bf.clear.i.i.i = and i16 %bf.load.i.i.i, -193
  %bf.set.i.i.i = or i16 %bf.clear.i.i.i, %bf.shl.i.i.i
  store i16 %bf.set.i.i.i, ptr %l4_hash.i.i.i, align 8
  %hash10.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %161 = ptrtoint ptr %hash10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %159, ptr %hash10.i.i.i, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end29.if.end39_crit_edge
  %l4_l3_hdr_type.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 12
  %162 = ptrtoint ptr %l4_l3_hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %l4_l3_hdr_type.i, align 1
  %164 = and i8 %163, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.i122.not = icmp eq i8 %164, 0
  br i1 %tobool.i122.not, label %if.end39.if.end43_crit_edge, label %if.then41

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_info = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 13
  %165 = ptrtoint ptr %vlan_info to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %vlan_info, align 2
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %167 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %168 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %166, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %169 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %bf.load.i123 = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i123, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  %removed_vlan_packets = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %4, i32 0, i32 17
  %170 = ptrtoint ptr %removed_vlan_packets to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %removed_vlan_packets, align 8
  %inc42 = add i64 %171, 1
  store i64 %inc42, ptr %removed_vlan_packets, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39.if.end43_crit_edge
  %sop_drop_qpn = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 20
  %172 = ptrtoint ptr %sop_drop_qpn to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %sop_drop_qpn, align 4
  %and44 = and i32 %173, 65535
  %174 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %and44, ptr %174, align 4
  %176 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %stats1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %network_depth.i) #10
  %178 = ptrtoint ptr %network_depth.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %network_depth.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto.i) #10
  %179 = ptrtoint ptr %proto.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 -1, ptr %proto.i, align 2, !annotation !86
  %180 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %features, align 16
  %and.i = and i64 %181, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i124 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i124, label %if.end43.csum_none.i_crit_edge, label %if.end.i125, !prof !69

if.end43.csum_none.i_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %csum_none.i

if.end.i125:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %2)
  %tobool45 = icmp ugt i32 %2, 16777215
  br i1 %tobool45, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %182 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %bf.load.i126 = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i127 = and i16 %bf.load.i126, -1537
  %bf.set.i128 = or i16 %bf.clear.i127, 512
  store i16 %bf.set.i128, ptr %ip_summed.i, align 8
  %csum_unnecessary.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %177, i32 0, i32 5
  %183 = ptrtoint ptr %csum_unnecessary.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %csum_unnecessary.i, align 8
  %inc.i = add i64 %184, 1
  store i64 %inc.i, ptr %csum_unnecessary.i, align 8
  br label %mlx5e_handle_csum.exit

if.end7.i:                                        ; preds = %if.end.i125
  %state.i129 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 17
  %185 = ptrtoint ptr %state.i129 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %state.i129, align 4
  %187 = and i32 %186, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool8.not.i = icmp eq i32 %187, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i, label %if.end7.i.csum_unnecessary48.i_crit_edge

if.end7.i.csum_unnecessary48.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %csum_unnecessary48.i

lor.lhs.false.i:                                  ; preds = %if.end7.i
  %188 = ptrtoint ptr %cqe to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %cqe, align 4
  %190 = and i8 %189, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool10.not.i = icmp eq i8 %190, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %lor.lhs.false.i.csum_unnecessary48.i_crit_edge

lor.lhs.false.i.csum_unnecessary48.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %csum_unnecessary48.i

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %191 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %192)
  %cmp.i130 = icmp ult i32 %192, 65
  br i1 %cmp.i130, label %if.end12.i.csum_unnecessary48.i_crit_edge, label %if.end15.i

if.end12.i.csum_unnecessary48.i_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %csum_unnecessary48.i

if.end15.i:                                       ; preds = %if.end12.i
  %call16.i = call fastcc zeroext i1 @is_last_ethertype_ip(ptr noundef %skb, ptr noundef nonnull %network_depth.i, ptr noundef nonnull %proto.i) #10
  br i1 %call16.i, label %if.then23.i, label %if.end15.i.csum_unnecessary48.i_crit_edge, !prof !67

if.end15.i.csum_unnecessary48.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %csum_unnecessary48.i

if.then23.i:                                      ; preds = %if.end15.i
  %193 = ptrtoint ptr %network_depth.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %network_depth.i, align 4
  %195 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %proto.i, align 2
  %data.i.i131 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %197 = ptrtoint ptr %data.i.i131 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %data.i.i131, align 4
  %add.ptr.i.i132 = getelementptr i8, ptr %198, i32 %194
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %196)
  %cmp.i.i133 = icmp eq i16 %196, 2048
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i132, i32 0, i32 6
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i132, i32 0, i32 3
  %cond.in.in.i.i = select i1 %cmp.i.i133, ptr %protocol.i.i, ptr %nexthdr.i.i
  %199 = ptrtoint ptr %cond.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %cond.in6.i.i = load i8, ptr %cond.in.in.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %cond.in6.i.i)
  %cmp26.i = icmp eq i8 %cond.in6.i.i, -124
  br i1 %cmp26.i, label %if.then23.i.csum_unnecessary48.i_crit_edge, label %if.end35.i, !prof !69

if.then23.i.csum_unnecessary48.i_crit_edge:       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %csum_unnecessary48.i

if.end35.i:                                       ; preds = %if.then23.i
  %csum_complete.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %177, i32 0, i32 2
  %200 = ptrtoint ptr %csum_complete.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %csum_complete.i, align 8
  %inc36.i = add i64 %201, 1
  store i64 %inc36.i, ptr %csum_complete.i, align 8
  %ip_summed37.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %202 = ptrtoint ptr %ip_summed37.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %bf.load38.i = load i16, ptr %ip_summed37.i, align 8
  %bf.clear39.i = and i16 %bf.load38.i, -1537
  %bf.set40.i = or i16 %bf.clear39.i, 1024
  store i16 %bf.set40.i, ptr %ip_summed37.i, align 8
  %check_sum.i134 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 8
  %203 = ptrtoint ptr %check_sum.i134 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %check_sum.i134, align 4
  %conv.i.i135 = zext i16 %204 to i32
  %205 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %conv.i.i135, ptr %205, align 8
  %207 = ptrtoint ptr %state.i129 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %state.i129, align 4
  %209 = and i32 %208, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool44.not.i = icmp eq i32 %209, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.end35.i.mlx5e_handle_csum.exit_crit_edge

if.end35.i.mlx5e_handle_csum.exit_crit_edge:      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_handle_csum.exit

if.end46.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %194)
  %cmp.i111.i = icmp sgt i32 %194, 14
  br i1 %cmp.i111.i, label %if.then.i.i138, label %if.end46.i.if.end.i.i_crit_edge

if.end46.i.if.end.i.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i138:                                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  %210 = ptrtoint ptr %data.i.i131 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %data.i.i131, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %211, i32 14
  %sub.i.i136 = add nsw i32 %194, -14
  %call.i.i137 = call i32 @csum_partial(ptr noundef %add.ptr.i113.i, i32 noundef %sub.i.i136, i32 noundef %conv.i.i135) #10
  %212 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %call.i.i137, ptr %205, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i138, %if.end46.i.if.end.i.i_crit_edge
  %213 = zext i16 %196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %196, label %if.end.i.i.mlx5e_handle_csum.exit_crit_edge [
    i16 2048, label %sw.bb.i.i
    i16 -31011, label %sw.bb4.i.i
  ]

if.end.i.i.mlx5e_handle_csum.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_handle_csum.exit

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %214 = ptrtoint ptr %data.i.i131 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %data.i.i131, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %215, i32 %194
  %tot_len.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr2.i.i, i32 0, i32 2
  %216 = ptrtoint ptr %tot_len.i.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %tot_len.i.i, align 2
  %conv3.i.i = zext i16 %217 to i32
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %218 = ptrtoint ptr %data.i.i131 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %data.i.i131, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %219, i32 %194
  %add7.i.i = add i32 %194, 40
  %payload_len.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr6.i.i, i32 0, i32 2
  %220 = ptrtoint ptr %payload_len.i.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %payload_len.i.i, align 4
  %conv8.i.i = zext i16 %221 to i32
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb4.i.i, %sw.bb.i.i
  %conv8.sink.i.i = phi i32 [ %conv8.i.i, %sw.bb4.i.i ], [ %194, %sw.bb.i.i ]
  %add7.sink.i.i = phi i32 [ %add7.i.i, %sw.bb4.i.i ], [ %conv3.i.i, %sw.bb.i.i ]
  %add9.i.i = add i32 %add7.sink.i.i, %conv8.sink.i.i
  %222 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i.i, i32 %223)
  %cmp10.not.i.i = icmp ult i32 %add9.i.i, %223
  br i1 %cmp10.not.i.i, label %if.end14.i.i, label %sw.epilog.i.i.mlx5e_handle_csum.exit_crit_edge, !prof !69

sw.epilog.i.i.mlx5e_handle_csum.exit_crit_edge:   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_handle_csum.exit

if.end14.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @tail_padding_csum(ptr noundef %skb, i32 noundef %add9.i.i, ptr noundef %177) #10
  br label %mlx5e_handle_csum.exit

csum_unnecessary48.i:                             ; preds = %if.then23.i.csum_unnecessary48.i_crit_edge, %if.end15.i.csum_unnecessary48.i_crit_edge, %if.end12.i.csum_unnecessary48.i_crit_edge, %lor.lhs.false.i.csum_unnecessary48.i_crit_edge, %if.end7.i.csum_unnecessary48.i_crit_edge
  %hds_ip_ext.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 11
  %224 = ptrtoint ptr %hds_ip_ext.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %hds_ip_ext.i, align 4
  %226 = and i8 %225, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %226)
  %227 = icmp eq i8 %226, 6
  br i1 %227, label %if.then62.i, label %csum_unnecessary48.i.csum_none.i_crit_edge, !prof !67

csum_unnecessary48.i.csum_none.i_crit_edge:       ; preds = %csum_unnecessary48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %csum_none.i

if.then62.i:                                      ; preds = %csum_unnecessary48.i
  %ip_summed63.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %228 = ptrtoint ptr %ip_summed63.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %bf.load64.i = load i16, ptr %ip_summed63.i, align 8
  %bf.clear65.i = and i16 %bf.load64.i, -1537
  %bf.set66.i = or i16 %bf.clear65.i, 512
  store i16 %bf.set66.i, ptr %ip_summed63.i, align 8
  %229 = ptrtoint ptr %cqe to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %cqe, align 4
  %231 = and i8 %230, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool.i.not.i = icmp eq i8 %231, 0
  br i1 %tobool.i.not.i, label %if.end76.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  %csum_level.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %232 = ptrtoint ptr %csum_level.i to i32
  call void @__asan_loadN_noabort(i32 %232, i32 4)
  %bf.load69.i = load i32, ptr %csum_level.i, align 2
  %bf.clear70.i = and i32 %bf.load69.i, -805306369
  %bf.set71.i = or i32 %bf.clear70.i, 268435456
  store i32 %bf.set71.i, ptr %csum_level.i, align 2
  %bf.set74.i = or i16 %bf.clear65.i, 516
  %233 = ptrtoint ptr %ip_summed63.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %bf.set74.i, ptr %ip_summed63.i, align 8
  %csum_unnecessary_inner.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %177, i32 0, i32 6
  %234 = ptrtoint ptr %csum_unnecessary_inner.i to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %csum_unnecessary_inner.i, align 8
  %inc75.i = add i64 %235, 1
  store i64 %inc75.i, ptr %csum_unnecessary_inner.i, align 8
  br label %mlx5e_handle_csum.exit

if.end76.i:                                       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  %csum_unnecessary77.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %177, i32 0, i32 5
  %236 = ptrtoint ptr %csum_unnecessary77.i to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %csum_unnecessary77.i, align 8
  %inc78.i = add i64 %237, 1
  store i64 %inc78.i, ptr %csum_unnecessary77.i, align 8
  br label %mlx5e_handle_csum.exit

csum_none.i:                                      ; preds = %csum_unnecessary48.i.csum_none.i_crit_edge, %if.end43.csum_none.i_crit_edge
  %ip_summed80.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %238 = ptrtoint ptr %ip_summed80.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %bf.load81.i = load i16, ptr %ip_summed80.i, align 8
  %bf.clear82.i = and i16 %bf.load81.i, -1537
  store i16 %bf.clear82.i, ptr %ip_summed80.i, align 8
  %csum_none84.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %177, i32 0, i32 7
  %239 = ptrtoint ptr %csum_none84.i to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %csum_none84.i, align 8
  %inc85.i = add i64 %240, 1
  store i64 %inc85.i, ptr %csum_none84.i, align 8
  br label %mlx5e_handle_csum.exit

mlx5e_handle_csum.exit:                           ; preds = %csum_none.i, %if.end76.i, %if.then68.i, %if.end14.i.i, %sw.epilog.i.i.mlx5e_handle_csum.exit_crit_edge, %if.end.i.i.mlx5e_handle_csum.exit_crit_edge, %if.end35.i.mlx5e_handle_csum.exit_crit_edge, %if.then6.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %proto.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %network_depth.i) #10
  %ml_path = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 6
  %241 = ptrtoint ptr %ml_path to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %ml_path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %242)
  %tobool52.not = icmp sgt i8 %242, -1
  br i1 %tobool52.not, label %mlx5e_handle_csum.exit.if.end60_crit_edge, label %if.then59, !prof !67

mlx5e_handle_csum.exit.if.end60_crit_edge:        ; preds = %mlx5e_handle_csum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then59:                                        ; preds = %mlx5e_handle_csum.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mlx5e_enable_ecn(ptr noundef %rq, ptr noundef %skb)
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %mlx5e_handle_csum.exit.if.end60_crit_edge
  %call61 = call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %6) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %243 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %call61, ptr %protocol, align 8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %244 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %bf.load.i139 = load i16, ptr %pkt_type.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i139, 13
  %245 = add nsw i16 %bf.lshr.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %245)
  %246 = icmp ult i16 %245, 2
  br i1 %246, label %if.then69, label %if.end60.if.end71_crit_edge, !prof !69

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then69:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %mcast_packets = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %4, i32 0, i32 15
  %247 = ptrtoint ptr %mcast_packets to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %mcast_packets, align 8
  %inc70 = add i64 %248, 1
  store i64 %inc70, ptr %mcast_packets, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end60.if.end71_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ipsec_offload_handle_rx_skb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_enable_ecn(ptr nocapture noundef readonly %rq, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  %network_depth = alloca i32, align 4
  %proto = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %network_depth) #10
  %0 = ptrtoint ptr %network_depth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %network_depth, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto) #10
  %1 = ptrtoint ptr %proto to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %proto, align 2, !annotation !86
  %call = call fastcc zeroext i1 @is_last_ethertype_ip(ptr noundef %skb, ptr noundef nonnull %network_depth, ptr noundef nonnull %proto)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge, !prof !67

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %network_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %network_depth, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %proto, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %7)
  %cmp = icmp eq i16 %7, 2048
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 1
  %8 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tos.i, align 1
  %10 = add i8 %9, 1
  %11 = and i8 %10, 3
  %12 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i = icmp eq i8 %11, 0
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i = zext i8 %11 to i16
  %add5.i = add nuw nsw i16 %conv4.i, -5
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 7
  %13 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %check.i, align 2
  %add.i.i = add i16 %14, %add5.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %add5.i)
  %cmp.i.i = icmp ult i16 %add.i.i, %add5.i
  %conv6.i.i = zext i1 %cmp.i.i to i16
  %add7.i.i = add i16 %add.i.i, %conv6.i.i
  %15 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %add7.i.i, ptr %check.i, align 2
  %16 = or i8 %9, 3
  %17 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tos.i, align 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr, align 2
  %20 = and i16 %19, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i14.not.i = icmp eq i16 %20, 0
  br i1 %cmp.i14.not.i, label %cond.false.cond.end_crit_edge, label %if.end.i18

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i18:                                       ; preds = %cond.false
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr, align 4
  %or.i = or i32 %22, 3145728
  store i32 %or.i, ptr %add.ptr, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %23 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %24 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %24)
  %cmp.i = icmp eq i16 %24, 1024
  br i1 %cmp.i, label %if.then3.i, label %if.end.i18.cond.end_crit_edge

if.end.i18.cond.end_crit_edge:                    ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.then3.i:                                       ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #12
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %neg.i.i = xor i32 %22, -1
  %add.i.i.i = add i32 %27, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %neg.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %neg.i.i
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %or.i
  %add.i.i19 = add i32 %add1.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i19, i32 %or.i)
  %cmp.i.i20 = icmp ult i32 %add.i.i19, %or.i
  %conv.i.i = zext i1 %cmp.i.i20 to i32
  %add1.i.i = add i32 %add.i.i19, %conv.i.i
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add1.i.i, ptr %25, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then3.i, %if.end.i18.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %if.end.i, %if.then.i
  %cond = phi i1 [ true, %if.end.i ], [ %tobool2.not.i, %if.then.i ], [ false, %cond.false.cond.end_crit_edge ], [ true, %if.then3.i ], [ true, %if.end.i18.cond.end_crit_edge ]
  %29 = zext i1 %cond to i64
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %30 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stats, align 4
  %ecn_mark = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %ecn_mark to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ecn_mark, align 8
  %add = add i64 %33, %29
  store i64 %add, ptr %ecn_mark, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %proto) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %network_depth) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ktls_handle_rx_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tls_handle_rx_skb_metadata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_last_ethertype_ip(ptr noundef %skb, ptr noundef %network_depth, ptr nocapture noundef writeonly %proto) unnamed_addr #2 align 64 {
entry:
  %vhdr.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %h_proto, align 1
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %proto, align 2
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %5 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mac_len.i, align 4
  %conv.i = zext i16 %6 to i32
  %7 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %3, label %entry.if.end45.i_crit_edge [
    i16 -30552, label %entry.if.then.i_crit_edge
    i16 -32512, label %entry.if.then.i_crit_edge34
  ]

entry.if.then.i_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.end45.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge34
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %if.then.i.if.end26.i_crit_edge, label %if.then1.i

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %cmp.i = icmp ult i16 %6, 4
  br i1 %cmp.i, label %do.end.i, label %if.end25.i, !prof !69

do.end.i:                                         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 598, i32 noundef 9, ptr noundef null) #10
  br label %__vlan_get_protocol.exit.thread

if.end25.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add nsw i32 %conv.i, -4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end25.i, %if.then.i.if.end26.i_crit_edge
  %vlan_depth.0.i = phi i32 [ %sub.i, %if.end25.i ], [ 14, %if.then.i.if.end26.i_crit_edge ]
  %8 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i, i32 0, i32 1
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.i.backedge, %if.end26.i
  %vlan_depth.1.i = phi i32 [ %vlan_depth.0.i, %if.end26.i ], [ %add.i, %do.body27.i.backedge ]
  %parse_depth.0.i = phi i32 [ 8, %if.end26.i ], [ %dec.i, %do.body27.i.backedge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i) #10
  %9 = ptrtoint ptr %vhdr.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %vhdr.i, align 2, !annotation !86
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %8, align 2, !annotation !86
  %11 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i.i, align 4
  %13 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i.i, align 8
  %15 = add i32 %vlan_depth.1.i, %14
  %sub.i4.i.i = sub i32 %12, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 4
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !69

if.then.i.i.i:                                    ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %vlan_depth.1.i
  br label %skb_header_pointer.exit.i

if.end.i.i.i:                                     ; preds = %do.body27.i
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.cleanup.thread.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.cleanup.thread.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i, ptr noundef nonnull %vhdr.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  %spec.select.i.i.i = select i1 %cmp3.i.i.i, ptr null, ptr %vhdr.i, !prof !69
  br label %skb_header_pointer.exit.i

skb_header_pointer.exit.i:                        ; preds = %lor.lhs.false.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ %spec.select.i.i.i, %lor.lhs.false.i.i.i ]
  %tobool29.not.i = icmp eq ptr %retval.0.i.i.i, null
  %dec.i = add nsw i32 %parse_depth.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool30.not.i = icmp eq i32 %dec.i, 0
  %18 = select i1 %tobool29.not.i, i1 true, i1 %tobool30.not.i, !prof !69
  br i1 %18, label %skb_header_pointer.exit.i.cleanup.thread.i_crit_edge, label %do.cond42.i, !prof !69

skb_header_pointer.exit.i.cleanup.thread.i_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %skb_header_pointer.exit.i.cleanup.thread.i_crit_edge, %if.end.i.i.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i) #10
  br label %__vlan_get_protocol.exit.thread

do.cond42.i:                                      ; preds = %skb_header_pointer.exit.i
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  %add.i = add nsw i32 %vlan_depth.1.i, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i) #10
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %20, label %do.cond42.i.if.end45.i_crit_edge [
    i16 -30552, label %do.cond42.i.do.body27.i.backedge_crit_edge
    i16 -32512, label %do.cond42.i.do.body27.i.backedge_crit_edge35
  ]

do.cond42.i.do.body27.i.backedge_crit_edge35:     ; preds = %do.cond42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.i.backedge

do.cond42.i.do.body27.i.backedge_crit_edge:       ; preds = %do.cond42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.i.backedge

do.cond42.i.if.end45.i_crit_edge:                 ; preds = %do.cond42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

do.body27.i.backedge:                             ; preds = %do.cond42.i.do.body27.i.backedge_crit_edge, %do.cond42.i.do.body27.i.backedge_crit_edge35
  br label %do.body27.i

if.end45.i:                                       ; preds = %do.cond42.i.if.end45.i_crit_edge, %entry.if.end45.i_crit_edge
  %type.addr.2.i = phi i16 [ %3, %entry.if.end45.i_crit_edge ], [ %20, %do.cond42.i.if.end45.i_crit_edge ]
  %vlan_depth.3.i = phi i32 [ %conv.i, %entry.if.end45.i_crit_edge ], [ %add.i, %do.cond42.i.if.end45.i_crit_edge ]
  %tobool46.not.i = icmp eq ptr %network_depth, null
  br i1 %tobool46.not.i, label %if.end45.i.__vlan_get_protocol.exit_crit_edge, label %if.then47.i

if.end45.i.__vlan_get_protocol.exit_crit_edge:    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__vlan_get_protocol.exit

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %network_depth to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %vlan_depth.3.i, ptr %network_depth, align 4
  br label %__vlan_get_protocol.exit

__vlan_get_protocol.exit.thread:                  ; preds = %cleanup.thread.i, %do.end.i
  %23 = ptrtoint ptr %proto to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %proto, align 2
  br label %return

__vlan_get_protocol.exit:                         ; preds = %if.then47.i, %if.end45.i.__vlan_get_protocol.exit_crit_edge
  %24 = ptrtoint ptr %proto to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %type.addr.2.i, ptr %proto, align 2
  %25 = zext i16 %type.addr.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %type.addr.2.i, label %__vlan_get_protocol.exit.return_crit_edge [
    i16 2048, label %if.then
    i16 -31011, label %if.then6
  ]

__vlan_get_protocol.exit.return_crit_edge:        ; preds = %__vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %__vlan_get_protocol.exit
  %26 = ptrtoint ptr %network_depth to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %network_depth, align 4
  %add = add i32 %27, 20
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %30 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %29, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.return_crit_edge, !prof !69

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add)
  %cmp3.i = icmp ult i32 %29, %add
  br i1 %cmp3.i, label %if.end.i.return_crit_edge, label %if.end11.i, !prof !69

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i19 = sub i32 %add, %sub.i.i
  %call13.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i19) #10
  %cmp14.i = icmp ne ptr %call13.i, null
  br label %return

if.then6:                                         ; preds = %__vlan_get_protocol.exit
  %32 = ptrtoint ptr %network_depth to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %network_depth, align 4
  %add7 = add i32 %33, 40
  %len.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %34 = ptrtoint ptr %len.i.i20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i20, align 4
  %data_len.i.i21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %36 = ptrtoint ptr %data_len.i.i21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_len.i.i21, align 8
  %sub.i.i22 = sub i32 %35, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %add7, i32 %sub.i.i22)
  %cmp.not.i23 = icmp ugt i32 %add7, %sub.i.i22
  br i1 %cmp.not.i23, label %if.end.i25, label %if.then6.return_crit_edge, !prof !69

if.then6.return_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i25:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add7)
  %cmp3.i24 = icmp ult i32 %35, %add7
  br i1 %cmp3.i24, label %if.end.i25.return_crit_edge, label %if.end11.i29, !prof !69

if.end.i25.return_crit_edge:                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end11.i29:                                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i26 = sub i32 %add7, %sub.i.i22
  %call13.i27 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i26) #10
  %cmp14.i28 = icmp ne ptr %call13.i27, null
  br label %return

return:                                           ; preds = %if.end11.i29, %if.end.i25.return_crit_edge, %if.then6.return_crit_edge, %if.end11.i, %if.end.i.return_crit_edge, %if.then.return_crit_edge, %__vlan_get_protocol.exit.return_crit_edge, %__vlan_get_protocol.exit.thread
  %retval.0 = phi i1 [ false, %__vlan_get_protocol.exit.return_crit_edge ], [ false, %__vlan_get_protocol.exit.thread ], [ %cmp14.i, %if.end11.i ], [ true, %if.then.return_crit_edge ], [ false, %if.end.i.return_crit_edge ], [ %cmp14.i28, %if.end11.i29 ], [ true, %if.then6.return_crit_edge ], [ false, %if.end.i25.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tail_padding_csum(ptr noundef %skb, i32 noundef %offset, ptr nocapture noundef %stats) unnamed_addr #0 align 64 {
entry:
  %tail_padding = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tail_padding) #10
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %tail_padding to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tail_padding, align 8
  %1 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len1, align 4
  %sub = sub i32 %2, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp = icmp sgt i32 %sub, 8
  br i1 %cmp, label %if.then, label %if.end, !prof !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tail_padding_csum_slow(ptr noundef %skb, i32 noundef %offset, i32 noundef %sub, ptr noundef %stats)
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %5 = add i32 %4, %offset
  %sub.i4.i = sub i32 %2, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i, i32 %sub)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, %sub
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !69

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then12_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then12_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef nonnull %tail_padding, i32 noundef %sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then12_crit_edge, label %lor.lhs.false.i.i.if.end13_crit_edge

lor.lhs.false.i.i.if.end13_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

lor.lhs.false.i.i.if.then12_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %offset
  %tobool3.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool3.not, label %skb_header_pointer.exit.if.then12_crit_edge, label %skb_header_pointer.exit.if.end13_crit_edge, !prof !69

skb_header_pointer.exit.if.end13_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

skb_header_pointer.exit.if.then12_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then12:                                        ; preds = %skb_header_pointer.exit.if.then12_crit_edge, %lor.lhs.false.i.i.if.then12_crit_edge, %if.end.i.i.if.then12_crit_edge
  call fastcc void @tail_padding_csum_slow(ptr noundef %skb, i32 noundef %offset, i32 noundef %sub, ptr noundef %stats)
  br label %cleanup

if.end13:                                         ; preds = %skb_header_pointer.exit.if.end13_crit_edge, %lor.lhs.false.i.i.if.end13_crit_edge
  %retval.0.i.i3440 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end13_crit_edge ], [ %tail_padding, %lor.lhs.false.i.i.if.end13_crit_edge ]
  %csum_complete_tail = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %stats, i32 0, i32 3
  %8 = ptrtoint ptr %csum_complete_tail to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %csum_complete_tail, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %csum_complete_tail, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %call14 = call i32 @csum_partial(ptr noundef nonnull %retval.0.i.i3440, i32 noundef %sub, i32 noundef 0) #10
  %and.i.i = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i.i = call i32 @llvm.fshl.i32(i32 %call14, i32 %call14, i32 24) #10
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %call14, i32 %or.i.i.i
  %add.i.i = add i32 %retval.0.i.i, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %retval.0.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %retval.0.i.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add1.i.i, ptr %10, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tail_padding) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tail_padding_csum_slow(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, ptr nocapture noundef %stats) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %csum_complete_tail_slow = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %stats, i32 0, i32 4
  %0 = ptrtoint ptr %csum_complete_tail_slow to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %csum_complete_tail_slow, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %csum_complete_tail_slow, align 8
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %call = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, i32 noundef 0) #10
  %and.i.i = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %call, i32 %call, i32 24) #10
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %call, i32 %or.i.i.i
  %add.i.i = add i32 %retval.0.i.i, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %retval.0.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %retval.0.i.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add1.i.i, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_vlan_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_tc_receive(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_free_rx_mpwqe(ptr nocapture noundef %rq, ptr noundef %wi, i1 noundef zeroext %recycle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp_xmit_bitmap = getelementptr inbounds %struct.mlx5e_mpw_info, ptr %wi, i32 0, i32 2
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %xdp_xmit_bitmap, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 64
  br i1 %cmp4.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i22 = tail call i32 @_find_first_bit_be(ptr noundef %xdp_xmit_bitmap, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i22)
  %cmp4.i23 = icmp eq i32 %call.i22, 64
  %xsk_pool.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.024 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %cmp4.i23, label %for.body.if.then11_crit_edge, label %lor.lhs.false

for.body.if.then11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

lor.lhs.false:                                    ; preds = %for.body
  %div3.i = lshr i32 %i.024, 5
  %arrayidx.i = getelementptr i32, ptr %xdp_xmit_bitmap, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.024, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.then11_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %for.body.if.then11_crit_edge
  %4 = ptrtoint ptr %xsk_pool.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xsk_pool.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %6 = getelementptr %struct.mlx5e_dma_info, ptr %wi, i32 %i.024, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @xp_free(ptr noundef %8) #10
  br label %for.inc

if.else.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.mlx5e_dma_info, ptr %wi, i32 %i.024
  tail call void @mlx5e_page_release_dynamic(ptr noundef %rq, ptr noundef %arrayidx, i1 noundef zeroext %recycle) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %if.then.i, %lor.lhs.false.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5e_skb_from_cqe_shampo(ptr nocapture noundef readonly %rq, ptr nocapture noundef readonly %cqe, i16 noundef zeroext %header_index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shampo = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 10
  %0 = ptrtoint ptr %shampo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shampo, align 16
  %info = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %idxprom = zext i16 %header_index to i32
  %arrayidx = getelementptr %struct.mlx5e_dma_info, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %conv = and i32 %5, 4095
  %header_size = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %header_size to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %header_size, align 1
  %buff = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1
  %8 = ptrtoint ptr %buff to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %buff, align 8
  %10 = getelementptr %struct.mlx5e_dma_info, ptr %3, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call = tail call ptr @page_address(ptr noundef %12) #10
  %conv3 = zext i16 %9 to i32
  %conv6 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv6, 127
  %add7 = add nuw nsw i32 %add, %conv3
  %and8 = and i32 %add7, 130944
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %and8)
  %cmp = icmp ult i32 %and8, 257
  br i1 %cmp, label %if.then, label %if.else, !prof !67

if.then:                                          ; preds = %entry
  %add9 = add nuw nsw i32 %and8, 256
  %add.ptr = getelementptr i8, ptr %call, i32 %conv
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %conv3
  %pdev = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %14, i32 noundef %16, i32 noundef %add9, i32 noundef 2) #10
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1)
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr4) #10, !srcloc !80
  %call.i = tail call ptr @build_skb(ptr noundef %add.ptr, i32 noundef %add9) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %mlx5e_build_linear_skb.exit.thread, label %if.end, !prof !69

mlx5e_build_linear_skb.exit.thread:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %stats.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %17 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats.i, align 4
  %buff_alloc_err.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %buff_alloc_err.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %buff_alloc_err.i, align 8
  %inc.i = add i64 %20, 1
  store i64 %inc.i, ptr %buff_alloc_err.i, align 8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %conv3
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %24, i32 %conv3
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call4.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv6) #10
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %10, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #10, !srcloc !81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mlx5e_skb_from_cqe_shampo, %if.then.i1)) #10
          to label %cleanup [label %if.then.i1], !srcloc !75

if.then.i1:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %26, i32 noundef 1) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %28 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stats, align 4
  %gro_large_hds = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %gro_large_hds to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %gro_large_hds, align 8
  %inc = add i64 %31, 1
  store i64 %inc, ptr %gro_large_hds, align 8
  %napi = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %napi, align 4
  %add26 = add nuw nsw i32 %conv6, 3
  %and27 = and i32 %add26, 508
  %call.i3 = tail call ptr @__napi_alloc_skb(ptr noundef %33, i32 noundef %and27, i32 noundef 2592) #10
  %tobool29.not = icmp eq ptr %call.i3, null
  br i1 %tobool29.not, label %if.then38, label %if.end41, !prof !69

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stats, align 4
  %buff_alloc_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %35, i32 0, i32 24
  %36 = ptrtoint ptr %buff_alloc_err to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %buff_alloc_err, align 8
  %inc40 = add i64 %37, 1
  store i64 %inc40, ptr %buff_alloc_err, align 8
  br label %cleanup

if.end41:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %data42 = getelementptr inbounds %struct.sk_buff, ptr %call.i3, i32 0, i32 19
  %38 = ptrtoint ptr %data42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data42, align 4
  tail call void @llvm.prefetch.p0(ptr %39, i32 1, i32 3, i32 1)
  %pdev43 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %40 = ptrtoint ptr %pdev43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev43, align 4
  %add46 = add nuw nsw i32 %conv, %conv3
  tail call fastcc void @mlx5e_copy_skb_header(ptr noundef %41, ptr noundef nonnull %call.i3, ptr noundef %arrayidx, i32 noundef %add46, i32 noundef %conv3, i32 noundef %conv6)
  %tail = getelementptr inbounds %struct.sk_buff, ptr %call.i3, i32 0, i32 16
  %42 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail, align 8
  %add.ptr50 = getelementptr i8, ptr %43, i32 %conv6
  store ptr %add.ptr50, ptr %tail, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i3, i32 0, i32 6
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %add52 = add i32 %45, %conv6
  store i32 %add52, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then38, %if.then.i1, %if.end, %mlx5e_build_linear_skb.exit.thread
  %retval.0 = phi ptr [ null, %if.then38 ], [ %call.i3, %if.end41 ], [ null, %mlx5e_build_linear_skb.exit.thread ], [ %call.i, %if.end ], [ %call.i, %if.then.i1 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_fill_skb_data(ptr noundef %skb, ptr noundef %rq, ptr nocapture noundef readonly %di, i32 noundef %data_bcnt, i32 noundef %data_offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_bcnt)
  %tobool.not21 = icmp eq i32 %data_bcnt, 0
  br i1 %tobool.not21, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %state = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 17
  %log_stride_sz = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 6
  %pdev.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %sub.peel = sub i32 4096, %data_offset
  %2 = tail call i32 @llvm.umin.i32(i32 %sub.peel, i32 %data_bcnt)
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.peel = icmp eq i32 %5, 0
  br i1 %tobool1.not.peel, label %if.else.peel, label %while.body.lr.ph.if.end.peel_crit_edge

while.body.lr.ph.if.end.peel_crit_edge:           ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.peel

if.else.peel:                                     ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %log_stride_sz to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %log_stride_sz, align 4
  %conv.peel = zext i8 %7 to i32
  %notmask.peel = shl nsw i32 -1, %conv.peel
  %sub2.peel = xor i32 %notmask.peel, -1
  %add.peel = add i32 %2, %sub2.peel
  %and.peel = and i32 %add.peel, %notmask.peel
  br label %if.end.peel

if.end.peel:                                      ; preds = %if.else.peel, %while.body.lr.ph.if.end.peel_crit_edge
  %truesize.0.peel = phi i32 [ %and.peel, %if.else.peel ], [ %2, %while.body.lr.ph.if.end.peel_crit_edge ]
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %10 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %di, align 4
  %add.i.peel = add i32 %11, %data_offset
  tail call void @dma_sync_single_for_cpu(ptr noundef %9, i32 noundef %add.i.peel, i32 noundef %2, i32 noundef 2) #10
  %12 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %di, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %_refcount.i.i.peel = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.peel = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.peel, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.peel, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.peel, ptr %_refcount.i.i.peel, i32 1, ptr elementtype(i32) %_refcount.i.i.peel) #10, !srcloc !81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mlx5e_fill_skb_data, %if.then.i.i.peel)) #10
          to label %mlx5e_add_skb_frag.exit.peel [label %if.then.i.i.peel], !srcloc !75

if.then.i.i.peel:                                 ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %14, i32 noundef 1) #10
  br label %mlx5e_add_skb_frag.exit.peel

mlx5e_add_skb_frag.exit.peel:                     ; preds = %if.then.i.i.peel, %if.end.peel
  %16 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i.peel = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %nr_frags.i.peel to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_frags.i.peel, align 2
  %conv.i.peel = zext i8 %19 to i32
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %12, align 4
  tail call void @skb_add_rx_frag(ptr noundef %skb, i32 noundef %conv.i.peel, ptr noundef %21, i32 noundef %data_offset, i32 noundef %2, i32 noundef %truesize.0.peel) #10
  %sub7.peel = sub i32 %data_bcnt, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.peel)
  %tobool.not.peel = icmp eq i32 %sub7.peel, 0
  br i1 %tobool.not.peel, label %mlx5e_add_skb_frag.exit.peel.while.end_crit_edge, label %mlx5e_add_skb_frag.exit.peel.while.body_crit_edge

mlx5e_add_skb_frag.exit.peel.while.body_crit_edge: ; preds = %mlx5e_add_skb_frag.exit.peel
  br label %while.body

mlx5e_add_skb_frag.exit.peel.while.end_crit_edge: ; preds = %mlx5e_add_skb_frag.exit.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %mlx5e_add_skb_frag.exit.while.body_crit_edge, %mlx5e_add_skb_frag.exit.peel.while.body_crit_edge
  %di.pn = phi ptr [ %di.addr.024, %mlx5e_add_skb_frag.exit.while.body_crit_edge ], [ %di, %mlx5e_add_skb_frag.exit.peel.while.body_crit_edge ]
  %data_bcnt.addr.022 = phi i32 [ %sub7, %mlx5e_add_skb_frag.exit.while.body_crit_edge ], [ %sub7.peel, %mlx5e_add_skb_frag.exit.peel.while.body_crit_edge ]
  %di.addr.024 = getelementptr %struct.mlx5e_dma_info, ptr %di.pn, i32 1
  %22 = tail call i32 @llvm.umin.i32(i32 %data_bcnt.addr.022, i32 4096)
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state, align 4
  %25 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not = icmp eq i32 %25, 0
  br i1 %tobool1.not, label %if.else, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %log_stride_sz to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %log_stride_sz, align 4
  %conv = zext i8 %27 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub2 = xor i32 %notmask, -1
  %add = add i32 %22, %sub2
  %and = and i32 %add, %notmask
  br label %if.end

if.end:                                           ; preds = %if.else, %while.body.if.end_crit_edge
  %truesize.0 = phi i32 [ %and, %if.else ], [ %22, %while.body.if.end_crit_edge ]
  %28 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i, align 4
  %30 = ptrtoint ptr %di.addr.024 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %di.addr.024, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %29, i32 noundef %31, i32 noundef %22, i32 noundef 2) #10
  %32 = getelementptr %struct.mlx5e_dma_info, ptr %di.pn, i32 1, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i, i32 1, i32 3, i32 1) #10
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i, ptr %_refcount.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i) #10, !srcloc !81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mlx5e_fill_skb_data, %if.then.i.i)) #10
          to label %mlx5e_add_skb_frag.exit [label %if.then.i.i], !srcloc !75

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %34, i32 noundef 1) #10
  br label %mlx5e_add_skb_frag.exit

mlx5e_add_skb_frag.exit:                          ; preds = %if.then.i.i, %if.end
  %36 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %39 to i32
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %32, align 4
  tail call void @skb_add_rx_frag(ptr noundef %skb, i32 noundef %conv.i, ptr noundef %41, i32 noundef 0, i32 noundef %22, i32 noundef %truesize.0) #10
  %sub7 = sub i32 %data_bcnt.addr.022, %22
  %tobool.not = icmp eq i32 %sub7, 0
  br i1 %tobool.not, label %mlx5e_add_skb_frag.exit.while.end_crit_edge, label %mlx5e_add_skb_frag.exit.while.body_crit_edge, !llvm.loop !89

mlx5e_add_skb_frag.exit.while.body_crit_edge:     ; preds = %mlx5e_add_skb_frag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

mlx5e_add_skb_frag.exit.while.end_crit_edge:      ; preds = %mlx5e_add_skb_frag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %mlx5e_add_skb_frag.exit.while.end_crit_edge, %mlx5e_add_skb_frag.exit.peel.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_copy_skb_header(ptr noundef %pdev, ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %dma_info, i32 noundef %offset_from, i32 noundef %dma_offset, i32 noundef %headlen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %dma_info, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call ptr @page_address(ptr noundef %2) #10
  %add.ptr = getelementptr i8, ptr %call, i32 %offset_from
  %add = add i32 %headlen, 3
  %and = and i32 %add, -4
  %3 = ptrtoint ptr %dma_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_info, align 4
  %add1 = add i32 %4, %dma_offset
  tail call void @dma_sync_single_for_cpu(ptr noundef %pdev, i32 noundef %add1, i32 noundef %and, i32 noundef 2) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %7 = call ptr @memcpy(ptr %6, ptr %add.ptr, i32 %and)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5i_pkey_get_netdev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_xdp_handle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_alloc_rx_mpwqe(ptr noundef %rq, i16 noundef zeroext %ix) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 32
  %idxprom = zext i16 %ix to i32
  %arrayidx = getelementptr %struct.mlx5e_mpw_info, ptr %1, i32 %idxprom
  %icosq = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 11
  %2 = ptrtoint ptr %icosq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icosq, align 16
  %wq3 = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 6
  %xsk_pool = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  %4 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xsk_pool, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i = tail call zeroext i1 @xp_can_alloc(ptr noundef nonnull %5, i32 noundef 64) #10
  br i1 %call.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.err50_crit_edge, !prof !67

land.lhs.true.err50_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %err50

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 17
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %if.end.if.end21_crit_edge, label %if.then10

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then10:                                        ; preds = %if.end
  %shampo1.i = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 10
  %9 = ptrtoint ptr %shampo1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shampo1.i, align 16
  %11 = ptrtoint ptr %icosq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %icosq, align 16
  %bitmap.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bitmap.i, align 8
  %hd_per_wqe.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %10, i32 0, i32 4
  %15 = ptrtoint ptr %hd_per_wqe.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hd_per_wqe.i, align 2
  %conv.i = zext i16 %16 to i32
  %hd_per_wq.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %hd_per_wq.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hd_per_wq.i, align 4
  %conv2.i = zext i16 %18 to i32
  %pi.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %10, i32 0, i32 6
  %19 = ptrtoint ptr %pi.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pi.i, align 4
  %conv3.i = zext i16 %20 to i32
  %call.i.i = tail call i32 @_find_next_bit_be(ptr noundef %14, i32 noundef %conv2.i, i32 noundef %conv3.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %conv2.i)
  %cmp.i.i = icmp eq i32 %call.i.i, %conv2.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then10.if.end6.i.i_crit_edge

if.then10.if.end6.i.i_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

if.then.i.i:                                      ; preds = %if.then10
  %sub.i.i = sub nsw i32 %conv2.i, %conv3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i)
  %cmp1.not.i.i = icmp slt i32 %sub.i.i, %conv.i
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %if.then.i.i.bitmap_find_window.exit.i_crit_edge

if.then.i.i.bitmap_find_window.exit.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bitmap_find_window.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 @_find_next_bit_be(ptr noundef %14, i32 noundef %conv2.i, i32 noundef 0) #10
  %add.i.i = add i32 %call3.i.i, %conv2.i
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i, %if.then10.if.end6.i.i_crit_edge
  %add.pn.i.i = phi i32 [ %add.i.i, %if.end.i.i ], [ %call.i.i, %if.then10.if.end6.i.i_crit_edge ]
  %count.0.i.i = sub i32 %add.pn.i.i, %conv3.i
  %21 = tail call i32 @llvm.smin.i32(i32 %count.0.i.i, i32 %conv.i) #10
  br label %bitmap_find_window.exit.i

bitmap_find_window.exit.i:                        ; preds = %if.end6.i.i, %if.then.i.i.bitmap_find_window.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %21, %if.end6.i.i ], [ %conv.i, %if.then.i.i.bitmap_find_window.exit.i_crit_edge ]
  %conv4.i = trunc i32 %retval.0.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv4.i)
  %tobool.not.i = icmp eq i16 %conv4.i, 0
  br i1 %tobool.not.i, label %bitmap_find_window.exit.i.if.end21_crit_edge, label %if.end.i

bitmap_find_window.exit.i.if.end21_crit_edge:     ; preds = %bitmap_find_window.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end.i:                                         ; preds = %bitmap_find_window.exit.i
  %22 = ptrtoint ptr %pi.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pi.i, align 4
  %24 = and i16 %23, 3
  %and.i = zext i16 %24 to i32
  %add.i = add nsw i32 %retval.0.i.i, %and.i
  %and12.i = and i16 %23, -4
  %25 = ptrtoint ptr %hd_per_wq.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hd_per_wq.i, align 4
  %sub17.i = sub i16 %26, %and12.i
  %conv19.i = zext i16 %sub17.i to i32
  %conv20.i = and i32 %add.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20.i, i32 %conv19.i)
  %cmp.i = icmp ugt i32 %conv20.i, %conv19.i
  br i1 %cmp.i, label %if.then24.i, label %if.else.i, !prof !69

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub27.i = add nuw nsw i32 %conv19.i, 47
  %div.i = udiv i32 %sub27.i, 48
  %sub30.i = sub nsw i32 47, %conv19.i
  %sub32.i = add nsw i32 %sub30.i, %conv20.i
  %div33.i = sdiv i32 %sub32.i, 48
  %add34.i = add nsw i32 %div33.i, %div.i
  br label %if.end41.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub38.i = add nuw nsw i32 %conv20.i, 47
  %div39.i = udiv i32 %sub38.i, 48
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else.i, %if.then24.i
  %num_wqe.0.in.i = phi i32 [ %add34.i, %if.then24.i ], [ %div39.i, %if.else.i ]
  %conv42.i = and i32 %num_wqe.0.in.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv42.i)
  %cmp43162.not.i = icmp eq i32 %conv42.i, 0
  br i1 %cmp43162.not.i, label %if.end41.i.if.end21_crit_edge, label %for.body.lr.ph.i

if.end41.i.if.end21_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

for.body.lr.ph.i:                                 ; preds = %if.end41.i
  %mdev.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 31
  %buff.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1
  %wq1.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %12, i32 0, i32 6
  %pc.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %12, i32 0, i32 1
  %sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %12, i32 0, i32 6, i32 0, i32 1
  %strides_offset.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %12, i32 0, i32 6, i32 0, i32 3
  %frag_sz_m1.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %12, i32 0, i32 6, i32 0, i32 2
  %db.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %12, i32 0, i32 5
  %sqn.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %12, i32 0, i32 8
  %log_frag_strides.i.i.i145.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %12, i32 0, i32 6, i32 0, i32 6
  %log_stride.i.i.i151.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %12, i32 0, i32 6, i32 0, i32 5
  %stats.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %doorbell_cseg.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %12, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end77.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0165.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end77.i.for.body.i_crit_edge ]
  %index.0164.i = phi i16 [ %and12.i, %for.body.lr.ph.i ], [ %conv85.i, %if.end77.i.for.body.i_crit_edge ]
  %klm_entries.0.in163.i = phi i32 [ %add.i, %for.body.lr.ph.i ], [ %sub87.i, %if.end77.i.for.body.i_crit_edge ]
  %conv45.i = and i32 %klm_entries.0.in163.i, 65535
  %27 = tail call i32 @llvm.umin.i32(i32 %conv45.i, i32 48) #10
  %conv49.i = zext i16 %index.0164.i to i32
  %add50.i = add nuw nsw i32 %27, %conv49.i
  %28 = ptrtoint ptr %hd_per_wq.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hd_per_wq.i, align 4
  %conv52.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.i, i32 %conv52.i)
  %cmp53.i = icmp ugt i32 %add50.i, %conv52.i
  br i1 %cmp53.i, label %if.then61.i, label %for.body.i.if.end66.i_crit_edge, !prof !69

for.body.i.if.end66.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.then61.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub65.i = sub nsw i32 %conv52.i, %conv49.i
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then61.i, %for.body.i.if.end66.i_crit_edge
  %len.0.i = phi i32 [ %sub65.i, %if.then61.i ], [ %27, %for.body.i.if.end66.i_crit_edge ]
  %conv67.i = trunc i32 %len.0.i to i16
  %30 = ptrtoint ptr %shampo1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shampo1.i, align 16
  %32 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev.i.i, align 8
  %mkey.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %33, i32 0, i32 20, i32 0, i32 2
  %34 = ptrtoint ptr %mkey.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mkey.i.i, align 4
  %last_page.i.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %31, i32 0, i32 2
  %36 = ptrtoint ptr %last_page.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %last_page.i.i, align 8
  %last_addr.i.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %31, i32 0, i32 9
  %38 = ptrtoint ptr %last_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %last_addr.i.i, align 8
  %40 = ptrtoint ptr %buff.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %buff.i.i, align 8
  %conv.i.i = zext i16 %41 to i32
  %conv3.i.i = and i32 %len.0.i, 65535
  %pi4.i.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %31, i32 0, i32 6
  %42 = ptrtoint ptr %pi4.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pi4.i.i, align 4
  %44 = and i16 %43, 3
  %sub.i134.i = sub i16 %conv67.i, %44
  %add.i135.i = add i16 %conv67.i, 3
  %and8.i.i = and i16 %add.i135.i, -4
  %conv10.i.i = zext i16 %and8.i.i to i32
  %mul.i.i = shl nuw nsw i32 %conv10.i.i, 4
  %sub13.i.i = add nuw nsw i32 %mul.i.i, 191
  %div171.i.i = lshr i32 %sub13.i.i, 6
  %conv14.i.i = trunc i32 %div171.i.i to i16
  %45 = ptrtoint ptr %pc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %pc.i.i.i, align 2
  %47 = ptrtoint ptr %sz_m1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sz_m1.i.i.i.i, align 4
  %49 = trunc i32 %48 to i16
  %conv1.i.i.i.i = and i16 %46, %49
  %conv.i.i.i.i = zext i16 %conv1.i.i.i.i to i32
  %50 = ptrtoint ptr %strides_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %strides_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %51 to i32
  %add.i.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i, %conv.i.i.i.i.i
  %52 = ptrtoint ptr %frag_sz_m1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %frag_sz_m1.i.i.i.i.i, align 4
  %conv1.i.i.i.i.i = zext i16 %53 to i32
  %or.i.i.i.i.i = or i32 %add.i.i.i.i.i, %conv1.i.i.i.i.i
  %sub.i.i.i.i.i = sub nsw i32 %or.i.i.i.i.i, %conv.i.i.i.i.i
  %54 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i.i.i, i32 %48) #10
  %55 = trunc i32 %54 to i16
  %56 = sub i16 1, %conv1.i.i.i.i
  %conv2.i.i.i.i = add i16 %56, %55
  call void @__sanitizer_cov_trace_cmp2(i16 %conv2.i.i.i.i, i16 %conv14.i.i)
  %cmp.i.i.i = icmp ult i16 %conv2.i.i.i.i, %conv14.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end66.i.mlx5e_icosq_get_next_pi.exit.i.i_crit_edge, !prof !69

if.end66.i.mlx5e_icosq_get_next_pi.exit.i.i_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_icosq_get_next_pi.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end66.i
  %conv.i.i.i = zext i16 %conv2.i.i.i.i to i32
  %57 = ptrtoint ptr %db.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %db.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %58, i32 %conv.i.i.i.i
  %add.ptr.i.i.i = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %arrayidx.i.i.i, i32 %conv.i.i.i
  %cmp729.i.i.i = icmp ult ptr %arrayidx.i.i.i, %add.ptr.i.i.i
  br i1 %cmp729.i.i.i, label %if.then.i.i.i.for.body.i.i.i_crit_edge, label %if.then.i.i.i.for.end.i.i.i_crit_edge

if.then.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

if.then.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.i.for.body.i.i.i_crit_edge
  %wi.030.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %arrayidx.i.i.i, %if.then.i.i.i.for.body.i.i.i_crit_edge ]
  %59 = ptrtoint ptr %wi.030.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %wi.030.i.i.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %wi.030.i.i.i, i32 1
  %60 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i, align 1
  %.compoundliteral.sroa.3.sroa.1.0..compoundliteral.sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %wi.030.i.i.i, i32 4
  %61 = ptrtoint ptr %.compoundliteral.sroa.3.sroa.1.0..compoundliteral.sroa.3.0..sroa_idx.sroa_idx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 0, ptr %.compoundliteral.sroa.3.sroa.1.0..compoundliteral.sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 2
  %62 = ptrtoint ptr %sqn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sqn.i.i.i, align 4
  %64 = ptrtoint ptr %pc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %pc.i.i.i, align 2
  %66 = ptrtoint ptr %sz_m1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sz_m1.i.i.i.i, align 4
  %68 = trunc i32 %67 to i16
  %conv1.i.i.i = and i16 %65, %68
  %conv.i.i142.i = zext i16 %conv1.i.i.i to i32
  %69 = ptrtoint ptr %strides_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %strides_offset.i.i.i.i.i, align 2
  %conv.i.i.i143.i = zext i16 %70 to i32
  %add.i.i.i144.i = add nuw nsw i32 %conv.i.i142.i, %conv.i.i.i143.i
  %71 = ptrtoint ptr %log_frag_strides.i.i.i145.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %log_frag_strides.i.i.i145.i, align 2
  %conv1.i.i.i146.i = zext i8 %72 to i32
  %shr.i.i.i147.i = lshr i32 %add.i.i.i144.i, %conv1.i.i.i146.i
  %73 = ptrtoint ptr %wq1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wq1.i.i.i, align 4
  %arrayidx.i.i.i148.i = getelementptr %struct.mlx5_buf_list, ptr %74, i32 %shr.i.i.i147.i
  %75 = ptrtoint ptr %arrayidx.i.i.i148.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i.i148.i, align 4
  %77 = ptrtoint ptr %frag_sz_m1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %frag_sz_m1.i.i.i.i.i, align 4
  %conv2.i.i.i149.i = zext i16 %78 to i32
  %and.i.i.i150.i = and i32 %add.i.i.i144.i, %conv2.i.i.i149.i
  %79 = ptrtoint ptr %log_stride.i.i.i151.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %log_stride.i.i.i151.i, align 1
  %conv3.i.i.i152.i = zext i8 %80 to i32
  %shl.i.i.i153.i = shl i32 %and.i.i.i150.i, %conv3.i.i.i152.i
  %add.ptr.i.i.i154.i = getelementptr i8, ptr %76, i32 %shl.i.i.i153.i
  %81 = call ptr @memset(ptr %add.ptr.i.i.i154.i, i32 0, i32 16)
  %82 = load i16, ptr %pc.i.i.i, align 2
  %conv.i155.i = zext i16 %82 to i32
  %shl.i156.i = shl nuw nsw i32 %conv.i155.i, 8
  %83 = ptrtoint ptr %add.ptr.i.i.i154.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %shl.i156.i, ptr %add.ptr.i.i.i154.i, align 4
  %shl2.i.i = shl i32 %63, 8
  %or3.i.i = or i32 %shl2.i.i, 1
  %qpn_ds.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i154.i, i32 0, i32 1
  %84 = ptrtoint ptr %qpn_ds.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or3.i.i, ptr %qpn_ds.i.i, align 4
  %85 = load i16, ptr %pc.i.i.i, align 2
  %inc.i157.i = add i16 %85, 1
  store i16 %inc.i157.i, ptr %pc.i.i.i, align 2
  %incdec.ptr.i.i.i = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %wi.030.i.i.i, i32 1
  %cmp7.i.i.i = icmp ult ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %cmp7.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.for.end.i.i.i_crit_edge

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %if.then.i.i.i.for.end.i.i.i_crit_edge
  %86 = ptrtoint ptr %pc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %pc.i.i.i, align 2
  %88 = ptrtoint ptr %sz_m1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sz_m1.i.i.i.i, align 4
  %90 = trunc i32 %89 to i16
  %conv1.i28.i.i.i = and i16 %87, %90
  %.pre.i.i = zext i16 %conv1.i28.i.i.i to i32
  br label %mlx5e_icosq_get_next_pi.exit.i.i

mlx5e_icosq_get_next_pi.exit.i.i:                 ; preds = %for.end.i.i.i, %if.end66.i.mlx5e_icosq_get_next_pi.exit.i.i_crit_edge
  %conv.i172.pre-phi.i.i = phi i32 [ %conv.i.i.i.i, %if.end66.i.mlx5e_icosq_get_next_pi.exit.i.i_crit_edge ], [ %.pre.i.i, %for.end.i.i.i ]
  %91 = ptrtoint ptr %strides_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %strides_offset.i.i.i.i.i, align 2
  %conv.i.i173.i.i = zext i16 %92 to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i172.pre-phi.i.i, %conv.i.i173.i.i
  %93 = ptrtoint ptr %log_frag_strides.i.i.i145.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %log_frag_strides.i.i.i145.i, align 2
  %conv1.i.i174.i.i = zext i8 %94 to i32
  %shr.i.i.i.i = lshr i32 %add.i.i.i.i, %conv1.i.i174.i.i
  %95 = ptrtoint ptr %wq1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wq1.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %96, i32 %shr.i.i.i.i
  %97 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %99 = ptrtoint ptr %frag_sz_m1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %frag_sz_m1.i.i.i.i.i, align 4
  %conv2.i.i175.i.i = zext i16 %100 to i32
  %and.i.i.i.i = and i32 %add.i.i.i.i, %conv2.i.i175.i.i
  %101 = ptrtoint ptr %log_stride.i.i.i151.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %log_stride.i.i.i151.i, align 1
  %conv3.i.i.i.i = zext i8 %102 to i32
  %shl.i.i.i.i = shl i32 %and.i.i.i.i, %conv3.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %98, i32 %shl.i.i.i.i
  %key.i.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %31, i32 0, i32 8
  %103 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %key.i.i, align 8
  %105 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 128)
  %106 = ptrtoint ptr %pc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %pc.i.i.i, align 2
  %conv.i177.i.i = zext i16 %107 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i177.i.i, 8
  %or.i.i.i = or i32 %shl.i.i.i, 37
  %108 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i.i, align 8
  %109 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 0, i32 5
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %104, ptr %109, align 4
  %111 = ptrtoint ptr %sqn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sqn.i.i.i, align 4
  %shl2.i.i.i = shl i32 %112, 8
  %113 = add nuw nsw i32 %conv10.i.i, 8
  %or5.i.i.i = or i32 %shl2.i.i.i, %113
  %qpn_ds.i.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %qpn_ds.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or5.i.i.i, ptr %qpn_ds.i.i.i, align 4
  %uctrl.i.i.i = getelementptr inbounds %struct.mlx5e_umr_wqe, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %uctrl.i.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -112, ptr %uctrl.i.i.i, align 8
  %116 = getelementptr inbounds %struct.mlx5e_umr_wqe, ptr %add.ptr.i.i.i.i, i32 0, i32 1, i32 3
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %index.0164.i, ptr %116, align 2
  %xlt_octowords.i.i.i = getelementptr inbounds %struct.mlx5e_umr_wqe, ptr %add.ptr.i.i.i.i, i32 0, i32 1, i32 2
  %118 = ptrtoint ptr %xlt_octowords.i.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %and8.i.i, ptr %xlt_octowords.i.i.i, align 4
  %mkey_mask.i.i.i = getelementptr inbounds %struct.mlx5e_umr_wqe, ptr %add.ptr.i.i.i.i, i32 0, i32 1, i32 4
  %119 = ptrtoint ptr %mkey_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 536870912, ptr %mkey_mask.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and8.i.i)
  %cmp183.not.i.i = icmp eq i16 %and8.i.i, 0
  br i1 %cmp183.not.i.i, label %mlx5e_icosq_get_next_pi.exit.i.i.mlx5e_build_shampo_hd_umr.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

mlx5e_icosq_get_next_pi.exit.i.i.mlx5e_build_shampo_hd_umr.exit.thread.i_crit_edge: ; preds = %mlx5e_icosq_get_next_pi.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_build_shampo_hd_umr.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %mlx5e_icosq_get_next_pi.exit.i.i
  %info.i.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %31, i32 0, i32 1
  %inline_klms.i.i = getelementptr inbounds %struct.mlx5e_umr_wqe, ptr %add.ptr.i.i.i.i, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %update_klm.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %index.addr.0188.i.i = phi i16 [ %index.0164.i, %for.body.lr.ph.i.i ], [ %inc61.i.i, %update_klm.i.i.for.body.i.i_crit_edge ]
  %i.0186.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %update_klm.i.i.for.body.i.i_crit_edge ]
  %addr.0185.i.i = phi i64 [ %39, %for.body.lr.ph.i.i ], [ %addr.1.i.i, %update_klm.i.i.for.body.i.i_crit_edge ]
  %page.0184.i.i = phi ptr [ %37, %for.body.lr.ph.i.i ], [ %page.1.i.i, %update_klm.i.i.for.body.i.i_crit_edge ]
  %120 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %info.i.i, align 4
  %idxprom.i.i = zext i16 %index.addr.0188.i.i to i32
  %arrayidx.i.i = getelementptr %struct.mlx5e_dma_info, ptr %121, i32 %idxprom.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0186.i.i, i32 %conv3.i.i)
  %cmp19.not.i.i = icmp ult i32 %i.0186.i.i, %conv3.i.i
  br i1 %cmp19.not.i.i, label %lor.lhs.false.i.i, label %for.body.i.i.update_klm.i.i_crit_edge

for.body.i.i.update_klm.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_klm.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %122 = ptrtoint ptr %pi4.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %pi4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %123, i16 %index.addr.0188.i.i)
  %cmp24.i.i = icmp ugt i16 %123, %index.addr.0188.i.i
  %conv23.i.i = zext i16 %123 to i32
  %sub29.i.i = sub nsw i32 %conv23.i.i, %idxprom.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub29.i.i)
  %cmp30.i.i = icmp slt i32 %sub29.i.i, 4
  %or.cond.i.i = select i1 %cmp24.i.i, i1 %cmp30.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.lhs.false.i.i.update_klm.i.i_crit_edge, label %if.end.i136.i

lor.lhs.false.i.i.update_klm.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_klm.i.i

if.end.i136.i:                                    ; preds = %lor.lhs.false.i.i
  %124 = and i16 %index.addr.0188.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool.not.i.i = icmp eq i16 %124, 0
  br i1 %tobool.not.i.i, label %if.then37.i.i, label %if.else.i.i

if.then37.i.i:                                    ; preds = %if.end.i136.i
  %call38.i.i = tail call fastcc i32 @mlx5e_page_alloc(ptr noundef %rq, ptr noundef %arrayidx.i.i) #10
  %conv39.i.i = trunc i32 %call38.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv39.i.i)
  %tobool40.not.i.i = icmp eq i16 %conv39.i.i, 0
  br i1 %tobool40.not.i.i, label %if.end44.i.i, label %while.cond.preheader.i.i, !prof !67

while.cond.preheader.i.i:                         ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0186.i.i)
  %cmp80192.not.i.i = icmp eq i32 %i.0186.i.i, 0
  br i1 %cmp80192.not.i.i, label %while.cond.preheader.i.i.mlx5e_build_shampo_hd_umr.exit.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.mlx5e_build_shampo_hd_umr.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_build_shampo_hd_umr.exit.i

if.end44.i.i:                                     ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i.i, align 4
  %conv46.i.i = zext i32 %126 to i64
  %127 = getelementptr %struct.mlx5e_dma_info, ptr %121, i32 %idxprom.i.i, i32 1
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  br label %update_klm.i.i

if.else.i.i:                                      ; preds = %if.end.i136.i
  call void @__sanitizer_cov_trace_pc() #12
  %and33.i.i = shl i16 %index.addr.0188.i.i, 9
  %shl.i.i = and i16 %and33.i.i, 3584
  %conv47.i.i = zext i16 %shl.i.i to i64
  %add48.i.i = add i64 %addr.0185.i.i, %conv47.i.i
  %conv49.i.i = trunc i64 %add48.i.i to i32
  %130 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv49.i.i, ptr %arrayidx.i.i, align 4
  %131 = getelementptr %struct.mlx5e_dma_info, ptr %121, i32 %idxprom.i.i, i32 1
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %page.0184.i.i, ptr %131, align 4
  br label %update_klm.i.i

update_klm.i.i:                                   ; preds = %if.else.i.i, %if.end44.i.i, %lor.lhs.false.i.i.update_klm.i.i_crit_edge, %for.body.i.i.update_klm.i.i_crit_edge
  %page.1.i.i = phi ptr [ %page.0184.i.i, %for.body.i.i.update_klm.i.i_crit_edge ], [ %page.0184.i.i, %if.else.i.i ], [ %129, %if.end44.i.i ], [ %page.0184.i.i, %lor.lhs.false.i.i.update_klm.i.i_crit_edge ]
  %addr.1.i.i = phi i64 [ %addr.0185.i.i, %for.body.i.i.update_klm.i.i_crit_edge ], [ %addr.0185.i.i, %if.else.i.i ], [ %conv46.i.i, %if.end44.i.i ], [ %addr.0185.i.i, %lor.lhs.false.i.i.update_klm.i.i_crit_edge ]
  %arrayidx52.i.i = getelementptr [0 x %struct.mlx5_klm], ptr %inline_klms.i.i, i32 0, i32 %i.0186.i.i
  %133 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 256, ptr %arrayidx52.i.i, align 8
  %key55.i.i = getelementptr inbounds %struct.mlx5_klm, ptr %arrayidx52.i.i, i32 0, i32 1
  %134 = ptrtoint ptr %key55.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %35, ptr %key55.i.i, align 4
  %135 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i.i, align 4
  %add57.i.i = add i32 %136, %conv.i.i
  %conv58.i.i = zext i32 %add57.i.i to i64
  %va.i.i = getelementptr inbounds %struct.mlx5_klm, ptr %arrayidx52.i.i, i32 0, i32 2
  %137 = ptrtoint ptr %va.i.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv58.i.i, ptr %va.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.0186.i.i, 1
  %inc61.i.i = add i16 %index.addr.0188.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv10.i.i
  br i1 %exitcond.not.i.i, label %update_klm.i.i.mlx5e_build_shampo_hd_umr.exit.thread.i_crit_edge, label %update_klm.i.i.for.body.i.i_crit_edge

update_klm.i.i.for.body.i.i_crit_edge:            ; preds = %update_klm.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

update_klm.i.i.mlx5e_build_shampo_hd_umr.exit.thread.i_crit_edge: ; preds = %update_klm.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_build_shampo_hd_umr.exit.thread.i

mlx5e_build_shampo_hd_umr.exit.thread.i:          ; preds = %update_klm.i.i.mlx5e_build_shampo_hd_umr.exit.thread.i_crit_edge, %mlx5e_icosq_get_next_pi.exit.i.i.mlx5e_build_shampo_hd_umr.exit.thread.i_crit_edge
  %page.0.lcssa.i.i = phi ptr [ %37, %mlx5e_icosq_get_next_pi.exit.i.i.mlx5e_build_shampo_hd_umr.exit.thread.i_crit_edge ], [ %page.1.i.i, %update_klm.i.i.mlx5e_build_shampo_hd_umr.exit.thread.i_crit_edge ]
  %addr.0.lcssa.i.i = phi i64 [ %39, %mlx5e_icosq_get_next_pi.exit.i.i.mlx5e_build_shampo_hd_umr.exit.thread.i_crit_edge ], [ %addr.1.i.i, %update_klm.i.i.mlx5e_build_shampo_hd_umr.exit.thread.i_crit_edge ]
  %138 = ptrtoint ptr %db.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %db.i.i.i, align 128
  %arrayidx63.i.i = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %139, i32 %conv.i172.pre-phi.i.i
  %conv64.i.i = trunc i32 %div171.i.i to i8
  %140 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 2, ptr %arrayidx63.i.i, align 4
  %.compoundliteral.sroa.2.0.arrayidx63.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx63.i.i, i32 1
  %141 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx63.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv64.i.i, ptr %.compoundliteral.sroa.2.0.arrayidx63.sroa_idx.i.i, align 1
  %.compoundliteral.sroa.3110.0.arrayidx63.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx63.i.i, i32 4
  %142 = ptrtoint ptr %.compoundliteral.sroa.3110.0.arrayidx63.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %sub.i134.i, ptr %.compoundliteral.sroa.3110.0.arrayidx63.sroa_idx.i.i, align 4
  %143 = ptrtoint ptr %pi4.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %pi4.i.i, align 4
  %add68.i.i = add i16 %144, %sub.i134.i
  %hd_per_wq.i.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %31, i32 0, i32 3
  %145 = ptrtoint ptr %hd_per_wq.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %hd_per_wq.i.i, align 4
  %sub70.i.i = add i16 %146, -1
  %and71.i.i = and i16 %sub70.i.i, %add68.i.i
  store i16 %and71.i.i, ptr %pi4.i.i, align 4
  %147 = ptrtoint ptr %last_page.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %page.0.lcssa.i.i, ptr %last_page.i.i, align 8
  %148 = ptrtoint ptr %last_addr.i.i to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %addr.0.lcssa.i.i, ptr %last_addr.i.i, align 8
  %149 = ptrtoint ptr %pc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %pc.i.i.i, align 2
  %conv79.i.i = add i16 %150, %conv14.i.i
  store i16 %conv79.i.i, ptr %pc.i.i.i, align 2
  %151 = ptrtoint ptr %doorbell_cseg.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %add.ptr.i.i.i.i, ptr %doorbell_cseg.i.i, align 4
  br label %if.end77.i

while.body.i.i:                                   ; preds = %if.end94.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %dec194.in.i.i = phi i32 [ %dec194.i.i, %if.end94.i.i.while.body.i.i_crit_edge ], [ %i.0186.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %index.addr.1193.i.i = phi i16 [ %dec83.i.i, %if.end94.i.i.while.body.i.i_crit_edge ], [ %index.addr.0188.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec194.i.i = add nsw i32 %dec194.in.i.i, -1
  %dec83.i.i = add i16 %index.addr.1193.i.i, -1
  %and86.i.i = and i32 %dec194.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i.i)
  %tobool87.not.i.i = icmp eq i32 %and86.i.i, 0
  br i1 %tobool87.not.i.i, label %if.then88.i.i, label %while.body.i.i.if.end94.i.i_crit_edge

while.body.i.i.if.end94.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94.i.i

if.then88.i.i:                                    ; preds = %while.body.i.i
  %152 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %info.i.i, align 4
  %idxprom84.i.i = zext i16 %dec83.i.i to i32
  %arrayidx85.i.i = getelementptr %struct.mlx5e_dma_info, ptr %153, i32 %idxprom84.i.i
  %154 = ptrtoint ptr %arrayidx85.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx85.i.i, align 4
  %and92.i.i = and i32 %155, -4096
  store i32 %and92.i.i, ptr %arrayidx85.i.i, align 4
  %156 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %xsk_pool, align 8
  %tobool.not.i138.i = icmp eq ptr %157, null
  br i1 %tobool.not.i138.i, label %if.else.i140.i, label %if.then.i139.i

if.then.i139.i:                                   ; preds = %if.then88.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %158 = getelementptr %struct.mlx5e_dma_info, ptr %153, i32 %idxprom84.i.i, i32 1
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  tail call void @xp_free(ptr noundef %160) #10
  br label %if.end94.i.i

if.else.i140.i:                                   ; preds = %if.then88.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_page_release_dynamic(ptr noundef %rq, ptr noundef %arrayidx85.i.i, i1 noundef zeroext true) #10
  br label %if.end94.i.i

if.end94.i.i:                                     ; preds = %if.else.i140.i, %if.then.i139.i, %while.body.i.i.if.end94.i.i_crit_edge
  %cmp80.i.i = icmp sgt i32 %dec194.in.i.i, 1
  br i1 %cmp80.i.i, label %if.end94.i.i.while.body.i.i_crit_edge, label %if.end94.i.i.mlx5e_build_shampo_hd_umr.exit.i_crit_edge

if.end94.i.i.mlx5e_build_shampo_hd_umr.exit.i_crit_edge: ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_build_shampo_hd_umr.exit.i

if.end94.i.i.while.body.i.i_crit_edge:            ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

mlx5e_build_shampo_hd_umr.exit.i:                 ; preds = %if.end94.i.i.mlx5e_build_shampo_hd_umr.exit.i_crit_edge, %while.cond.preheader.i.i.mlx5e_build_shampo_hd_umr.exit.i_crit_edge
  %161 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %stats.i.i, align 4
  %buff_alloc_err.i.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %162, i32 0, i32 24
  %163 = ptrtoint ptr %buff_alloc_err.i.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %buff_alloc_err.i.i, align 8
  %inc95.i.i = add i64 %164, 1
  store i64 %inc95.i.i, ptr %buff_alloc_err.i.i, align 8
  %conv96.i.i = and i32 %call38.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv96.i.i)
  %tobool69.not.i = icmp eq i32 %conv96.i.i, 0
  br i1 %tobool69.not.i, label %mlx5e_build_shampo_hd_umr.exit.i.if.end77.i_crit_edge, label %mlx5e_build_shampo_hd_umr.exit.i.err50_crit_edge, !prof !67

mlx5e_build_shampo_hd_umr.exit.i.err50_crit_edge: ; preds = %mlx5e_build_shampo_hd_umr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err50

mlx5e_build_shampo_hd_umr.exit.i.if.end77.i_crit_edge: ; preds = %mlx5e_build_shampo_hd_umr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

if.end77.i:                                       ; preds = %mlx5e_build_shampo_hd_umr.exit.i.if.end77.i_crit_edge, %mlx5e_build_shampo_hd_umr.exit.thread.i
  %add79.i = add nsw i32 %len.0.i, %conv49.i
  %165 = ptrtoint ptr %shampo1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %shampo1.i, align 16
  %hd_per_wq81.i = getelementptr inbounds %struct.mlx5e_shampo_hd, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %hd_per_wq81.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %hd_per_wq81.i, align 4
  %conv82.i = zext i16 %168 to i32
  %sub83.i = add nuw nsw i32 %conv82.i, 65535
  %and84.i = and i32 %sub83.i, %add79.i
  %conv85.i = trunc i32 %and84.i to i16
  %sub87.i = sub nsw i32 %conv45.i, %len.0.i
  %inc.i = add nuw nsw i32 %i.0165.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv42.i
  br i1 %exitcond.not.i, label %if.end77.i.if.end21_crit_edge, label %if.end77.i.for.body.i_crit_edge

if.end77.i.for.body.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end77.i.if.end21_crit_edge:                    ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end21:                                         ; preds = %if.end77.i.if.end21_crit_edge, %if.end41.i.if.end21_crit_edge, %bitmap_find_window.exit.i.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %pc.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 1
  %169 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %pc.i, align 2
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 6, i32 0, i32 1
  %171 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %sz_m1.i.i, align 4
  %173 = trunc i32 %172 to i16
  %conv1.i.i = and i16 %170, %173
  %conv.i.i92 = zext i16 %conv1.i.i to i32
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 6, i32 0, i32 3
  %174 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i93 = zext i16 %175 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i92, %conv.i.i.i93
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 6, i32 0, i32 2
  %176 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv1.i.i.i94 = zext i16 %177 to i32
  %or.i.i.i95 = or i32 %add.i.i.i, %conv1.i.i.i94
  %sub.i.i.i = sub nsw i32 %or.i.i.i95, %conv.i.i.i93
  %178 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i, i32 %172) #10
  %179 = trunc i32 %178 to i16
  %180 = sub i16 1, %conv1.i.i
  %conv2.i.i = add i16 %180, %179
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %conv2.i.i)
  %cmp.i96 = icmp ult i16 %conv2.i.i, 10
  br i1 %cmp.i96, label %if.then.i, label %if.end21.mlx5e_icosq_get_next_pi.exit_crit_edge, !prof !69

if.end21.mlx5e_icosq_get_next_pi.exit_crit_edge:  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_icosq_get_next_pi.exit

if.then.i:                                        ; preds = %if.end21
  %conv.i97 = zext i16 %conv2.i.i to i32
  %db.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 5
  %181 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %db.i, align 128
  %arrayidx.i = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %182, i32 %conv.i.i92
  %add.ptr.i = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %arrayidx.i, i32 %conv.i97
  %cmp729.i = icmp ult ptr %arrayidx.i, %add.ptr.i
  br i1 %cmp729.i, label %for.body.lr.ph.i98, label %if.then.i.for.end.i_crit_edge

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i98:                               ; preds = %if.then.i
  %sqn.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 8
  br label %for.body.i99

for.body.i99:                                     ; preds = %for.body.i99.for.body.i99_crit_edge, %for.body.lr.ph.i98
  %wi.030.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i98 ], [ %incdec.ptr.i, %for.body.i99.for.body.i99_crit_edge ]
  %183 = ptrtoint ptr %wi.030.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %wi.030.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %wi.030.i, i32 1
  %184 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.3.sroa.1.0..compoundliteral.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds i8, ptr %wi.030.i, i32 4
  %185 = ptrtoint ptr %.compoundliteral.sroa.3.sroa.1.0..compoundliteral.sroa.3.0..sroa_idx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %185, i32 4)
  store i32 0, ptr %.compoundliteral.sroa.3.sroa.1.0..compoundliteral.sroa.3.0..sroa_idx.sroa_idx.i, align 2
  %186 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %sqn.i, align 4
  tail call fastcc void @mlx5e_post_nop(ptr noundef %wq3, i32 noundef %187, ptr noundef %pc.i) #10
  %incdec.ptr.i = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %wi.030.i, i32 1
  %cmp7.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp7.i, label %for.body.i99.for.body.i99_crit_edge, label %for.body.i99.for.end.i_crit_edge

for.body.i99.for.end.i_crit_edge:                 ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i99.for.body.i99_crit_edge:              ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i99

for.end.i:                                        ; preds = %for.body.i99.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %188 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %pc.i, align 2
  %190 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %sz_m1.i.i, align 4
  %192 = trunc i32 %191 to i16
  %conv1.i28.i = and i16 %189, %192
  %.pre = zext i16 %conv1.i28.i to i32
  br label %mlx5e_icosq_get_next_pi.exit

mlx5e_icosq_get_next_pi.exit:                     ; preds = %for.end.i, %if.end21.mlx5e_icosq_get_next_pi.exit_crit_edge
  %conv.i101.pre-phi = phi i32 [ %conv.i.i92, %if.end21.mlx5e_icosq_get_next_pi.exit_crit_edge ], [ %.pre, %for.end.i ]
  %193 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i102 = zext i16 %194 to i32
  %add.i.i103 = add nuw nsw i32 %conv.i101.pre-phi, %conv.i.i102
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 6, i32 0, i32 6
  %195 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i104 = zext i8 %196 to i32
  %shr.i.i = lshr i32 %add.i.i103, %conv1.i.i104
  %197 = ptrtoint ptr %wq3 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %wq3, align 4
  %arrayidx.i.i105 = getelementptr %struct.mlx5_buf_list, ptr %198, i32 %shr.i.i
  %199 = ptrtoint ptr %arrayidx.i.i105 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx.i.i105, align 4
  %201 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i106 = zext i16 %202 to i32
  %and.i.i = and i32 %add.i.i103, %conv2.i.i106
  %log_stride.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 6, i32 0, i32 5
  %203 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i107 = zext i8 %204 to i32
  %shl.i.i108 = shl i32 %and.i.i, %conv3.i.i107
  %add.ptr.i.i = getelementptr i8, ptr %200, i32 %shl.i.i108
  %umr_wqe24 = getelementptr inbounds %struct.anon.209, ptr %rq, i32 0, i32 1
  %205 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %umr_wqe24, i32 128)
  %inline_mtts = getelementptr inbounds %struct.mlx5e_umr_wqe, ptr %add.ptr.i.i, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %mlx5e_icosq_get_next_pi.exit
  %dma_info.0121 = phi ptr [ %arrayidx, %mlx5e_icosq_get_next_pi.exit ], [ %incdec.ptr, %if.end34.for.body_crit_edge ]
  %i.0120 = phi i32 [ 0, %mlx5e_icosq_get_next_pi.exit ], [ %inc, %if.end34.for.body_crit_edge ]
  %call25 = tail call fastcc i32 @mlx5e_page_alloc(ptr noundef %rq, ptr noundef %dma_info.0121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end34, label %while.cond.preheader, !prof !67

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0120)
  %cmp47123.not = icmp eq i32 %i.0120, 0
  br i1 %cmp47123.not, label %while.cond.preheader.err50_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.err50_crit_edge:             ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %err50

if.end34:                                         ; preds = %for.body
  %206 = ptrtoint ptr %dma_info.0121 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %dma_info.0121, align 4
  %or = or i32 %207, 2
  %conv = zext i32 %or to i64
  %arrayidx35 = getelementptr [0 x %struct.mlx5_mtt], ptr %inline_mtts, i32 0, i32 %i.0120
  %208 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %conv, ptr %arrayidx35, align 8
  %inc = add nuw nsw i32 %i.0120, 1
  %incdec.ptr = getelementptr %struct.mlx5e_dma_info, ptr %dma_info.0121, i32 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %xdp_xmit_bitmap = getelementptr %struct.mlx5e_mpw_info, ptr %1, i32 %idxprom, i32 2
  %209 = ptrtoint ptr %xdp_xmit_bitmap to i32
  call void @__asan_storeN_noabort(i32 %209, i32 8)
  store i64 0, ptr %xdp_xmit_bitmap, align 4
  %consumed_strides = getelementptr %struct.mlx5e_mpw_info, ptr %1, i32 %idxprom, i32 1
  %210 = ptrtoint ptr %consumed_strides to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 0, ptr %consumed_strides, align 4
  %211 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %pc.i, align 2
  %conv36 = zext i16 %212 to i32
  %shl = shl nuw nsw i32 %conv36, 8
  %or37 = or i32 %shl, 37
  %213 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %or37, ptr %add.ptr.i.i, align 8
  %div = mul i16 %ix, 36
  %214 = getelementptr inbounds %struct.mlx5e_umr_wqe, ptr %add.ptr.i.i, i32 0, i32 1, i32 3
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %div, ptr %214, align 2
  %db = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 5
  %216 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %db, align 128
  %arrayidx41 = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %217, i32 %conv.i101.pre-phi
  %218 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 1, ptr %arrayidx41, align 4
  %.compoundliteral.sroa.2.0.arrayidx41.sroa_idx = getelementptr inbounds i8, ptr %arrayidx41, i32 1
  %219 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx41.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 10, ptr %.compoundliteral.sroa.2.0.arrayidx41.sroa_idx, align 1
  %.compoundliteral.sroa.359.0.arrayidx41.sroa_idx = getelementptr inbounds i8, ptr %arrayidx41, i32 4
  %220 = ptrtoint ptr %.compoundliteral.sroa.359.0.arrayidx41.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %rq, ptr %.compoundliteral.sroa.359.0.arrayidx41.sroa_idx, align 4
  %221 = load i16, ptr %pc.i, align 2
  %add = add i16 %221, 10
  store i16 %add, ptr %pc.i, align 2
  %doorbell_cseg = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 2
  %222 = ptrtoint ptr %doorbell_cseg to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %add.ptr.i.i, ptr %doorbell_cseg, align 4
  br label %cleanup

while.body:                                       ; preds = %mlx5e_page_release.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec125.in = phi i32 [ %dec125, %mlx5e_page_release.exit.while.body_crit_edge ], [ %i.0120, %while.cond.preheader.while.body_crit_edge ]
  %dma_info.1124 = phi ptr [ %incdec.ptr49, %mlx5e_page_release.exit.while.body_crit_edge ], [ %dma_info.0121, %while.cond.preheader.while.body_crit_edge ]
  %dec125 = add nsw i32 %dec125.in, -1
  %incdec.ptr49 = getelementptr %struct.mlx5e_dma_info, ptr %dma_info.1124, i32 -1
  %223 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %xsk_pool, align 8
  %tobool.not.i109 = icmp eq ptr %224, null
  br i1 %tobool.not.i109, label %if.else.i111, label %if.then.i110

if.then.i110:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %225 = getelementptr %struct.mlx5e_dma_info, ptr %dma_info.1124, i32 -1, i32 1
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  tail call void @xp_free(ptr noundef %227) #10
  br label %mlx5e_page_release.exit

if.else.i111:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_page_release_dynamic(ptr noundef %rq, ptr noundef %incdec.ptr49, i1 noundef zeroext true) #10
  br label %mlx5e_page_release.exit

mlx5e_page_release.exit:                          ; preds = %if.else.i111, %if.then.i110
  %cmp47 = icmp sgt i32 %dec125.in, 1
  br i1 %cmp47, label %mlx5e_page_release.exit.while.body_crit_edge, label %mlx5e_page_release.exit.err50_crit_edge

mlx5e_page_release.exit.err50_crit_edge:          ; preds = %mlx5e_page_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err50

mlx5e_page_release.exit.while.body_crit_edge:     ; preds = %mlx5e_page_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

err50:                                            ; preds = %mlx5e_page_release.exit.err50_crit_edge, %while.cond.preheader.err50_crit_edge, %mlx5e_build_shampo_hd_umr.exit.i.err50_crit_edge, %land.lhs.true.err50_crit_edge
  %err.0 = phi i32 [ -12, %land.lhs.true.err50_crit_edge ], [ %call25, %while.cond.preheader.err50_crit_edge ], [ %call25, %mlx5e_page_release.exit.err50_crit_edge ], [ %conv96.i.i, %mlx5e_build_shampo_hd_umr.exit.i.err50_crit_edge ]
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %228 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %stats, align 4
  %buff_alloc_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %229, i32 0, i32 24
  %230 = ptrtoint ptr %buff_alloc_err to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %buff_alloc_err, align 8
  %inc51 = add i64 %231, 1
  store i64 %inc51, ptr %buff_alloc_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %err50, %for.end
  %retval.0 = phi i32 [ %err.0, %err50 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_notify_hw(ptr nocapture noundef readonly %wq, i16 noundef zeroext %pc, ptr noundef %uar_map, ptr nocapture noundef %ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %fm_ce_se = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %ctrl, i32 0, i32 4
  %0 = ptrtoint ptr %fm_ce_se to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fm_ce_se, align 1
  %2 = or i8 %1, 8
  store i8 %2, ptr %fm_ce_se, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %conv2 = zext i16 %pc to i32
  %db = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %wq, i32 0, i32 1
  %3 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %db, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv2, ptr %4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !91
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %uar_map, i32 %7) #10, !srcloc !92
  %arrayidx1.i = getelementptr i32, ptr %ctrl, i32 1
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %uar_map, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #10, !srcloc !92
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_update_nid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_page_alloc(ptr nocapture noundef %rq, ptr nocapture noundef %dma_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %xsk_pool = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  %0 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xsk_pool, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call ptr @xp_alloc(ptr noundef nonnull %1) #10
  %2 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %dma_info, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %frame_dma.i.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %frame_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_dma.i.i.i, align 8
  %6 = ptrtoint ptr %dma_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dma_info, align 4
  br label %return

if.else:                                          ; preds = %entry
  %page_cache.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 8
  %stats1.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %7 = ptrtoint ptr %stats1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stats1.i.i, align 4
  %9 = ptrtoint ptr %page_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %page_cache.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i.i = icmp eq i32 %10, %12
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !prof !69

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %cache_empty.i.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %8, i32 0, i32 29
  br label %if.end.i7

if.end.i.i:                                       ; preds = %if.else
  %13 = getelementptr %struct.mlx5e_rq, ptr %rq, i32 0, i32 8, i32 2, i32 %10, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #10
  %16 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp5.not.i.i = icmp eq i32 %17, 1
  br i1 %cmp5.not.i.i, label %mlx5e_rx_cache_get.exit.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cache_busy.i.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %8, i32 0, i32 30
  br label %if.end.i7

mlx5e_rx_cache_get.exit.i:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %page_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_cache.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.mlx5e_rq, ptr %rq, i32 0, i32 8, i32 2, i32 %19
  %20 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %arrayidx11.i.i, align 4
  %22 = ptrtoint ptr %dma_info to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %dma_info, align 4
  %23 = load i32, ptr %page_cache.i.i, align 4
  %add.i.i = add i32 %23, 1
  %and.i.i = and i32 %add.i.i, 255
  store i32 %and.i.i, ptr %page_cache.i.i, align 4
  %cache_reuse.i.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %8, i32 0, i32 27
  %24 = ptrtoint ptr %cache_reuse.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cache_reuse.i.i, align 8
  %inc14.i.i = add i64 %25, 1
  store i64 %inc14.i.i, ptr %cache_reuse.i.i, align 8
  %pdev.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %26 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i.i, align 4
  %28 = load i32, ptr %dma_info, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %27, i32 noundef %28, i32 noundef 4096, i32 noundef 2) #10
  br label %return

if.end.i7:                                        ; preds = %if.then6.i.i, %if.then.i.i
  %cache_empty.i.sink35.i = phi ptr [ %cache_empty.i.i, %if.then.i.i ], [ %cache_busy.i.i, %if.then6.i.i ]
  %29 = ptrtoint ptr %cache_empty.i.sink35.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %cache_empty.i.sink35.i, align 8
  %inc.i.i = add i64 %30, 1
  store i64 %inc.i.i, ptr %cache_empty.i.sink35.i, align 8
  %page_pool.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 24
  %31 = ptrtoint ptr %page_pool.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %page_pool.i, align 4
  %call.i.i5 = tail call ptr @page_pool_alloc_pages(ptr noundef %32, i32 noundef 10784) #10
  %33 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %dma_info, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i5, ptr %33, align 4
  %tobool.not.i6 = icmp eq ptr %call.i.i5, null
  br i1 %tobool.not.i6, label %if.end.i7.return_crit_edge, label %if.end6.i, !prof !69

if.end.i7.return_crit_edge:                       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end6.i:                                        ; preds = %if.end.i7
  %pdev.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 2
  %35 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i, align 4
  %map_dir.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %map_dir.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %map_dir.i, align 8
  %conv.i = zext i8 %38 to i32
  %call7.i = tail call i32 @dma_map_page_attrs(ptr noundef %36, ptr noundef nonnull %call.i.i5, i32 noundef 0, i32 noundef 4096, i32 noundef %conv.i, i32 noundef 32) #10
  %39 = ptrtoint ptr %dma_info to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call7.i, ptr %dma_info, align 4
  %40 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %41, i32 noundef %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i)
  %cmp.i33.not.i = icmp eq i32 %call7.i, -1
  br i1 %cmp.i33.not.i, label %if.then18.i, label %if.end6.i.return_crit_edge, !prof !69

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then18.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %page_pool.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %page_pool.i, align 4
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %33, align 4
  tail call void @page_pool_put_page(ptr noundef %43, ptr noundef %45, i32 noundef -1, i1 noundef zeroext true) #10
  %46 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %33, align 4
  br label %return

return:                                           ; preds = %if.then18.i, %if.end6.i.return_crit_edge, %if.end.i7.return_crit_edge, %mlx5e_rx_cache_get.exit.i, %if.end.i, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i ], [ -12, %if.then.return_crit_edge ], [ -12, %if.then18.i ], [ 0, %mlx5e_rx_cache_get.exit.i ], [ -12, %if.end.i7.return_crit_edge ], [ 0, %if.end6.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xp_can_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mlx5e_post_nop(ptr nocapture noundef readonly %wq, i32 noundef %sqn, ptr nocapture noundef %pc) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
declare dso_local ptr @xp_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_ipsec_handle_rx_skb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_devlink_trap_report(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @mlx5e_rx_handlers_nic, !1, !"mlx5e_rx_handlers_nic", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rx.c", i32 71, i32 32}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rx.c", i32 895, i32 5}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rx.c", i32 926, i32 5}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mlx5e_rx_handlers_rep, !10, !"mlx5e_rx_handlers_rep", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rx.c", i32 1764, i32 32}
!11 = !{ptr @mlx5i_rx_handlers, !12, !"mlx5i_rx_handlers", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rx.c", i32 2295, i32 32}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rx.c", i32 2358, i32 23}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rx.c", i32 2364, i32 24}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rx.c", i32 2370, i32 24}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rx.c", i32 2393, i32 23}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/mm.h", i32 717, i32 2}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/netdevice.h", i32 4975, i32 36}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/netdevice.h", i32 4976, i32 33}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/netdevice.h", i32 4977, i32 36}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/netdevice.h", i32 4978, i32 35}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/netdevice.h", i32 4979, i32 31}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/netdevice.h", i32 4980, i32 28}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/netdevice.h", i32 4983, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/netdevice.h", i32 4984, i32 9}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h", i32 335, i32 6}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/mlx5/cq.h", i32 199, i32 17}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rx.c", i32 2198, i32 3}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mlx5i_complete_rx_cqe._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @mlx5i_complete_rx_cqe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i8 0, i8 2}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2153381466, i64 2153381950, i64 2153381503, i64 2153381559, i64 2153381593, i64 2153381617, i64 2153381658, i64 2153381679, i64 2153381707, i64 2153381741}
!71 = !{i64 2153351711, i64 2153352194, i64 2153351748, i64 2153351804, i64 2153351838, i64 2153351862, i64 2153351903, i64 2153351924, i64 2153351952, i64 2153351986}
!72 = !{i64 2148504337}
!73 = !{i64 2148419070, i64 2148419102, i64 2148419131, i64 2148419165, i64 2148419196, i64 2148419219}
!74 = !{i64 2148504566}
!75 = !{i64 2148897700, i64 2148897705, i64 2148897718, i64 2148897762, i64 2148897796, i64 2148897817}
!76 = !{i64 2160698559}
!77 = !{i64 2161879743}
!78 = !{i64 6517898, i64 6517939, i64 6517984}
!79 = !{i64 6516796}
!80 = !{i64 913376}
!81 = !{i64 2148415885, i64 2148415911, i64 2148415940, i64 2148415974, i64 2148416005, i64 2148416028}
!82 = !{i64 2161828858}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.peeled.count", i32 1}
!85 = !{i64 2161843529}
!86 = !{!"auto-init"}
!87 = !{i64 6517179, i64 6517218, i64 6517244, i64 6517268, i64 6517293, i64 6517319, i64 6517344, i64 6517370, i64 6517397, i64 6517423, i64 6517462, i64 6517506, i64 6517537, i64 6517562}
!88 = !{i64 6518149, i64 6518189, i64 6518217, i64 6518262}
!89 = distinct !{!89, !84}
!90 = !{i64 2160914694}
!91 = !{i64 2160914888}
!92 = !{i64 6091109}
