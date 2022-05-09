; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_vxlan.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_vxlan.c"
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
%struct.ip_tunnel_key = type { i64, %union.anon.223, i16, i8, i8, i32, i16, i16 }
%union.anon.223 = type { %struct.anon.225 }
%struct.anon.225 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.anon.207 = type { i16, i16 }
%struct.flow_match_enc_keyid = type { ptr, ptr }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }

@vxlan_tunnel = dso_local global { %struct.mlx5e_tc_tunnel, [56 x i8] } { %struct.mlx5e_tc_tunnel { i32 1, i32 3, ptr @mlx5e_tc_tun_can_offload_vxlan, ptr @mlx5e_tc_tun_calc_hlen_vxlan, ptr @mlx5e_tc_tun_init_encap_attr_vxlan, ptr @mlx5e_gen_ip_tunnel_header_vxlan, ptr @mlx5e_tc_tun_parse_udp_ports_vxlan, ptr @mlx5e_tc_tun_parse_vxlan, ptr @mlx5e_tc_tun_encap_info_equal_generic, ptr @mlx5e_tc_tun_get_remote_ifindex }, [56 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_init_encap_attr_vxlan.__msg = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mlx5_core: vxlan udp dport was not registered with the HW\00", [38 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%d isn't an offloaded vxlan udp dport\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_check_udp_dport_vxlan.__msg = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"mlx5_core: Matched UDP dst port is not registered as a VXLAN port\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"UDP port %d is not registered as a VXLAN port\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse_vxlan.__msg = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mlx5_core: Matching on VXLAN VNI is not supported\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Matching on VXLAN VNI is not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [13 x i8] c"vxlan_tunnel\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 152, i32 24 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 70, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 73, i32 8 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 34, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 37, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 127, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [61 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_vxlan.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 130, i32 8 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @vxlan_tunnel, ptr @mlx5e_tc_tun_init_encap_attr_vxlan.__msg, ptr @.str, ptr @mlx5e_tc_tun_check_udp_dport_vxlan.__msg, ptr @.str.1, ptr @mlx5e_tc_tun_parse_vxlan.__msg, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxlan_tunnel to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_init_encap_attr_vxlan.__msg to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_check_udp_dport_vxlan.__msg to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse_vxlan.__msg to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlx5e_tc_tun_can_offload_vxlan(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp slt i32 %5, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_tc_tun_calc_hlen_vxlan(ptr nocapture noundef readnone %e) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tc_tun_init_encap_attr_vxlan(ptr nocapture noundef readnone %tunnel_dev, ptr nocapture noundef readonly %priv, ptr nocapture noundef %e, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tun_info = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 6
  %0 = ptrtoint ptr %tun_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tun_info, align 4
  %tp_dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %tp_dst to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tp_dst, align 2
  %conv = zext i16 %3 to i32
  %tunnel = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 11
  %4 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vxlan_tunnel, ptr %tunnel, align 4
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 64
  %vxlan = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %vxlan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vxlan, align 4
  %call = tail call zeroext i1 @mlx5_vxlan_lookup_port(ptr noundef %8, i16 noundef zeroext %3) #8
  br i1 %call, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_init_encap_attr_vxlan.__msg) #8
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then2

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mlx5e_tc_tun_init_encap_attr_vxlan.__msg, ptr %extack, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %do.body.if.end_crit_edge
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %conv) #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reformat_type = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 12
  %12 = ptrtoint ptr %reformat_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %reformat_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -95, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_gen_ip_tunnel_header_vxlan(ptr nocapture noundef writeonly %buf, ptr nocapture noundef writeonly %ip_proto, ptr nocapture noundef readonly %e) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tun_info = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 6
  %0 = ptrtoint ptr %tun_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tun_info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %conv.i = trunc i64 %3 to i32
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %4 = ptrtoint ptr %ip_proto to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 17, ptr %ip_proto, align 1
  %tp_dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %tp_dst to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tp_dst, align 2
  %dest = getelementptr inbounds %struct.udphdr, ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %dest, align 2
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 134217728, ptr %add.ptr, align 4
  %shl.i = shl i32 %conv.i, 8
  %vx_vni = getelementptr i8, ptr %buf, i32 12
  %9 = ptrtoint ptr %vx_vni to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl.i, ptr %vx_vni, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tc_tun_parse_udp_ports_vxlan(ptr noundef %priv, ptr noundef %spec, ptr noundef %f, ptr noundef %headers_c, ptr noundef %headers_v) #2 align 64 {
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
  store ptr inttoptr (i32 -1 to ptr), ptr %enc_ports.i, align 4, !annotation !23
  %5 = getelementptr inbounds %struct.flow_match_ports, ptr %enc_ports.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !23
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i.i = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end.mlx5e_tc_tun_check_udp_dport_vxlan.exit_crit_edge, label %if.end.i

if.end.mlx5e_tc_tun_check_udp_dport_vxlan.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_tc_tun_check_udp_dport_vxlan.exit

if.end.i:                                         ; preds = %if.end
  call void @flow_rule_match_enc_ports(ptr noundef %1, ptr noundef nonnull %enc_ports.i) #8
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %11 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev.i, align 64
  %vxlan.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %vxlan.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vxlan.i, align 4
  %15 = ptrtoint ptr %enc_ports.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enc_ports.i, align 4
  %dst.i = getelementptr inbounds %struct.anon.207, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dst.i, align 2
  %call3.i = call zeroext i1 @mlx5_vxlan_lookup_port(ptr noundef %14, i16 noundef zeroext %18) #8
  br i1 %call3.i, label %if.end.i.mlx5e_tc_tun_check_udp_dport_vxlan.exit_crit_edge, label %do.body.i

if.end.i.mlx5e_tc_tun_check_udp_dport_vxlan.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_tc_tun_check_udp_dport_vxlan.exit

do.body.i:                                        ; preds = %if.end.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_check_udp_dport_vxlan.__msg) #8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i.if.end6.i_crit_edge, label %if.then5.i

do.body.i.if.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mlx5e_tc_tun_check_udp_dport_vxlan.__msg, ptr %3, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %do.body.i.if.end6.i_crit_edge
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %20 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev.i, align 4
  %22 = ptrtoint ptr %enc_ports.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enc_ports.i, align 4
  %dst8.i = getelementptr inbounds %struct.anon.207, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dst8.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dst8.i, align 2
  %conv.i = zext i16 %25 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef %conv.i) #11
  br label %mlx5e_tc_tun_check_udp_dport_vxlan.exit

mlx5e_tc_tun_check_udp_dport_vxlan.exit:          ; preds = %if.end6.i, %if.end.i.mlx5e_tc_tun_check_udp_dport_vxlan.exit_crit_edge, %if.end.mlx5e_tc_tun_check_udp_dport_vxlan.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %if.end6.i ], [ -95, %if.end.mlx5e_tc_tun_check_udp_dport_vxlan.exit_crit_edge ], [ 0, %if.end.i.mlx5e_tc_tun_check_udp_dport_vxlan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_ports.i) #8
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_tc_tun_check_udp_dport_vxlan.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mlx5e_tc_tun_check_udp_dport_vxlan.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tc_tun_parse_vxlan(ptr nocapture noundef readonly %priv, ptr nocapture noundef %spec, ptr nocapture noundef readonly %f, ptr nocapture noundef readnone %headers_c, ptr nocapture noundef readnone %headers_v) #2 align 64 {
entry:
  %enc_keyid = alloca %struct.flow_match_enc_keyid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  %extack1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %2 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_keyid) #8
  %4 = ptrtoint ptr %enc_keyid to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %enc_keyid, align 4, !annotation !23
  %5 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %enc_keyid, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !23
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @flow_rule_match_enc_keyid(ptr noundef %1, ptr noundef nonnull %enc_keyid) #8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %15 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev, align 64
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %16, i32 0, i32 8, i32 0, i32 8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 8
  %add.ptr8 = getelementptr i32, ptr %18, i32 24
  %19 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr8, align 4
  %21 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not = icmp eq i32 %21, 0
  br i1 %tobool9.not, label %do.body, label %do.body15

