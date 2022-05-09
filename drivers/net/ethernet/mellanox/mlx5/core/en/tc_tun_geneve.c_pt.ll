; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_tc_tunnel = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_rq = type { %union.anon.185, %struct.anon.199, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.185 = type { %struct.anon.192 }
%struct.anon.192 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.194 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.193, i64, i32, [28 x i8] }
%union.anon.193 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { %struct.anon.196, [0 x %struct.mlx5_mtt] }
%struct.anon.196 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.199 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.182, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.182 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.188, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.191, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { i8, i8, i16, i32 }
%union.anon.191 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.200, i32 }
%union.anon.200 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.183, i32, i32 }
%union.anon.183 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.187 }
%union.anon.187 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.214, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.214 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.215 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.215 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.216 }
%struct.anon.216 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.netdev_net_notifier = type { %struct.list_head, ptr }
%struct.mlx5e_promisc_table = type { %struct.mlx5e_flow_table, ptr }
%struct.mlx5e_flow_table = type { i32, ptr, ptr }
%struct.mlx5e_l2_table = type { %struct.mlx5e_flow_table, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.mlx5e_l2_rule, %struct.mlx5e_l2_rule, ptr, i8, i8, i8 }
%struct.mlx5e_l2_rule = type { [8 x i8], ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.166, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.172, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.166 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.171] }
%struct.anon.171 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.149 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.149 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.172 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5e_encap_entry = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mlx5e_mpls_info, [6 x i8], ptr, i32, ptr, i32, i8, ptr, i32, %struct.refcount_struct, %struct.completion, i32, %struct.callback_head }
%struct.mlx5e_mpls_info = type { i32, i8, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.223, i16, i8, i8, i32, i16, i16 }
%union.anon.223 = type { %struct.anon.225 }
%struct.anon.225 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.anon.207 = type { i16, i16 }
%struct.flow_match_enc_opts = type { ptr, ptr }
%struct.flow_match_enc_keyid = type { ptr, ptr }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.flow_dissector_key_enc_opts = type { [255 x i8], i8, i16 }
%struct.geneve_opt = type { i16, i8, i8, [0 x i8] }

