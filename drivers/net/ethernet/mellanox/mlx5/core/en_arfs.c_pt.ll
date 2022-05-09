; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.hlist_head = type { ptr }
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
%struct.mlx5e_rq = type { %union.anon.177, %struct.anon.191, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.177 = type { %struct.anon.184 }
%struct.anon.184 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.186 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.185, i64, i32, [28 x i8] }
%union.anon.185 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.186 = type { %struct.anon.187 }
%struct.anon.187 = type { %struct.anon.188, [0 x %struct.mlx5_mtt] }
%struct.anon.188 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.191 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.174, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.174 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.180, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.183, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { i8, i8, i16, i32 }
%union.anon.183 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.192, i32 }
%union.anon.192 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.175, i32, i32 }
%union.anon.175 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.179 }
%union.anon.179 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.206, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.206 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.207 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.207 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.208 }
%struct.anon.208 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
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
%struct.mlx5e_arfs_tables = type { [4 x %struct.arfs_table], %struct.spinlock, %struct.list_head, i32, ptr }
%struct.arfs_table = type { %struct.mlx5e_flow_table, ptr, [256 x %struct.hlist_head] }
%struct.arfs_rule = type { ptr, %struct.work_struct, ptr, %struct.hlist_node, i32, i32, i32, %struct.arfs_tuple }
%struct.arfs_tuple = type { i16, i8, %union.anon.216, %union.anon.217, i16, i16 }
%union.anon.216 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%union.anon.217 = type { %struct.in6_addr }
%struct.mlx5_flow_destination = type { i32, %union.anon.214 }
%union.anon.214 = type { %struct.anon.215 }
%struct.anon.215 = type { i16, i16, ptr, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
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
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.219, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.219 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.218 }
%struct.anon.218 = type { i32, i32 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.196, i16 }
%union.anon.196 = type { %struct.anon.197 }
%struct.anon.197 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.198 }
%union.anon.198 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.200, i16 }
%struct.anon.200 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.201 }
%union.anon.201 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.sk_buff = type { %union.anon.4, %union.anon.7, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, %union.anon.6 }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.anon.199 = type { i16, i16 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: modify ttc[%d] dest to arfs, failed err(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.mlx5e_arfs_enable = private unnamed_addr constant [18 x i8] c"mlx5e_arfs_enable\00", align 1
@mlx5e_arfs_create_tables.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&priv->fs.arfs->arfs_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mlx5e_arfs\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: modify ttc[%d] default destination failed, err(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.arfs_disable = private unnamed_addr constant [13 x i8] c"arfs_disable\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.arfs_add_default_rule = private unnamed_addr constant [22 x i8] c"arfs_add_default_rule\00", align 1
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: add rule failed, arfs type=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@arfs_alloc_rule.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&rule->arfs_work)\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: add rule(filter id=%d, rq idx=%d, ip proto=0x%x) failed,err=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.arfs_add_rule = private unnamed_addr constant [14 x i8] c"arfs_add_rule\00", align 1
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to modify aRFS rule destination to rq=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@switch.table.mlx5e_arfs_create_tables = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 84, i32 84, i32 92, i32 92], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 155, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 368, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 370, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 126, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 218, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 632, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 560, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 582, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [38 x i8] c"switch.table.mlx5e_arfs_create_tables\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @mlx5e_arfs_create_tables.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @arfs_alloc_rule.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @switch.table.mlx5e_arfs_create_tables], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_arfs_create_tables.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arfs_alloc_rule.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlx5e_arfs_create_tables to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_arfs_disable(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @arfs_del_rules(ptr noundef %priv)
  %call = tail call fastcc i32 @arfs_disable(ptr noundef %priv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arfs_del_rules(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %del_list = alloca %struct.hlist_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %del_list) #7
  %0 = ptrtoint ptr %del_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %del_list, align 4
  %arfs = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 9
  %1 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arfs, align 4
  %arfs_lock = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %2, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %arfs_lock) #7
  br label %for.body3

for.body3:                                        ; preds = %for.inc25.for.body3_crit_edge, %entry
  %j.0107 = phi i32 [ 0, %entry ], [ %inc, %for.inc25.for.body3_crit_edge ]
  %3 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arfs, align 4
  %arrayidx6 = getelementptr [4 x %struct.arfs_table], ptr %4, i32 0, i32 0, i32 2, i32 %j.0107
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %6, null
  %add.ptr = getelementptr i8, ptr %6, i32 -52
  %tobool9.not105112 = icmp eq ptr %add.ptr, null
  %tobool9.not105 = or i1 %tobool.not, %tobool9.not105112
  br i1 %tobool9.not105, label %for.body3.for.inc25_crit_edge, label %for.body3.land.rhs_crit_edge

for.body3.land.rhs_crit_edge:                     ; preds = %for.body3
  br label %land.rhs

for.body3.for.inc25_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25

land.rhs:                                         ; preds = %hlist_add_head.exit.land.rhs_crit_edge, %for.body3.land.rhs_crit_edge
  %rule.0106 = phi ptr [ %add.ptr21, %hlist_add_head.exit.land.rhs_crit_edge ], [ %add.ptr, %for.body3.land.rhs_crit_edge ]
  %hlist = getelementptr inbounds %struct.arfs_rule, ptr %rule.0106, i32 0, i32 3
  %7 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hlist, align 4
  %pprev.i.i = getelementptr inbounds %struct.arfs_rule, ptr %rule.0106, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.not.i, label %land.rhs.hlist_del_init.exit_crit_edge, label %if.then.i

land.rhs.hlist_del_init.exit_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %land.rhs
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %8, ptr %10, align 4
  %tobool.not.i3.i = icmp eq ptr %8, null
  br i1 %tobool.not.i3.i, label %if.then.i.hlist_del_init.exit_crit_edge, label %do.body13.i.i

if.then.i.hlist_del_init.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init.exit

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %pprev14.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %do.body13.i.i, %if.then.i.hlist_del_init.exit_crit_edge, %land.rhs.hlist_del_init.exit_crit_edge
  %13 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %del_list, align 4
  %15 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %14, ptr %hlist, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %hlist_del_init.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

hlist_del_init.exit.hlist_add_head.exit_crit_edge: ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %hlist, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %hlist_del_init.exit.hlist_add_head.exit_crit_edge
  %17 = ptrtoint ptr %del_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %hlist, ptr %del_list, align 4
  %18 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %del_list, ptr %pprev.i.i, align 4
  %tobool17.not = icmp eq ptr %8, null
  %add.ptr21 = getelementptr i8, ptr %8, i32 -52
  %tobool9.not114 = icmp eq ptr %add.ptr21, null
  %tobool9.not = or i1 %tobool17.not, %tobool9.not114
  br i1 %tobool9.not, label %hlist_add_head.exit.for.inc25_crit_edge, label %hlist_add_head.exit.land.rhs_crit_edge

hlist_add_head.exit.land.rhs_crit_edge:           ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

hlist_add_head.exit.for.inc25_crit_edge:          ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25

for.inc25:                                        ; preds = %hlist_add_head.exit.for.inc25_crit_edge, %for.body3.for.inc25_crit_edge
  %inc = add nuw nsw i32 %j.0107, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc25.for.body3.1_crit_edge, label %for.inc25.for.body3_crit_edge

for.inc25.for.body3_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.inc25.for.body3.1_crit_edge:                  ; preds = %for.inc25
  br label %for.body3.1

for.body3.1:                                      ; preds = %for.inc25.1.for.body3.1_crit_edge, %for.inc25.for.body3.1_crit_edge
  %j.0107.1 = phi i32 [ %inc.1, %for.inc25.1.for.body3.1_crit_edge ], [ 0, %for.inc25.for.body3.1_crit_edge ]
  %19 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arfs, align 4
  %arrayidx6.1 = getelementptr [4 x %struct.arfs_table], ptr %20, i32 0, i32 1, i32 2, i32 %j.0107.1
  %21 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx6.1, align 4
  %tobool.not.1 = icmp eq ptr %22, null
  %add.ptr.1 = getelementptr i8, ptr %22, i32 -52
  %tobool9.not105112.1 = icmp eq ptr %add.ptr.1, null
  %tobool9.not105.1 = or i1 %tobool.not.1, %tobool9.not105112.1
  br i1 %tobool9.not105.1, label %for.body3.1.for.inc25.1_crit_edge, label %for.body3.1.land.rhs.1_crit_edge

for.body3.1.land.rhs.1_crit_edge:                 ; preds = %for.body3.1
  br label %land.rhs.1

for.body3.1.for.inc25.1_crit_edge:                ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25.1

land.rhs.1:                                       ; preds = %hlist_add_head.exit.1.land.rhs.1_crit_edge, %for.body3.1.land.rhs.1_crit_edge
  %rule.0106.1 = phi ptr [ %add.ptr21.1, %hlist_add_head.exit.1.land.rhs.1_crit_edge ], [ %add.ptr.1, %for.body3.1.land.rhs.1_crit_edge ]
  %hlist.1 = getelementptr inbounds %struct.arfs_rule, ptr %rule.0106.1, i32 0, i32 3
  %23 = ptrtoint ptr %hlist.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hlist.1, align 4
  %pprev.i.i.1 = getelementptr inbounds %struct.arfs_rule, ptr %rule.0106.1, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %pprev.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pprev.i.i.1, align 4
  %tobool.not.i.not.i.1 = icmp eq ptr %26, null
  br i1 %tobool.not.i.not.i.1, label %land.rhs.1.hlist_del_init.exit.1_crit_edge, label %if.then.i.1

land.rhs.1.hlist_del_init.exit.1_crit_edge:       ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init.exit.1

if.then.i.1:                                      ; preds = %land.rhs.1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %24, ptr %26, align 4
  %tobool.not.i3.i.1 = icmp eq ptr %24, null
  br i1 %tobool.not.i3.i.1, label %if.then.i.1.hlist_del_init.exit.1_crit_edge, label %do.body13.i.i.1

if.then.i.1.hlist_del_init.exit.1_crit_edge:      ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init.exit.1

do.body13.i.i.1:                                  ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.1 = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %pprev14.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %pprev14.i.i.1, align 4
  br label %hlist_del_init.exit.1

hlist_del_init.exit.1:                            ; preds = %do.body13.i.i.1, %if.then.i.1.hlist_del_init.exit.1_crit_edge, %land.rhs.1.hlist_del_init.exit.1_crit_edge
  %29 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %del_list, align 4
  %31 = ptrtoint ptr %hlist.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %30, ptr %hlist.1, align 4
  %tobool.not.i.1 = icmp eq ptr %30, null
  br i1 %tobool.not.i.1, label %hlist_del_init.exit.1.hlist_add_head.exit.1_crit_edge, label %do.body12.i.1

hlist_del_init.exit.1.hlist_add_head.exit.1_crit_edge: ; preds = %hlist_del_init.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit.1

do.body12.i.1:                                    ; preds = %hlist_del_init.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i.1 = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %pprev.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %hlist.1, ptr %pprev.i.1, align 4
  br label %hlist_add_head.exit.1

hlist_add_head.exit.1:                            ; preds = %do.body12.i.1, %hlist_del_init.exit.1.hlist_add_head.exit.1_crit_edge
  %33 = ptrtoint ptr %del_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %hlist.1, ptr %del_list, align 4
  %34 = ptrtoint ptr %pprev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %del_list, ptr %pprev.i.i.1, align 4
  %tobool17.not.1 = icmp eq ptr %24, null
  %add.ptr21.1 = getelementptr i8, ptr %24, i32 -52
  %tobool9.not114.1 = icmp eq ptr %add.ptr21.1, null
  %tobool9.not.1 = or i1 %tobool17.not.1, %tobool9.not114.1
  br i1 %tobool9.not.1, label %hlist_add_head.exit.1.for.inc25.1_crit_edge, label %hlist_add_head.exit.1.land.rhs.1_crit_edge

hlist_add_head.exit.1.land.rhs.1_crit_edge:       ; preds = %hlist_add_head.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.1

hlist_add_head.exit.1.for.inc25.1_crit_edge:      ; preds = %hlist_add_head.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25.1

for.inc25.1:                                      ; preds = %hlist_add_head.exit.1.for.inc25.1_crit_edge, %for.body3.1.for.inc25.1_crit_edge
  %inc.1 = add nuw nsw i32 %j.0107.1, 1
  %exitcond.not.1 = icmp eq i32 %inc.1, 256
  br i1 %exitcond.not.1, label %for.inc25.1.for.body3.2_crit_edge, label %for.inc25.1.for.body3.1_crit_edge

for.inc25.1.for.body3.1_crit_edge:                ; preds = %for.inc25.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.1

for.inc25.1.for.body3.2_crit_edge:                ; preds = %for.inc25.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc25.2.for.body3.2_crit_edge, %for.inc25.1.for.body3.2_crit_edge
  %j.0107.2 = phi i32 [ %inc.2, %for.inc25.2.for.body3.2_crit_edge ], [ 0, %for.inc25.1.for.body3.2_crit_edge ]
  %35 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arfs, align 4
  %arrayidx6.2 = getelementptr [4 x %struct.arfs_table], ptr %36, i32 0, i32 2, i32 2, i32 %j.0107.2
  %37 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx6.2, align 4
  %tobool.not.2 = icmp eq ptr %38, null
  %add.ptr.2 = getelementptr i8, ptr %38, i32 -52
  %tobool9.not105112.2 = icmp eq ptr %add.ptr.2, null
  %tobool9.not105.2 = or i1 %tobool.not.2, %tobool9.not105112.2
  br i1 %tobool9.not105.2, label %for.body3.2.for.inc25.2_crit_edge, label %for.body3.2.land.rhs.2_crit_edge

for.body3.2.land.rhs.2_crit_edge:                 ; preds = %for.body3.2
  br label %land.rhs.2

for.body3.2.for.inc25.2_crit_edge:                ; preds = %for.body3.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25.2

land.rhs.2:                                       ; preds = %hlist_add_head.exit.2.land.rhs.2_crit_edge, %for.body3.2.land.rhs.2_crit_edge
  %rule.0106.2 = phi ptr [ %add.ptr21.2, %hlist_add_head.exit.2.land.rhs.2_crit_edge ], [ %add.ptr.2, %for.body3.2.land.rhs.2_crit_edge ]
  %hlist.2 = getelementptr inbounds %struct.arfs_rule, ptr %rule.0106.2, i32 0, i32 3
  %39 = ptrtoint ptr %hlist.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hlist.2, align 4
  %pprev.i.i.2 = getelementptr inbounds %struct.arfs_rule, ptr %rule.0106.2, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %pprev.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pprev.i.i.2, align 4
  %tobool.not.i.not.i.2 = icmp eq ptr %42, null
  br i1 %tobool.not.i.not.i.2, label %land.rhs.2.hlist_del_init.exit.2_crit_edge, label %if.then.i.2

land.rhs.2.hlist_del_init.exit.2_crit_edge:       ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init.exit.2

if.then.i.2:                                      ; preds = %land.rhs.2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %40, ptr %42, align 4
  %tobool.not.i3.i.2 = icmp eq ptr %40, null
  br i1 %tobool.not.i3.i.2, label %if.then.i.2.hlist_del_init.exit.2_crit_edge, label %do.body13.i.i.2

if.then.i.2.hlist_del_init.exit.2_crit_edge:      ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init.exit.2

do.body13.i.i.2:                                  ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.2 = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  %44 = ptrtoint ptr %pprev14.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %pprev14.i.i.2, align 4
  br label %hlist_del_init.exit.2

hlist_del_init.exit.2:                            ; preds = %do.body13.i.i.2, %if.then.i.2.hlist_del_init.exit.2_crit_edge, %land.rhs.2.hlist_del_init.exit.2_crit_edge
  %45 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %del_list, align 4
  %47 = ptrtoint ptr %hlist.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %46, ptr %hlist.2, align 4
  %tobool.not.i.2 = icmp eq ptr %46, null
  br i1 %tobool.not.i.2, label %hlist_del_init.exit.2.hlist_add_head.exit.2_crit_edge, label %do.body12.i.2

hlist_del_init.exit.2.hlist_add_head.exit.2_crit_edge: ; preds = %hlist_del_init.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit.2

do.body12.i.2:                                    ; preds = %hlist_del_init.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i.2 = getelementptr inbounds %struct.hlist_node, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %pprev.i.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %hlist.2, ptr %pprev.i.2, align 4
  br label %hlist_add_head.exit.2

hlist_add_head.exit.2:                            ; preds = %do.body12.i.2, %hlist_del_init.exit.2.hlist_add_head.exit.2_crit_edge
  %49 = ptrtoint ptr %del_list to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %hlist.2, ptr %del_list, align 4
  %50 = ptrtoint ptr %pprev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %del_list, ptr %pprev.i.i.2, align 4
  %tobool17.not.2 = icmp eq ptr %40, null
  %add.ptr21.2 = getelementptr i8, ptr %40, i32 -52
  %tobool9.not114.2 = icmp eq ptr %add.ptr21.2, null
  %tobool9.not.2 = or i1 %tobool17.not.2, %tobool9.not114.2
  br i1 %tobool9.not.2, label %hlist_add_head.exit.2.for.inc25.2_crit_edge, label %hlist_add_head.exit.2.land.rhs.2_crit_edge

hlist_add_head.exit.2.land.rhs.2_crit_edge:       ; preds = %hlist_add_head.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.2

hlist_add_head.exit.2.for.inc25.2_crit_edge:      ; preds = %hlist_add_head.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25.2

for.inc25.2:                                      ; preds = %hlist_add_head.exit.2.for.inc25.2_crit_edge, %for.body3.2.for.inc25.2_crit_edge
  %inc.2 = add nuw nsw i32 %j.0107.2, 1
  %exitcond.not.2 = icmp eq i32 %inc.2, 256
  br i1 %exitcond.not.2, label %for.inc25.2.for.body3.3_crit_edge, label %for.inc25.2.for.body3.2_crit_edge

for.inc25.2.for.body3.2_crit_edge:                ; preds = %for.inc25.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.2

for.inc25.2.for.body3.3_crit_edge:                ; preds = %for.inc25.2
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.inc25.3.for.body3.3_crit_edge, %for.inc25.2.for.body3.3_crit_edge
  %j.0107.3 = phi i32 [ %inc.3, %for.inc25.3.for.body3.3_crit_edge ], [ 0, %for.inc25.2.for.body3.3_crit_edge ]
  %51 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arfs, align 4
  %arrayidx6.3 = getelementptr [4 x %struct.arfs_table], ptr %52, i32 0, i32 3, i32 2, i32 %j.0107.3
  %53 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx6.3, align 4
  %tobool.not.3 = icmp eq ptr %54, null
  %add.ptr.3 = getelementptr i8, ptr %54, i32 -52
  %tobool9.not105112.3 = icmp eq ptr %add.ptr.3, null
  %tobool9.not105.3 = or i1 %tobool.not.3, %tobool9.not105112.3
  br i1 %tobool9.not105.3, label %for.body3.3.for.inc25.3_crit_edge, label %for.body3.3.land.rhs.3_crit_edge

for.body3.3.land.rhs.3_crit_edge:                 ; preds = %for.body3.3
  br label %land.rhs.3

for.body3.3.for.inc25.3_crit_edge:                ; preds = %for.body3.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25.3

land.rhs.3:                                       ; preds = %hlist_add_head.exit.3.land.rhs.3_crit_edge, %for.body3.3.land.rhs.3_crit_edge
  %rule.0106.3 = phi ptr [ %add.ptr21.3, %hlist_add_head.exit.3.land.rhs.3_crit_edge ], [ %add.ptr.3, %for.body3.3.land.rhs.3_crit_edge ]
  %hlist.3 = getelementptr inbounds %struct.arfs_rule, ptr %rule.0106.3, i32 0, i32 3
  %55 = ptrtoint ptr %hlist.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hlist.3, align 4
  %pprev.i.i.3 = getelementptr inbounds %struct.arfs_rule, ptr %rule.0106.3, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %pprev.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pprev.i.i.3, align 4
  %tobool.not.i.not.i.3 = icmp eq ptr %58, null
  br i1 %tobool.not.i.not.i.3, label %land.rhs.3.hlist_del_init.exit.3_crit_edge, label %if.then.i.3

land.rhs.3.hlist_del_init.exit.3_crit_edge:       ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init.exit.3

if.then.i.3:                                      ; preds = %land.rhs.3
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %56, ptr %58, align 4
  %tobool.not.i3.i.3 = icmp eq ptr %56, null
  br i1 %tobool.not.i3.i.3, label %if.then.i.3.hlist_del_init.exit.3_crit_edge, label %do.body13.i.i.3

if.then.i.3.hlist_del_init.exit.3_crit_edge:      ; preds = %if.then.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init.exit.3

do.body13.i.i.3:                                  ; preds = %if.then.i.3
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.3 = getelementptr inbounds %struct.hlist_node, ptr %56, i32 0, i32 1
  %60 = ptrtoint ptr %pprev14.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %pprev14.i.i.3, align 4
  br label %hlist_del_init.exit.3

hlist_del_init.exit.3:                            ; preds = %do.body13.i.i.3, %if.then.i.3.hlist_del_init.exit.3_crit_edge, %land.rhs.3.hlist_del_init.exit.3_crit_edge
  %61 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %del_list, align 4
  %63 = ptrtoint ptr %hlist.3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %62, ptr %hlist.3, align 4
  %tobool.not.i.3 = icmp eq ptr %62, null
  br i1 %tobool.not.i.3, label %hlist_del_init.exit.3.hlist_add_head.exit.3_crit_edge, label %do.body12.i.3

hlist_del_init.exit.3.hlist_add_head.exit.3_crit_edge: ; preds = %hlist_del_init.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit.3

do.body12.i.3:                                    ; preds = %hlist_del_init.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i.3 = getelementptr inbounds %struct.hlist_node, ptr %62, i32 0, i32 1
  %64 = ptrtoint ptr %pprev.i.3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %hlist.3, ptr %pprev.i.3, align 4
  br label %hlist_add_head.exit.3

hlist_add_head.exit.3:                            ; preds = %do.body12.i.3, %hlist_del_init.exit.3.hlist_add_head.exit.3_crit_edge
  %65 = ptrtoint ptr %del_list to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %hlist.3, ptr %del_list, align 4
  %66 = ptrtoint ptr %pprev.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %del_list, ptr %pprev.i.i.3, align 4
  %tobool17.not.3 = icmp eq ptr %56, null
  %add.ptr21.3 = getelementptr i8, ptr %56, i32 -52
  %tobool9.not114.3 = icmp eq ptr %add.ptr21.3, null
  %tobool9.not.3 = or i1 %tobool17.not.3, %tobool9.not114.3
  br i1 %tobool9.not.3, label %hlist_add_head.exit.3.for.inc25.3_crit_edge, label %hlist_add_head.exit.3.land.rhs.3_crit_edge

hlist_add_head.exit.3.land.rhs.3_crit_edge:       ; preds = %hlist_add_head.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.3

hlist_add_head.exit.3.for.inc25.3_crit_edge:      ; preds = %hlist_add_head.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25.3

for.inc25.3:                                      ; preds = %hlist_add_head.exit.3.for.inc25.3_crit_edge, %for.body3.3.for.inc25.3_crit_edge
  %inc.3 = add nuw nsw i32 %j.0107.3, 1
  %exitcond.not.3 = icmp eq i32 %inc.3, 256
  br i1 %exitcond.not.3, label %for.inc27.3, label %for.inc25.3.for.body3.3_crit_edge

for.inc25.3.for.body3.3_crit_edge:                ; preds = %for.inc25.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.3

for.inc27.3:                                      ; preds = %for.inc25.3
  %67 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arfs, align 4
  %arfs_lock32 = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %68, i32 0, i32 1
  call void @_raw_spin_unlock_bh(ptr noundef %arfs_lock32) #7
  %69 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %del_list, align 4
  %tobool36.not = icmp eq ptr %70, null
  %add.ptr40 = getelementptr i8, ptr %70, i32 -52
  %tobool45.not109113 = icmp eq ptr %add.ptr40, null
  %tobool45.not109 = or i1 %tobool36.not, %tobool45.not109113
  br i1 %tobool45.not109, label %for.inc27.3.for.end68_crit_edge, label %for.inc27.3.land.rhs46_crit_edge

for.inc27.3.land.rhs46_crit_edge:                 ; preds = %for.inc27.3
  br label %land.rhs46

for.inc27.3.for.end68_crit_edge:                  ; preds = %for.inc27.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end68

land.rhs46:                                       ; preds = %hlist_del.exit.land.rhs46_crit_edge, %for.inc27.3.land.rhs46_crit_edge
  %rule.1110 = phi ptr [ %add.ptr64, %hlist_del.exit.land.rhs46_crit_edge ], [ %add.ptr40, %for.inc27.3.land.rhs46_crit_edge ]
  %hlist47 = getelementptr inbounds %struct.arfs_rule, ptr %rule.1110, i32 0, i32 3
  %71 = ptrtoint ptr %hlist47 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hlist47, align 4
  %arfs_work = getelementptr inbounds %struct.arfs_rule, ptr %rule.1110, i32 0, i32 1
  %call = call zeroext i1 @cancel_work_sync(ptr noundef %arfs_work) #7
  %rule53 = getelementptr inbounds %struct.arfs_rule, ptr %rule.1110, i32 0, i32 2
  %73 = ptrtoint ptr %rule53 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rule53, align 4
  %tobool54.not = icmp eq ptr %74, null
  br i1 %tobool54.not, label %land.rhs46.if.end_crit_edge, label %if.then

land.rhs46.if.end_crit_edge:                      ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlx5_del_flow_rules(ptr noundef nonnull %74) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs46.if.end_crit_edge
  %75 = ptrtoint ptr %hlist47 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hlist47, align 4
  %pprev2.i.i = getelementptr inbounds %struct.arfs_rule, ptr %rule.1110, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pprev2.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %76, ptr %78, align 4
  %tobool.not.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i, label %if.end.hlist_del.exit_crit_edge, label %do.body13.i.i97

if.end.hlist_del.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del.exit

do.body13.i.i97:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i96 = getelementptr inbounds %struct.hlist_node, ptr %76, i32 0, i32 1
  %80 = ptrtoint ptr %pprev14.i.i96 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %pprev14.i.i96, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i97, %if.end.hlist_del.exit_crit_edge
  %81 = ptrtoint ptr %hlist47 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 256 to ptr), ptr %hlist47, align 4
  %82 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  call void @kfree(ptr noundef nonnull %rule.1110) #7
  %tobool60.not = icmp eq ptr %72, null
  %add.ptr64 = getelementptr i8, ptr %72, i32 -52
  %tobool45.not115 = icmp eq ptr %add.ptr64, null
  %tobool45.not = or i1 %tobool60.not, %tobool45.not115
  br i1 %tobool45.not, label %hlist_del.exit.for.end68_crit_edge, label %hlist_del.exit.land.rhs46_crit_edge

