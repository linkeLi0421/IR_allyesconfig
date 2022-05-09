; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_tc_act = type { ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_tc_act_parse_state = type { i32, ptr, ptr, i8, i8, i8, i8, i8, ptr, %struct.mlx5e_mpls_info, [2 x %struct.pedit_headers_action], [32 x i32], i32, ptr }
%struct.mlx5e_mpls_info = type { i32, i8, i8, i8 }
%struct.pedit_headers_action = type { %struct.pedit_headers, %struct.pedit_headers, i32 }
%struct.pedit_headers = type { %struct.ethhdr, %struct.vlan_hdr, %struct.iphdr, %struct.ipv6hdr, %struct.tcphdr, %struct.udphdr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.221, ptr }
%union.anon.221 = type { %struct.anon.226 }
%struct.anon.226 = type { i32, i64, i64, i64, i32 }
%struct.mlx5e_tc_flow = type { %struct.rhash_head, ptr, i64, i32, [2 x ptr], %struct.list_head, ptr, %struct.list_head, ptr, [32 x %struct.encap_route_flow_item], [32 x %struct.encap_flow_item], ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.list_head, %struct.refcount_struct, %struct.callback_head, %struct.completion, %struct.completion, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.encap_route_flow_item = type { ptr, i32 }
%struct.encap_flow_item = type { ptr, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.mlx5_flow_attr = type { i32, ptr, ptr, %struct.mlx5_ct_attr, ptr, ptr, i32, i16, i32, ptr, ptr, i8, i8, i8, i8, i32, %union.anon.234 }
%struct.mlx5_ct_attr = type { i16, i16, ptr, ptr, i32 }
%union.anon.234 = type { [0 x %struct.mlx5_esw_flow_attr] }
%struct.mlx5_esw_flow_attr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i16], [2 x i16], [2 x i8], i8, [32 x %struct.anon.235], ptr, ptr }
%struct.anon.235 = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.164, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.164 = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
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
%struct.mlx5e_tc_flow_parse_attr = type { [32 x ptr], [32 x %struct.mlx5e_mpls_info], ptr, %struct.mlx5_flow_spec, %struct.mlx5e_tc_mod_hdr_acts, [32 x i32], %struct.ethhdr, %struct.mlx5e_tc_act_parse_state }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5e_tc_mod_hdr_acts = type { i32, i32, i8, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.166, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.172, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.166 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5e_rep_priv = type { ptr, %struct.mlx5e_neigh_update_table, ptr, ptr, ptr, %struct.list_head, %struct.mlx5_rep_uplink_priv, %struct.rtnl_link_stats64 }
%struct.mlx5e_neigh_update_table = type { %struct.rhashtable, %struct.list_head, %struct.mutex, %struct.notifier_block, %struct.delayed_work, i32 }
%struct.mlx5_rep_uplink_priv = type { %struct.rhashtable, %struct.list_head, %struct.mlx5_tun_entropy, %struct.mutex, %struct.list_head, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_tun_entropy = type { ptr, i32, i32, i8, %struct.mutex }

@mlx5e_tc_act_mirred = dso_local global { %struct.mlx5e_tc_act, [20 x i8] } { %struct.mlx5e_tc_act { ptr @tc_act_can_offload_mirred, ptr @tc_act_parse_mirred, ptr null }, [20 x i8] zeroinitializer }, align 32
@tc_act_can_offload_mirred.__msg = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"mlx5_core: mpls is supported only through a bareudp device\00", [37 x i8] zeroinitializer }, align 32
@tc_act_can_offload_mirred.__msg.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"mlx5_core: can't support more output ports, can't offload forwarding\00", [59 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"can't support more than %d output ports, can't offload forwarding\0A\00", [61 x i8] zeroinitializer }, align 32
@tc_act_can_offload_mirred.__msg.2 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"mlx5_core: devices are not on same switch HW, can't offload forwarding\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bareudp\00", [24 x i8] zeroinitializer }, align 32
@parse_mirred.__msg = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"mlx5_core: devices are not on same switch HW, can't offload forwarding\00", [57 x i8] zeroinitializer }, align 32
@parse_mirred.__msg.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mlx5_core: can't forward from a VF to itself\00", [51 x i8] zeroinitializer }, align 32
@is_duplicated_output_device.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mlx5_core: can't duplicate output to same device\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"can't duplicate output to same device: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@bond_option_active_slave_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/bonding.h\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@verify_uplink_forwarding.__msg = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"mlx5_core: devices are both uplink, can't offload forwarding\00", [35 x i8] zeroinitializer }, align 32
@verify_uplink_forwarding.__msg.11 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"mlx5_core: devices are not the same uplink, can't offload forwarding\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 6]
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"mlx5e_tc_act_mirred\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 310, i32 21 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 123, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 136, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 139, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 158, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"../include/net/bareudp.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 13, i32 43 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 246, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 252, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 67, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 68, i32 20 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 695, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [25 x i8] c"../include/net/bonding.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 349, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 723, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 46, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.61 = private constant [62 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 50, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @mlx5e_tc_act_mirred, ptr @tc_act_can_offload_mirred.__msg, ptr @tc_act_can_offload_mirred.__msg.1, ptr @.str, ptr @tc_act_can_offload_mirred.__msg.2, ptr @.str.3, ptr @parse_mirred.__msg, ptr @parse_mirred.__msg.4, ptr @is_duplicated_output_device.__msg, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @verify_uplink_forwarding.__msg, ptr @verify_uplink_forwarding.__msg.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_act_mirred to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_act_can_offload_mirred.__msg to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_act_can_offload_mirred.__msg.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_act_can_offload_mirred.__msg.2 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_mirred.__msg to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_mirred.__msg.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_duplicated_output_device.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_uplink_forwarding.__msg to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_uplink_forwarding.__msg.11 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tc_act_can_offload_mirred(ptr nocapture noundef readonly %parse_state, ptr nocapture noundef readonly %act, i32 noundef %act_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 2
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %flow2 = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 1
  %2 = ptrtoint ptr %flow2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flow2, align 4
  %4 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %priv3 = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv3, align 4
  %attr = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %3, i32 0, i32 25
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attr, align 8
  %parse_attr4 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %parse_attr4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parse_attr4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mpls_push = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 6
  %13 = ptrtoint ptr %mpls_push to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mpls_push, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 136
  %15 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %land.lhs.true.do.body_crit_edge, label %netif_is_bareudp.exit

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