@geneve_tunnel = dso_local global { %struct.mlx5e_tc_tunnel, [56 x i8] } { %struct.mlx5e_tc_tunnel { i32 2, i32 3, ptr @mlx5e_tc_tun_can_offload_geneve, ptr @mlx5e_tc_tun_calc_hlen_geneve, ptr @mlx5e_tc_tun_init_encap_attr_geneve, ptr @mlx5e_gen_ip_tunnel_header_geneve, ptr @mlx5e_tc_tun_parse_udp_ports_geneve, ptr @mlx5e_tc_tun_parse_geneve, ptr @mlx5e_tc_tun_encap_info_equal_geneve, ptr null }, [56 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_check_udp_dport_geneve.__msg = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mlx5_core: Matched UDP dst port is not registered as a GENEVE port\00", [61 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"UDP port %d is not registered as a GENEVE port\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse_geneve_params.__msg = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mlx5_core: Matching on GENEVE OAM is not supported\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Matching on GENEVE OAM is not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse_geneve_vni.__msg = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mlx5_core: Matching on GENEVE VNI is not supported\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Matching on GENEVE VNI is not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse_geneve_options.__msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlx5_core: Matching on GENEVE options is not supported\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Matching on GENEVE options is not supported\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse_geneve_options.__msg.4 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"mlx5_core: Matching on GENEVE options: option type is not GENEVE\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Matching on GENEVE options: option type is not GENEVE\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse_geneve_options.__msg.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"mlx5_core: Matching on GENEVE options len is not supported\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Matching on GENEVE options len is not supported\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse_geneve_options.__msg.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mlx5_core: Matching on GENEVE options: unsupported options len\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Matching on GENEVE options: unsupported options len (len=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse_geneve_options.__msg.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"mlx5_core: Matching on GENEVE options: unsupported option len\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Matching on GENEVE options: unsupported option len (key=%d, mask=%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse_geneve_options.__msg.12 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mlx5_core: Matching on GENEVE options: can't match on 0 data field\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Matching on GENEVE options: can't match on 0 data field\0A\00", [39 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse_geneve_options.__msg.14 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"mlx5_core: Matching on GENEVE options: failed creating TLV opt object\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"Matching on GENEVE options: failed creating TLV opt object (class:type:len = 0x%x:0x%x:%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"geneve_tunnel\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 360, i32 24 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 38, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 41, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 293, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 294, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 144, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 145, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 182, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 185, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 192, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 195, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 202, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 204, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 215, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 218, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 235, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 238, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 245, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 248, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 255, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [62 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 258, i32 8 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @geneve_tunnel, ptr @mlx5e_tc_tun_check_udp_dport_geneve.__msg, ptr @.str, ptr @mlx5e_tc_tun_parse_geneve_params.__msg, ptr @.str.1, ptr @mlx5e_tc_tun_parse_geneve_vni.__msg, ptr @.str.2, ptr @mlx5e_tc_tun_parse_geneve_options.__msg, ptr @.str.3, ptr @mlx5e_tc_tun_parse_geneve_options.__msg.4, ptr @.str.5, ptr @mlx5e_tc_tun_parse_geneve_options.__msg.6, ptr @.str.7, ptr @mlx5e_tc_tun_parse_geneve_options.__msg.8, ptr @.str.9, ptr @mlx5e_tc_tun_parse_geneve_options.__msg.10, ptr @.str.11, ptr @mlx5e_tc_tun_parse_geneve_options.__msg.12, ptr @.str.13, ptr @mlx5e_tc_tun_parse_geneve_options.__msg.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_tunnel to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_check_udp_dport_geneve.__msg to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse_geneve_params.__msg to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse_geneve_vni.__msg to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse_geneve_options.__msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse_geneve_options.__msg.4 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse_geneve_options.__msg.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse_geneve_options.__msg.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse_geneve_options.__msg.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse_geneve_options.__msg.12 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse_geneve_options.__msg.14 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlx5e_tc_tun_can_offload_geneve(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 42
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and1 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool = icmp ne i32 %and1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_tc_tun_calc_hlen_geneve(ptr nocapture noundef readonly %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tun_info = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 6
  %0 = ptrtoint ptr %tun_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tun_info, align 4
  %options_len = getelementptr inbounds %struct.ip_tunnel_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %options_len, align 8
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 16
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlx5e_tc_tun_init_encap_attr_geneve(ptr nocapture noundef readnone %tunnel_dev, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %e, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 11
  %0 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @geneve_tunnel, ptr %tunnel, align 4
  %reformat_type = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 12
  %1 = ptrtoint ptr %reformat_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %reformat_type, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_gen_ip_tunnel_header_geneve(ptr nocapture noundef %buf, ptr nocapture noundef writeonly %ip_proto, ptr nocapture noundef readonly %e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tun_info1 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 6
  %0 = ptrtoint ptr %tun_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tun_info1, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %2 = ptrtoint ptr %ip_proto to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 17, ptr %ip_proto, align 1
  %tp_dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %tp_dst to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tp_dst, align 2
  %dest = getelementptr inbounds %struct.udphdr, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %dest, align 2
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %add.ptr, align 2
  %options_len = getelementptr inbounds %struct.ip_tunnel_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %options_len, align 8
  %9 = lshr i8 %8, 2
  %10 = zext i8 %9 to i16
  %bf.shl = shl nuw nsw i16 %10, 8
  store i16 %bf.shl, ptr %add.ptr, align 2
  %tun_flags = getelementptr inbounds %struct.ip_tunnel_key, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tun_flags, align 8
  %13 = lshr i16 %12, 2
  %bf.shl12 = and i16 %13, 128
  %bf.set14 = or i16 %bf.shl12, %bf.shl
  store i16 %bf.set14, ptr %add.ptr, align 2
  %14 = load i16, ptr %tun_flags, align 8
  %15 = lshr i16 %14, 4
  %bf.shl28 = and i16 %15, 64
  %bf.set30 = or i16 %bf.shl28, %bf.set14
  store i16 %bf.set30, ptr %add.ptr, align 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %1, align 8
  %vni = getelementptr i8, ptr %buf, i32 12
  %shr.i = lshr i64 %17, 16
  %conv.i = trunc i64 %shr.i to i8
  %18 = ptrtoint ptr %vni to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %vni, align 1
  %shr1.i = lshr i64 %17, 8
  %conv2.i = trunc i64 %shr1.i to i8
  %arrayidx3.i = getelementptr i8, ptr %buf, i32 13
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv2.i, ptr %arrayidx3.i, align 1
  %conv4.i = trunc i64 %17 to i8
  %arrayidx5.i = getelementptr i8, ptr %buf, i32 14
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %proto_type = getelementptr i8, ptr %buf, i32 10
  %21 = ptrtoint ptr %proto_type to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 25944, ptr %proto_type, align 2
  %22 = load i16, ptr %tun_flags, align 8
  %23 = and i16 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool37.not = icmp eq i16 %23, 0
  br i1 %tobool37.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %tobool40.not = icmp ult i8 %8, 4
  br i1 %tobool40.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %options = getelementptr i8, ptr %buf, i32 16
  %add.ptr.i = getelementptr %struct.ip_tunnel_info, ptr %1, i32 1
  %24 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %options_len, align 8
  %conv.i62 = zext i8 %25 to i32
  %26 = call ptr @memcpy(ptr %options, ptr %add.ptr.i, i32 %conv.i62)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tc_tun_parse_udp_ports_geneve(ptr noundef %priv, ptr noundef %spec, ptr noundef %f, ptr noundef %headers_c, ptr noundef %headers_v) #3 align 64 {
entry:
  %enc_ports.i = alloca %struct.flow_match_ports, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5e_tc_tun_parse_udp_ports(ptr noundef %priv, ptr noundef %spec, ptr noundef %f, ptr noundef %headers_c, ptr noundef %headers_v) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rule.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i.i, align 8
  %extack1.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %2 = ptrtoint ptr %extack1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_ports.i) #8
  %4 = ptrtoint ptr %enc_ports.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %enc_ports.i, align 4, !annotation !51
  %5 = getelementptr inbounds %struct.flow_match_ports, ptr %enc_ports.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !51
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i.i = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end.mlx5e_tc_tun_check_udp_dport_geneve.exit_crit_edge, label %if.end.i

if.end.mlx5e_tc_tun_check_udp_dport_geneve.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_tc_tun_check_udp_dport_geneve.exit

if.end.i:                                         ; preds = %if.end
  call void @flow_rule_match_enc_ports(ptr noundef %1, ptr noundef nonnull %enc_ports.i) #8
  %11 = ptrtoint ptr %enc_ports.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enc_ports.i, align 4
  %dst.i = getelementptr inbounds %struct.anon.207, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dst.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6081, i16 %14)
  %cmp.not.i = icmp eq i16 %14, 6081
  br i1 %cmp.not.i, label %if.end.i.mlx5e_tc_tun_check_udp_dport_geneve.exit_crit_edge, label %do.body.i

if.end.i.mlx5e_tc_tun_check_udp_dport_geneve.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_tc_tun_check_udp_dport_geneve.exit

do.body.i:                                        ; preds = %if.end.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_check_udp_dport_geneve.__msg) #8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i.if.end6.i_crit_edge, label %if.then5.i

do.body.i.if.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mlx5e_tc_tun_check_udp_dport_geneve.__msg, ptr %3, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %do.body.i.if.end6.i_crit_edge
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %16 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev.i, align 4
  %18 = ptrtoint ptr %enc_ports.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enc_ports.i, align 4
  %dst8.i = getelementptr inbounds %struct.anon.207, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %dst8.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dst8.i, align 2
  %conv9.i = zext i16 %21 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef %conv9.i) #11
  br label %mlx5e_tc_tun_check_udp_dport_geneve.exit

mlx5e_tc_tun_check_udp_dport_geneve.exit:         ; preds = %if.end6.i, %if.end.i.mlx5e_tc_tun_check_udp_dport_geneve.exit_crit_edge, %if.end.mlx5e_tc_tun_check_udp_dport_geneve.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %if.end6.i ], [ -95, %if.end.mlx5e_tc_tun_check_udp_dport_geneve.exit_crit_edge ], [ 0, %if.end.i.mlx5e_tc_tun_check_udp_dport_geneve.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_ports.i) #8
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_tc_tun_check_udp_dport_geneve.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mlx5e_tc_tun_check_udp_dport_geneve.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tc_tun_parse_geneve(ptr nocapture noundef readonly %priv, ptr nocapture noundef %spec, ptr nocapture noundef readonly %f, ptr nocapture noundef readnone %headers_c, ptr nocapture noundef readnone %headers_v) #3 align 64 {
entry:
  %opt_data_key.i = alloca i32, align 4
  %opt_data_mask.i = alloca i32, align 4
  %enc_opts.i = alloca %struct.flow_match_enc_opts, align 4
  %enc_keyid.i = alloca %struct.flow_match_enc_keyid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extack3.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %extack3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack3.i, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i, align 64
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr5.i = getelementptr i32, ptr %5, i32 24
  %6 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr5.i, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %do.body.i, label %do.end12.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse_geneve_params.__msg) #8
  %tobool6.not.i = icmp eq ptr %1, null
  br i1 %tobool6.not.i, label %do.body.i.mlx5e_tc_tun_parse_geneve_params.exit_crit_edge, label %if.then7.i

do.body.i.mlx5e_tc_tun_parse_geneve_params.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_tc_tun_parse_geneve_params.exit

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mlx5e_tc_tun_parse_geneve_params.__msg, ptr %1, align 4
  br label %mlx5e_tc_tun_parse_geneve_params.exit

do.end12.i:                                       ; preds = %entry
  %add.ptr13.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 22
  %10 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr13.i, align 4
  %or.i = or i32 %11, 1
  store i32 %or.i, ptr %add.ptr13.i, align 4
  %add.ptr22.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 22
  %12 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr22.i, align 4
  %and23.i = and i32 %13, -2
  store i32 %and23.i, ptr %add.ptr22.i, align 4
  %14 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev.i, align 64
  %arrayidx32.i = getelementptr %struct.mlx5_core_dev, ptr %15, i32 0, i32 8, i32 0, i32 8
  %16 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx32.i, align 8
  %add.ptr35.i = getelementptr i32, ptr %17, i32 24
  %18 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr35.i, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool38.not.i = icmp eq i32 %20, 0
  br i1 %tobool38.not.i, label %do.end12.i.if.end_crit_edge, label %do.end43.i

do.end12.i.if.end_crit_edge:                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end43.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr44.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 25
  %21 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr44.i, align 4
  %or46.i = or i32 %22, 65535
  store i32 %or46.i, ptr %add.ptr44.i, align 4
  %add.ptr55.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 25
  %23 = ptrtoint ptr %add.ptr55.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr55.i, align 4
  %and56.i = and i32 %24, -65536
  %or59.i = or i32 %and56.i, 25944
  store i32 %or59.i, ptr %add.ptr55.i, align 4
  br label %if.end

mlx5e_tc_tun_parse_geneve_params.exit:            ; preds = %if.then7.i, %do.body.i.mlx5e_tc_tun_parse_geneve_params.exit_crit_edge
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %25 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %do.end43.i, %do.end12.i.if.end_crit_edge
  %27 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %spec, align 4
  %29 = or i8 %28, 2
  store i8 %29, ptr %spec, align 4
  %rule.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %30 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rule.i.i, align 8
  %32 = ptrtoint ptr %extack3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %extack3.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_keyid.i) #8
  %34 = ptrtoint ptr %enc_keyid.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %enc_keyid.i, align 4, !annotation !51
  %35 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %enc_keyid.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %35, align 4, !annotation !51
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %31, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %and.i.i.i = and i32 %40, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end.if.end4_crit_edge, label %if.end.i16

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end.i16:                                       ; preds = %if.end
  call void @flow_rule_match_enc_keyid(ptr noundef %31, ptr noundef nonnull %enc_keyid.i) #8
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %35, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i15 = icmp eq i32 %44, 0
  br i1 %tobool.not.i15, label %if.end.i16.if.end4_crit_edge, label %if.end6.i

if.end.i16.if.end4_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end6.i:                                        ; preds = %if.end.i16
  %45 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mdev.i, align 64
  %arrayidx.i18 = getelementptr %struct.mlx5_core_dev, ptr %46, i32 0, i32 8, i32 0, i32 8
  %47 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i18, align 8
  %add.ptr8.i = getelementptr i32, ptr %48, i32 24
  %49 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr8.i, align 4
  %51 = and i32 %50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool9.not.i = icmp eq i32 %51, 0
  br i1 %tobool9.not.i, label %do.body.i19, label %do.body15.i

do.body.i19:                                      ; preds = %if.end6.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse_geneve_vni.__msg) #8
  %tobool11.not.i = icmp eq ptr %33, null
  br i1 %tobool11.not.i, label %do.body.i19.mlx5e_tc_tun_parse_geneve_vni.exit_crit_edge, label %if.then12.i