hlist_del.exit.land.rhs46_crit_edge:              ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs46

hlist_del.exit.for.end68_crit_edge:               ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end68

for.end68:                                        ; preds = %hlist_del.exit.for.end68_crit_edge, %for.inc27.3.for.end68_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %del_list) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arfs_disable(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
arfs_get_tt.exit:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ttc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %0 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ttc, align 4
  %call1 = tail call i32 @mlx5_ttc_fwd_default_dest(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %arfs_get_tt.exit.1, label %arfs_get_tt.exit.arfs_get_tt.exit15_crit_edge

arfs_get_tt.exit.arfs_get_tt.exit15_crit_edge:    ; preds = %arfs_get_tt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_get_tt.exit15

arfs_get_tt.exit15:                               ; preds = %arfs_get_tt.exit.3.arfs_get_tt.exit15_crit_edge, %arfs_get_tt.exit.2.arfs_get_tt.exit15_crit_edge, %arfs_get_tt.exit.1.arfs_get_tt.exit15_crit_edge, %arfs_get_tt.exit.arfs_get_tt.exit15_crit_edge
  %call1.lcssa23 = phi i32 [ %call1, %arfs_get_tt.exit.arfs_get_tt.exit15_crit_edge ], [ %call1.2, %arfs_get_tt.exit.2.arfs_get_tt.exit15_crit_edge ], [ %call1.1, %arfs_get_tt.exit.1.arfs_get_tt.exit15_crit_edge ], [ %call1.3, %arfs_get_tt.exit.3.arfs_get_tt.exit15_crit_edge ]
  %retval.0.i14 = phi i32 [ 0, %arfs_get_tt.exit.arfs_get_tt.exit15_crit_edge ], [ 2, %arfs_get_tt.exit.2.arfs_get_tt.exit15_crit_edge ], [ 1, %arfs_get_tt.exit.1.arfs_get_tt.exit15_crit_edge ], [ 3, %arfs_get_tt.exit.3.arfs_get_tt.exit15_crit_edge ]
  %netdev22 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %netdev22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev22, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.arfs_disable, i32 noundef %retval.0.i14, i32 noundef %call1.lcssa23) #10
  br label %cleanup

arfs_get_tt.exit.1:                               ; preds = %arfs_get_tt.exit
  %4 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ttc, align 4
  %call1.1 = tail call i32 @mlx5_ttc_fwd_default_dest(ptr noundef %5, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool.not.1, label %arfs_get_tt.exit.2, label %arfs_get_tt.exit.1.arfs_get_tt.exit15_crit_edge

arfs_get_tt.exit.1.arfs_get_tt.exit15_crit_edge:  ; preds = %arfs_get_tt.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_get_tt.exit15

arfs_get_tt.exit.2:                               ; preds = %arfs_get_tt.exit.1
  %6 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ttc, align 4
  %call1.2 = tail call i32 @mlx5_ttc_fwd_default_dest(ptr noundef %7, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool.not.2, label %arfs_get_tt.exit.3, label %arfs_get_tt.exit.2.arfs_get_tt.exit15_crit_edge

arfs_get_tt.exit.2.arfs_get_tt.exit15_crit_edge:  ; preds = %arfs_get_tt.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_get_tt.exit15

arfs_get_tt.exit.3:                               ; preds = %arfs_get_tt.exit.2
  %8 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ttc, align 4
  %call1.3 = tail call i32 @mlx5_ttc_fwd_default_dest(ptr noundef %9, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool.not.3 = icmp eq i32 %call1.3, 0
  br i1 %tobool.not.3, label %arfs_get_tt.exit.3.cleanup_crit_edge, label %arfs_get_tt.exit.3.arfs_get_tt.exit15_crit_edge

arfs_get_tt.exit.3.arfs_get_tt.exit15_crit_edge:  ; preds = %arfs_get_tt.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_get_tt.exit15

arfs_get_tt.exit.3.cleanup_crit_edge:             ; preds = %arfs_get_tt.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %arfs_get_tt.exit.3.cleanup_crit_edge, %arfs_get_tt.exit15
  %retval.0 = phi i32 [ %call1.lcssa23, %arfs_get_tt.exit15 ], [ 0, %arfs_get_tt.exit.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_arfs_enable(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
arfs_get_tt.exit:
  %dest = alloca %struct.mlx5_flow_destination, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest) #7
  %0 = getelementptr inbounds i8, ptr %dest, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %dest, align 4
  %arfs = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 9
  %3 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest, i32 0, i32 1
  %ttc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arfs, align 4
  %t = getelementptr [4 x %struct.arfs_table], ptr %5, i32 0, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %3, align 4
  %9 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ttc, align 4
  %call2 = call i32 @mlx5_ttc_fwd_dest(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %dest) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %arfs_get_tt.exit.1, label %arfs_get_tt.exit.arfs_get_tt.exit21_crit_edge

arfs_get_tt.exit.arfs_get_tt.exit21_crit_edge:    ; preds = %arfs_get_tt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_get_tt.exit21

arfs_get_tt.exit21:                               ; preds = %arfs_get_tt.exit.3.arfs_get_tt.exit21_crit_edge, %arfs_get_tt.exit.2.arfs_get_tt.exit21_crit_edge, %arfs_get_tt.exit.1.arfs_get_tt.exit21_crit_edge, %arfs_get_tt.exit.arfs_get_tt.exit21_crit_edge
  %call2.lcssa29 = phi i32 [ %call2, %arfs_get_tt.exit.arfs_get_tt.exit21_crit_edge ], [ %call2.2, %arfs_get_tt.exit.2.arfs_get_tt.exit21_crit_edge ], [ %call2.1, %arfs_get_tt.exit.1.arfs_get_tt.exit21_crit_edge ], [ %call2.3, %arfs_get_tt.exit.3.arfs_get_tt.exit21_crit_edge ]
  %retval.0.i20 = phi i32 [ 0, %arfs_get_tt.exit.arfs_get_tt.exit21_crit_edge ], [ 2, %arfs_get_tt.exit.2.arfs_get_tt.exit21_crit_edge ], [ 1, %arfs_get_tt.exit.1.arfs_get_tt.exit21_crit_edge ], [ 3, %arfs_get_tt.exit.3.arfs_get_tt.exit21_crit_edge ]
  %netdev28 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %11 = ptrtoint ptr %netdev28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev28, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mlx5e_arfs_enable, i32 noundef %retval.0.i20, i32 noundef %call2.lcssa29) #10
  %call4 = call fastcc i32 @arfs_disable(ptr noundef %priv)
  br label %cleanup

arfs_get_tt.exit.1:                               ; preds = %arfs_get_tt.exit
  %13 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arfs, align 4
  %t.1 = getelementptr [4 x %struct.arfs_table], ptr %14, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %t.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t.1, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %3, align 4
  %18 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ttc, align 4
  %call2.1 = call i32 @mlx5_ttc_fwd_dest(ptr noundef %19, i32 noundef 1, ptr noundef nonnull %dest) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool.not.1, label %arfs_get_tt.exit.2, label %arfs_get_tt.exit.1.arfs_get_tt.exit21_crit_edge

arfs_get_tt.exit.1.arfs_get_tt.exit21_crit_edge:  ; preds = %arfs_get_tt.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_get_tt.exit21

arfs_get_tt.exit.2:                               ; preds = %arfs_get_tt.exit.1
  %20 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arfs, align 4
  %t.2 = getelementptr [4 x %struct.arfs_table], ptr %21, i32 0, i32 2, i32 0, i32 1
  %22 = ptrtoint ptr %t.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t.2, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %3, align 4
  %25 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ttc, align 4
  %call2.2 = call i32 @mlx5_ttc_fwd_dest(ptr noundef %26, i32 noundef 2, ptr noundef nonnull %dest) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool.not.2, label %arfs_get_tt.exit.3, label %arfs_get_tt.exit.2.arfs_get_tt.exit21_crit_edge

arfs_get_tt.exit.2.arfs_get_tt.exit21_crit_edge:  ; preds = %arfs_get_tt.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_get_tt.exit21

arfs_get_tt.exit.3:                               ; preds = %arfs_get_tt.exit.2
  %27 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arfs, align 4
  %t.3 = getelementptr [4 x %struct.arfs_table], ptr %28, i32 0, i32 3, i32 0, i32 1
  %29 = ptrtoint ptr %t.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %t.3, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %3, align 4
  %32 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ttc, align 4
  %call2.3 = call i32 @mlx5_ttc_fwd_dest(ptr noundef %33, i32 noundef 3, ptr noundef nonnull %dest) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %tobool.not.3 = icmp eq i32 %call2.3, 0
  br i1 %tobool.not.3, label %arfs_get_tt.exit.3.cleanup_crit_edge, label %arfs_get_tt.exit.3.arfs_get_tt.exit21_crit_edge

arfs_get_tt.exit.3.arfs_get_tt.exit21_crit_edge:  ; preds = %arfs_get_tt.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_get_tt.exit21

arfs_get_tt.exit.3.cleanup_crit_edge:             ; preds = %arfs_get_tt.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %arfs_get_tt.exit.3.cleanup_crit_edge, %arfs_get_tt.exit21
  %retval.0 = phi i32 [ %call2.lcssa29, %arfs_get_tt.exit21 ], [ 0, %arfs_get_tt.exit.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ttc_fwd_dest(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_arfs_destroy_tables(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %hw_features, align 8
  %and = and i64 %3, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_mlx5e_cleanup_tables(ptr noundef %priv)
  %arfs = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arfs, align 4
  tail call void @kvfree(ptr noundef %5) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_mlx5e_cleanup_tables(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @arfs_del_rules(ptr noundef %priv)
  %arfs = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 9
  %0 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arfs, align 4
  %wq = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #7
  %4 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arfs, align 4
  %t = getelementptr [4 x %struct.arfs_table], ptr %5, i32 0, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %default_rule.i = getelementptr [4 x %struct.arfs_table], ptr %5, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %default_rule.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %default_rule.i, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %9) #7
  tail call void @mlx5e_destroy_flow_table(ptr noundef %5) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %10 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arfs, align 4
  %t.1 = getelementptr [4 x %struct.arfs_table], ptr %11, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %t.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t.1, align 4
  %tobool.not.i.1 = icmp eq ptr %13, null
  %cmp.i.1 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1 = or i1 %tobool.not.i.1, %cmp.i.1
  br i1 %spec.select.i.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.1 = getelementptr [4 x %struct.arfs_table], ptr %11, i32 0, i32 1
  %default_rule.i.1 = getelementptr [4 x %struct.arfs_table], ptr %11, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %default_rule.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %default_rule.i.1, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %15) #7
  tail call void @mlx5e_destroy_flow_table(ptr noundef %arrayidx6.1) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %16 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arfs, align 4
  %t.2 = getelementptr [4 x %struct.arfs_table], ptr %17, i32 0, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %t.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t.2, align 4
  %tobool.not.i.2 = icmp eq ptr %19, null
  %cmp.i.2 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %spec.select.i.2 = or i1 %tobool.not.i.2, %cmp.i.2
  br i1 %spec.select.i.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.2 = getelementptr [4 x %struct.arfs_table], ptr %17, i32 0, i32 2
  %default_rule.i.2 = getelementptr [4 x %struct.arfs_table], ptr %17, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %default_rule.i.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %default_rule.i.2, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %21) #7
  tail call void @mlx5e_destroy_flow_table(ptr noundef %arrayidx6.2) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %22 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arfs, align 4
  %t.3 = getelementptr [4 x %struct.arfs_table], ptr %23, i32 0, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %t.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %t.3, align 4
  %tobool.not.i.3 = icmp eq ptr %25, null
  %cmp.i.3 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %spec.select.i.3 = or i1 %tobool.not.i.3, %cmp.i.3
  br i1 %spec.select.i.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.3 = getelementptr [4 x %struct.arfs_table], ptr %23, i32 0, i32 3
  %default_rule.i.3 = getelementptr [4 x %struct.arfs_table], ptr %23, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %default_rule.i.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %default_rule.i.3, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %27) #7
  tail call void @mlx5e_destroy_flow_table(ptr noundef %arrayidx6.3) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_arfs_create_tables(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %dest.i.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i.i = alloca %struct.mlx5_flow_act, align 4
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %hw_features, align 8
  %and = and i64 %3, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 4220, i32 noundef 3520, i32 noundef -1) #11
  %arfs = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %arfs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %arfs, align 4
  %tobool3.not = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %arfs_lock = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %call.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arfs_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mlx5e_arfs_create_tables.__key, i16 noundef signext 3) #7
  %5 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arfs, align 4
  %rules = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %rules to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %rules, ptr %rules, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %6, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rules, ptr %prev.i, align 4
  %call11 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.3) #7
  %9 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arfs, align 4
  %wq = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11, ptr %wq, align 4
  %12 = load ptr, ptr %arfs, align 4
  %wq16 = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %wq16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wq16, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %do.body.err24_crit_edge, label %for.cond.preheader

do.body.err24_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err24

for.cond.preheader:                               ; preds = %do.body
  %fs.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13
  %15 = getelementptr inbounds i8, ptr %ft_attr.i, i32 12
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %level.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 2
  %16 = getelementptr inbounds i8, ptr %dest.i.i, i32 8
  %17 = getelementptr inbounds i8, ptr %flow_act.i.i, i32 4
  %rx_res.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %18 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.042 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %19 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arfs, align 4
  %arrayidx.i = getelementptr [4 x %struct.arfs_table], ptr %20, i32 0, i32 %i.042
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #7
  %21 = call ptr @memset(ptr %15, i32 0, i32 16)
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65536, ptr %max_fte.i, align 4
  %24 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %level.i, align 4
  %25 = ptrtoint ptr %ft_attr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %ft_attr.i, align 4
  %26 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fs.i, align 4
  %call.i = call ptr @mlx5_create_flow_table(ptr noundef %27, ptr noundef nonnull %ft_attr.i) #7
  %t.i = getelementptr inbounds %struct.mlx5e_flow_table, ptr %arrayidx.i, i32 0, i32 1
  %28 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %t.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call.i to i32
  %30 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %t.i, align 4
  br label %arfs_create_table.exit

if.end.i:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 8) #12
  %g.i.i = getelementptr inbounds %struct.mlx5e_flow_table, ptr %arrayidx.i, i32 0, i32 2
  %32 = ptrtoint ptr %g.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i.i.i.i, ptr %g.i.i, align 4
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.arfs_create_groups.exit.thread40.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.arfs_create_groups.exit.thread40.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_create_groups.exit.thread40.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %33 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %g.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %34, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.arfs_create_groups.exit.thread40.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.arfs_create_groups.exit.thread40.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_create_groups.exit.thread40.i

arfs_create_groups.exit.thread40.i:               ; preds = %lor.lhs.false.i.i.arfs_create_groups.exit.thread40.i_crit_edge, %if.end.i.arfs_create_groups.exit.thread40.i_crit_edge
  %35 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %g.i.i, align 4
  call void @kfree(ptr noundef %36) #7
  call void @kvfree(ptr noundef %call.i.i.i.i) #7
  br label %err16.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %add.ptr7.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 68
  %37 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr7.i.i, align 4
  %or.i.i = or i32 %38, 65535
  store i32 %or.i.i, ptr %add.ptr7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.042)
  %39 = icmp ult i32 %i.042, 4
  br i1 %39, label %switch.lookup, label %if.end.i.i.arfs_create_groups.exit.thread43.i_crit_edge