netif_is_bareudp.exit:                            ; preds = %land.lhs.true
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kind.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(8) @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %netif_is_bareudp.exit.if.end11_crit_edge, label %netif_is_bareudp.exit.do.body_crit_edge

netif_is_bareudp.exit.do.body_crit_edge:          ; preds = %netif_is_bareudp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

netif_is_bareudp.exit.if.end11_crit_edge:         ; preds = %netif_is_bareudp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.body:                                          ; preds = %netif_is_bareudp.exit.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_act_can_offload_mirred.__msg) #7
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %if.then9

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tc_act_can_offload_mirred.__msg, ptr %1, align 4
  br label %cleanup

if.end11:                                         ; preds = %netif_is_bareudp.exit.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = tail call zeroext i1 @mlx5e_is_ft_flow(ptr noundef %3) #7
  br i1 %call12, label %land.lhs.true13, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true13:                                  ; preds = %if.end11
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %8, i32 0, i32 22
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  %cmp = icmp eq ptr %6, %21
  br i1 %cmp, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.if.end15_crit_edge

land.lhs.true13.if.end15_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true13.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %out_count = getelementptr inbounds %struct.mlx5_flow_attr, ptr %10, i32 1, i32 3, i32 4
  %22 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %23)
  %cmp16 = icmp sgt i32 %23, 31
  br i1 %cmp16, label %do.body18, label %if.end28

do.body18:                                        ; preds = %if.end15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_act_can_offload_mirred.__msg.1) #7
  %tobool20.not = icmp eq ptr %1, null
  br i1 %tobool20.not, label %do.body18.if.end23_crit_edge, label %if.then21

do.body18.if.end23_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @tc_act_can_offload_mirred.__msg.1, ptr %1, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body18.if.end23_crit_edge
  %netdev26 = getelementptr inbounds %struct.mlx5e_priv, ptr %8, i32 0, i32 22
  %25 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev26, align 4
  %27 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %out_count, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str, i32 noundef %28) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %encap = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 4
  %29 = ptrtoint ptr %encap to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %encap, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool29.not = icmp eq i8 %30, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end28
  %netdev30 = getelementptr inbounds %struct.mlx5e_priv, ptr %8, i32 0, i32 22
  %31 = ptrtoint ptr %netdev30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev30, align 4
  %call31 = tail call zeroext i1 @netdev_port_same_parent_id(ptr noundef %32, ptr noundef nonnull %6) #7
  br i1 %call31, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false32

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 15
  %33 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %34, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end35, label %lor.lhs.false32.cleanup_crit_edge

lor.lhs.false32.cleanup_crit_edge:                ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false32
  %filter_dev = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %12, i32 0, i32 2
  %35 = ptrtoint ptr %filter_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %filter_dev, align 4
  %37 = ptrtoint ptr %netdev30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev30, align 4
  %cmp37.not = icmp eq ptr %36, %38
  br i1 %cmp37.not, label %do.body40, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body40:                                        ; preds = %if.end35
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_act_can_offload_mirred.__msg.2) #7
  %tobool42.not = icmp eq ptr %1, null
  br i1 %tobool42.not, label %do.body40.cleanup_crit_edge, label %if.then43

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @tc_act_can_offload_mirred.__msg.2, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %do.body40.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %lor.lhs.false32.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end23, %land.lhs.true13.cleanup_crit_edge, %if.then9, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end23 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then9 ], [ false, %do.body.cleanup_crit_edge ], [ false, %land.lhs.true13.cleanup_crit_edge ], [ true, %lor.lhs.false32.cleanup_crit_edge ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %if.end28.cleanup_crit_edge ], [ false, %if.end35.cleanup_crit_edge ], [ false, %if.then43 ], [ false, %do.body40.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_act_parse_mirred(ptr nocapture noundef %parse_state, ptr nocapture noundef readonly %act, ptr noundef %priv, ptr noundef %attr) #0 align 64 {
entry:
  %out_dev.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %encap = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 4
  %3 = ptrtoint ptr %encap to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %encap, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %parse_attr1.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 5
  %5 = ptrtoint ptr %parse_attr1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parse_attr1.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 17
  %7 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex.i, align 4
  %out_count.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 3, i32 4
  %9 = ptrtoint ptr %out_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out_count.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5e_tc_flow_parse_attr, ptr %6, i32 0, i32 5, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %arrayidx.i, align 4
  %tun_info.i = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 8
  %12 = ptrtoint ptr %tun_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tun_info.i, align 4
  %call.i = tail call ptr @mlx5e_dup_tun_info(ptr noundef %13) #7
  %14 = ptrtoint ptr %out_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %out_count.i, align 4
  %arrayidx4.i = getelementptr [32 x ptr], ptr %6, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %arrayidx4.i, align 4
  %17 = load i32, ptr %out_count.i, align 4
  %arrayidx7.i = getelementptr [32 x ptr], ptr %6, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx7.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %20 = ptrtoint ptr %encap to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %encap, align 1
  %mpls_push.i = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 6
  %21 = ptrtoint ptr %mpls_push.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mpls_push.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool8.not.i = icmp eq i8 %22, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then9.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %out_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out_count.i, align 4
  %arrayidx11.i = getelementptr %struct.mlx5e_tc_flow_parse_attr, ptr %6, i32 0, i32 1, i32 %24
  %mpls_info12.i = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 9
  %25 = ptrtoint ptr %mpls_info12.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %mpls_info12.i, align 4
  %27 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %arrayidx11.i, align 4
  %28 = ptrtoint ptr %mpls_push.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %mpls_push.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %if.end.i.if.end14.i_crit_edge
  %dests.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 7
  %29 = ptrtoint ptr %out_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %out_count.i, align 4
  %arrayidx16.i = getelementptr [32 x %struct.anon.235], ptr %dests.i, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx16.i, align 4
  %or.i = or i32 %32, 1
  store i32 %or.i, ptr %arrayidx16.i, align 4
  %33 = load i32, ptr %out_count.i, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %out_count.i, align 4
  br label %if.end12

if.else:                                          ; preds = %entry
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %34 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev, align 4
  %call1 = tail call zeroext i1 @netdev_port_same_parent_id(ptr noundef %35, ptr noundef %2) #7
  br i1 %call1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %parse_attr1.i27 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 5
  %36 = ptrtoint ptr %parse_attr1.i27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parse_attr1.i27, align 4
  %extack2.i = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 2
  %38 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %extack2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_dev.i) #7
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %0, align 8
  %42 = ptrtoint ptr %out_dev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %out_dev.i, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %43 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mdev.i, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %44, i32 0, i32 17, i32 28
  %45 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %eswitch.i, align 4
  %call.i28 = tail call ptr @mlx5_eswitch_uplink_get_proto_dev(ptr noundef %46, i8 noundef zeroext 0) #7
  %ifindexes4.i = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 11
  %if_count6.i = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 12
  %47 = ptrtoint ptr %if_count6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %if_count6.i, align 4
  %49 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp10.i.i = icmp sgt i32 %48, 0
  br i1 %cmp10.i.i, label %for.body.lr.ph.i.i, label %if.then2.if.end.i32_crit_edge