do.body.i19.mlx5e_tc_tun_parse_geneve_vni.exit_crit_edge: ; preds = %do.body.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_tc_tun_parse_geneve_vni.exit

if.then12.i:                                      ; preds = %do.body.i19
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @mlx5e_tc_tun_parse_geneve_vni.__msg, ptr %33, align 4
  br label %mlx5e_tc_tun_parse_geneve_vni.exit

do.body15.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr13.i, align 4
  %and22.i = and i32 %54, 255
  %shl.i = shl i32 %44, 8
  %or.i21 = or i32 %and22.i, %shl.i
  store i32 %or.i21, ptr %add.ptr13.i, align 4
  %55 = ptrtoint ptr %enc_keyid.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %enc_keyid.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %59 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr22.i, align 4
  %and34.i = and i32 %60, 255
  %shl36.i = shl i32 %58, 8
  %or37.i = or i32 %and34.i, %shl36.i
  store i32 %or37.i, ptr %add.ptr22.i, align 4
  br label %if.end4

mlx5e_tc_tun_parse_geneve_vni.exit:               ; preds = %if.then12.i, %do.body.i19.mlx5e_tc_tun_parse_geneve_vni.exit_crit_edge
  %netdev.i20 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %61 = ptrtoint ptr %netdev.i20 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %netdev.i20, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %62, ptr noundef nonnull @.str.2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_keyid.i) #8
  br label %cleanup