if.end.i.i.arfs_create_groups.exit.thread43.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_create_groups.exit.thread43.i

switch.lookup:                                    ; preds = %if.end.i.i
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mlx5e_arfs_create_tables, i32 0, i32 %i.042
  %40 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load = load i32, ptr %switch.gep, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %switch.load
  %41 = ptrtoint ptr %add.ptr36.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %add.ptr36.i.i, align 4
  %42 = zext i32 %i.042 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.042, label %switch.lookup.arfs_create_groups.exit.thread43.i_crit_edge [
    i32 0, label %switch.lookup.do.end56.i.i_crit_edge
    i32 2, label %switch.lookup.do.end56.i.i_crit_edge48
    i32 1, label %switch.lookup.sw.bb73.i.i_crit_edge
    i32 3, label %switch.lookup.sw.bb73.i.i_crit_edge49
  ]

switch.lookup.sw.bb73.i.i_crit_edge49:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb73.i.i

switch.lookup.sw.bb73.i.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb73.i.i

switch.lookup.do.end56.i.i_crit_edge48:           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i.i

switch.lookup.do.end56.i.i_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i.i

switch.lookup.arfs_create_groups.exit.thread43.i_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_create_groups.exit.thread43.i

do.end56.i.i:                                     ; preds = %switch.lookup.do.end56.i.i_crit_edge, %switch.lookup.do.end56.i.i_crit_edge48
  %add.ptr57.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 108
  %43 = ptrtoint ptr %add.ptr57.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %add.ptr57.i.i, align 4
  %add.ptr67.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 124
  %44 = ptrtoint ptr %add.ptr67.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %add.ptr67.i.i, align 4
  br label %do.body78.i.i