if.then2.if.end.i32_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i32

for.body.lr.ph.i.i:                               ; preds = %if.then2
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 17
  %51 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ifindex.i.i, align 4
  %53 = ptrtoint ptr %ifindexes4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ifindexes4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %52)
  %cmp1.i128.i = icmp eq i32 %54, %52
  br i1 %cmp1.i128.i, label %for.body.lr.ph.i.i.do.body.i.i_crit_edge, label %for.body.lr.ph.i.i.for.cond.i.i_crit_edge

for.body.lr.ph.i.i.for.cond.i.i_crit_edge:        ; preds = %for.body.lr.ph.i.i
  br label %for.cond.i.i

for.body.lr.ph.i.i.do.body.i.i_crit_edge:         ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.lr.ph.i.i.for.cond.i.i_crit_edge
  %i.011.i129.i = phi i32 [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.i.for.cond.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.011.i129.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %48)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %48
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end.i32_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i32_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i32

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr i32, ptr %ifindexes4.i, i32 %inc.i.i
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i, align 4
  %cmp1.i.i = icmp eq i32 %56, %52
  br i1 %cmp1.i.i, label %do.body.i.loopexit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

do.body.i.loopexit.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %48)
  %cmp.i.i = icmp slt i32 %inc.i.i, %48
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.loopexit.i, %for.body.lr.ph.i.i.do.body.i.i_crit_edge
  %cmp12.i.lcssa.i = phi i1 [ true, %for.body.lr.ph.i.i.do.body.i.i_crit_edge ], [ %cmp.i.i, %do.body.i.loopexit.i ]
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @is_duplicated_output_device.__msg) #7
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end.i.i_crit_edge, label %if.then2.i.i

do.body.i.i.if.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @is_duplicated_output_device.__msg, ptr %39, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then2.i.i, %do.body.i.i.if.end.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.5, ptr noundef %41) #11
  br i1 %cmp12.i.lcssa.i, label %if.end.i.i.if.end9.thread51_crit_edge, label %if.end.i.i.if.end.i32_crit_edge

if.end.i.i.if.end.i32_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i32

if.end.i.i.if.end9.thread51_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread51

if.end.i32:                                       ; preds = %if.end.i.i.if.end.i32_crit_edge, %for.cond.i.i.if.end.i32_crit_edge, %if.then2.if.end.i32_crit_edge
  %58 = ptrtoint ptr %out_dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %out_dev.i, align 4
  %ifindex.i29 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 17
  %60 = ptrtoint ptr %ifindex.i29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ifindex.i29, align 4
  %arrayidx.i30 = getelementptr %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 11, i32 %48
  %62 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx.i30, align 4
  %63 = ptrtoint ptr %if_count6.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %if_count6.i, align 4
  %inc.i31 = add i32 %64, 1
  store i32 %inc.i31, ptr %if_count6.i, align 4
  %65 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %68, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i, label %if.end.i32.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i32.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i32
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i32.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %call.i28) #7
  %tobool.not.i106.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i106.i, label %rcu_read_lock.exit.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

rcu_read_lock.exit.i.i.if.else.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %flags.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i, i32 0, i32 14
  %69 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %70, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.lor.rhs.i.i.i_crit_edge, label %netif_is_bond_master.exit.i.i.i

land.lhs.true.i.i.lor.rhs.i.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i.i