if.end4:                                          ; preds = %do.body15.i, %if.end.i16.if.end4_crit_edge, %if.end.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_keyid.i) #8
  %63 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdev.i, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %66, i32 43
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %68, 16
  %conv.i = and i32 %shr.i, 31
  %shr8.i = lshr i32 %68, 24
  %69 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rule.i.i, align 8
  %71 = ptrtoint ptr %extack3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %extack3.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt_data_key.i)
  %73 = ptrtoint ptr %opt_data_key.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %opt_data_key.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt_data_mask.i)
  %74 = ptrtoint ptr %opt_data_mask.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %opt_data_mask.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_opts.i) #8
  %75 = ptrtoint ptr %enc_opts.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 -1 to ptr), ptr %enc_opts.i, align 4, !annotation !51
  %76 = getelementptr inbounds %struct.flow_match_enc_opts, ptr %enc_opts.i, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 -1 to ptr), ptr %76, align 4, !annotation !51
  %78 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %70, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %and.i.i.i25 = and i32 %81, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i25)
  %tobool.i.i.not.i26 = icmp eq i32 %and.i.i.i25, 0
  br i1 %tobool.i.i.not.i26, label %if.end4.mlx5e_tc_tun_parse_geneve_options.exit_crit_edge, label %if.end.i28

if.end4.mlx5e_tc_tun_parse_geneve_options.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_tc_tun_parse_geneve_options.exit

if.end.i28:                                       ; preds = %if.end4
  call void @flow_rule_match_enc_opts(ptr noundef %70, ptr noundef nonnull %enc_opts.i) #8
  %82 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %76, align 4
  %call23.i = call ptr @memchr_inv(ptr noundef %83, i32 noundef 0, i32 noundef 255) #8
  %tobool.not.i27 = icmp eq ptr %call23.i, null
  br i1 %tobool.not.i27, label %if.end.i28.if.end38.i_crit_edge, label %land.lhs.true.i