sw.bb73.i.i:                                      ; preds = %switch.lookup.sw.bb73.i.i_crit_edge, %switch.lookup.sw.bb73.i.i_crit_edge49
  %add.ptr74.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 96
  %45 = call ptr @memset(ptr %add.ptr74.i.i, i32 255, i32 32)
  br label %do.body78.i.i

do.body78.i.i:                                    ; preds = %sw.bb73.i.i, %do.end56.i.i
  %add.ptr82.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 15
  %46 = ptrtoint ptr %add.ptr82.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr82.i.i, align 4
  %and83.i.i = and i32 %47, -256
  %or85.i.i = or i32 %and83.i.i, 1
  store i32 %or85.i.i, ptr %add.ptr82.i.i, align 4
  %add.ptr94.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 7
  %48 = ptrtoint ptr %add.ptr94.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %add.ptr94.i.i, align 4
  %add.ptr107.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 9
  %49 = ptrtoint ptr %add.ptr107.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 65534, ptr %add.ptr107.i.i, align 4
  %50 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %t.i, align 4
  %call115.i.i = call ptr @mlx5_create_flow_group(ptr noundef %51, ptr noundef nonnull %call.i.i.i.i) #7
  %52 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %g.i.i, align 4
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %53, i32 %55
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call115.i.i, ptr %arrayidx.i.i, align 4
  %57 = load ptr, ptr %g.i.i, align 4
  %58 = load i32, ptr %arrayidx.i, align 4
  %arrayidx119.i.i = getelementptr ptr, ptr %57, i32 %58
  %59 = ptrtoint ptr %arrayidx119.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx119.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.body78.i.i.arfs_create_groups.exit.i_crit_edge, label %if.end122.i.i

do.body78.i.i.arfs_create_groups.exit.i_crit_edge: ; preds = %do.body78.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_create_groups.exit.i