netif_is_bond_master.exit.i.i.i:                  ; preds = %land.lhs.true.i.i
  %priv_flags.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i, i32 0, i32 15
  %71 = ptrtoint ptr %priv_flags.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %priv_flags.i.i.i.i, align 16
  %and1.i.i.i.i = and i64 %72, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i.i)
  %tobool2.i.not.i.i.i = icmp eq i64 %and1.i.i.i.i, 0
  br i1 %tobool2.i.not.i.i.i, label %netif_is_bond_master.exit.i.i.i.lor.rhs.i.i.i_crit_edge, label %netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.i.i_crit_edge

netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.i.i_crit_edge: ; preds = %netif_is_bond_master.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netif_is_lag_master.exit.i.i

netif_is_bond_master.exit.i.i.i.lor.rhs.i.i.i_crit_edge: ; preds = %netif_is_bond_master.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i.i

lor.rhs.i.i.i:                                    ; preds = %netif_is_bond_master.exit.i.i.i.lor.rhs.i.i.i_crit_edge, %land.lhs.true.i.i.lor.rhs.i.i.i_crit_edge
  %priv_flags.i3.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i, i32 0, i32 15
  %73 = ptrtoint ptr %priv_flags.i3.i.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %priv_flags.i3.i.i.i, align 16
  %and.i4.i.i.i = and i64 %74, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i.i.i)
  %tobool.i.i.i.i = icmp ne i64 %and.i4.i.i.i, 0
  br label %netif_is_lag_master.exit.i.i

netif_is_lag_master.exit.i.i:                     ; preds = %lor.rhs.i.i.i, %netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.i.i_crit_edge
  %75 = phi i1 [ true, %netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.i.i_crit_edge ], [ %tobool.i.i.i.i, %lor.rhs.i.i.i ]
  %cmp.i107.i = icmp eq ptr %call.i.i, %59
  %or.cond.i.i = select i1 %75, i1 %cmp.i107.i, i1 false
  br i1 %or.cond.i.i, label %netif_is_lag_master.exit.i.i.if.end13.i.i_crit_edge, label %netif_is_lag_master.exit.i.i.if.else.i.i_crit_edge

netif_is_lag_master.exit.i.i.if.else.i.i_crit_edge: ; preds = %netif_is_lag_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

netif_is_lag_master.exit.i.i.if.end13.i.i_crit_edge: ; preds = %netif_is_lag_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %netif_is_lag_master.exit.i.i.if.else.i.i_crit_edge, %rcu_read_lock.exit.i.i.if.else.i.i_crit_edge
  %flags.i.i24.i.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 14
  %76 = ptrtoint ptr %flags.i.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i.i24.i.i, align 8
  %and.i.i25.i.i = and i32 %77, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25.i.i)
  %tobool.not.i.i26.i.i = icmp eq i32 %and.i.i25.i.i, 0
  br i1 %tobool.not.i.i26.i.i, label %if.else.i.i.netif_is_lag_master.exit35.i.i_crit_edge, label %netif_is_bond_master.exit.i30.i.i

if.else.i.i.netif_is_lag_master.exit35.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netif_is_lag_master.exit35.i.i

netif_is_bond_master.exit.i30.i.i:                ; preds = %if.else.i.i
  %priv_flags.i.i27.i.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 15
  %78 = ptrtoint ptr %priv_flags.i.i27.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %priv_flags.i.i27.i.i, align 16
  %and1.i.i28.i.i = and i64 %79, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i28.i.i)
  %tobool2.i.not.i29.i.i = icmp eq i64 %and1.i.i28.i.i, 0
  br i1 %tobool2.i.not.i29.i.i, label %netif_is_bond_master.exit.i30.i.i.netif_is_lag_master.exit35.i.i_crit_edge, label %netif_is_bond_master.exit.i30.i.i.if.then4.i.i_crit_edge

netif_is_bond_master.exit.i30.i.i.if.then4.i.i_crit_edge: ; preds = %netif_is_bond_master.exit.i30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i.i

netif_is_bond_master.exit.i30.i.i.netif_is_lag_master.exit35.i.i_crit_edge: ; preds = %netif_is_bond_master.exit.i30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netif_is_lag_master.exit35.i.i

netif_is_lag_master.exit35.i.i:                   ; preds = %netif_is_bond_master.exit.i30.i.i.netif_is_lag_master.exit35.i.i_crit_edge, %if.else.i.i.netif_is_lag_master.exit35.i.i_crit_edge
  %priv_flags.i3.i31.i.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 15
  %80 = ptrtoint ptr %priv_flags.i3.i31.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %priv_flags.i3.i31.i.i, align 16
  %and.i4.i32.i.i = and i64 %81, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i32.i.i)
  %tobool.i.i33.not.i.i = icmp eq i64 %and.i4.i32.i.i, 0
  br i1 %tobool.i.i33.not.i.i, label %netif_is_lag_master.exit35.i.i.if.end13.i.i_crit_edge, label %netif_is_lag_master.exit35.i.i.if.then4.i.i_crit_edge

netif_is_lag_master.exit35.i.i.if.then4.i.i_crit_edge: ; preds = %netif_is_lag_master.exit35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i.i

netif_is_lag_master.exit35.i.i.if.end13.i.i_crit_edge: ; preds = %netif_is_lag_master.exit35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

if.then4.i.i:                                     ; preds = %netif_is_lag_master.exit35.i.i.if.then4.i.i_crit_edge, %netif_is_bond_master.exit.i30.i.i.if.then4.i.i_crit_edge
  %curr_active_slave.i.i.i = getelementptr i8, ptr %59, i32 2308
  %82 = ptrtoint ptr %curr_active_slave.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %curr_active_slave.i.i.i, align 4
  %call.i36.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i36.i.i, label %if.then4.i.i.do.end8.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.then4.i.i.do.end8.i.i.i_crit_edge:             ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then4.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i37.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i37.i.i, label %land.lhs.true.i38.i.i, label %lor.lhs.false.i.i.i.do.end8.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end8.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i.i