if.end.i28.if.end38.i_crit_edge:                  ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %if.end.i28
  %84 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mdev.i, align 64
  %arrayidx27.i = getelementptr %struct.mlx5_core_dev, ptr %85, i32 0, i32 8, i32 0, i32 8
  %86 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx27.i, align 8
  %add.ptr30.i = getelementptr i32, ptr %87, i32 26
  %88 = ptrtoint ptr %add.ptr30.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %tobool33.not.i = icmp sgt i32 %89, -1
  br i1 %tobool33.not.i, label %do.body.i29, label %land.lhs.true.i.if.end38.i_crit_edge

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

do.body.i29:                                      ; preds = %land.lhs.true.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse_geneve_options.__msg) #8
  %tobool35.not.i = icmp eq ptr %72, null
  br i1 %tobool35.not.i, label %do.body.i29.if.end37.i_crit_edge, label %if.then36.i

do.body.i29.if.end37.i_crit_edge:                 ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then36.i:                                      ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @mlx5e_tc_tun_parse_geneve_options.__msg, ptr %72, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i, %do.body.i29.if.end37.i_crit_edge
  %netdev.i30 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %91 = ptrtoint ptr %netdev.i30 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %netdev.i30, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %92, ptr noundef nonnull @.str.3) #11
  br label %mlx5e_tc_tun_parse_geneve_options.exit

if.end38.i:                                       ; preds = %land.lhs.true.i.if.end38.i_crit_edge, %if.end.i28.if.end38.i_crit_edge
  %93 = ptrtoint ptr %enc_opts.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %enc_opts.i, align 4
  %dst_opt_type.i = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %dst_opt_type.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %dst_opt_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %96)
  %cmp.not.i = icmp eq i16 %96, 2048
  br i1 %cmp.not.i, label %if.end51.i, label %do.body42.i

do.body42.i:                                      ; preds = %if.end38.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse_geneve_options.__msg.4) #8
  %tobool44.not.i = icmp eq ptr %72, null
  br i1 %tobool44.not.i, label %do.body42.i.if.end47.i_crit_edge, label %if.then45.i

do.body42.i.if.end47.i_crit_edge:                 ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.then45.i:                                      ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @mlx5e_tc_tun_parse_geneve_options.__msg.4, ptr %72, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then45.i, %do.body42.i.if.end47.i_crit_edge
  %netdev50.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %98 = ptrtoint ptr %netdev50.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %netdev50.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %99, ptr noundef nonnull @.str.5) #11
  br label %mlx5e_tc_tun_parse_geneve_options.exit

if.end51.i:                                       ; preds = %if.end38.i
  %100 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %76, align 4
  %len.i = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool54.not.i = icmp eq i8 %103, 0
  br i1 %tobool54.not.i, label %if.end51.i.if.end76.i_crit_edge, label %land.lhs.true55.i

if.end51.i.if.end76.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

land.lhs.true55.i:                                ; preds = %if.end51.i
  %104 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mdev.i, align 64
  %arrayidx59.i = getelementptr %struct.mlx5_core_dev, ptr %105, i32 0, i32 8, i32 0, i32 8
  %106 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx59.i, align 8
  %add.ptr62.i = getelementptr i32, ptr %107, i32 24
  %108 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr62.i, align 4
  %110 = and i32 %109, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool65.not.i = icmp eq i32 %110, 0
  br i1 %tobool65.not.i, label %do.body67.i, label %land.lhs.true55.i.if.end76.i_crit_edge

land.lhs.true55.i.if.end76.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

do.body67.i:                                      ; preds = %land.lhs.true55.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse_geneve_options.__msg.6) #8
  %tobool69.not.i = icmp eq ptr %72, null
  br i1 %tobool69.not.i, label %do.body67.i.if.end72.i_crit_edge, label %if.then70.i

do.body67.i.if.end72.i_crit_edge:                 ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.then70.i:                                      ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @mlx5e_tc_tun_parse_geneve_options.__msg.6, ptr %72, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then70.i, %do.body67.i.if.end72.i_crit_edge
  %netdev75.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %112 = ptrtoint ptr %netdev75.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %netdev75.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %113, ptr noundef nonnull @.str.7) #11
  br label %mlx5e_tc_tun_parse_geneve_options.exit

if.end76.i:                                       ; preds = %land.lhs.true55.i.if.end76.i_crit_edge, %if.end51.i.if.end76.i_crit_edge
  %len78.i = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %94, i32 0, i32 1
  %114 = ptrtoint ptr %len78.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %len78.i, align 1
  %116 = lshr i8 %115, 2
  %div.i = zext i8 %116 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %mul.i = mul nuw nsw i32 %add.i, %shr8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %div.i)
  %cmp82.i = icmp ult i32 %mul.i, %div.i
  br i1 %cmp82.i, label %do.body85.i, label %do.body98.i

do.body85.i:                                      ; preds = %if.end76.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse_geneve_options.__msg.8) #8
  %tobool87.not.i = icmp eq ptr %72, null
  br i1 %tobool87.not.i, label %do.body85.i.if.end90.i_crit_edge, label %if.then88.i

do.body85.i.if.end90.i_crit_edge:                 ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

if.then88.i:                                      ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @mlx5e_tc_tun_parse_geneve_options.__msg.8, ptr %72, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then88.i, %do.body85.i.if.end90.i_crit_edge
  %netdev93.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %118 = ptrtoint ptr %netdev93.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %netdev93.i, align 4
  %120 = ptrtoint ptr %enc_opts.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %enc_opts.i, align 4
  %len95.i = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %len95.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %len95.i, align 1
  %conv96.i = zext i8 %123 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %119, ptr noundef nonnull @.str.9, i32 noundef %conv96.i) #11
  br label %mlx5e_tc_tun_parse_geneve_options.exit