if.end122.i.i:                                    ; preds = %do.body78.i.i
  %inc.i.i = add i32 %58, 1
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %inc.i.i, ptr %arrayidx.i, align 4
  %62 = call ptr @memset(ptr %call.i.i.i.i, i32 0, i32 1024)
  %63 = ptrtoint ptr %add.ptr94.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 65535, ptr %add.ptr94.i.i, align 4
  %64 = ptrtoint ptr %add.ptr107.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 65535, ptr %add.ptr107.i.i, align 4
  %65 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %t.i, align 4
  %call153.i.i = call ptr @mlx5_create_flow_group(ptr noundef %66, ptr noundef nonnull %call.i.i.i.i) #7
  %67 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %g.i.i, align 4
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  %arrayidx156.i.i = getelementptr ptr, ptr %68, i32 %70
  %71 = ptrtoint ptr %arrayidx156.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call153.i.i, ptr %arrayidx156.i.i, align 4
  %72 = load ptr, ptr %g.i.i, align 4
  %73 = load i32, ptr %arrayidx.i, align 4
  %arrayidx159.i.i = getelementptr ptr, ptr %72, i32 %73
  %74 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx159.i.i, align 4
  %cmp.i235.i.i = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i235.i.i, label %if.end122.i.i.arfs_create_groups.exit.i_crit_edge, label %arfs_create_groups.exit.thread.i

if.end122.i.i.arfs_create_groups.exit.i_crit_edge: ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_create_groups.exit.i

arfs_create_groups.exit.thread.i:                 ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc164.i.i = add i32 %73, 1
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %inc164.i.i, ptr %arrayidx.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #7
  br label %if.end.i36.i

arfs_create_groups.exit.thread43.i:               ; preds = %switch.lookup.arfs_create_groups.exit.thread43.i_crit_edge, %if.end.i.i.arfs_create_groups.exit.thread43.i_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #7
  br label %err16.i

arfs_create_groups.exit.i:                        ; preds = %if.end122.i.i.arfs_create_groups.exit.i_crit_edge, %do.body78.i.i.arfs_create_groups.exit.i_crit_edge
  %77 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %g.i.i, align 4
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  %arrayidx168.i.i = getelementptr ptr, ptr %78, i32 %80
  %81 = ptrtoint ptr %arrayidx168.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx168.i.i, align 4
  %83 = ptrtoint ptr %82 to i32
  store ptr null, ptr %arrayidx168.i.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #7
  %tobool.not.i = icmp eq ptr %82, null
  br i1 %tobool.not.i, label %arfs_create_groups.exit.i.if.end.i36.i_crit_edge, label %arfs_create_groups.exit.i.err16.i_crit_edge

arfs_create_groups.exit.i.err16.i_crit_edge:      ; preds = %arfs_create_groups.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err16.i

arfs_create_groups.exit.i.if.end.i36.i_crit_edge: ; preds = %arfs_create_groups.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i36.i

if.end.i36.i:                                     ; preds = %arfs_create_groups.exit.i.if.end.i36.i_crit_edge, %arfs_create_groups.exit.thread.i
  %84 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arfs, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i.i) #7
  %86 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 8)
  store i64 0, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i.i) #7
  %87 = call ptr @memset(ptr %17, i32 0, i32 32)
  %88 = ptrtoint ptr %flow_act.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 4, ptr %flow_act.i.i, align 4
  %89 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2, ptr %dest.i.i, align 4
  %90 = ptrtoint ptr %rx_res.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rx_res.i.i, align 4
  %call2.i.i = call i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef %91, i32 noundef %i.042) #7
  %92 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call2.i.i, ptr %18, align 4
  %t.i34.i = getelementptr [4 x %struct.arfs_table], ptr %85, i32 0, i32 %i.042, i32 0, i32 1
  %93 = ptrtoint ptr %t.i34.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %t.i34.i, align 4
  %call3.i.i = call ptr @mlx5_add_flow_rules(ptr noundef %94, ptr noundef null, ptr noundef nonnull %flow_act.i.i, ptr noundef nonnull %dest.i.i, i32 noundef 1) #7
  %default_rule.i.i = getelementptr [4 x %struct.arfs_table], ptr %85, i32 0, i32 %i.042, i32 1
  %95 = ptrtoint ptr %default_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call3.i.i, ptr %default_rule.i.i, align 4
  %cmp.i.i35.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i35.i, label %arfs_add_default_rule.exit.i, label %arfs_create_table.exit.thread

arfs_create_table.exit.thread:                    ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  br label %for.inc

arfs_add_default_rule.exit.i:                     ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %call3.i.i to i32
  %97 = ptrtoint ptr %default_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %default_rule.i.i, align 4
  %98 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %99, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.arfs_add_default_rule, i32 noundef %i.042) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i) #7
  br label %err16.i

err16.i:                                          ; preds = %arfs_add_default_rule.exit.i, %arfs_create_groups.exit.i.err16.i_crit_edge, %arfs_create_groups.exit.thread43.i, %arfs_create_groups.exit.thread40.i
  %err.0.i = phi i32 [ %83, %arfs_create_groups.exit.i.err16.i_crit_edge ], [ %96, %arfs_add_default_rule.exit.i ], [ -12, %arfs_create_groups.exit.thread40.i ], [ -22, %arfs_create_groups.exit.thread43.i ]
  call void @mlx5e_destroy_flow_table(ptr noundef %arrayidx.i) #7
  br label %arfs_create_table.exit

arfs_create_table.exit:                           ; preds = %err16.i, %if.then.i
  %retval.0.i = phi i32 [ %29, %if.then.i ], [ %err.0.i, %err16.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool21.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool21.not, label %arfs_create_table.exit.for.inc_crit_edge, label %err_des

arfs_create_table.exit.for.inc_crit_edge:         ; preds = %arfs_create_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %arfs_create_table.exit.for.inc_crit_edge, %arfs_create_table.exit.thread
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_des:                                          ; preds = %arfs_create_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @_mlx5e_cleanup_tables(ptr noundef %priv)
  br label %err24

err24:                                            ; preds = %err_des, %do.body.err24_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %err_des ], [ -12, %do.body.err24_crit_edge ]
  %100 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arfs, align 4
  call void @kvfree(ptr noundef %101) #7
  br label %cleanup

cleanup:                                          ; preds = %err24, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err24 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_flow_steer(ptr noundef %dev, ptr noundef %skb, i16 noundef zeroext %rxq_index, i32 noundef %flow_id) local_unnamed_addr #0 align 64 {
entry:
  %fk = alloca %struct.flow_keys, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %arfs1 = getelementptr i8, ptr %dev, i32 11068
  %0 = ptrtoint ptr %arfs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arfs1, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fk) #7
  %2 = call ptr @memset(ptr %fk, i32 0, i32 72)
  %call.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %fk, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br i1 %call.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %basic = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 1
  %3 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %basic, align 8
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %4, label %if.end.cleanup_crit_edge [
    i16 2048, label %if.end.if.end10_crit_edge
    i16 -31011, label %if.end.if.end10_crit_edge89
  ]

if.end.if.end10_crit_edge89:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %if.end.if.end10_crit_edge89
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %6 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %encapsulation, align 8
  %7 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end12, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end10
  %ip_proto = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ip_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %4)
  %cmp.i = icmp eq i16 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp3.i = icmp eq i8 %9, 6
  %or.cond.i = and i1 %cmp.i, %cmp3.i
  br i1 %or.cond.i, label %if.end12.arfs_get_table.exit_crit_edge, label %if.end.i

if.end12.arfs_get_table.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_get_table.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %9)
  %cmp10.i = icmp eq i8 %9, 17
  %or.cond47.i = and i1 %cmp.i, %cmp10.i
  br i1 %or.cond47.i, label %if.then12.i, label %if.end15.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.i = getelementptr [4 x %struct.arfs_table], ptr %1, i32 0, i32 2
  br label %arfs_get_table.exit

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %4)
  %cmp17.i = icmp eq i16 %4, -31011
  %or.cond48.i = and i1 %cmp17.i, %cmp3.i
  br i1 %or.cond48.i, label %if.then23.i, label %if.end26.i

if.then23.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx25.i = getelementptr [4 x %struct.arfs_table], ptr %1, i32 0, i32 1
  br label %arfs_get_table.exit

if.end26.i:                                       ; preds = %if.end15.i
  %or.cond49.i = and i1 %cmp17.i, %cmp10.i
  %arrayidx36.i = getelementptr [4 x %struct.arfs_table], ptr %1, i32 0, i32 3
  br i1 %or.cond49.i, label %if.end26.i.arfs_get_table.exit_crit_edge, label %if.end26.i.cleanup_crit_edge

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26.i.arfs_get_table.exit_crit_edge:         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_get_table.exit

arfs_get_table.exit:                              ; preds = %if.end26.i.arfs_get_table.exit_crit_edge, %if.then23.i, %if.then12.i, %if.end12.arfs_get_table.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx14.i, %if.then12.i ], [ %arrayidx25.i, %if.then23.i ], [ %1, %if.end12.arfs_get_table.exit_crit_edge ], [ %arrayidx36.i, %if.end26.i.arfs_get_table.exit_crit_edge ]
  %tobool17.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool17.not, label %arfs_get_table.exit.cleanup_crit_edge, label %if.end19

arfs_get_table.exit.cleanup_crit_edge:            ; preds = %arfs_get_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %arfs_get_table.exit
  %arfs_lock = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %1, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %arfs_lock) #7
  %ports.i = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 6
  %10 = ptrtoint ptr %ports.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ports.i, align 4
  %dst.i = getelementptr inbounds %struct.anon.199, ptr %ports.i, i32 0, i32 1
  %12 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dst.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %conv1.i.i = zext i16 %13 to i32
  %shl.i.i = shl nuw nsw i32 %conv1.i.i, 2
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %mul.i.i.i.i = mul i32 %or.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i.i = getelementptr %struct.arfs_table, ptr %retval.0.i, i32 0, i32 2, i32 %shr.i.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  %add.ptr.i63 = getelementptr i8, ptr %15, i32 -52
  %tobool3.not2833.i = icmp eq ptr %add.ptr.i63, null
  %tobool3.not28.i = or i1 %tobool.not.i, %tobool3.not2833.i
  br i1 %tobool3.not28.i, label %if.end19.if.else_crit_edge, label %for.body.lr.ph.i

if.end19.if.else_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body.lr.ph.i:                                 ; preds = %if.end19
  %addrs32.i.i = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8
  %dst36.i.i = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8, i32 0, i32 0, i32 1
  %dst23.i.i = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %arfs_rule.029.i = phi ptr [ %add.ptr.i63, %for.body.lr.ph.i ], [ %add.ptr11.i, %for.inc.i.for.body.i_crit_edge ]
  %tuple.i = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.029.i, i32 0, i32 7
  %src_port.i.i = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.029.i, i32 0, i32 7, i32 4
  %16 = ptrtoint ptr %src_port.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %src_port.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %11)
  %cmp.not.i.i = icmp eq i16 %17, %11
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %dst_port.i.i = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.029.i, i32 0, i32 7, i32 5
  %18 = ptrtoint ptr %dst_port.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dst_port.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %13)
  %cmp6.not.i.i = icmp eq i16 %19, %13
  br i1 %cmp6.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %20 = ptrtoint ptr %tuple.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tuple.i, align 4
  %22 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %basic, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp10.not.i.i = icmp eq i16 %21, %23
  br i1 %cmp10.not.i.i, label %if.end13.i.i, label %if.end.i.i.for.inc.i_crit_edge

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end13.i.i:                                     ; preds = %if.end.i.i
  %24 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %21, label %if.end13.i.i.for.inc.i_crit_edge [
    i16 2048, label %if.then18.i.i
    i16 -31011, label %if.then31.i.i
  ]