do.body:                                          ; preds = %if.end6
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse_vxlan.__msg) #8
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %do.body.if.end13_crit_edge, label %if.then12

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mlx5e_tc_tun_parse_vxlan.__msg, ptr %3, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.body.if.end13_crit_edge
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %23 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.2) #11
  br label %cleanup

do.body15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr21 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 21
  %25 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr21, align 4
  %and22 = and i32 %26, 255
  %shl = shl i32 %14, 8
  %or = or i32 %and22, %shl
  store i32 %or, ptr %add.ptr21, align 4
  %27 = ptrtoint ptr %enc_keyid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enc_keyid, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add.ptr33 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 21
  %31 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr33, align 4
  %and34 = and i32 %32, 255
  %shl36 = shl i32 %30, 8
  %or37 = or i32 %and34, %shl36
  store i32 %or37, ptr %add.ptr33, align 4
  %33 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %spec, align 4
  %35 = or i8 %34, 2
  store i8 %35, ptr %spec, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body15, %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body15 ], [ -95, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_keyid) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_tc_tun_encap_info_equal_generic(ptr noundef, ptr noundef) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_tc_tun_get_remote_ifindex(ptr nocapture noundef readonly %mirred_dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_ifindex = getelementptr i8, ptr %mirred_dev, i32 2388
  %0 = ptrtoint ptr %remote_ifindex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %remote_ifindex, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_vxlan_lookup_port(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_tun_parse_udp_ports(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ports(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_keyid(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @vxlan_tunnel, !1, !"vxlan_tunnel", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_vxlan.c", i32 152, i32 24}
!2 = !{ptr @mlx5e_tc_tun_init_encap_attr_vxlan.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_vxlan.c", i32 70, i32 3}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_vxlan.c", i32 73, i32 8}
!6 = !{ptr @mlx5e_tc_tun_check_udp_dport_vxlan.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_vxlan.c", i32 34, i32 3}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_vxlan.c", i32 37, i32 8}
!10 = !{ptr @mlx5e_tc_tun_parse_vxlan.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_vxlan.c", i32 127, i32 3}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_vxlan.c", i32 130, i32 8}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