do.body98.i:                                      ; preds = %if.end76.i
  %124 = lshr i8 %103, 2
  %div102.i = zext i8 %124 to i32
  %add.ptr106.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 25
  %125 = ptrtoint ptr %add.ptr106.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr106.i, align 4
  %and107.i = and i32 %126, -4128769
  %shl.i31 = shl nuw nsw i32 %div102.i, 16
  %or.i32 = or i32 %and107.i, %shl.i31
  store i32 %or.i32, ptr %add.ptr106.i, align 4
  %127 = ptrtoint ptr %len78.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %len78.i, align 1
  %129 = lshr i8 %128, 2
  %div117.i = zext i8 %129 to i32
  %add.ptr121.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 25
  %130 = ptrtoint ptr %add.ptr121.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr121.i, align 4
  %and122.i = and i32 %131, -4128769
  %shl124.i = shl nuw nsw i32 %div117.i, 16
  %or125.i = or i32 %shl124.i, %and122.i
  store i32 %or125.i, ptr %add.ptr121.i, align 4
  %132 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %101, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %cmp136.i = icmp eq i16 %133, 0
  br i1 %cmp136.i, label %land.lhs.true138.i, label %do.body98.i.if.end149.i_crit_edge

do.body98.i.if.end149.i_crit_edge:                ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149.i

land.lhs.true138.i:                               ; preds = %do.body98.i
  %type.i = getelementptr inbounds %struct.geneve_opt, ptr %101, i32 0, i32 1
  %134 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp140.i = icmp eq i8 %135, 0
  br i1 %cmp140.i, label %land.lhs.true142.i, label %land.lhs.true138.i.if.end149.i_crit_edge

land.lhs.true138.i.if.end149.i_crit_edge:         ; preds = %land.lhs.true138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149.i

land.lhs.true142.i:                               ; preds = %land.lhs.true138.i
  %opt_data.i = getelementptr inbounds %struct.geneve_opt, ptr %101, i32 0, i32 3
  %length.i = getelementptr inbounds %struct.geneve_opt, ptr %101, i32 0, i32 2
  %136 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load.i = load i8, ptr %length.i, align 1
  %bf.clear.i = shl i8 %bf.load.i, 2
  %137 = and i8 %bf.clear.i, 124
  %mul145.i = zext i8 %137 to i32
  %call146.i = call ptr @memchr_inv(ptr noundef %opt_data.i, i32 noundef 0, i32 noundef %mul145.i) #8
  %tobool147.not.i = icmp eq ptr %call146.i, null
  br i1 %tobool147.not.i, label %land.lhs.true142.i.mlx5e_tc_tun_parse_geneve_options.exit_crit_edge, label %land.lhs.true142.i.if.end149.i_crit_edge

land.lhs.true142.i.if.end149.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149.i

land.lhs.true142.i.mlx5e_tc_tun_parse_geneve_options.exit_crit_edge: ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_tc_tun_parse_geneve_options.exit

if.end149.i:                                      ; preds = %land.lhs.true142.i.if.end149.i_crit_edge, %land.lhs.true138.i.if.end149.i_crit_edge, %do.body98.i.if.end149.i_crit_edge
  %length150.i = getelementptr inbounds %struct.geneve_opt, ptr %94, i32 0, i32 2
  %138 = ptrtoint ptr %length150.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %bf.load151.i = load i8, ptr %length150.i, align 1
  %bf.clear152.i = and i8 %bf.load151.i, 31
  %conv153.i = zext i8 %bf.clear152.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv153.i)
  %cmp155.i = icmp ult i32 %conv.i, %conv153.i
  br i1 %cmp155.i, label %do.body158.i, label %if.end175.i

do.body158.i:                                     ; preds = %if.end149.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse_geneve_options.__msg.10) #8
  %tobool160.not.i = icmp eq ptr %72, null
  br i1 %tobool160.not.i, label %do.body158.i.if.end163.i_crit_edge, label %if.then161.i

do.body158.i.if.end163.i_crit_edge:               ; preds = %do.body158.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i

if.then161.i:                                     ; preds = %do.body158.i
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @mlx5e_tc_tun_parse_geneve_options.__msg.10, ptr %72, align 4
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.then161.i, %do.body158.i.if.end163.i_crit_edge
  %netdev166.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %140 = ptrtoint ptr %netdev166.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %netdev166.i, align 4
  %142 = ptrtoint ptr %length150.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load168.i = load i8, ptr %length150.i, align 1
  %bf.clear169.i = and i8 %bf.load168.i, 31
  %conv170.i = zext i8 %bf.clear169.i to i32
  %length171.i = getelementptr inbounds %struct.geneve_opt, ptr %101, i32 0, i32 2
  %143 = ptrtoint ptr %length171.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load172.i = load i8, ptr %length171.i, align 1
  %bf.clear173.i = and i8 %bf.load172.i, 31
  %conv174.i = zext i8 %bf.clear173.i to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %141, ptr noundef nonnull @.str.11, i32 noundef %conv170.i, i32 noundef %conv174.i) #11
  br label %mlx5e_tc_tun_parse_geneve_options.exit