if.end13.i.i.for.inc.i_crit_edge:                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then18.i.i:                                    ; preds = %if.end13.i.i
  %25 = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.029.i, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = ptrtoint ptr %addrs32.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addrs32.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp20.i.i = icmp eq i32 %27, %29
  br i1 %cmp20.i.i, label %land.rhs.i.i, label %if.then18.i.i.for.inc.i_crit_edge

if.then18.i.i.for.inc.i_crit_edge:                ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.rhs.i.i:                                     ; preds = %if.then18.i.i
  %30 = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.029.i, i32 0, i32 7, i32 3
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %33 = ptrtoint ptr %dst23.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dst23.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp24.i.i = icmp eq i32 %32, %34
  br i1 %cmp24.i.i, label %land.rhs.i.i.if.then22_crit_edge, label %land.rhs.i.i.for.inc.i_crit_edge

land.rhs.i.i.for.inc.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.rhs.i.i.if.then22_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then31.i.i:                                    ; preds = %if.end13.i.i
  %35 = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.029.i, i32 0, i32 7, i32 2
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %35, ptr noundef dereferenceable(16) %addrs32.i.i, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %arfs_cmp.exit.i, label %if.then31.i.i.for.inc.i_crit_edge

if.then31.i.i.for.inc.i_crit_edge:                ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

arfs_cmp.exit.i:                                  ; preds = %if.then31.i.i
  %36 = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.029.i, i32 0, i32 7, i32 3
  %bcmp55.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %36, ptr noundef dereferenceable(16) %dst36.i.i, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp55.i.i)
  %tobool38.not.i.i = icmp eq i32 %bcmp55.i.i, 0
  br i1 %tobool38.not.i.i, label %arfs_cmp.exit.i.if.then22_crit_edge, label %arfs_cmp.exit.i.for.inc.i_crit_edge

arfs_cmp.exit.i.for.inc.i_crit_edge:              ; preds = %arfs_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

arfs_cmp.exit.i.if.then22_crit_edge:              ; preds = %arfs_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

for.inc.i:                                        ; preds = %arfs_cmp.exit.i.for.inc.i_crit_edge, %if.then31.i.i.for.inc.i_crit_edge, %land.rhs.i.i.for.inc.i_crit_edge, %if.then18.i.i.for.inc.i_crit_edge, %if.end13.i.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %hlist.i = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.029.i, i32 0, i32 3
  %37 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hlist.i, align 4
  %tobool7.not.i = icmp eq ptr %38, null
  %add.ptr11.i = getelementptr i8, ptr %38, i32 -52
  %tobool3.not34.i = icmp eq ptr %add.ptr11.i, null
  %tobool3.not.i = or i1 %tobool7.not.i, %tobool3.not34.i
  br i1 %tobool3.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then22:                                        ; preds = %arfs_cmp.exit.i.if.then22_crit_edge, %land.rhs.i.i.if.then22_crit_edge
  %rxq = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.029.i, i32 0, i32 4
  %39 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rxq, align 4
  %conv23 = zext i16 %rxq_index to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv23)
  %cmp24 = icmp eq i32 %40, %conv23
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef %arfs_lock) #7
  %filter_id = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.029.i, i32 0, i32 6
  %41 = ptrtoint ptr %filter_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %filter_id, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %rxq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv23, ptr %rxq, align 4
  br label %if.end36

if.else:                                          ; preds = %for.inc.i.if.else_crit_edge, %if.end19.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 2848, i32 noundef 112) #12
  %tobool.not.i64 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i64, label %if.then33, label %if.end.i66

if.end.i66:                                       ; preds = %if.else
  %45 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i, ptr %call7.i.i.i, align 8
  %conv.i = zext i16 %rxq_index to i32
  %rxq2.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %rxq2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv.i, ptr %rxq2.i, align 4
  %arfs_work.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 1
  call void @__init_work(ptr noundef %arfs_work.i, i32 noundef 0) #7
  %47 = ptrtoint ptr %arfs_work.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -64, ptr %arfs_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @arfs_alloc_rule.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry6.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %entry6.i, ptr %entry6.i, align 8
  %prev.i.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %entry6.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @arfs_handle_work, ptr %func.i, align 8
  %tuple8.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %basic, align 8
  %53 = ptrtoint ptr %tuple8.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %tuple8.i, align 8
  %54 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ip_proto, align 2
  %ip_proto10.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %56 = ptrtoint ptr %ip_proto10.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %ip_proto10.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %52)
  %cmp.i65 = icmp eq i16 %52, 2048
  br i1 %cmp.i65, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #9
  %addrs.i = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8
  %57 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addrs.i, align 4
  %59 = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %58, ptr %59, align 4
  %dst.i67 = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %61 = ptrtoint ptr %dst.i67 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dst.i67, align 8
  %63 = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %62, ptr %63, align 4
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #9
  %65 = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %addrs16.i = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8
  %66 = call ptr @memcpy(ptr %65, ptr %addrs16.i, i32 16)
  %67 = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  %dst19.i = getelementptr inbounds %struct.flow_keys, ptr %fk, i32 0, i32 8, i32 0, i32 0, i32 1
  %68 = call ptr @memcpy(ptr %67, ptr %dst19.i, i32 16)
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then14.i
  %69 = ptrtoint ptr %ports.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ports.i, align 4
  %src_port.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 7, i32 4
  %71 = ptrtoint ptr %src_port.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %src_port.i, align 4
  %72 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %dst.i, align 2
  %dst_port.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 7, i32 5
  %74 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %dst_port.i, align 2
  %flow_id24.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 5
  %75 = ptrtoint ptr %flow_id24.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %flow_id, ptr %flow_id24.i, align 8
  %76 = ptrtoint ptr %arfs1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arfs1, align 4
  %last_filter_id.i = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %last_filter_id.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %last_filter_id.i, align 4
  %inc.i = add i32 %79, 1
  store i32 %inc.i, ptr %last_filter_id.i, align 4
  %rem.i = srem i32 %79, 65535
  %filter_id.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 6
  %80 = ptrtoint ptr %filter_id.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %rem.i, ptr %filter_id.i, align 4
  %hlist.i69 = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 3
  %81 = load i16, ptr %src_port.i, align 4
  %82 = load i16, ptr %dst_port.i, align 2
  %conv.i.i70 = zext i16 %81 to i32
  %conv1.i.i71 = zext i16 %82 to i32
  %shl.i.i72 = shl nuw nsw i32 %conv1.i.i71, 2
  %or.i.i73 = or i32 %shl.i.i72, %conv.i.i70
  %mul.i.i.i.i74 = mul i32 %or.i.i73, 1640531527
  %shr.i.i.i75 = lshr i32 %mul.i.i.i.i74, 24
  %arrayidx.i.i76 = getelementptr %struct.arfs_table, ptr %retval.0.i, i32 0, i32 2, i32 %shr.i.i.i75
  %83 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i76, align 4
  %85 = ptrtoint ptr %hlist.i69 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %84, ptr %hlist.i69, align 4
  %tobool.not.i.i77 = icmp eq ptr %84, null
  br i1 %tobool.not.i.i77, label %if.end20.i.arfs_alloc_rule.exit_crit_edge, label %do.body12.i.i

if.end20.i.arfs_alloc_rule.exit_crit_edge:        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_alloc_rule.exit

do.body12.i.i:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %84, i32 0, i32 1
  %86 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %hlist.i69, ptr %pprev.i.i, align 4
  br label %arfs_alloc_rule.exit

arfs_alloc_rule.exit:                             ; preds = %do.body12.i.i, %if.end20.i.arfs_alloc_rule.exit_crit_edge
  %87 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %hlist.i69, ptr %arrayidx.i.i76, align 4
  %pprev34.i.i = getelementptr inbounds %struct.arfs_rule, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %88 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %arrayidx.i.i76, ptr %pprev34.i.i, align 8
  br label %if.end36

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef %arfs_lock) #7
  br label %cleanup

if.end36:                                         ; preds = %arfs_alloc_rule.exit, %if.end28
  %arfs_rule.0 = phi ptr [ %arfs_rule.029.i, %if.end28 ], [ %call7.i.i.i, %arfs_alloc_rule.exit ]
  %89 = ptrtoint ptr %arfs1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arfs1, align 4
  %wq = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wq, align 4
  %arfs_work = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.0, i32 0, i32 1
  %call.i78 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %92, ptr noundef %arfs_work) #7
  call void @_raw_spin_unlock_bh(ptr noundef %arfs_lock) #7
  %filter_id41 = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.0, i32 0, i32 6
  %93 = ptrtoint ptr %filter_id41 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %filter_id41, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then33, %if.then26, %arfs_get_table.exit.cleanup_crit_edge, %if.end26.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %42, %if.then26 ], [ %94, %if.end36 ], [ -12, %if.then33 ], [ -93, %entry.cleanup_crit_edge ], [ -93, %if.end.cleanup_crit_edge ], [ -93, %if.end10.cleanup_crit_edge ], [ -93, %arfs_get_table.exit.cleanup_crit_edge ], [ -93, %if.end26.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fk) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ttc_fwd_default_dest(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_destroy_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arfs_handle_work(ptr noundef %work) #0 align 64 {
entry:
  %del_list.i = alloca %struct.hlist_head, align 4
  %dst.i = alloca %struct.mlx5_flow_destination, align 4
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %state_lock = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arfs = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arfs, align 4
  %arfs_lock = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %arfs_lock) #7
  %hlist = getelementptr i8, ptr %work, i32 48
  %6 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hlist, align 4
  %pprev2.i.i = getelementptr i8, ptr %work, i32 52
  %8 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev2.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %9, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then.hlist_del.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then.hlist_del.exit_crit_edge
  %12 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %hlist, align 4
  %13 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %14 = ptrtoint ptr %arfs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arfs, align 4
  %arfs_lock4 = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %15, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %arfs_lock4) #7
  tail call void @mutex_unlock(ptr noundef %state_lock) #7
  tail call void @kfree(ptr noundef %add.ptr) #7
  br label %out

if.end:                                           ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %state_lock) #7
  %rule7 = getelementptr i8, ptr %work, i32 44
  %16 = ptrtoint ptr %rule7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rule7, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %arfs1.i = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 13, i32 9
  %18 = ptrtoint ptr %arfs1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arfs1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #7
  %20 = call ptr @memset(ptr %dest.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #7
  %21 = getelementptr inbounds i8, ptr %flow_act.i, i32 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 32)
  %23 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %flow_act.i, align 4
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.then9.out.thread.i_crit_edge, label %if.end.i

if.then9.out.thread.i_crit_edge:                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread.i

if.end.i:                                         ; preds = %if.then9
  %tuple2.i = getelementptr i8, ptr %work, i32 68
  %24 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %call.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %26, 65535
  store i32 %or.i, ptr %add.ptr.i, align 4
  %27 = ptrtoint ptr %tuple2.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tuple2.i, align 4
  %conv.i = zext i16 %28 to i32
  %add.ptr14.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr14.i, align 4
  %and15.i = and i32 %30, -65536
  %or17.i = or i32 %and15.i, %conv.i
  store i32 %or17.i, ptr %add.ptr14.i, align 4
  %ip_proto.i = getelementptr i8, ptr %work, i32 70
  %31 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ip_proto.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %28)
  %cmp.i.i = icmp eq i16 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %32)
  %cmp3.i.i = icmp eq i8 %32, 6
  %or.cond.i.i = and i1 %cmp.i.i, %cmp3.i.i
  br i1 %or.cond.i.i, label %if.end.i.arfs_get_table.exit.i_crit_edge, label %if.end.i.i