land.lhs.true.i38.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %call3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i38.i.i.do.end8.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i38.i.i.do.end8.i.i.i_crit_edge:    ; preds = %land.lhs.true.i38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i38.i.i
  %.b15.i.i.i = load i1, ptr @bond_option_active_slave_get_rcu.__warned, align 1
  br i1 %.b15.i.i.i, label %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i39.i.i

land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i.i

if.then.i39.i.i:                                  ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bond_option_active_slave_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 349, ptr noundef nonnull @.str.9) #7
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.then.i39.i.i, %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, %land.lhs.true.i38.i.i.do.end8.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end8.i.i.i_crit_edge, %if.then4.i.i.do.end8.i.i.i_crit_edge
  %params.i.i.i.i = getelementptr i8, ptr %59, i32 2608
  %84 = ptrtoint ptr %params.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %params.i.i.i.i, align 8
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values)
  switch i32 %85, label %do.end8.i.i.i.if.end13.i.i_crit_edge [
    i32 1, label %do.end8.i.i.i.bond_uses_primary.exit.i.i.i_crit_edge
    i32 5, label %do.end8.i.i.i.bond_uses_primary.exit.i.i.i_crit_edge60
    i32 6, label %do.end8.i.i.i.bond_uses_primary.exit.i.i.i_crit_edge61
  ]

do.end8.i.i.i.bond_uses_primary.exit.i.i.i_crit_edge61: ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bond_uses_primary.exit.i.i.i

do.end8.i.i.i.bond_uses_primary.exit.i.i.i_crit_edge60: ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bond_uses_primary.exit.i.i.i

do.end8.i.i.i.bond_uses_primary.exit.i.i.i_crit_edge: ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bond_uses_primary.exit.i.i.i

do.end8.i.i.i.if.end13.i.i_crit_edge:             ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

bond_uses_primary.exit.i.i.i:                     ; preds = %do.end8.i.i.i.bond_uses_primary.exit.i.i.i_crit_edge, %do.end8.i.i.i.bond_uses_primary.exit.i.i.i_crit_edge60, %do.end8.i.i.i.bond_uses_primary.exit.i.i.i_crit_edge61
  %tobool12.not.i.i.i = icmp eq ptr %83, null
  br i1 %tobool12.not.i.i.i, label %bond_uses_primary.exit.i.i.i.if.end13.i.i_crit_edge, label %bond_option_active_slave_get_rcu.exit.i.i

bond_uses_primary.exit.i.i.i.if.end13.i.i_crit_edge: ; preds = %bond_uses_primary.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

bond_option_active_slave_get_rcu.exit.i.i:        ; preds = %bond_uses_primary.exit.i.i.i
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %83, align 8
  %tobool7.not.i.i = icmp eq ptr %88, null
  br i1 %tobool7.not.i.i, label %bond_option_active_slave_get_rcu.exit.i.i.if.end13.i.i_crit_edge, label %land.lhs.true8.i.i

bond_option_active_slave_get_rcu.exit.i.i.if.end13.i.i_crit_edge: ; preds = %bond_option_active_slave_get_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

land.lhs.true8.i.i:                               ; preds = %bond_option_active_slave_get_rcu.exit.i.i
  %call.i40.i.i = tail call zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef nonnull %88) #7
  br i1 %call.i40.i.i, label %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge, label %mlx5e_eswitch_rep.exit.i.i

land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge:   ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

mlx5e_eswitch_rep.exit.i.i:                       ; preds = %land.lhs.true8.i.i
  %call1.i41.i.i = tail call zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef nonnull %88) #7
  br i1 %call1.i41.i.i, label %mlx5e_eswitch_rep.exit.i.i.lor.lhs.false.i.i_crit_edge, label %mlx5e_eswitch_rep.exit.i.i.if.then11.i.i_crit_edge

mlx5e_eswitch_rep.exit.i.i.if.then11.i.i_crit_edge: ; preds = %mlx5e_eswitch_rep.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

mlx5e_eswitch_rep.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %mlx5e_eswitch_rep.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %mlx5e_eswitch_rep.exit.i.i.lor.lhs.false.i.i_crit_edge, %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge
  %call10.i.i = tail call zeroext i1 @netdev_port_same_parent_id(ptr noundef nonnull %88, ptr noundef %call.i28) #7
  br i1 %call10.i.i, label %lor.lhs.false.i.i.if.end13.i.i_crit_edge, label %lor.lhs.false.i.i.if.then11.i.i_crit_edge

lor.lhs.false.i.i.if.then11.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

lor.lhs.false.i.i.if.end13.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

if.then11.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then11.i.i_crit_edge, %mlx5e_eswitch_rep.exit.i.i.if.then11.i.i_crit_edge
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then11.i.i, %lor.lhs.false.i.i.if.end13.i.i_crit_edge, %bond_option_active_slave_get_rcu.exit.i.i.if.end13.i.i_crit_edge, %bond_uses_primary.exit.i.i.i.if.end13.i.i_crit_edge, %do.end8.i.i.i.if.end13.i.i_crit_edge, %netif_is_lag_master.exit35.i.i.if.end13.i.i_crit_edge, %netif_is_lag_master.exit.i.i.if.end13.i.i_crit_edge
  %fdb_out_dev.0.i.i = phi ptr [ %88, %lor.lhs.false.i.i.if.end13.i.i_crit_edge ], [ null, %if.then11.i.i ], [ null, %bond_option_active_slave_get_rcu.exit.i.i.if.end13.i.i_crit_edge ], [ %59, %netif_is_lag_master.exit35.i.i.if.end13.i.i_crit_edge ], [ %call.i28, %netif_is_lag_master.exit.i.i.if.end13.i.i_crit_edge ], [ null, %bond_uses_primary.exit.i.i.i.if.end13.i.i_crit_edge ], [ null, %do.end8.i.i.i.if.end13.i.i_crit_edge ]
  %call.i43.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i43.i.i, label %if.end13.i.i.get_fdb_out_dev.exit.i_crit_edge, label %land.lhs.true.i46.i.i