if.end175.i:                                      ; preds = %if.end149.i
  %opt_data176.i = getelementptr inbounds %struct.geneve_opt, ptr %94, i32 0, i32 3
  %mul182.i = shl nuw nsw i32 %conv153.i, 2
  %call183.i = call ptr @memchr_inv(ptr noundef %opt_data176.i, i32 noundef 0, i32 noundef %mul182.i) #8
  %tobool184.not.i = icmp eq ptr %call183.i, null
  br i1 %tobool184.not.i, label %do.body186.i, label %if.end195.i

do.body186.i:                                     ; preds = %if.end175.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse_geneve_options.__msg.12) #8
  %tobool188.not.i = icmp eq ptr %72, null
  br i1 %tobool188.not.i, label %do.body186.i.if.end191.i_crit_edge, label %if.then189.i

do.body186.i.if.end191.i_crit_edge:               ; preds = %do.body186.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i

if.then189.i:                                     ; preds = %do.body186.i
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @mlx5e_tc_tun_parse_geneve_options.__msg.12, ptr %72, align 4
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.then189.i, %do.body186.i.if.end191.i_crit_edge
  %netdev194.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %145 = ptrtoint ptr %netdev194.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %netdev194.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %146, ptr noundef nonnull @.str.13) #11
  br label %mlx5e_tc_tun_parse_geneve_options.exit

if.end195.i:                                      ; preds = %if.end175.i
  %147 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mdev.i, align 64
  %geneve.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %148, i32 0, i32 23
  %149 = ptrtoint ptr %geneve.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %geneve.i, align 8
  %call197.i = call i32 @mlx5_geneve_tlv_option_add(ptr noundef %150, ptr noundef %94) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197.i)
  %tobool198.not.i = icmp eq i32 %call197.i, 0
  br i1 %tobool198.not.i, label %if.end217.i, label %do.body200.i

do.body200.i:                                     ; preds = %if.end195.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse_geneve_options.__msg.14) #8
  %tobool202.not.i = icmp eq ptr %72, null
  br i1 %tobool202.not.i, label %do.body200.i.if.end205.i_crit_edge, label %if.then203.i

do.body200.i.if.end205.i_crit_edge:               ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205.i

if.then203.i:                                     ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @mlx5e_tc_tun_parse_geneve_options.__msg.14, ptr %72, align 4
  br label %if.end205.i

if.end205.i:                                      ; preds = %if.then203.i, %do.body200.i.if.end205.i_crit_edge
  %netdev208.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %152 = ptrtoint ptr %netdev208.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %netdev208.i, align 4
  %154 = ptrtoint ptr %94 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %94, align 2
  %conv210.i = zext i16 %155 to i32
  %type211.i = getelementptr inbounds %struct.geneve_opt, ptr %94, i32 0, i32 1
  %156 = ptrtoint ptr %type211.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %type211.i, align 2
  %conv212.i = zext i8 %157 to i32
  %158 = ptrtoint ptr %length150.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load214.i = load i8, ptr %length150.i, align 1
  %bf.clear215.i = and i8 %bf.load214.i, 31
  %conv216.i = zext i8 %bf.clear215.i to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %153, ptr noundef nonnull @.str.15, i32 noundef %conv210.i, i32 noundef %conv212.i, i32 noundef %conv216.i) #11
  br label %mlx5e_tc_tun_parse_geneve_options.exit

if.end217.i:                                      ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %length150.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %bf.load221.i = load i8, ptr %length150.i, align 1
  %bf.clear222.i = shl i8 %bf.load221.i, 2
  %160 = and i8 %bf.clear222.i, 124
  %mul224.i = zext i8 %160 to i32
  %161 = call ptr @memcpy(ptr %opt_data_key.i, ptr %opt_data176.i, i32 %mul224.i)
  %opt_data225.i = getelementptr inbounds %struct.geneve_opt, ptr %101, i32 0, i32 3
  %length227.i = getelementptr inbounds %struct.geneve_opt, ptr %101, i32 0, i32 2
  %162 = ptrtoint ptr %length227.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %bf.load228.i = load i8, ptr %length227.i, align 1
  %bf.clear229.i = shl i8 %bf.load228.i, 2
  %163 = and i8 %bf.clear229.i, 124
  %mul231.i = zext i8 %163 to i32
  %164 = call ptr @memcpy(ptr %opt_data_mask.i, ptr %opt_data225.i, i32 %mul231.i)
  %165 = ptrtoint ptr %opt_data_key.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %opt_data_key.i.0.opt_data_key.i.0.opt_data_key.0.opt_data_key.0.opt_data_key.0..i = load i32, ptr %opt_data_key.i, align 4
  %add.ptr237.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 73
  %166 = ptrtoint ptr %add.ptr237.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %opt_data_key.i.0.opt_data_key.i.0.opt_data_key.0.opt_data_key.0.opt_data_key.0..i, ptr %add.ptr237.i, align 4
  %167 = ptrtoint ptr %opt_data_mask.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %opt_data_mask.i.0.opt_data_mask.i.0.opt_data_mask.0.opt_data_mask.0.opt_data_mask.0..i = load i32, ptr %opt_data_mask.i, align 4
  %add.ptr250.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 73
  %168 = ptrtoint ptr %add.ptr250.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %opt_data_mask.i.0.opt_data_mask.i.0.opt_data_mask.0.opt_data_mask.0.opt_data_mask.0..i, ptr %add.ptr250.i, align 4
  %169 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %spec, align 4
  %171 = or i8 %170, 16
  store i8 %171, ptr %spec, align 4
  br label %mlx5e_tc_tun_parse_geneve_options.exit