if.end.i.arfs_get_table.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_get_table.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %32)
  %cmp10.i.i = icmp eq i8 %32, 17
  %or.cond47.i.i = and i1 %cmp.i.i, %cmp10.i.i
  br i1 %or.cond47.i.i, label %if.then12.i.i, label %if.end15.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.i.i = getelementptr [4 x %struct.arfs_table], ptr %19, i32 0, i32 2
  br label %arfs_get_table.exit.i

if.end15.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %28)
  %cmp17.i.i = icmp eq i16 %28, -31011
  %or.cond48.i.i = and i1 %cmp17.i.i, %cmp3.i.i
  br i1 %or.cond48.i.i, label %if.then23.i.i, label %if.end26.i.i

if.then23.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx25.i.i = getelementptr [4 x %struct.arfs_table], ptr %19, i32 0, i32 1
  br label %arfs_get_table.exit.i

if.end26.i.i:                                     ; preds = %if.end15.i.i
  %or.cond49.i.i = and i1 %cmp17.i.i, %cmp10.i.i
  %arrayidx36.i.i = getelementptr [4 x %struct.arfs_table], ptr %19, i32 0, i32 3
  br i1 %or.cond49.i.i, label %if.end26.i.i.arfs_get_table.exit.i_crit_edge, label %if.end26.i.i.out.thread.i_crit_edge

if.end26.i.i.out.thread.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread.i

if.end26.i.i.arfs_get_table.exit.i_crit_edge:     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_get_table.exit.i

arfs_get_table.exit.i:                            ; preds = %if.end26.i.i.arfs_get_table.exit.i_crit_edge, %if.then23.i.i, %if.then12.i.i, %if.end.i.arfs_get_table.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx14.i.i, %if.then12.i.i ], [ %arrayidx25.i.i, %if.then23.i.i ], [ %19, %if.end.i.arfs_get_table.exit.i_crit_edge ], [ %arrayidx36.i.i, %if.end26.i.i.arfs_get_table.exit.i_crit_edge ]
  %tobool25.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool25.not.i, label %arfs_get_table.exit.i.out.thread.i_crit_edge, label %if.end27.i

arfs_get_table.exit.i.out.thread.i_crit_edge:     ; preds = %arfs_get_table.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread.i

if.end27.i:                                       ; preds = %arfs_get_table.exit.i
  %t.i = getelementptr inbounds %struct.mlx5e_flow_table, ptr %retval.0.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t.i, align 4
  br i1 %cmp3.i.i, label %do.end36.i, label %do.end100.i

do.end36.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr39.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 5
  %35 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %add.ptr39.i, align 4
  %add.ptr69.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 5
  br label %if.end163.i

do.end100.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr103.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 7
  %36 = ptrtoint ptr %add.ptr103.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %add.ptr103.i, align 4
  %add.ptr134.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 7
  br label %if.end163.i

if.end163.i:                                      ; preds = %do.end100.i, %do.end36.i
  %add.ptr134.sink.i = phi ptr [ %add.ptr134.i, %do.end100.i ], [ %add.ptr69.i, %do.end36.i ]
  %conv128.sink.in.in.i = getelementptr i8, ptr %work, i32 106
  %37 = ptrtoint ptr %conv128.sink.in.in.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %conv128.sink.in.i = load i16, ptr %conv128.sink.in.in.i, align 2
  %conv128.sink.i = zext i16 %conv128.sink.in.i to i32
  %src_port146.i = getelementptr i8, ptr %work, i32 104
  %38 = ptrtoint ptr %src_port146.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %src_port146.i, align 4
  %conv147.i = zext i16 %39 to i32
  %shl156.i = shl nuw i32 %conv147.i, 16
  %or157.i = or i32 %shl156.i, %conv128.sink.i
  %40 = ptrtoint ptr %add.ptr134.sink.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or157.i, ptr %add.ptr134.sink.i, align 4
  br i1 %cmp.i.i, label %if.then168.i, label %if.else203.i

if.then168.i:                                     ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr171.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 11
  %41 = getelementptr i8, ptr %work, i32 72
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %44 = ptrtoint ptr %add.ptr171.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %add.ptr171.i, align 1
  %add.ptr174.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 15
  %45 = getelementptr i8, ptr %work, i32 88
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %48 = ptrtoint ptr %add.ptr174.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %add.ptr174.i, align 1
  %add.ptr181.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 11
  %49 = ptrtoint ptr %add.ptr181.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %add.ptr181.i, align 4
  %add.ptr195.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 15
  %50 = ptrtoint ptr %add.ptr195.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %add.ptr195.i, align 4
  br label %if.end216.i

if.else203.i:                                     ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr206.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 8
  %51 = getelementptr i8, ptr %work, i32 72
  %52 = call ptr @memcpy(ptr %add.ptr206.i, ptr %51, i32 16)
  %add.ptr209.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 12
  %53 = getelementptr i8, ptr %work, i32 88
  %54 = call ptr @memcpy(ptr %add.ptr209.i, ptr %53, i32 16)
  %add.ptr212.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 8
  %55 = call ptr @memset(ptr %add.ptr212.i, i32 255, i32 32)
  br label %if.end216.i

if.end216.i:                                      ; preds = %if.else203.i, %if.then168.i
  %56 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %dest.i, align 4
  %rx_res.i = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 11
  %57 = ptrtoint ptr %rx_res.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_res.i, align 4
  %rxq.i = getelementptr i8, ptr %work, i32 56
  %59 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rxq.i, align 4
  %call217.i = tail call i32 @mlx5e_rx_res_get_tirn_direct(ptr noundef %58, i32 noundef %60) #7
  %61 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call217.i, ptr %61, align 4
  %call218.i = call ptr @mlx5_add_flow_rules(ptr noundef %34, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #7
  %cmp.i295.i = icmp ugt ptr %call218.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i295.i, label %if.then220.i, label %out.thread302.i

out.thread302.i:                                  ; preds = %if.end216.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #7
  br label %arfs_add_rule.exit

if.then220.i:                                     ; preds = %if.end216.i
  %63 = ptrtoint ptr %call218.i to i32
  %channel_stats.i = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 25
  %64 = ptrtoint ptr %channel_stats.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %channel_stats.i, align 16
  %66 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rxq.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %65, i32 %67
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i, align 4
  %arfs_err.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %69, i32 0, i32 3, i32 33
  %70 = ptrtoint ptr %arfs_err.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arfs_err.i, align 8
  %inc.i = add i64 %71, 1
  store i64 %inc.i, ptr %arfs_err.i, align 8
  %msglevel.i = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 4
  %72 = ptrtoint ptr %msglevel.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %msglevel.i, align 4
  %and224.i = and i32 %73, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224.i)
  %tobool225.not.i = icmp eq i32 %and224.i, 0
  br i1 %tobool225.not.i, label %if.then220.i.out.i_crit_edge, label %if.then226.i

if.then220.i.out.i_crit_edge:                     ; preds = %if.then220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then226.i:                                     ; preds = %if.then220.i
  call void @__sanitizer_cov_trace_pc() #9
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 22
  %74 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %netdev.i, align 4
  %filter_id.i = getelementptr i8, ptr %work, i32 64
  %76 = ptrtoint ptr %filter_id.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %filter_id.i, align 4
  %78 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rxq.i, align 4
  %80 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ip_proto.i, align 2
  %conv229.i = zext i8 %81 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %75, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.arfs_add_rule, i32 noundef %77, i32 noundef %79, i32 noundef %conv229.i, i32 noundef %63) #10
  br label %out.i

out.thread.i:                                     ; preds = %arfs_get_table.exit.i.out.thread.i_crit_edge, %if.end26.i.i.out.thread.i_crit_edge, %if.then9.out.thread.i_crit_edge
  %err.0.ph.i = phi i32 [ -22, %arfs_get_table.exit.i.out.thread.i_crit_edge ], [ -12, %if.then9.out.thread.i_crit_edge ], [ -22, %if.end26.i.i.out.thread.i_crit_edge ]
  tail call void @kvfree(ptr noundef %call.i.i.i) #7
  br label %cond.true.i

out.i:                                            ; preds = %if.then226.i, %if.then220.i.out.i_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #7
  br label %cond.true.i

cond.true.i:                                      ; preds = %out.i, %out.thread.i
  %err.0301.i = phi i32 [ %err.0.ph.i, %out.thread.i ], [ %63, %out.i ]
  %82 = inttoptr i32 %err.0301.i to ptr
  br label %arfs_add_rule.exit

arfs_add_rule.exit:                               ; preds = %cond.true.i, %out.thread302.i
  %cond.i = phi ptr [ %82, %cond.true.i ], [ %call218.i, %out.thread302.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #7
  %cmp.i = icmp ugt ptr %cond.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %arfs_add_rule.exit.out_crit_edge, label %if.end13

arfs_add_rule.exit.out_crit_edge:                 ; preds = %arfs_add_rule.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %arfs_add_rule.exit
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %rule7 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %cond.i, ptr %rule7, align 4
  br label %out

if.else:                                          ; preds = %if.end
  %rxq = getelementptr i8, ptr %work, i32 56
  %84 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rxq, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst.i) #7
  %86 = getelementptr inbounds i8, ptr %dst.i, i32 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 8)
  store i64 0, ptr %86, align 4
  %88 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %dst.i, align 4
  %rx_res.i33 = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 11
  %89 = ptrtoint ptr %rx_res.i33 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rx_res.i33, align 4
  %conv.i34 = and i32 %85, 65535
  %call.i = tail call i32 @mlx5e_rx_res_get_tirn_direct(ptr noundef %90, i32 noundef %conv.i34) #7
  %91 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dst.i, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call.i, ptr %91, align 4
  %call1.i = call i32 @mlx5_modify_rule_destination(ptr noundef nonnull %17, ptr noundef nonnull %dst.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i35 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i35, label %if.else.arfs_modify_rule_rq.exit_crit_edge, label %if.then.i

if.else.arfs_modify_rule_rq.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_modify_rule_rq.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %netdev.i36 = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 22
  %93 = ptrtoint ptr %netdev.i36 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %netdev.i36, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %94, ptr noundef nonnull @.str.9, i32 noundef %conv.i34) #10
  br label %arfs_modify_rule_rq.exit

arfs_modify_rule_rq.exit:                         ; preds = %if.then.i, %if.else.arfs_modify_rule_rq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst.i) #7
  br label %out

out:                                              ; preds = %arfs_modify_rule_rq.exit, %if.end13, %arfs_add_rule.exit.out_crit_edge, %hlist_del.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %del_list.i) #7
  %95 = ptrtoint ptr %del_list.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %del_list.i, align 4
  %arfs.i = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 13, i32 9
  %96 = ptrtoint ptr %arfs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arfs.i, align 4
  %arfs_lock.i = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %97, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %arfs_lock.i) #7
  %netdev.i38 = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 22
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc36.i.for.cond1.preheader.i_crit_edge, %out
  %quota.0127.i = phi i32 [ 0, %out ], [ %quota.4.i, %for.inc36.i.for.cond1.preheader.i_crit_edge ]
  %i.0126.i = phi i32 [ 0, %out ], [ %inc37.i, %for.inc36.i.for.cond1.preheader.i_crit_edge ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc33.i.for.body3.i_crit_edge, %for.cond1.preheader.i
  %quota.1125.i = phi i32 [ %quota.0127.i, %for.cond1.preheader.i ], [ %quota.4.i, %for.inc33.i.for.body3.i_crit_edge ]
  %j.0124.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc34.i, %for.inc33.i.for.body3.i_crit_edge ]
  %98 = ptrtoint ptr %arfs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arfs.i, align 4
  %arrayidx6.i = getelementptr [4 x %struct.arfs_table], ptr %99, i32 0, i32 %i.0126.i, i32 2, i32 %j.0124.i
  %100 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i39 = icmp eq ptr %101, null
  %add.ptr.i40 = getelementptr i8, ptr %101, i32 -52
  %tobool9.not120131.i = icmp eq ptr %add.ptr.i40, null
  %tobool9.not120.i = or i1 %tobool.not.i39, %tobool9.not120131.i
  br i1 %tobool9.not120.i, label %for.body3.i.for.inc33.i_crit_edge, label %for.body3.i.land.rhs.i_crit_edge