if.end13.i.i.get_fdb_out_dev.exit.i_crit_edge:    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fdb_out_dev.exit.i

land.lhs.true.i46.i.i:                            ; preds = %if.end13.i.i
  %call1.i44.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44.i.i)
  %tobool.not.i45.i.i = icmp eq i32 %call1.i44.i.i, 0
  br i1 %tobool.not.i45.i.i, label %land.lhs.true.i46.i.i.get_fdb_out_dev.exit.i_crit_edge, label %land.lhs.true2.i48.i.i

land.lhs.true.i46.i.i.get_fdb_out_dev.exit.i_crit_edge: ; preds = %land.lhs.true.i46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fdb_out_dev.exit.i

land.lhs.true2.i48.i.i:                           ; preds = %land.lhs.true.i46.i.i
  %.b4.i47.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47.i.i, label %land.lhs.true2.i48.i.i.get_fdb_out_dev.exit.i_crit_edge, label %if.then.i49.i.i

land.lhs.true2.i48.i.i.get_fdb_out_dev.exit.i_crit_edge: ; preds = %land.lhs.true2.i48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fdb_out_dev.exit.i

if.then.i49.i.i:                                  ; preds = %land.lhs.true2.i48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.10) #7
  br label %get_fdb_out_dev.exit.i

get_fdb_out_dev.exit.i:                           ; preds = %if.then.i49.i.i, %land.lhs.true2.i48.i.i.get_fdb_out_dev.exit.i_crit_edge, %land.lhs.true.i46.i.i.get_fdb_out_dev.exit.i_crit_edge, %if.end13.i.i.get_fdb_out_dev.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %89 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i50.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i.i50.i.i to ptr
  %preempt_count.i.i.i.i51.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i.i.i51.i.i, align 4
  %sub.i.i.i.i.i = add i32 %92, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i51.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %93 = ptrtoint ptr %out_dev.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %fdb_out_dev.0.i.i, ptr %out_dev.i, align 4
  %tobool.not.i33 = icmp eq ptr %fdb_out_dev.0.i.i, null
  br i1 %tobool.not.i33, label %get_fdb_out_dev.exit.i.if.end9.thread51_crit_edge, label %if.end12.i

get_fdb_out_dev.exit.i.if.end9.thread51_crit_edge: ; preds = %get_fdb_out_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread51

if.end12.i:                                       ; preds = %get_fdb_out_dev.exit.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %fdb_out_dev.0.i.i, i32 0, i32 15
  %94 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %95, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end12.i.if.end19.i_crit_edge, label %if.then14.i

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end12.i
  %call15.i = call i32 @mlx5e_tc_act_vlan_add_push_action(ptr noundef %priv, ptr noundef %attr, ptr noundef nonnull %out_dev.i, ptr noundef %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then14.i.if.end19.i_crit_edge, label %if.then14.i.if.end9.thread51_crit_edge

if.then14.i.if.end9.thread51_crit_edge:           ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread51

if.then14.i.if.end19.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i.if.end19.i_crit_edge, %if.end12.i.if.end19.i_crit_edge
  %filter_dev.i = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %37, i32 0, i32 2
  %96 = ptrtoint ptr %filter_dev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %filter_dev.i, align 4
  %priv_flags.i108.i = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 15
  %98 = ptrtoint ptr %priv_flags.i108.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %priv_flags.i108.i, align 16
  %and.i109.i = and i64 %99, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i109.i)
  %tobool.i110.not.i = icmp eq i64 %and.i109.i, 0
  br i1 %tobool.i110.not.i, label %if.end19.i.if.end26.i_crit_edge, label %if.then21.i

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end19.i
  %call22.i = call i32 @mlx5e_tc_act_vlan_add_pop_action(ptr noundef %priv, ptr noundef %attr, ptr noundef %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then21.i.if.end26.i_crit_edge, label %if.then21.i.if.end9.thread51_crit_edge

if.then21.i.if.end9.thread51_crit_edge:           ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread51

if.then21.i.if.end26.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i.if.end26.i_crit_edge, %if.end19.i.if.end26.i_crit_edge
  %100 = ptrtoint ptr %out_dev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %out_dev.i, align 4
  %priv_flags.i111.i = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 15
  %102 = ptrtoint ptr %priv_flags.i111.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %priv_flags.i111.i, align 16
  %and.i112.i = and i64 %103, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i112.i)
  %tobool.i113.not.i = icmp eq i64 %and.i112.i, 0
  br i1 %tobool.i113.not.i, label %if.end26.i.if.end30.i_crit_edge, label %if.then28.i

if.end26.i.if.end30.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %lowerdev.i.i = getelementptr i8, ptr %101, i32 2328
  %104 = ptrtoint ptr %lowerdev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %lowerdev.i.i, align 8
  %106 = ptrtoint ptr %out_dev.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %out_dev.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end30.i_crit_edge
  %107 = ptrtoint ptr %out_dev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %out_dev.i, align 4
  %109 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mdev.i, align 64
  %eswitch.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %110, i32 0, i32 17, i32 28
  %111 = ptrtoint ptr %eswitch.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %eswitch.i.i, align 4
  %113 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 16
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %netdev.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %netdev.i.i, align 8
  %call2.i.i = call zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef %119) #7
  br i1 %call2.i.i, label %land.lhs.true.i114.i, label %if.end30.i.if.end34.i_crit_edge