mlx5e_tc_tun_parse_geneve_options.exit:           ; preds = %if.end217.i, %if.end205.i, %if.end191.i, %if.end163.i, %land.lhs.true142.i.mlx5e_tc_tun_parse_geneve_options.exit_crit_edge, %if.end90.i, %if.end72.i, %if.end47.i, %if.end37.i, %if.end4.mlx5e_tc_tun_parse_geneve_options.exit_crit_edge
  %retval.0.i33 = phi i32 [ -95, %if.end47.i ], [ -95, %if.end90.i ], [ -95, %if.end163.i ], [ %call197.i, %if.end205.i ], [ 0, %if.end217.i ], [ -95, %if.end191.i ], [ -95, %if.end72.i ], [ -95, %if.end37.i ], [ 0, %if.end4.mlx5e_tc_tun_parse_geneve_options.exit_crit_edge ], [ 0, %land.lhs.true142.i.mlx5e_tc_tun_parse_geneve_options.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_opts.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt_data_mask.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt_data_key.i)
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_tc_tun_parse_geneve_options.exit, %mlx5e_tc_tun_parse_geneve_vni.exit, %mlx5e_tc_tun_parse_geneve_params.exit
  %retval.0 = phi i32 [ %retval.0.i33, %mlx5e_tc_tun_parse_geneve_options.exit ], [ -95, %mlx5e_tc_tun_parse_geneve_params.exit ], [ -95, %mlx5e_tc_tun_parse_geneve_vni.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlx5e_tc_tun_encap_info_equal_geneve(ptr noundef %a, ptr noundef %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mlx5e_tc_tun_encap_info_equal_generic(ptr noundef %a, ptr noundef %b) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %tun_flags = getelementptr inbounds %struct.ip_tunnel_key, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tun_flags, align 8
  %4 = and i16 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b, align 4
  %tun_flags3 = getelementptr inbounds %struct.ip_tunnel_key, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tun_flags3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tun_flags3, align 8
  %9 = and i16 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool6.not = icmp eq i16 %9, 0
  %or.cond = select i1 %tobool.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %9)
  %cmp.not = icmp eq i16 %4, %9
  br i1 %cmp.not, label %if.end20, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %options_len = getelementptr inbounds %struct.ip_tunnel_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %options_len, align 8
  %options_len27 = getelementptr inbounds %struct.ip_tunnel_info, ptr %6, i32 0, i32 2
  %12 = ptrtoint ptr %options_len27 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %options_len27, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp29 = icmp eq i8 %11, %13
  br i1 %cmp29, label %land.rhs, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %conv26 = zext i8 %11 to i32
  %add.ptr31 = getelementptr %struct.ip_tunnel_info, ptr %1, i32 1
  %add.ptr32 = getelementptr %struct.ip_tunnel_info, ptr %6, i32 1
  %bcmp = tail call i32 @bcmp(ptr %add.ptr31, ptr %add.ptr32, i32 %conv26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp36 = icmp eq i32 %bcmp, 0
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.end20.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ false, %if.end13.cleanup_crit_edge ], [ false, %if.end20.cleanup_crit_edge ], [ %cmp36, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_tun_parse_udp_ports(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ports(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_keyid(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_opts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_geneve_tlv_option_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_tc_tun_encap_info_equal_generic(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @geneve_tunnel, !1, !"geneve_tunnel", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 360, i32 24}
!2 = !{ptr @mlx5e_tc_tun_check_udp_dport_geneve.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 38, i32 3}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 41, i32 8}
!6 = !{ptr @mlx5e_tc_tun_parse_geneve_params.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 293, i32 3}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 294, i32 29}
!10 = !{ptr @mlx5e_tc_tun_parse_geneve_vni.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 144, i32 3}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 145, i32 29}
!14 = !{ptr @mlx5e_tc_tun_parse_geneve_options.__msg, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 182, i32 3}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 185, i32 8}
!18 = !{ptr @mlx5e_tc_tun_parse_geneve_options.__msg.4, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 192, i32 3}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 195, i32 8}
!22 = !{ptr @mlx5e_tc_tun_parse_geneve_options.__msg.6, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 202, i32 3}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 204, i32 8}
!26 = !{ptr @mlx5e_tc_tun_parse_geneve_options.__msg.8, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 215, i32 3}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 218, i32 8}
!30 = !{ptr @mlx5e_tc_tun_parse_geneve_options.__msg.10, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 235, i32 3}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 238, i32 8}
!34 = !{ptr @mlx5e_tc_tun_parse_geneve_options.__msg.12, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 245, i32 3}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 248, i32 8}
!38 = !{ptr @mlx5e_tc_tun_parse_geneve_options.__msg.14, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 255, i32 3}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_geneve.c", i32 258, i32 8}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