for.body3.i.land.rhs.i_crit_edge:                 ; preds = %for.body3.i
  br label %land.rhs.i

for.body3.i.for.inc33.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body3.i.land.rhs.i_crit_edge
  %arfs_rule.0122.i = phi ptr [ %add.ptr29.i, %for.inc.i.land.rhs.i_crit_edge ], [ %add.ptr.i40, %for.body3.i.land.rhs.i_crit_edge ]
  %quota.2121.i = phi i32 [ %quota.3.i, %for.inc.i.land.rhs.i_crit_edge ], [ %quota.1125.i, %for.body3.i.land.rhs.i_crit_edge ]
  %hlist.i = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.0122.i, i32 0, i32 3
  %102 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hlist.i, align 4
  %arfs_work.i = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.0122.i, i32 0, i32 1
  %104 = ptrtoint ptr %arfs_work.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %arfs_work.i, align 4
  %and1.i.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool13.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %106 = ptrtoint ptr %netdev.i38 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %netdev.i38, align 4
  %rxq.i41 = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.0122.i, i32 0, i32 4
  %108 = ptrtoint ptr %rxq.i41 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rxq.i41, align 4
  %conv.i42 = trunc i32 %109 to i16
  %flow_id.i = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.0122.i, i32 0, i32 5
  %110 = ptrtoint ptr %flow_id.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flow_id.i, align 4
  %filter_id.i43 = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.0122.i, i32 0, i32 6
  %112 = ptrtoint ptr %filter_id.i43 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %filter_id.i43, align 4
  %conv14.i = trunc i32 %113 to i16
  %call15.i = call zeroext i1 @rps_may_expire_flow(ptr noundef %107, i16 noundef zeroext %conv.i42, i32 noundef %111, i16 noundef zeroext %conv14.i) #7
  br i1 %call15.i, label %if.then.i44, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i44:                                      ; preds = %land.lhs.true.i
  %pprev.i.i.i = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.0122.i, i32 0, i32 3, i32 1
  %114 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %115, null
  br i1 %tobool.not.i.not.i.i, label %if.then.i44.hlist_del_init.exit.i_crit_edge, label %if.then.i.i

if.then.i44.hlist_del_init.exit.i_crit_edge:      ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init.exit.i

if.then.i.i:                                      ; preds = %if.then.i44
  %116 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hlist.i, align 4
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %117, ptr %115, align 4
  %tobool.not.i3.i.i = icmp eq ptr %117, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.hlist_del_init.exit.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.hlist_del_init.exit.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init.exit.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %117, i32 0, i32 1
  %119 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %115, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_init.exit.i

hlist_del_init.exit.i:                            ; preds = %do.body13.i.i.i, %if.then.i.i.hlist_del_init.exit.i_crit_edge, %if.then.i44.hlist_del_init.exit.i_crit_edge
  %120 = ptrtoint ptr %del_list.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %del_list.i, align 4
  %122 = ptrtoint ptr %hlist.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %121, ptr %hlist.i, align 4
  %tobool.not.i.i45 = icmp eq ptr %121, null
  br i1 %tobool.not.i.i45, label %hlist_del_init.exit.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

hlist_del_init.exit.i.hlist_add_head.exit.i_crit_edge: ; preds = %hlist_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %hlist_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %121, i32 0, i32 1
  %123 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %hlist.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %hlist_del_init.exit.i.hlist_add_head.exit.i_crit_edge
  %124 = ptrtoint ptr %del_list.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %hlist.i, ptr %del_list.i, align 4
  %125 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %del_list.i, ptr %pprev.i.i.i, align 4
  %inc.i46 = add i32 %quota.2121.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %quota.2121.i)
  %cmp19.i = icmp sgt i32 %quota.2121.i, 60
  br i1 %cmp19.i, label %hlist_add_head.exit.i.for.inc33.i_crit_edge, label %hlist_add_head.exit.i.for.inc.i_crit_edge

hlist_add_head.exit.i.for.inc.i_crit_edge:        ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

hlist_add_head.exit.i.for.inc33.i_crit_edge:      ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i

for.inc.i:                                        ; preds = %hlist_add_head.exit.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %quota.3.i = phi i32 [ %quota.2121.i, %land.rhs.i.for.inc.i_crit_edge ], [ %inc.i46, %hlist_add_head.exit.i.for.inc.i_crit_edge ], [ %quota.2121.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %tobool25.not.i47 = icmp eq ptr %103, null
  %add.ptr29.i = getelementptr i8, ptr %103, i32 -52
  %tobool9.not133.i = icmp eq ptr %add.ptr29.i, null
  %tobool9.not.i = or i1 %tobool25.not.i47, %tobool9.not133.i
  br i1 %tobool9.not.i, label %for.inc.i.for.inc33.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.inc.i.for.inc33.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i

for.inc33.i:                                      ; preds = %for.inc.i.for.inc33.i_crit_edge, %hlist_add_head.exit.i.for.inc33.i_crit_edge, %for.body3.i.for.inc33.i_crit_edge
  %quota.4.i = phi i32 [ %quota.1125.i, %for.body3.i.for.inc33.i_crit_edge ], [ %quota.3.i, %for.inc.i.for.inc33.i_crit_edge ], [ %inc.i46, %hlist_add_head.exit.i.for.inc33.i_crit_edge ]
  %inc34.i = add nuw nsw i32 %j.0124.i, 1
  %exitcond.not.i = icmp eq i32 %inc34.i, 256
  br i1 %exitcond.not.i, label %for.inc36.i, label %for.inc33.i.for.body3.i_crit_edge

for.inc33.i.for.body3.i_crit_edge:                ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i

for.inc36.i:                                      ; preds = %for.inc33.i
  %inc37.i = add nuw nsw i32 %i.0126.i, 1
  %exitcond130.not.i = icmp eq i32 %inc37.i, 4
  br i1 %exitcond130.not.i, label %for.end38.i, label %for.inc36.i.for.cond1.preheader.i_crit_edge

for.inc36.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

for.end38.i:                                      ; preds = %for.inc36.i
  %126 = ptrtoint ptr %arfs.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arfs.i, align 4
  %arfs_lock41.i = getelementptr inbounds %struct.mlx5e_arfs_tables, ptr %127, i32 0, i32 1
  call void @_raw_spin_unlock_bh(ptr noundef %arfs_lock41.i) #7
  %128 = ptrtoint ptr %del_list.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %del_list.i, align 4
  %tobool45.not.i = icmp eq ptr %129, null
  %add.ptr49.i = getelementptr i8, ptr %129, i32 -52
  %tobool54.not128132.i = icmp eq ptr %add.ptr49.i, null
  %tobool54.not128.i = or i1 %tobool45.not.i, %tobool54.not128132.i
  br i1 %tobool54.not128.i, label %for.end38.i.arfs_may_expire_flow.exit_crit_edge, label %for.end38.i.land.rhs55.i_crit_edge

for.end38.i.land.rhs55.i_crit_edge:               ; preds = %for.end38.i
  br label %land.rhs55.i

for.end38.i.arfs_may_expire_flow.exit_crit_edge:  ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_may_expire_flow.exit

land.rhs55.i:                                     ; preds = %hlist_del.exit.i.land.rhs55.i_crit_edge, %for.end38.i.land.rhs55.i_crit_edge
  %arfs_rule.1129.i = phi ptr [ %add.ptr74.i, %hlist_del.exit.i.land.rhs55.i_crit_edge ], [ %add.ptr49.i, %for.end38.i.land.rhs55.i_crit_edge ]
  %hlist56.i = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.1129.i, i32 0, i32 3
  %130 = ptrtoint ptr %hlist56.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hlist56.i, align 4
  %rule.i = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.1129.i, i32 0, i32 2
  %132 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rule.i, align 4
  %tobool62.not.i = icmp eq ptr %133, null
  br i1 %tobool62.not.i, label %land.rhs55.i.if.end65.i_crit_edge, label %if.then63.i

land.rhs55.i.if.end65.i_crit_edge:                ; preds = %land.rhs55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

if.then63.i:                                      ; preds = %land.rhs55.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlx5_del_flow_rules(ptr noundef nonnull %133) #7
  %134 = ptrtoint ptr %hlist56.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pr.i = load ptr, ptr %hlist56.i, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then63.i, %land.rhs55.i.if.end65.i_crit_edge
  %135 = phi ptr [ %.pr.i, %if.then63.i ], [ %131, %land.rhs55.i.if.end65.i_crit_edge ]
  %pprev2.i.i.i = getelementptr inbounds %struct.arfs_rule, ptr %arfs_rule.1129.i, i32 0, i32 3, i32 1
  %136 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pprev2.i.i.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %135, ptr %137, align 4
  %tobool.not.i.i.i = icmp eq ptr %135, null
  br i1 %tobool.not.i.i.i, label %if.end65.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i112.i

if.end65.i.hlist_del.exit.i_crit_edge:            ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del.exit.i

do.body13.i.i112.i:                               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i111.i = getelementptr inbounds %struct.hlist_node, ptr %135, i32 0, i32 1
  %139 = ptrtoint ptr %pprev14.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %137, ptr %pprev14.i.i111.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i112.i, %if.end65.i.hlist_del.exit.i_crit_edge
  %140 = ptrtoint ptr %hlist56.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr inttoptr (i32 256 to ptr), ptr %hlist56.i, align 4
  %141 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %arfs_rule.1129.i) #7
  %tobool70.not.i = icmp eq ptr %131, null
  %add.ptr74.i = getelementptr i8, ptr %131, i32 -52
  %tobool54.not134.i = icmp eq ptr %add.ptr74.i, null
  %tobool54.not.i = or i1 %tobool70.not.i, %tobool54.not134.i
  br i1 %tobool54.not.i, label %hlist_del.exit.i.arfs_may_expire_flow.exit_crit_edge, label %hlist_del.exit.i.land.rhs55.i_crit_edge

hlist_del.exit.i.land.rhs55.i_crit_edge:          ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs55.i

hlist_del.exit.i.arfs_may_expire_flow.exit_crit_edge: ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %arfs_may_expire_flow.exit

arfs_may_expire_flow.exit:                        ; preds = %hlist_del.exit.i.arfs_may_expire_flow.exit_crit_edge, %for.end38.i.arfs_may_expire_flow.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %del_list.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_get_tirn_direct(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_rule_destination(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rps_may_expire_flow(ptr noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c", i32 155, i32 8}
!2 = !{ptr @__func__.mlx5e_arfs_enable, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c", i32 156, i32 8}
!4 = !{ptr @mlx5e_arfs_create_tables.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c", i32 368, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c", i32 370, i32 22}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c", i32 126, i32 8}
!12 = !{ptr @__func__.arfs_disable, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c", i32 127, i32 8}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c", i32 203, i32 28}
!16 = !{ptr @__func__.arfs_add_default_rule, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c", i32 204, i32 7}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c", i32 218, i32 28}
!20 = !{ptr @arfs_alloc_rule.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c", i32 632, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c", i32 560, i32 3}
!25 = !{ptr @__func__.arfs_add_rule, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_arfs.c", i32 582, i32 8}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