if.end30.i.if.end34.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

land.lhs.true.i114.i:                             ; preds = %if.end30.i
  %call3.i.i = call zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef %108) #7
  br i1 %call3.i.i, label %if.end.i117.i, label %land.lhs.true.i114.i.if.end34.i_crit_edge

land.lhs.true.i114.i.if.end34.i_crit_edge:        ; preds = %land.lhs.true.i114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.end.i117.i:                                    ; preds = %land.lhs.true.i114.i
  %120 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %112, align 8
  %arrayidx.i115.i = getelementptr %struct.mlx5_core_dev, ptr %121, i32 0, i32 8, i32 0, i32 8
  %122 = ptrtoint ptr %arrayidx.i115.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i115.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %123, i32 17
  %124 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %125)
  %tobool.not.i116.i = icmp sgt i32 %125, -1
  br i1 %tobool.not.i116.i, label %do.body.i118.i, label %if.else.i119.i

do.body.i118.i:                                   ; preds = %if.end.i117.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @verify_uplink_forwarding.__msg) #7
  %tobool6.not.i.i = icmp eq ptr %39, null
  br i1 %tobool6.not.i.i, label %do.body.i118.i.if.end9.thread51_crit_edge, label %do.body.i118.i.if.end9.thread51.sink.split_crit_edge

do.body.i118.i.if.end9.thread51.sink.split_crit_edge: ; preds = %do.body.i118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread51.sink.split

do.body.i118.i.if.end9.thread51_crit_edge:        ; preds = %do.body.i118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread51

if.else.i119.i:                                   ; preds = %if.end.i117.i
  %126 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %netdev.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %127, %108
  br i1 %cmp.not.i.i, label %if.else.i119.i.if.end34.i_crit_edge, label %do.body11.i.i

if.else.i119.i.if.end34.i_crit_edge:              ; preds = %if.else.i119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

do.body11.i.i:                                    ; preds = %if.else.i119.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @verify_uplink_forwarding.__msg.11) #7
  %tobool13.not.i.i = icmp eq ptr %39, null
  br i1 %tobool13.not.i.i, label %do.body11.i.i.if.end9.thread51_crit_edge, label %do.body11.i.i.if.end9.thread51.sink.split_crit_edge

do.body11.i.i.if.end9.thread51.sink.split_crit_edge: ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread51.sink.split

do.body11.i.i.if.end9.thread51_crit_edge:         ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread51

if.end34.i:                                       ; preds = %if.else.i119.i.if.end34.i_crit_edge, %land.lhs.true.i114.i.if.end34.i_crit_edge, %if.end30.i.if.end34.i_crit_edge
  %128 = ptrtoint ptr %out_dev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %out_dev.i, align 4
  %call35.i = call zeroext i1 @mlx5e_is_valid_eswitch_fwd_dev(ptr noundef %priv, ptr noundef %129) #7
  br i1 %call35.i, label %if.end40.i, label %do.body.i

do.body.i:                                        ; preds = %if.end34.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @parse_mirred.__msg) #7
  %tobool37.not.i = icmp eq ptr %39, null
  br i1 %tobool37.not.i, label %do.body.i.if.end9.thread51_crit_edge, label %do.body.i.if.end9.thread51.sink.split_crit_edge

do.body.i.if.end9.thread51.sink.split_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread51.sink.split

do.body.i.if.end9.thread51_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread51

if.end40.i:                                       ; preds = %if.end34.i
  %130 = ptrtoint ptr %out_dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %out_dev.i, align 4
  %132 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %netdev, align 4
  %call.i121.i = call zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef %133) #7
  br i1 %call.i121.i, label %same_vf_reps.exit.i, label %if.end40.i.if.end9_crit_edge

if.end40.i.if.end9_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

same_vf_reps.exit.i:                              ; preds = %if.end40.i
  %134 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %netdev, align 4
  %cmp.i122.i = icmp eq ptr %135, %131
  br i1 %cmp.i122.i, label %do.body43.i, label %same_vf_reps.exit.i.if.end9_crit_edge

same_vf_reps.exit.i.if.end9_crit_edge:            ; preds = %same_vf_reps.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.body43.i:                                      ; preds = %same_vf_reps.exit.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @parse_mirred.__msg.4) #7
  %tobool45.not.i = icmp eq ptr %39, null
  br i1 %tobool45.not.i, label %do.body43.i.if.end9.thread51_crit_edge, label %do.body43.i.if.end9.thread51.sink.split_crit_edge

do.body43.i.if.end9.thread51.sink.split_crit_edge: ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread51.sink.split

do.body43.i.if.end9.thread51_crit_edge:           ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread51

if.else4:                                         ; preds = %if.else
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 15
  %136 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %137, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else4.cleanup_crit_edge, label %if.then6

if.else4.cleanup_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.else4
  %138 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %0, align 8
  %ifindex.i37 = getelementptr inbounds %struct.net_device, ptr %139, i32 0, i32 17
  %140 = ptrtoint ptr %ifindex.i37 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ifindex.i37, align 4
  %out_count.i38 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 3, i32 4
  %142 = ptrtoint ptr %out_count.i38 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %out_count.i38, align 4
  %call.i39 = tail call i32 @mlx5e_set_fwd_to_int_port_actions(ptr noundef %priv, ptr noundef %attr, i32 noundef %141, i32 noundef 1, ptr noundef %attr, i32 noundef %143) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %tobool.not.i40, label %if.end.i42, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i42:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %144 = ptrtoint ptr %out_count.i38 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %out_count.i38, align 4
  %inc.i41 = add i32 %145, 1
  store i32 %inc.i41, ptr %out_count.i38, align 4
  br label %if.end12

if.end9.thread51.sink.split:                      ; preds = %do.body43.i.if.end9.thread51.sink.split_crit_edge, %do.body.i.if.end9.thread51.sink.split_crit_edge, %do.body11.i.i.if.end9.thread51.sink.split_crit_edge, %do.body.i118.i.if.end9.thread51.sink.split_crit_edge
  %parse_mirred.__msg.sink = phi ptr [ @verify_uplink_forwarding.__msg, %do.body.i118.i.if.end9.thread51.sink.split_crit_edge ], [ @verify_uplink_forwarding.__msg.11, %do.body11.i.i.if.end9.thread51.sink.split_crit_edge ], [ @parse_mirred.__msg, %do.body.i.if.end9.thread51.sink.split_crit_edge ], [ @parse_mirred.__msg.4, %do.body43.i.if.end9.thread51.sink.split_crit_edge ]
  %146 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %parse_mirred.__msg.sink, ptr %39, align 4
  br label %if.end9.thread51

if.end9.thread51:                                 ; preds = %if.end9.thread51.sink.split, %do.body43.i.if.end9.thread51_crit_edge, %do.body.i.if.end9.thread51_crit_edge, %do.body11.i.i.if.end9.thread51_crit_edge, %do.body.i118.i.if.end9.thread51_crit_edge, %if.then21.i.if.end9.thread51_crit_edge, %if.then14.i.if.end9.thread51_crit_edge, %get_fdb_out_dev.exit.i.if.end9.thread51_crit_edge, %if.end.i.i.if.end9.thread51_crit_edge
  %retval.0.i36.ph = phi i32 [ -95, %do.body11.i.i.if.end9.thread51_crit_edge ], [ -95, %do.body.i118.i.if.end9.thread51_crit_edge ], [ -95, %if.end.i.i.if.end9.thread51_crit_edge ], [ -95, %do.body43.i.if.end9.thread51_crit_edge ], [ -95, %do.body.i.if.end9.thread51_crit_edge ], [ %call22.i, %if.then21.i.if.end9.thread51_crit_edge ], [ %call15.i, %if.then14.i.if.end9.thread51_crit_edge ], [ -19, %get_fdb_out_dev.exit.i.if.end9.thread51_crit_edge ], [ -95, %if.end9.thread51.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_dev.i) #7
  br label %cleanup

if.end9:                                          ; preds = %same_vf_reps.exit.i.if.end9_crit_edge, %if.end40.i.if.end9_crit_edge
  %147 = ptrtoint ptr %out_dev.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %out_dev.i, align 4
  %ppriv53.i = getelementptr i8, ptr %148, i32 30240
  %149 = ptrtoint ptr %ppriv53.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ppriv53.i, align 32
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 8
  %dests.i34 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 7
  %out_count.i35 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 3, i32 4
  %153 = ptrtoint ptr %out_count.i35 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %out_count.i35, align 4
  %rep55.i = getelementptr [32 x %struct.anon.235], ptr %dests.i34, i32 0, i32 %154, i32 1
  %155 = ptrtoint ptr %rep55.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %152, ptr %rep55.i, align 4
  %mdev56.i = getelementptr i8, ptr %148, i32 11328
  %156 = ptrtoint ptr %mdev56.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mdev56.i, align 64
  %mdev60.i = getelementptr [32 x %struct.anon.235], ptr %dests.i34, i32 0, i32 %154, i32 3
  %158 = ptrtoint ptr %mdev60.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %mdev60.i, align 4
  %inc62.i = add i32 %154, 1
  store i32 %inc62.i, ptr %out_count.i35, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_dev.i) #7
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %if.end.i42, %if.end14.i
  %159 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %attr, align 4
  %or = or i32 %160, 12
  store i32 %or, ptr %attr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.thread51, %if.then6.cleanup_crit_edge, %if.else4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %retval.0.i36.ph, %if.end9.thread51 ], [ %call.i39, %if.then6.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ], [ -95, %if.else4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_is_ft_flow(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netdev_port_same_parent_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_dup_tun_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_uplink_get_proto_dev(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_act_vlan_add_push_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_act_vlan_add_pop_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_is_valid_eswitch_fwd_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_set_fwd_to_int_port_actions(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @mlx5e_tc_act_mirred, !1, !"mlx5e_tc_act_mirred", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c", i32 310, i32 21}
!2 = !{ptr @tc_act_can_offload_mirred.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c", i32 123, i32 3}
!4 = !{ptr @tc_act_can_offload_mirred.__msg.1, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c", i32 136, i32 3}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c", i32 139, i32 8}
!8 = !{ptr @tc_act_can_offload_mirred.__msg.2, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c", i32 158, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/net/bareudp.h", i32 13, i32 43}
!12 = !{ptr @parse_mirred.__msg, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c", i32 246, i32 3}
!14 = !{ptr @parse_mirred.__msg.4, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c", i32 252, i32 3}
!16 = !{ptr @is_duplicated_output_device.__msg, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c", i32 67, i32 4}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c", i32 68, i32 20}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/net/bonding.h", i32 349, i32 24}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @verify_uplink_forwarding.__msg, !32, !"__msg", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c", i32 46, i32 3}
!33 = !{ptr @verify_uplink_forwarding.__msg.11, !34, !"__msg", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/mirred.c", i32 50, i32 3}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i8 0, i8 2}
!46 = !{i64 2149733555}
!47 = !{i64 2149733821}
