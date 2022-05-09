; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/en_tx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/en_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.125 }
%struct.atomic_t = type { i32 }
%union.anon.125 = type { i32 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.169, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.169 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, ptr, ptr, ptr, [104 x i8], i32, i32, i32, i32, i32, i32, i32, %struct.mlx4_bf, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, ptr, i32, i32, %struct.mlx4_hwq_resources, %struct.mlx4_qp, %struct.mlx4_qp_context, %struct.cpumask, i32, i16, i16, [20 x i8] }
%struct.mlx4_bf = type { i32, i32, ptr, ptr }
%struct.mlx4_hwq_resources = type { %struct.mlx4_db, %struct.mlx4_mtt, %struct.mlx4_buf }
%struct.mlx4_db = type { ptr, %union.anon.149, i32, i32, i32 }
%union.anon.149 = type { ptr }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%struct.mlx4_qp = type { ptr, i32, %struct.refcount_struct, %struct.completion, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mlx4_qp_context = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.mlx4_qp_path, %struct.mlx4_qp_path, i32, i32, i32, i32, i16, [3 x i16], i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i16, i16, i32, i16, i8, i8, i32, i32, i8, [2 x i8], i8, i32, [10 x i32] }
%struct.mlx4_qp_path = type { i8, %union.anon.152, i8, i8, i8, i8, i16, i8, i8, i8, i8, i32, [16 x i8], i8, i8, i8, i8, [2 x i8], [6 x i8] }
%union.anon.152 = type { i8 }
%struct.cpumask = type { [1 x i32] }
%struct.mlx4_en_priv = type { ptr, ptr, ptr, [128 x i32], %struct.mlx4_en_port_state, %struct.spinlock, [256 x %struct.ethtool_flow_id], %struct.list_head, [128 x i32], i32, [128 x i32], i32, [128 x i32], i16, i16, i16, i16, i32, i16, i32, i16, i32, i32, i32, i32, i32, %struct.mlx4_hwq_resources, i32, i8, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, %struct.mlx4_en_rss_map, i32, i32, i8, i32, [2 x i32], i32, i32, [4 x %struct.mlx4_en_frag_info], i8, i8, i8, i16, [2 x ptr], [128 x ptr], [2 x ptr], [128 x ptr], %struct.mlx4_qp, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.mlx4_en_pkt_stats, %struct.mlx4_en_counter_stats, [8 x %struct.mlx4_en_flow_stats_rx], [8 x %struct.mlx4_en_flow_stats_tx], %struct.mlx4_en_flow_stats_rx, %struct.mlx4_en_flow_stats_tx, %struct.mlx4_en_port_stats, %struct.mlx4_en_xdp_stats, %struct.mlx4_en_phy_stats, %struct.mlx4_en_stats_bitmap, %struct.list_head, %struct.list_head, i64, %struct.mlx4_en_stat_out_mbox, [128 x i32], i8, ptr, [256 x %struct.hlist_head], %struct.hwtstamp_config, i32, %struct.ieee_ets, [8 x i16], [8 x i32], %struct.mlx4_en_cee_config, i8, %struct.spinlock, i32, %struct.list_head, [16 x %struct.hlist_head], i64, i16, i32, [40 x i8], i8, i32 }
%struct.mlx4_en_port_state = type { i32, i32, i32, i32 }
%struct.ethtool_flow_id = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i64 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.mlx4_en_rss_map = type { i32, [128 x %struct.mlx4_qp], [128 x i32], ptr, i32 }
%struct.mlx4_en_frag_info = type { i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mlx4_en_pkt_stats = type { i32, i32, i32, i32, i32, i32, i32, [9 x [2 x i32]], [9 x [2 x i32]] }
%struct.mlx4_en_counter_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_flow_stats_rx = type { i64, i64, i64 }
%struct.mlx4_en_flow_stats_tx = type { i64, i64, i64 }
%struct.mlx4_en_port_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_xdp_stats = type { i32, i32, i32, i32, i32 }
%struct.mlx4_en_phy_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_stats_bitmap = type { [5 x i32], %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx4_en_stat_out_mbox = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.mlx4_en_cee_config = type { i8, [8 x i32] }
%struct.mlx4_en_dev = type { ptr, ptr, %struct.mutex, [3 x ptr], [3 x ptr], i32, i8, %struct.mlx4_en_profile, i32, ptr, ptr, ptr, %struct.mlx4_uar, %struct.mlx4_mr, i32, %struct.spinlock, [3 x i8], i32, %struct.cyclecounter, %struct.seqlock_t, %struct.timecounter, i32, ptr, %struct.ptp_clock_info, %struct.notifier_block }
%struct.mlx4_en_profile = type { i32, i8, i32, i32, i8, i8, [3 x %struct.mlx4_en_port_profile] }
%struct.mlx4_en_port_profile = type { i32, [2 x i32], i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hwtstamp_config }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.mlx4_mr = type { %struct.mlx4_mtt, i64, i64, i32, i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.mlx4_en_tx_info = type { %union.anon.151, i32, i32, i32, i32, i8, i8, i8, i8, i8, [103 x i8] }
%union.anon.151 = type { ptr }
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
%struct.mlx4_wqe_data_seg = type { i32, i32, i64 }
%struct.mlx4_en_rx_alloc = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.mlx4_en_cq = type { %struct.mlx4_cq, %struct.mlx4_hwq_resources, i32, ptr, %union.anon.154, i32, i32, i32, i32, i16, i16, ptr, ptr }
%struct.mlx4_cq = type { ptr, ptr, ptr, i32, i16, ptr, ptr, i32, i32, i32, %struct.refcount_struct, %struct.completion, %struct.anon.153, i32, %struct.list_head, i8 }
%struct.anon.153 = type { %struct.list_head, ptr, ptr }
%union.anon.154 = type { %struct.napi_struct }
%struct.mlx4_cqe = type { i32, i32, i32, i16, %union.anon.155, i32, i16, i16, [3 x i8], i8 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i16, i16, i8, i8 }
%struct.mlx4_err_cqe = type { i32, [5 x i32], i16, i8, i8, [3 x i8], i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.127, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.127 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.mlx4_en_tx_desc = type { %struct.mlx4_wqe_ctrl_seg, %union.anon.163 }
%struct.mlx4_wqe_ctrl_seg = type { i32, %union.mlx4_wqe_qpn_vlan, %union.anon.162, i32 }
%union.mlx4_wqe_qpn_vlan = type { i32 }
%union.anon.162 = type { i32 }
%union.anon.163 = type { %struct.mlx4_wqe_data_seg }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.161 = type { i16, i8, i8 }
%struct.mlx4_en_rx_ring = type { %struct.mlx4_hwq_resources, i32, i32, i32, i16, i16, i16, i32, i32, i32, i8, ptr, ptr, ptr, %struct.mlx4_en_page_cache, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [92 x i8], %struct.xdp_rxq_info }
%struct.mlx4_en_page_cache = type { i32, [128 x %struct.anon.150] }
%struct.anon.150 = type { ptr, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed allocating TX ring\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Allocated tx_info ring at addr:%p size:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed allocating hwq resources\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Allocated TX ring (addr:%p) - buf:%p size:%d buf_size:%d dma:%llx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed reserving qp for TX ring\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed allocating qp %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"working without blueflame (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Destroying tx ring, qpn: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Freeing Tx buf - cons:0x%x prod:0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Tx consumer passed producer!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Freed %d uncompleted tx descriptors\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Oversized header or SG list\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.17 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"CQE error - cqn 0x%x, ci 0x%x, vendor syndrome: 0x%x syndrome: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Related WQE - qpn 0x%x, wqe index 0x%x, wqe size 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Scheduling port restart\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Non-linear headers\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 61, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 77, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 95, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 101, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 109, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 115, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 122, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 167, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 370, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 375, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 391, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 903, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 108, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 717, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 405, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 407, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 413, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 421, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 658, i32 6 }
@___asan_gen_.95 = private constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlx4/en_tx.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 850, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 326, i32 6 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_create_tx_ring(ptr noundef %priv, ptr nocapture noundef writeonly %pring, i32 noundef %size, i16 noundef zeroext %stride, i32 noundef %node, i32 noundef %queue_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 640) #13
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %size2 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 18
  %3 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %size, ptr %size2, align 8
  %sub = add i32 %size, -1
  %size_mask = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %size_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %size_mask, align 4
  %sp_stride = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 37
  %5 = ptrtoint ptr %sp_stride to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %stride, ptr %sp_stride, align 8
  %sub5 = add i32 %size, -41
  %full_size = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 20
  %6 = ptrtoint ptr %full_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub5, ptr %full_size, align 64
  %mul = shl i32 %size, 7
  %call6 = tail call noalias ptr @kvmalloc_node(i32 noundef %mul, i32 noundef 3264, i32 noundef %node) #14
  %tx_info = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 23
  %7 = ptrtoint ptr %tx_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %tx_info, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end.err_ring_crit_edge, label %do.body

if.end.err_ring_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_ring

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 23
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.do.end_crit_edge, label %if.then12

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %priv, ptr noundef nonnull @.str.3, ptr noundef nonnull %call6, i32 noundef %mul) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 512) #13
  %bounce_buf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 29
  %11 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %bounce_buf, align 8
  %tobool17.not = icmp eq ptr %call.i.i, null
  br i1 %tobool17.not, label %if.then18, label %do.end.if.end25_crit_edge

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then18:                                        ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 512) #13
  %13 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %bounce_buf, align 8
  %tobool22.not = icmp eq ptr %call7.i, null
  br i1 %tobool22.not, label %if.then18.err_info_crit_edge, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then18.err_info_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_info

if.end25:                                         ; preds = %if.then18.if.end25_crit_edge, %do.end.if.end25_crit_edge
  %14 = ptrtoint ptr %sp_stride to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sp_stride, align 8
  %conv = zext i16 %15 to i32
  %mul27 = mul i32 %conv, %size
  %add = add i32 %mul27, 4095
  %and28 = and i32 %add, -4096
  %buf_size = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 21
  %16 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and28, ptr %buf_size, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %sp_wqres = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 32
  %call32 = tail call i32 @mlx4_alloc_hwq_res(ptr noundef %18, ptr noundef %sp_wqres, i32 noundef %and28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool38.not = icmp eq i32 %call32, 0
  br i1 %tobool38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.4) #10
  br label %err_bounce

if.end40:                                         ; preds = %if.end25
  %buf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 32, i32 2
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 4
  %buf43 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 22
  %21 = ptrtoint ptr %buf43 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %buf43, align 8
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 8
  %and46 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end40.do.end58_crit_edge, label %if.then48

if.end40.do.end58_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

if.then48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size2, align 8
  %26 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_size, align 4
  %map = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 32, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %map, align 8
  %conv55 = zext i32 %29 to i64
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %priv, ptr noundef nonnull @.str.5, ptr noundef nonnull %call.i.i.i, ptr noundef %20, i32 noundef %25, i32 noundef %27, i64 noundef %conv55) #10
  br label %do.end58

do.end58:                                         ; preds = %if.then48, %if.end40.do.end58_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %qpn = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 24
  %call60 = tail call i32 @mlx4_qp_reserve_range(ptr noundef %31, i32 noundef 1, i32 noundef 1, ptr noundef %qpn, i8 noundef zeroext -128, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.6) #10
  br label %err_hwq_res

if.end63:                                         ; preds = %do.end58
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %34 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qpn, align 16
  %sp_qp = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 33
  %call66 = tail call i32 @mlx4_qp_alloc(ptr noundef %33, i32 noundef %35, ptr noundef %sp_qp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end70, label %if.then68

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qpn, align 16
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.7, i32 noundef %37) #10
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %40 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qpn, align 16
  tail call void @mlx4_qp_release_range(ptr noundef %39, i32 noundef %41, i32 noundef 1) #10
  br label %err_hwq_res

if.end70:                                         ; preds = %if.end63
  %42 = ptrtoint ptr %sp_qp to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @mlx4_en_sqp_event, ptr %sp_qp, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %bf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 14
  %call73 = tail call i32 @mlx4_bf_alloc(ptr noundef %44, ptr noundef %bf, i32 noundef %node) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.else, label %do.body76

do.body76:                                        ; preds = %if.end70
  %45 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable, align 8
  %and78 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.body76.do.end83_crit_edge, label %if.then80

do.body76.do.end83_crit_edge:                     ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

if.then80:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %priv, ptr noundef nonnull @.str.8, i32 noundef %call73) #10
  br label %do.end83

do.end83:                                         ; preds = %if.then80, %do.body76.do.end83_crit_edge
  %priv_uar = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 12
  %uar = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 14, i32 2
  %47 = ptrtoint ptr %uar to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %priv_uar, ptr %uar, align 4
  %uar_map = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 11
  %48 = ptrtoint ptr %uar_map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %uar_map, align 8
  %map87 = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 12, i32 4
  %50 = ptrtoint ptr %map87 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %map87, align 4
  %bf_enabled = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 26
  %51 = ptrtoint ptr %bf_enabled to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %bf_enabled, align 1
  %bf_alloced = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 27
  %52 = ptrtoint ptr %bf_alloced to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %bf_alloced, align 2
  %pflags = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 93
  %53 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pflags, align 4
  %and88 = and i32 %54, -2
  store i32 %and88, ptr %pflags, align 4
  br label %if.end95

if.else:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %bf_alloced89 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 27
  %55 = ptrtoint ptr %bf_alloced89 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %bf_alloced89, align 2
  %pflags90 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 93
  %56 = ptrtoint ptr %pflags90 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pflags90, align 4
  %bf_enabled94 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 26
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = ptrtoint ptr %bf_enabled94 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %bf_enabled94, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.else, %do.end83
  %uar97 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 14, i32 2
  %61 = ptrtoint ptr %uar97 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %uar97, align 4
  %map98 = getelementptr inbounds %struct.mlx4_uar, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %map98 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map98, align 4
  %add.ptr = getelementptr i8, ptr %64, i32 20
  %doorbell_address = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 15
  %65 = ptrtoint ptr %doorbell_address to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr, ptr %doorbell_address, align 4
  %tx_type = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 80, i32 1
  %66 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_type, align 4
  %conv99 = trunc i32 %67 to i8
  %hwtstamp_tx_type = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 28
  %68 = ptrtoint ptr %hwtstamp_tx_type to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv99, ptr %hwtstamp_tx_type, align 1
  %conv100 = trunc i32 %queue_index to i8
  %queue_index101 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 25
  %69 = ptrtoint ptr %queue_index101 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv100, ptr %queue_index101, align 4
  %num_tx_rings_p_up = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 42
  %70 = ptrtoint ptr %num_tx_rings_p_up to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_tx_rings_p_up, align 4
  %conv102 = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv102, i32 %queue_index)
  %cmp = icmp sgt i32 %conv102, %queue_index
  br i1 %cmp, label %if.then104, label %if.end95.if.end109_crit_edge

if.end95.if.end109_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then104:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %numa_node107 = getelementptr inbounds %struct.mlx4_dev, ptr %75, i32 0, i32 10
  %76 = ptrtoint ptr %numa_node107 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %numa_node107, align 4
  %call108 = tail call i32 @cpumask_local_spread(i32 noundef %queue_index, i32 noundef %77) #10
  %sp_affinity_mask = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %call.i.i.i, i32 0, i32 35
  tail call fastcc void @cpumask_set_cpu(i32 noundef %call108, ptr noundef %sp_affinity_mask)
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.end95.if.end109_crit_edge
  %78 = ptrtoint ptr %pring to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i.i.i, ptr %pring, align 4
  br label %cleanup

err_hwq_res:                                      ; preds = %if.then68, %if.then62
  %err.0 = phi i32 [ %call60, %if.then62 ], [ %call66, %if.then68 ]
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 8
  %81 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buf_size, align 4
  tail call void @mlx4_free_hwq_res(ptr noundef %80, ptr noundef %sp_wqres, i32 noundef %82) #10
  br label %err_bounce

err_bounce:                                       ; preds = %err_hwq_res, %if.then39
  %err.1 = phi i32 [ %call32, %if.then39 ], [ %err.0, %err_hwq_res ]
  %83 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bounce_buf, align 8
  tail call void @kfree(ptr noundef %84) #10
  %85 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %bounce_buf, align 8
  br label %err_info

err_info:                                         ; preds = %err_bounce, %if.then18.err_info_crit_edge
  %err.2 = phi i32 [ %err.1, %err_bounce ], [ -12, %if.then18.err_info_crit_edge ]
  %86 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tx_info, align 4
  tail call void @kvfree(ptr noundef %87) #10
  %88 = ptrtoint ptr %tx_info to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %tx_info, align 4
  br label %err_ring

err_ring:                                         ; preds = %err_info, %if.end.err_ring_crit_edge
  %err.3 = phi i32 [ %err.2, %err_info ], [ -12, %if.end.err_ring_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #10
  %89 = ptrtoint ptr %pring to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %pring, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_ring, %if.end109, %if.then
  %retval.0 = phi i32 [ %err.3, %err_ring ], [ 0, %if.end109 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @en_print(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_alloc_hwq_res(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_qp_reserve_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_qp_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_sqp_event(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_bf_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i, label %entry.cpumask_check.exit_crit_edge, label %land.rhs.i.i

entry.cpumask_check.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_check.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b37.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i, label %land.rhs.i.i.cpumask_check.exit_crit_edge, label %if.then.i.i, !prof !60

land.rhs.i.i.cpumask_check.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_check.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_check.exit

cpumask_check.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.cpumask_check.exit_crit_edge, %entry.cpumask_check.exit_crit_edge
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef %dstp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_local_spread(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_qp_release_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_free_hwq_res(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_destroy_tx_ring(ptr noundef %priv, ptr nocapture noundef %pring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %pring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pring, align 4
  %msg_enable = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 23
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %qpn = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qpn, align 16
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %priv, ptr noundef nonnull @.str.9, i32 noundef %7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %bf_alloced = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %3, i32 0, i32 27
  %8 = ptrtoint ptr %bf_alloced to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bf_alloced, align 2, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %do.end.if.end4_crit_edge, label %if.then3

do.end.if.end4_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %bf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %3, i32 0, i32 14
  tail call void @mlx4_bf_free(ptr noundef %11, ptr noundef %bf) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.end.if.end4_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %sp_qp = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %3, i32 0, i32 33
  tail call void @mlx4_qp_remove(ptr noundef %13, ptr noundef %sp_qp) #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void @mlx4_qp_free(ptr noundef %15, ptr noundef %sp_qp) #10
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %qpn10 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %3, i32 0, i32 24
  %20 = ptrtoint ptr %qpn10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qpn10, align 16
  tail call void @mlx4_qp_release_range(ptr noundef %19, i32 noundef %21, i32 noundef 1) #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %sp_wqres = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %3, i32 0, i32 32
  %buf_size = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %3, i32 0, i32 21
  %24 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_size, align 4
  tail call void @mlx4_free_hwq_res(ptr noundef %23, ptr noundef %sp_wqres, i32 noundef %25) #10
  %bounce_buf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %3, i32 0, i32 29
  %26 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bounce_buf, align 8
  tail call void @kfree(ptr noundef %27) #10
  %28 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %bounce_buf, align 8
  %tx_info = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %3, i32 0, i32 23
  %29 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_info, align 4
  tail call void @kvfree(ptr noundef %30) #10
  %31 = ptrtoint ptr %tx_info to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %tx_info, align 4
  tail call void @kfree(ptr noundef %3) #10
  %32 = ptrtoint ptr %pring to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %pring, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_bf_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_qp_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_qp_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_activate_tx_ring(ptr noundef %priv, ptr noundef %ring, i32 noundef %cq, i32 noundef %user_prio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = trunc i32 %cq to i16
  %sp_cqn = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 38
  %2 = ptrtoint ptr %sp_cqn to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %sp_cqn, align 2
  %prod = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 7
  %3 = ptrtoint ptr %prod to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %prod, align 128
  %cons = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cons, align 4
  %5 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %ring, align 128
  %tx_info = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 23
  %6 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_info, align 4
  %size = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 18
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 8
  %mul = shl i32 %9, 7
  %10 = call ptr @memset(ptr %7, i32 0, i32 %mul)
  %buf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 22
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 8
  %buf_size = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 21
  %13 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_size, align 4
  %15 = call ptr @memset(ptr %12, i32 0, i32 %14)
  %free_tx_desc = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 4
  %16 = ptrtoint ptr %free_tx_desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mlx4_en_free_tx_desc, ptr %free_tx_desc, align 16
  %sp_qp_state = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 36
  %17 = ptrtoint ptr %sp_qp_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sp_qp_state, align 4
  %sp_qp = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 33
  %qpn = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 33, i32 1
  %18 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qpn, align 4
  %shl = shl i32 %19, 8
  %doorbell_qpn = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 16
  %20 = ptrtoint ptr %doorbell_qpn to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl, ptr %doorbell_qpn, align 16
  %key = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 13, i32 3
  %21 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key, align 8
  %mr_key = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 17
  %23 = ptrtoint ptr %mr_key to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mr_key, align 4
  %24 = load i32, ptr %size, align 8
  %sp_stride = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 37
  %25 = ptrtoint ptr %sp_stride to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sp_stride, align 8
  %conv3 = zext i16 %26 to i32
  %qpn4 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 24
  %27 = ptrtoint ptr %qpn4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qpn4, align 16
  %29 = load i16, ptr %sp_cqn, align 2
  %conv6 = zext i16 %29 to i32
  %sp_context = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 34
  tail call void @mlx4_en_fill_qp_context(ptr noundef %priv, i32 noundef %24, i32 noundef %conv3, i32 noundef 1, i32 noundef 0, i32 noundef %28, i32 noundef %conv6, i32 noundef %user_prio, ptr noundef %sp_context) #10
  %bf_alloced = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 27
  %30 = ptrtoint ptr %bf_alloced to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bf_alloced, align 2, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %uar = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 14, i32 2
  %34 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uar, align 4
  %index = getelementptr inbounds %struct.mlx4_uar, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index, align 4
  %uar_page_shift.i = getelementptr inbounds %struct.mlx4_dev, ptr %33, i32 0, i32 15
  %38 = ptrtoint ptr %uar_page_shift.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %uar_page_shift.i, align 4
  %conv.i = zext i8 %39 to i32
  %sub.i = sub nsw i32 12, %conv.i
  %shl.i = shl i32 %37, %sub.i
  %usr_page = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 34, i32 6
  %40 = ptrtoint ptr %usr_page to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shl.i, ptr %usr_page, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %mtt = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 32, i32 1
  %call12 = tail call i32 @mlx4_qp_to_ready(ptr noundef %42, ptr noundef %mtt, ptr noundef %sp_context, ptr noundef %sp_qp, ptr noundef %sp_qp_state) #10
  %sp_affinity_mask = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %sp_affinity_mask, i32 noundef %43) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %43)
  %cmp4.i.i = icmp eq i32 %call.i.i, %43
  br i1 %cmp4.i.i, label %if.end.if.end19_crit_edge, label %if.then14

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev15 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 2
  %44 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev15, align 8
  %queue_index = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 25
  %46 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %queue_index, align 4
  %conv17 = zext i8 %47 to i16
  %call18 = tail call i32 @netif_set_xps_queue(ptr noundef %45, ptr noundef %sp_affinity_mask, i16 noundef zeroext %conv17) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end.if.end19_crit_edge
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_free_tx_desc(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %ring, i32 noundef %index, i64 noundef %timestamp, i32 noundef %napi_mode) #0 align 64 {
entry:
  %hwts = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_info1 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 23
  %0 = ptrtoint ptr %tx_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_info1, align 4
  %arrayidx = getelementptr %struct.mlx4_en_tx_info, ptr %1, i32 %index
  %buf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 22
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 8
  %shl = shl i32 %index, 6
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %data_offset = getelementptr %struct.mlx4_en_tx_info, ptr %1, i32 %index, i32 6
  %4 = ptrtoint ptr %data_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data_offset, align 1
  %conv = zext i8 %5 to i32
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %conv
  %buf_size = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 21
  %6 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_size, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 128
  %nr_maps5 = getelementptr %struct.mlx4_en_tx_info, ptr %1, i32 %index, i32 9
  %10 = ptrtoint ptr %nr_maps5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_maps5, align 8
  %conv6 = zext i8 %11 to i32
  %users = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 21
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %timestamp)
  %tobool.not = icmp eq i64 %timestamp, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !60

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwts) #10
  %12 = ptrtoint ptr %hwts to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %hwts, align 8, !annotation !62
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  call void @mlx4_en_fill_hwtstamps(ptr noundef %14, ptr noundef nonnull %hwts, i64 noundef %timestamp) #10
  call void @skb_tstamp_tx(ptr noundef %9, ptr noundef nonnull %hwts) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hwts) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inl = getelementptr %struct.mlx4_en_tx_info, ptr %1, i32 %index, i32 7
  %15 = ptrtoint ptr %inl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %inl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not = icmp eq i8 %16, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end56_crit_edge

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then10:                                        ; preds = %if.end
  %ddev13 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 78
  %17 = ptrtoint ptr %ddev13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddev13, align 4
  %map0_dma14 = getelementptr %struct.mlx4_en_tx_info, ptr %1, i32 %index, i32 1
  %19 = ptrtoint ptr %map0_dma14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %map0_dma14, align 4
  %map0_byte_count15 = getelementptr %struct.mlx4_en_tx_info, ptr %1, i32 %index, i32 2
  %21 = ptrtoint ptr %map0_byte_count15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %map0_byte_count15, align 8
  call void @dma_unmap_page_attrs(ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef 1, i32 noundef 0) #10
  %nr_txbb = getelementptr %struct.mlx4_en_tx_info, ptr %1, i32 %index, i32 3
  %23 = ptrtoint ptr %nr_txbb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_txbb, align 4
  %shl17 = shl i32 %24, 6
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 %shl17
  %cmp.not = icmp ugt ptr %add.ptr18, %add.ptr4
  br i1 %cmp.not, label %if.else31, label %for.cond.preheader, !prof !63

for.cond.preheader:                               ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp2798 = icmp ugt i8 %11, 1
  br i1 %cmp2798, label %for.body.lr.ph, label %for.cond.preheader.if.end56_crit_edge

for.cond.preheader.if.end56_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ddev29 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 78
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0100 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %data.099 = phi ptr [ %add.ptr2, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.mlx4_wqe_data_seg, ptr %data.099, i32 1
  %25 = ptrtoint ptr %ddev29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ddev29, align 4
  %addr = getelementptr %struct.mlx4_wqe_data_seg, ptr %data.099, i32 1, i32 2
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %addr, align 8
  %conv30 = trunc i64 %28 to i32
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr, align 8
  call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %conv30, i32 noundef %30, i32 noundef 1, i32 noundef 0) #10
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, %conv6
  br i1 %exitcond.not, label %for.body.if.end56_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.if.end56_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.else31:                                        ; preds = %if.then10
  %cmp32.not = icmp ult ptr %add.ptr2, %add.ptr4
  br i1 %cmp32.not, label %if.else31.if.end37_crit_edge, label %if.then34

if.else31.if.end37_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr36 = getelementptr i8, ptr %32, i32 %sub.ptr.sub
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.else31.if.end37_crit_edge
  %data.1 = phi ptr [ %add.ptr36, %if.then34 ], [ %add.ptr2, %if.else31.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp39101 = icmp ugt i8 %11, 1
  br i1 %cmp39101, label %for.body41.lr.ph, label %if.end37.if.end56_crit_edge

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

for.body41.lr.ph:                                 ; preds = %if.end37
  %ddev48 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 78
  br label %for.body41

for.body41:                                       ; preds = %if.end47.for.body41_crit_edge, %for.body41.lr.ph
  %i.1103 = phi i32 [ 1, %for.body41.lr.ph ], [ %inc53, %if.end47.for.body41_crit_edge ]
  %data.2102 = phi ptr [ %data.1, %for.body41.lr.ph ], [ %data.3, %if.end47.for.body41_crit_edge ]
  %incdec.ptr42 = getelementptr %struct.mlx4_wqe_data_seg, ptr %data.2102, i32 1
  %cmp43.not = icmp ult ptr %incdec.ptr42, %add.ptr4
  br i1 %cmp43.not, label %for.body41.if.end47_crit_edge, label %if.then45

for.body41.if.end47_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %for.body41.if.end47_crit_edge
  %data.3 = phi ptr [ %34, %if.then45 ], [ %incdec.ptr42, %for.body41.if.end47_crit_edge ]
  %35 = ptrtoint ptr %ddev48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ddev48, align 4
  %addr49 = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %data.3, i32 0, i32 2
  %37 = ptrtoint ptr %addr49 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %addr49, align 8
  %conv50 = trunc i64 %38 to i32
  %39 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data.3, align 8
  call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %conv50, i32 noundef %40, i32 noundef 1, i32 noundef 0) #10
  %inc53 = add nuw nsw i32 %i.1103, 1
  %exitcond105.not = icmp eq i32 %inc53, %conv6
  br i1 %exitcond105.not, label %if.end47.if.end56_crit_edge, label %if.end47.for.body41_crit_edge

if.end47.for.body41_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.end56:                                         ; preds = %if.end47.if.end56_crit_edge, %if.end37.if.end56_crit_edge, %for.body.if.end56_crit_edge, %for.cond.preheader.if.end56_crit_edge, %if.end.if.end56_crit_edge
  call void @napi_consume_skb(ptr noundef %9, i32 noundef %napi_mode) #10
  %nr_txbb57 = getelementptr %struct.mlx4_en_tx_info, ptr %1, i32 %index, i32 3
  %41 = ptrtoint ptr %nr_txbb57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_txbb57, align 4
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_fill_qp_context(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_qp_to_ready(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_xps_queue(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_deactivate_tx_ring(ptr nocapture noundef readonly %priv, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %sp_qp_state = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 36
  %4 = ptrtoint ptr %sp_qp_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sp_qp_state, align 4
  %sp_qp = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 33
  %call = tail call i32 @mlx4_qp_modify(ptr noundef %3, ptr noundef null, i32 noundef %5, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %sp_qp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_qp_modify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_fill_hwtstamps(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_recycle_tx_desc(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %ring, i32 noundef %index, i64 noundef %timestamp, i32 noundef %napi_mode) local_unnamed_addr #0 align 64 {
entry:
  %frame = alloca %struct.mlx4_en_rx_alloc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_info1 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 23
  %0 = ptrtoint ptr %tx_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_info1, align 4
  %arrayidx = getelementptr %struct.mlx4_en_tx_info, ptr %1, i32 %index
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %frame) #10
  %2 = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %frame, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %frame, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 128
  %6 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %frame, align 4
  %map0_dma = getelementptr %struct.mlx4_en_tx_info, ptr %1, i32 %index, i32 1
  %7 = ptrtoint ptr %map0_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map0_dma, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %napi_mode)
  %tobool.not = icmp eq i32 %napi_mode, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %recycle_ring = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 5
  %11 = ptrtoint ptr %recycle_ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %recycle_ring, align 4
  %call = call zeroext i1 @mlx4_en_rx_recycle(ptr noundef %12, ptr noundef nonnull %frame) #10
  br i1 %call, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %ddev = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 78
  %13 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ddev, align 4
  %15 = ptrtoint ptr %map0_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %map0_dma, align 4
  %dma_dir = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 50
  %17 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dma_dir, align 2
  %conv = zext i8 %18 to i32
  call void @dma_unmap_page_attrs(ptr noundef %14, i32 noundef %16, i32 noundef 4096, i32 noundef %conv, i32 noundef 0) #10
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 128
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !60

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %23, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %20 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %24, %if.end.i.i ]
  %25 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %26 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !63

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.16) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !64
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !65
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %28 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !66
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mlx4_en_recycle_tx_desc, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !68

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %25, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %25) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %nr_txbb = getelementptr %struct.mlx4_en_tx_info, ptr %1, i32 %index, i32 3
  %29 = ptrtoint ptr %nr_txbb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_txbb, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %frame) #10
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx4_en_rx_recycle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_free_tx_buf(ptr noundef %dev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring, align 128
  %cons = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cons, align 4
  %add = add i32 %3, %1
  store i32 %add, ptr %cons, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prod = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prod, align 128
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.10, i32 noundef %add, i32 noundef %7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %prod2 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %prod2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prod2, align 128
  %10 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cons, align 4
  %sub = sub i32 %9, %11
  %size = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 18
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %13)
  %cmp = icmp ugt i32 %sub, %13
  br i1 %cmp, label %if.then4, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  %14 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cons, align 4
  %16 = ptrtoint ptr %prod2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prod2, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp13.not64 = icmp eq i32 %15, %17
  br i1 %cmp13.not64, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %free_tx_desc = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 4
  %size_mask = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 19
  br label %while.body

if.then4:                                         ; preds = %do.end
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 8
  %and6 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then4.cleanup_crit_edge, label %if.then8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.11, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.12) #10
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %20 = phi i32 [ %15, %while.body.lr.ph ], [ %add20, %while.body.while.body_crit_edge ]
  %cnt.065 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %21 = ptrtoint ptr %free_tx_desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %free_tx_desc, align 16
  %23 = ptrtoint ptr %size_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size_mask, align 4
  %and15 = and i32 %24, %20
  %call16 = tail call i32 %22(ptr noundef %add.ptr.i, ptr noundef %ring, i32 noundef %and15, i64 noundef 0, i32 noundef 0) #10
  %25 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call16, ptr %ring, align 128
  %26 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cons, align 4
  %add20 = add i32 %27, %call16
  store i32 %add20, ptr %cons, align 4
  %inc = add i32 %cnt.065, 1
  %28 = ptrtoint ptr %prod2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prod2, align 128
  %cmp13.not = icmp eq i32 %add20, %29
  br i1 %cmp13.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %tx_queue = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 3
  %30 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_queue, align 4
  %tobool21.not = icmp eq ptr %31, null
  br i1 %tobool21.not, label %while.end.if.end24_crit_edge, label %if.then22

while.end.if.end24_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %31, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #10
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %31, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %while.end.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.lcssa)
  %tobool25.not = icmp eq i32 %cnt.0.lcssa, 0
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %do.body27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body27:                                        ; preds = %if.end24
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 8
  %and29 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body27.cleanup_crit_edge, label %if.then31

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.13, i32 noundef %cnt.0.lcssa) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then8, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then4.cleanup_crit_edge ], [ %cnt.0.lcssa, %do.body27.cleanup_crit_edge ], [ %cnt.0.lcssa, %if.then31 ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_process_tx_cq(ptr noundef %dev, ptr nocapture noundef %cq, i32 noundef %napi_budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %type = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 52, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %ring2 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 2
  %4 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring2, align 4
  %arrayidx3 = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %cons_index4 = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 3
  %size5 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 5
  %8 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size5, align 8
  %size_mask6 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 19
  %10 = ptrtoint ptr %size_mask6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size_mask6, align 4
  %buf7 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 11
  %12 = ptrtoint ptr %buf7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf7, align 4
  %cqe_factor = getelementptr i8, ptr %dev, i32 51688
  %14 = ptrtoint ptr %cqe_factor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cqe_factor, align 8
  %tx_work_limit = getelementptr i8, ptr %dev, i32 61448
  %16 = ptrtoint ptr %tx_work_limit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_work_limit, align 8
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %18 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_up, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !63

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = ptrtoint ptr %cons_index4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cons_index4, align 4
  %tx_queue = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 3
  %22 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_queue, align 4
  %limit.i = getelementptr inbounds %struct.netdev_queue, ptr %23, i32 0, i32 15, i32 4
  tail call void @llvm.prefetch.p0(ptr %limit.i, i32 1, i32 3, i32 1) #10
  %and = and i32 %21, %11
  %conv11 = and i32 %and, 65535
  %cqe_size = getelementptr i8, ptr %dev, i32 51692
  %24 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cqe_size, align 4
  %mul.i = mul i32 %25, %conv11
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %7, align 128
  %cons = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 1
  %28 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %cons, align 4
  %call12.pn236 = getelementptr i8, ptr %13, i32 %mul.i
  %owner_sr_opcode239 = getelementptr %struct.mlx4_cqe, ptr %call12.pn236, i32 %15, i32 9
  %30 = ptrtoint ptr %owner_sr_opcode239 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %owner_sr_opcode239, align 1
  %32 = xor i8 %31, -1
  %33 = lshr i8 %32, 7
  %and25240 = and i32 %21, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25240)
  %tobool26.not241 = icmp eq i32 %and25240, 0
  %34 = zext i1 %tobool26.not241 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %34)
  %cmp242 = icmp eq i8 %33, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp30243 = icmp sgt i32 %17, 0
  %or.cond244 = select i1 %cmp242, i1 %cmp30243, i1 false
  br i1 %or.cond244, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %and18 = and i32 %29, %11
  %state = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 31
  %35 = trunc i32 %11 to i16
  %tx_info = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 23
  %free_tx_desc = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 4
  %size72 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 18
  %buf.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 22
  %buf_size.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %do.end94.while.body_crit_edge, %while.body.lr.ph
  %owner_sr_opcode255 = phi ptr [ %owner_sr_opcode239, %while.body.lr.ph ], [ %owner_sr_opcode, %do.end94.while.body_crit_edge ]
  %index.0253.in = phi i32 [ %and, %while.body.lr.ph ], [ %and96, %do.end94.while.body_crit_edge ]
  %call12.pn252 = phi ptr [ %call12.pn236, %while.body.lr.ph ], [ %call12.pn, %do.end94.while.body_crit_edge ]
  %last_nr_txbb.0251 = phi i32 [ %27, %while.body.lr.ph ], [ %call69, %do.end94.while.body_crit_edge ]
  %done.0250 = phi i32 [ 0, %while.body.lr.ph ], [ %inc85, %do.end94.while.body_crit_edge ]
  %bytes.0249 = phi i32 [ 0, %while.body.lr.ph ], [ %add83, %do.end94.while.body_crit_edge ]
  %cons_index.0247 = phi i32 [ %21, %while.body.lr.ph ], [ %inc95, %do.end94.while.body_crit_edge ]
  %txbbs_stamp.0246 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %do.end94.while.body_crit_edge ]
  %stamp_index.0245 = phi i32 [ %and18, %while.body.lr.ph ], [ %and55, %do.end94.while.body_crit_edge ]
  %index.0253 = trunc i32 %index.0253.in to i16
  %cqe.0254 = getelementptr %struct.mlx4_cqe, ptr %call12.pn252, i32 %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  %36 = ptrtoint ptr %owner_sr_opcode255 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %owner_sr_opcode255, align 1
  %38 = and i8 %37, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %38)
  %cmp35 = icmp eq i8 %38, 30
  br i1 %cmp35, label %if.then43, label %while.body.if.end48_crit_edge, !prof !63

while.body.if.end48_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then43:                                        ; preds = %while.body
  %call44 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.then43.if.end48_crit_edge

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx4_en_handle_err_cqe(ptr noundef %add.ptr.i, ptr noundef %cqe.0254, i16 noundef zeroext %index.0253, ptr noundef %7)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then43.if.end48_crit_edge, %while.body.if.end48_crit_edge
  %wqe_index = getelementptr %struct.mlx4_cqe, ptr %call12.pn252, i32 %15, i32 6
  %39 = ptrtoint ptr %wqe_index to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %wqe_index, align 4
  %conv51 = and i16 %40, %35
  br label %do.body52

do.body52:                                        ; preds = %mlx4_en_stamp_wqe.exit.do.body52_crit_edge, %if.end48
  %stamp_index.1 = phi i32 [ %stamp_index.0245, %if.end48 ], [ %and55, %mlx4_en_stamp_wqe.exit.do.body52_crit_edge ]
  %txbbs_stamp.1 = phi i32 [ %txbbs_stamp.0246, %if.end48 ], [ %add, %mlx4_en_stamp_wqe.exit.do.body52_crit_edge ]
  %bytes.1 = phi i32 [ %bytes.0249, %if.end48 ], [ %add83, %mlx4_en_stamp_wqe.exit.do.body52_crit_edge ]
  %done.1 = phi i32 [ %done.0250, %if.end48 ], [ %inc85, %mlx4_en_stamp_wqe.exit.do.body52_crit_edge ]
  %last_nr_txbb.1 = phi i32 [ %last_nr_txbb.0251, %if.end48 ], [ %call69, %mlx4_en_stamp_wqe.exit.do.body52_crit_edge ]
  %add = add i32 %last_nr_txbb.1, %txbbs_stamp.1
  %conv53 = and i32 %stamp_index.1, 65535
  %add54 = add i32 %last_nr_txbb.1, %conv53
  %and55 = and i32 %add54, %11
  %conv56 = trunc i32 %and55 to i16
  %41 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_info, align 4
  %idxprom = and i32 %and55, 65535
  %ts_requested = getelementptr %struct.mlx4_en_tx_info, ptr %42, i32 %idxprom, i32 8
  %43 = ptrtoint ptr %ts_requested to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ts_requested, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool58.not = icmp eq i8 %44, 0
  br i1 %tobool58.not, label %do.body52.if.end67_crit_edge, label %if.then65, !prof !60

do.body52.if.end67_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then65:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call i64 @mlx4_en_get_cqe_ts(ptr noundef %cqe.0254) #10
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %do.body52.if.end67_crit_edge
  %timestamp.0 = phi i64 [ %call66, %if.then65 ], [ 0, %do.body52.if.end67_crit_edge ]
  %45 = ptrtoint ptr %free_tx_desc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %free_tx_desc, align 16
  %call69 = tail call i32 %46(ptr noundef %add.ptr.i, ptr noundef %7, i32 noundef %idxprom, i64 noundef %timestamp.0, i32 noundef %napi_budget) #10
  %add71 = add i32 %txbbs_stamp.1, %29
  %47 = ptrtoint ptr %size72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size72, align 8
  %and73 = and i32 %48, %add71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %or.i = select i1 %tobool74.not, i32 2147483647, i32 -1
  %49 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf.i, align 8
  %shl2.i = shl nuw nsw i32 %conv53, 6
  %add.ptr.i229 = getelementptr i8, ptr %50, i32 %shl2.i
  %51 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_info, align 4
  %53 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buf_size.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %50, i32 %54
  %nr_txbb.i = getelementptr %struct.mlx4_en_tx_info, ptr %52, i32 %conv53, i32 3
  %55 = ptrtoint ptr %nr_txbb.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_txbb.i, align 4
  %shl6.i = shl i32 %56, 6
  %add.ptr7.i = getelementptr i8, ptr %add.ptr.i229, i32 %shl6.i
  %cmp.not.i = icmp ugt ptr %add.ptr7.i, %add.ptr5.i
  %shl196.mask.i = and i32 %56, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl196.mask.i)
  %cmp207.not.i = icmp eq i32 %shl196.mask.i, 0
  br i1 %cmp.not.i, label %for.cond17.preheader.i, label %for.cond.preheader.i, !prof !63

for.cond.preheader.i:                             ; preds = %if.end67
  br i1 %cmp207.not.i, label %for.cond.preheader.i.mlx4_en_stamp_wqe.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.mlx4_en_stamp_wqe.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx4_en_stamp_wqe.exit

for.cond17.preheader.i:                           ; preds = %if.end67
  br i1 %cmp207.not.i, label %for.cond17.preheader.i.mlx4_en_stamp_wqe.exit_crit_edge, label %for.cond17.preheader.i.for.body21.i_crit_edge

for.cond17.preheader.i.for.body21.i_crit_edge:    ; preds = %for.cond17.preheader.i
  br label %for.body21.i

for.cond17.preheader.i.mlx4_en_stamp_wqe.exit_crit_edge: ; preds = %for.cond17.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx4_en_stamp_wqe.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.05.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %ptr.04.i = phi ptr [ %add.ptr16.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i229, %for.cond.preheader.i.for.body.i_crit_edge ]
  %57 = ptrtoint ptr %ptr.04.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.i, ptr %ptr.04.i, align 4
  %add.ptr16.i = getelementptr i32, ptr %ptr.04.i, i32 16
  %add.i = add nuw i32 %i.05.i, 64
  %58 = ptrtoint ptr %nr_txbb.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_txbb.i, align 4
  %shl14.i = shl i32 %59, 6
  %cmp15.i = icmp ult i32 %add.i, %shl14.i
  br i1 %cmp15.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mlx4_en_stamp_wqe.exit_crit_edge

for.body.i.mlx4_en_stamp_wqe.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx4_en_stamp_wqe.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body21.i:                                     ; preds = %for.inc26.i.for.body21.i_crit_edge, %for.cond17.preheader.i.for.body21.i_crit_edge
  %i.110.i = phi i32 [ %add27.i, %for.inc26.i.for.body21.i_crit_edge ], [ 0, %for.cond17.preheader.i.for.body21.i_crit_edge ]
  %ptr.19.i = phi ptr [ %ptr.2.i, %for.inc26.i.for.body21.i_crit_edge ], [ %add.ptr.i229, %for.cond17.preheader.i.for.body21.i_crit_edge ]
  %stamp.08.i = phi i32 [ %stamp.1.i, %for.inc26.i.for.body21.i_crit_edge ], [ %or.i, %for.cond17.preheader.i.for.body21.i_crit_edge ]
  %60 = ptrtoint ptr %ptr.19.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %stamp.08.i, ptr %ptr.19.i, align 4
  %add.ptr22.i = getelementptr i32, ptr %ptr.19.i, i32 16
  %cmp23.not.i = icmp ult ptr %add.ptr22.i, %add.ptr5.i
  br i1 %cmp23.not.i, label %for.body21.i.for.inc26.i_crit_edge, label %if.then24.i

for.body21.i.for.inc26.i_crit_edge:               ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc26.i

if.then24.i:                                      ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buf.i, align 8
  %xor.i = xor i32 %stamp.08.i, -2147483648
  br label %for.inc26.i

for.inc26.i:                                      ; preds = %if.then24.i, %for.body21.i.for.inc26.i_crit_edge
  %stamp.1.i = phi i32 [ %xor.i, %if.then24.i ], [ %stamp.08.i, %for.body21.i.for.inc26.i_crit_edge ]
  %ptr.2.i = phi ptr [ %62, %if.then24.i ], [ %add.ptr22.i, %for.body21.i.for.inc26.i_crit_edge ]
  %add27.i = add nuw i32 %i.110.i, 64
  %63 = ptrtoint ptr %nr_txbb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_txbb.i, align 4
  %shl19.i = shl i32 %64, 6
  %cmp20.i = icmp ult i32 %add27.i, %shl19.i
  br i1 %cmp20.i, label %for.inc26.i.for.body21.i_crit_edge, label %for.inc26.i.mlx4_en_stamp_wqe.exit_crit_edge

for.inc26.i.mlx4_en_stamp_wqe.exit_crit_edge:     ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx4_en_stamp_wqe.exit

for.inc26.i.for.body21.i_crit_edge:               ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body21.i

mlx4_en_stamp_wqe.exit:                           ; preds = %for.inc26.i.mlx4_en_stamp_wqe.exit_crit_edge, %for.body.i.mlx4_en_stamp_wqe.exit_crit_edge, %for.cond17.preheader.i.mlx4_en_stamp_wqe.exit_crit_edge, %for.cond.preheader.i.mlx4_en_stamp_wqe.exit_crit_edge
  %65 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tx_info, align 4
  %nr_bytes = getelementptr %struct.mlx4_en_tx_info, ptr %66, i32 %idxprom, i32 4
  %67 = ptrtoint ptr %nr_bytes to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr_bytes, align 16
  %add83 = add i32 %68, %bytes.1
  %inc85 = add i32 %done.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc85, i32 %17)
  %cmp86 = icmp sge i32 %inc85, %17
  call void @__sanitizer_cov_trace_cmp2(i16 %conv51, i16 %conv56)
  %cmp91.not = icmp eq i16 %conv51, %conv56
  %or.cond227 = select i1 %cmp86, i1 true, i1 %cmp91.not
  br i1 %or.cond227, label %do.end94, label %mlx4_en_stamp_wqe.exit.do.body52_crit_edge

mlx4_en_stamp_wqe.exit.do.body52_crit_edge:       ; preds = %mlx4_en_stamp_wqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

do.end94:                                         ; preds = %mlx4_en_stamp_wqe.exit
  %inc95 = add i32 %cons_index.0247, 1
  %and96 = and i32 %inc95, %11
  %conv98 = and i32 %and96, 65535
  %69 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cqe_size, align 4
  %mul.i230 = mul i32 %70, %conv98
  %call12.pn = getelementptr i8, ptr %13, i32 %mul.i230
  %owner_sr_opcode = getelementptr %struct.mlx4_cqe, ptr %call12.pn, i32 %15, i32 9
  %71 = ptrtoint ptr %owner_sr_opcode to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %owner_sr_opcode, align 1
  %73 = xor i8 %72, -1
  %74 = lshr i8 %73, 7
  %and25 = and i32 %inc95, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %75 = zext i1 %tobool26.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %75)
  %cmp = icmp eq i8 %74, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %inc85, i32 %17)
  %cmp30 = icmp slt i32 %inc85, %17
  %or.cond = select i1 %cmp, i1 %cmp30, i1 false
  br i1 %or.cond, label %do.end94.while.body_crit_edge, label %do.end94.while.end_crit_edge

do.end94.while.end_crit_edge:                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end94.while.body_crit_edge:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %do.end94.while.end_crit_edge, %if.end.while.end_crit_edge
  %txbbs_stamp.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %add, %do.end94.while.end_crit_edge ]
  %cons_index.0.lcssa = phi i32 [ %21, %if.end.while.end_crit_edge ], [ %inc95, %do.end94.while.end_crit_edge ]
  %bytes.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %add83, %do.end94.while.end_crit_edge ]
  %done.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %inc85, %do.end94.while.end_crit_edge ]
  %last_nr_txbb.0.lcssa = phi i32 [ %27, %if.end.while.end_crit_edge ], [ %call69, %do.end94.while.end_crit_edge ]
  %76 = ptrtoint ptr %cons_index4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %cons_index.0.lcssa, ptr %cons_index4, align 4
  %and.i = and i32 %cons_index.0.lcssa, 16777215
  %set_ci_db.i = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 5
  %77 = ptrtoint ptr %set_ci_db.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_ci_db.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and.i, ptr %78, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  tail call void @arm_heavy_mb() #10
  %80 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 %last_nr_txbb.0.lcssa, ptr %7, align 128
  %add121 = add i32 %txbbs_stamp.0.lcssa, %29
  %81 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 %add121, ptr %cons, align 4
  %82 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp128 = icmp eq i32 %83, 1
  br i1 %cmp128, label %while.end.cleanup_crit_edge, label %if.end131

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end131:                                        ; preds = %while.end
  %84 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tx_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.0.lcssa)
  %tobool.not.i232 = icmp eq i32 %bytes.0.lcssa, 0
  br i1 %tobool.not.i232, label %if.end131.netdev_tx_completed_queue.exit_crit_edge, label %if.end.i, !prof !63

if.end131.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_tx_completed_queue.exit

if.end.i:                                         ; preds = %if.end131
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i, i32 noundef %bytes.0.lcssa) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  %adj_limit.i.i = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 15, i32 1
  %86 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %adj_limit.i.i, align 4
  %88 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i = sub i32 %87, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i, label %if.end.i.netdev_tx_completed_queue.exit_crit_edge, label %if.end14.i, !prof !63

if.end.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_tx_completed_queue.exit

if.end14.i:                                       ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 13
  %call15.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, label %if.then17.i

if.end14.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_tx_completed_queue.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_schedule_queue(ptr noundef %85) #10
  br label %netdev_tx_completed_queue.exit

netdev_tx_completed_queue.exit:                   ; preds = %if.then17.i, %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, %if.end.i.netdev_tx_completed_queue.exit_crit_edge, %if.end131.netdev_tx_completed_queue.exit_crit_edge
  %90 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tx_queue, align 4
  %state.i233 = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 13
  %92 = ptrtoint ptr %state.i233 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %state.i233, align 4
  %and1.i.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %netdev_tx_completed_queue.exit.cleanup_crit_edge, label %land.lhs.true

netdev_tx_completed_queue.exit.cleanup_crit_edge: ; preds = %netdev_tx_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %netdev_tx_completed_queue.exit
  %prod.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 7
  %94 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %prod.i, align 128
  %96 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cons, align 4
  %sub.i = sub i32 %95, %97
  %full_size.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 20
  %98 = ptrtoint ptr %full_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %full_size.i, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %99)
  %cmp.i234 = icmp ugt i32 %sub.i, %99
  br i1 %cmp.i234, label %land.lhs.true.cleanup_crit_edge, label %if.then137

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then137:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_tx_wake_queue(ptr noundef %91) #10
  %wake_queue = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 2
  %100 = ptrtoint ptr %wake_queue to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %wake_queue, align 8
  %inc139 = add i32 %101, 1
  store i32 %inc139, ptr %wake_queue, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then137, %land.lhs.true.cleanup_crit_edge, %netdev_tx_completed_queue.exit.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %done.0.lcssa, %while.end.cleanup_crit_edge ], [ %done.0.lcssa, %if.then137 ], [ %done.0.lcssa, %land.lhs.true.cleanup_crit_edge ], [ %done.0.lcssa, %netdev_tx_completed_queue.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_en_handle_err_cqe(ptr noundef %priv, ptr noundef %err_cqe, i16 noundef zeroext %cqe_index, ptr nocapture noundef readonly %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sp_cqn = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 38
  %2 = ptrtoint ptr %sp_cqn to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sp_cqn, align 2
  %conv = zext i16 %3 to i32
  %conv2 = zext i16 %cqe_index to i32
  %vendor_err_syndrome = getelementptr inbounds %struct.mlx4_err_cqe, ptr %err_cqe, i32 0, i32 3
  %4 = ptrtoint ptr %vendor_err_syndrome to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vendor_err_syndrome, align 2
  %conv3 = zext i8 %5 to i32
  %syndrome = getelementptr inbounds %struct.mlx4_err_cqe, ptr %err_cqe, i32 0, i32 4
  %6 = ptrtoint ptr %syndrome to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %syndrome, align 1
  %conv4 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4) #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %err_cqe, i32 noundef 32, i1 noundef zeroext false) #10
  %wqe_index5 = getelementptr inbounds %struct.mlx4_err_cqe, ptr %err_cqe, i32 0, i32 2
  %8 = ptrtoint ptr %wqe_index5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %wqe_index5, align 4
  %size_mask = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 19
  %10 = ptrtoint ptr %size_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size_mask, align 4
  %12 = trunc i32 %11 to i16
  %conv7 = and i16 %9, %12
  %tx_info8 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 23
  %13 = ptrtoint ptr %tx_info8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_info8, align 4
  %idxprom = zext i16 %conv7 to i32
  %nr_txbb = getelementptr %struct.mlx4_en_tx_info, ptr %14, i32 %idxprom, i32 3
  %15 = ptrtoint ptr %nr_txbb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_txbb, align 4
  %shl = shl i32 %16, 6
  %qpn = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 24
  %17 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qpn, align 16
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.19, i32 noundef %18, i32 noundef %idxprom, i32 noundef %shl) #10
  %buf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 22
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 8
  %shl11 = shl nuw nsw i32 %idxprom, 6
  %add.ptr = getelementptr i8, ptr %20, i32 %shl11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %shl, i1 noundef zeroext false) #10
  %state = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 96
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.20) #10
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %workqueue, align 8
  %restart_task = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 58
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %restart_task) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx4_en_get_cqe_ts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_tx_irq(ptr noundef %mcq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlx4_en_cq, ptr %mcq, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %port_up = getelementptr i8, ptr %1, i32 51648
  %2 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_up, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !63

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.mlx4_en_cq, ptr %mcq, i32 0, i32 4
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %4) #10
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule_irqoff(ptr noundef %4) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @mlx4_en_arm_cq(ptr noundef %add.ptr.i, ptr noundef %mcq) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_arm_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_poll_tx_cq(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -200
  %dev1 = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call i32 @mlx4_en_process_tx_cq(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %budget)
  %cmp.not = icmp slt i32 %call2, %budget
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call2) #10
  br i1 %call3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx4_en_arm_cq(ptr noundef %add.ptr.i, ptr noundef %add.ptr) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %budget, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mlx4_en_select_queue(ptr noundef %dev, ptr noundef %skb, ptr nocapture noundef readnone %sb_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 140
  %0 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %dev, ptr noundef %skb, ptr noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %num_tx_rings_p_up = getelementptr i8, ptr %dev, i32 61444
  %2 = ptrtoint ptr %num_tx_rings_p_up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_tx_rings_p_up, align 4
  %call3 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %dev, ptr noundef %skb, ptr noundef null) #10
  %conv5 = zext i8 %3 to i16
  %rem = urem i16 %call3, %conv5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i16 [ %call2, %if.then ], [ %rem, %if.end ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_xmit_doorbell(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !73
  tail call void @arm_heavy_mb() #10
  %doorbell_qpn = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %doorbell_qpn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %doorbell_qpn, align 16
  %doorbell_address = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 15
  %2 = ptrtoint ptr %doorbell_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %doorbell_address, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #10, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_xmit(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %3 to i32
  %tx_ring = getelementptr i8, ptr %dev, i32 61508
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 4
  %arrayidx3 = getelementptr ptr, ptr %5, i32 %conv
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %8 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_up, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.tx_drop_crit_edge, label %if.end, !prof !63

entry.tx_drop_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_drop

if.end:                                           ; preds = %entry
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %if.else29.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %12 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %encapsulation.i, align 8
  %13 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool1.not.i = icmp eq i16 %13, 0
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %transport_header.i.i.sink.i = select i1 %tobool1.not.i, ptr %transport_header.i.i.i, ptr %inner_transport_header.i.i
  %16 = ptrtoint ptr %transport_header.i.i.sink.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %transport_header.i.i.sink.i, align 2
  %conv.i.i.i = zext i16 %17 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %21 = lshr i16 %bf.load.i.i.i, 10
  %22 = and i16 %21, 60
  %mul.i.i.i = zext i16 %22 to i32
  %add7.i = add i32 %sub.ptr.sub.i.i, %mul.i.i.i
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %24 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %25 = add i32 %add7.i, 35
  %add8.i = and i32 %25, -16
  %add11.i = add i32 %add8.i, %mul.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %27, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %sub.i.i)
  %cmp.not.i = icmp eq i32 %add7.i, %sub.i.i
  br i1 %cmp.not.i, label %if.then.i.get_real_size.exit_crit_edge, label %if.then16.i, !prof !60

if.then.i.get_real_size.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_real_size.exit

if.then16.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %sub.i.i)
  %cmp18.i = icmp ult i32 %add7.i, %sub.i.i
  br i1 %cmp18.i, label %if.then20.i, label %if.else22.i

if.then20.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %add21.i = add i32 %add11.i, 16
  br label %get_real_size.exit

if.else22.i:                                      ; preds = %if.then16.i
  %msg_enable.i = getelementptr i8, ptr %dev, i32 51576
  %30 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable.i, align 8
  %and23.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.else22.i.tx_drop_count_crit_edge, label %if.else22.i.tx_drop_count.sink.split_crit_edge

if.else22.i.tx_drop_count.sink.split_crit_edge:   ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_drop_count.sink.split

if.else22.i.tx_drop_count_crit_edge:              ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_drop_count

if.else29.i:                                      ; preds = %if.end
  %prof.i = getelementptr i8, ptr %dev, i32 2308
  %32 = ptrtoint ptr %prof.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prof.i, align 4
  %inline_thold.i = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %inline_thold.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %inline_thold.i, align 4
  %len.i72.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len.i72.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i72.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp.i.i = icmp ugt i32 %37, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.else29.i.get_real_size.exit.thread519_crit_edge, label %if.end.i.i

if.else29.i.get_real_size.exit.thread519_crit_edge: ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_real_size.exit.thread519

if.end.i.i:                                       ; preds = %if.else29.i
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nr_frags.i.i, align 2
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i8 %39, label %if.end.i.i.get_real_size.exit.thread519_crit_edge [
    i8 1, label %if.then3.i.i
    i8 0, label %if.end.i.i.if.then32.i_crit_edge
  ]

if.end.i.i.if.then32.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i

if.end.i.i.get_real_size.exit.thread519_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_real_size.exit.thread519

if.then3.i.i:                                     ; preds = %if.end.i.i
  %frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12
  %41 = ptrtoint ptr %frags.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %frags.i.i, align 4
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %42) #10
  %tobool.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then3.i.i.get_real_size.exit.thread519_crit_edge, label %skb_frag_address_safe.exit.i.i, !prof !63

if.then3.i.i.get_real_size.exit.thread519_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_real_size.exit.thread519

skb_frag_address_safe.exit.i.i:                   ; preds = %if.then3.i.i
  %bv_offset.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 0, i32 2
  %43 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bv_offset.i.i.i.i, align 4
  %add.ptr.i.i73.i = getelementptr i8, ptr %call1.i.i.i, i32 %44
  %tobool4.not.i.i = icmp eq ptr %add.ptr.i.i73.i, null
  br i1 %tobool4.not.i.i, label %skb_frag_address_safe.exit.i.i.get_real_size.exit.thread519_crit_edge, label %skb_frag_address_safe.exit.i.i.if.then32.i_crit_edge, !prof !63

skb_frag_address_safe.exit.i.i.if.then32.i_crit_edge: ; preds = %skb_frag_address_safe.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i

skb_frag_address_safe.exit.i.i.get_real_size.exit.thread519_crit_edge: ; preds = %skb_frag_address_safe.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_real_size.exit.thread519

if.then32.i:                                      ; preds = %skb_frag_address_safe.exit.i.i.if.then32.i_crit_edge, %if.end.i.i.if.then32.i_crit_edge
  %fragptr.0 = phi ptr [ null, %if.end.i.i.if.then32.i_crit_edge ], [ %add.ptr.i.i73.i, %skb_frag_address_safe.exit.i.i.if.then32.i_crit_edge ]
  %45 = ptrtoint ptr %len.i72.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i72.i, align 4
  %add1.i.i = add i32 %46, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %add1.i.i)
  %cmp.i75.i = icmp ult i32 %add1.i.i, 65
  %retval.0.in.v.i.i = select i1 %cmp.i75.i, i32 35, i32 39
  %retval.0.in.i.i = add i32 %retval.0.in.v.i.i, %46
  %retval.0.i76.i = and i32 %retval.0.in.i.i, -16
  br label %get_real_size.exit

get_real_size.exit.thread519:                     ; preds = %skb_frag_address_safe.exit.i.i.get_real_size.exit.thread519_crit_edge, %if.then3.i.i.get_real_size.exit.thread519_crit_edge, %if.end.i.i.get_real_size.exit.thread519_crit_edge, %if.else29.i.get_real_size.exit.thread519_crit_edge
  %nr_frags35.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %nr_frags35.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nr_frags35.i, align 2
  %conv36.i = zext i8 %48 to i32
  %add37.i = shl nuw nsw i32 %conv36.i, 4
  %add39.i = add nuw nsw i32 %add37.i, 32
  br label %if.end18

get_real_size.exit:                               ; preds = %if.then32.i, %if.then20.i, %if.then.i.get_real_size.exit_crit_edge
  %lso_header_size.0 = phi i32 [ 0, %if.then32.i ], [ %add7.i, %if.then.i.get_real_size.exit_crit_edge ], [ %add7.i, %if.then20.i ]
  %fragptr.1 = phi ptr [ %fragptr.0, %if.then32.i ], [ null, %if.then.i.get_real_size.exit_crit_edge ], [ null, %if.then20.i ]
  %inline_ok.0 = phi i8 [ 1, %if.then32.i ], [ 0, %if.then.i.get_real_size.exit_crit_edge ], [ 0, %if.then20.i ]
  %retval.0.i = phi i32 [ %retval.0.i76.i, %if.then32.i ], [ %add11.i, %if.then.i.get_real_size.exit_crit_edge ], [ %add21.i, %if.then20.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool8.not, label %get_real_size.exit.tx_drop_count_crit_edge, label %get_real_size.exit.if.end18_crit_edge, !prof !63

get_real_size.exit.if.end18_crit_edge:            ; preds = %get_real_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

get_real_size.exit.tx_drop_count_crit_edge:       ; preds = %get_real_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_drop_count

if.end18:                                         ; preds = %get_real_size.exit.if.end18_crit_edge, %get_real_size.exit.thread519
  %retval.0.i528 = phi i32 [ %add39.i, %get_real_size.exit.thread519 ], [ %retval.0.i, %get_real_size.exit.if.end18_crit_edge ]
  %inline_ok.0527 = phi i8 [ 0, %get_real_size.exit.thread519 ], [ %inline_ok.0, %get_real_size.exit.if.end18_crit_edge ]
  %fragptr.1526 = phi ptr [ null, %get_real_size.exit.thread519 ], [ %fragptr.1, %get_real_size.exit.if.end18_crit_edge ]
  %lso_header_size.0525 = phi i32 [ 0, %get_real_size.exit.thread519 ], [ %lso_header_size.0, %get_real_size.exit.if.end18_crit_edge ]
  %add = add i32 %retval.0.i528, 63
  %and = and i32 %add, -64
  %shr = ashr i32 %add, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 575, i32 %add)
  %cmp = icmp ugt i32 %add, 575
  br i1 %cmp, label %if.then26, label %if.end31, !prof !63

if.then26:                                        ; preds = %if.end18
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %49 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable, align 8
  %and27 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then26.tx_drop_count_crit_edge, label %if.then26.tx_drop_count.sink.split_crit_edge

if.then26.tx_drop_count.sink.split_crit_edge:     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_drop_count.sink.split

if.then26.tx_drop_count_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_drop_count

if.end31:                                         ; preds = %if.end18
  %bf_enabled = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 26
  %51 = ptrtoint ptr %bf_enabled to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bf_enabled, align 1, !range !61
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %53 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool33.not = icmp sgt i32 %bf.load, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %extract.t455 = icmp ne i8 %52, 0
  br i1 %tobool33.not, label %if.end31.if.end49_crit_edge, label %if.then34

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then34:                                        ; preds = %if.end31
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %54 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vlan_tci, align 2
  %vlan_proto35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %56 = ptrtoint ptr %vlan_proto35 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vlan_proto35, align 8
  %58 = zext i16 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %57, label %if.else45 [
    i16 -30552, label %if.then34.if.end49_crit_edge
    i16 -32512, label %if.then43
  ]

if.then34.if.end49_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then43:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.else45:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.end49:                                         ; preds = %if.else45, %if.then43, %if.then34.if.end49_crit_edge, %if.end31.if.end49_crit_edge
  %bf_ok.0.off0 = phi i1 [ %extract.t455, %if.end31.if.end49_crit_edge ], [ false, %if.then34.if.end49_crit_edge ], [ false, %if.then43 ], [ false, %if.else45 ]
  %qpn_vlan.sroa.6.1 = phi i32 [ 0, %if.end31.if.end49_crit_edge ], [ 32768, %if.then34.if.end49_crit_edge ], [ 16384, %if.then43 ], [ 0, %if.else45 ]
  %qpn_vlan.sroa.0.0 = phi i16 [ 0, %if.end31.if.end49_crit_edge ], [ %55, %if.then34.if.end49_crit_edge ], [ %55, %if.then43 ], [ %55, %if.else45 ]
  %tx_queue = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 3
  %59 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_queue, align 4
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %60, i32 0, i32 15
  tail call void @llvm.prefetch.p0(ptr %dql.i, i32 1, i32 3, i32 1) #10
  %prod = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 7
  %61 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %prod, align 128
  %size_mask = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 19
  %63 = ptrtoint ptr %size_mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size_mask, align 4
  %and50 = and i32 %64, %62
  %add52 = add i32 %and50, %shr
  %size = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 18
  %65 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add52, i32 %66)
  %cmp53.not = icmp ugt i32 %add52, %66
  br i1 %cmp53.not, label %if.else62, label %if.then61, !prof !63

if.then61:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %buf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 22
  %67 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buf, align 8
  %shl = shl i32 %and50, 6
  %add.ptr = getelementptr i8, ptr %68, i32 %shl
  br label %if.end63

if.else62:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %bounce_buf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 29
  %69 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bounce_buf, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.else62, %if.then61
  %bf_ok.1.off0 = phi i1 [ %bf_ok.0.off0, %if.then61 ], [ false, %if.else62 ]
  %tx_desc.0 = phi ptr [ %add.ptr, %if.then61 ], [ %70, %if.else62 ]
  %tx_info64 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 23
  %71 = ptrtoint ptr %tx_info64 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_info64, align 4
  %arrayidx65 = getelementptr %struct.mlx4_en_tx_info, ptr %72, i32 %and50
  %73 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %skb, ptr %arrayidx65, align 128
  %nr_txbb66 = getelementptr %struct.mlx4_en_tx_info, ptr %72, i32 %and50, i32 3
  %74 = ptrtoint ptr %nr_txbb66 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %shr, ptr %nr_txbb66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lso_header_size.0525)
  %tobool67.not = icmp eq i32 %lso_header_size.0525, 0
  br i1 %tobool67.not, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %75 = getelementptr inbounds %struct.mlx4_en_tx_desc, ptr %tx_desc.0, i32 0, i32 1
  br label %if.end76

if.else69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %add71 = add i32 %lso_header_size.0525, 19
  %and72 = and i32 %add71, -16
  %76 = getelementptr inbounds %struct.mlx4_en_tx_desc, ptr %tx_desc.0, i32 0, i32 1
  %add.ptr73 = getelementptr i8, ptr %76, i32 %and72
  %77 = trunc i32 %and72 to i8
  %conv75 = add i8 %77, 16
  br label %if.end76

if.end76:                                         ; preds = %if.else69, %if.then68
  %data.0 = phi ptr [ %add.ptr73, %if.else69 ], [ %75, %if.then68 ]
  %data_offset.0 = phi i8 [ %conv75, %if.else69 ], [ 16, %if.then68 ]
  %data_offset77 = getelementptr %struct.mlx4_en_tx_info, ptr %72, i32 %and50, i32 6
  %78 = ptrtoint ptr %data_offset77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %data_offset.0, ptr %data_offset77, align 1
  %inl = getelementptr %struct.mlx4_en_tx_info, ptr %72, i32 %and50, i32 7
  %79 = ptrtoint ptr %inl to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %inline_ok.0527, ptr %inl, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %82 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %81, %83
  call void @__sanitizer_cov_trace_cmp4(i32 %lso_header_size.0525, i32 %sub.i)
  %cmp81 = icmp ult i32 %lso_header_size.0525, %sub.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inline_ok.0527)
  %tobool83.not = icmp eq i8 %inline_ok.0527, 0
  %spec.select531 = and i1 %tobool83.not, %cmp81
  %conv86 = zext i1 %spec.select531 to i8
  %linear = getelementptr %struct.mlx4_en_tx_info, ptr %72, i32 %and50, i32 5
  %84 = ptrtoint ptr %linear to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv86, ptr %linear, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %85 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %nr_frags, align 2
  %add90 = add i8 %86, %conv86
  %nr_maps = getelementptr %struct.mlx4_en_tx_info, ptr %72, i32 %and50, i32 9
  %87 = ptrtoint ptr %nr_maps to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %add90, ptr %nr_maps, align 8
  br i1 %tobool83.not, label %if.then97, label %if.end76.if.end101_crit_edge

if.end76.if.end101_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then97:                                        ; preds = %if.end76
  %conv93 = zext i8 %add90 to i32
  %sub = add nsw i32 %conv93, -1
  %add.ptr94 = getelementptr %struct.mlx4_wqe_data_seg, ptr %data.0, i32 %sub
  %mr_key = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 17
  %88 = ptrtoint ptr %mr_key to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mr_key, align 4
  %ddev1.i = getelementptr i8, ptr %dev, i32 67300
  %90 = ptrtoint ptr %ddev1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ddev1.i, align 4
  %92 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %nr_frags, align 2
  %conv.i458 = zext i8 %93 to i32
  %i_frag.086.i = add nsw i32 %conv.i458, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp87.not.i = icmp eq i8 %93, 0
  br i1 %cmp87.not.i, label %if.then97.for.end.i_crit_edge, label %if.then97.for.body.i_crit_edge

if.then97.for.body.i_crit_edge:                   ; preds = %if.then97
  br label %for.body.i

if.then97.for.end.i_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then97.for.body.i_crit_edge
  %i_frag.089.i = phi i32 [ %i_frag.0.i, %cleanup.i.for.body.i_crit_edge ], [ %i_frag.086.i, %if.then97.for.body.i_crit_edge ]
  %data.addr.088.i = phi ptr [ %incdec.ptr.i, %cleanup.i.for.body.i_crit_edge ], [ %add.ptr94, %if.then97.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 %i_frag.089.i
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 %i_frag.089.i, i32 1
  %94 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bv_len.i.i, align 4
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 %i_frag.089.i, i32 2
  %98 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %91, ptr noundef %97, i32 noundef %99, i32 noundef %95, i32 noundef 1, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %91, i32 noundef %call2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i.not.i, label %for.body.i.tx_drop_unmap.i_crit_edge, label %cleanup.i

for.body.i.tx_drop_unmap.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_drop_unmap.i

cleanup.i:                                        ; preds = %for.body.i
  %conv5.i = zext i32 %call2.i.i to i64
  %addr.i = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %data.addr.088.i, i32 0, i32 2
  %100 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv5.i, ptr %addr.i, align 8
  %lkey.i = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %data.addr.088.i, i32 0, i32 1
  %101 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %89, ptr %lkey.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  %102 = ptrtoint ptr %data.addr.088.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %95, ptr %data.addr.088.i, align 8
  %incdec.ptr.i = getelementptr %struct.mlx4_wqe_data_seg, ptr %data.addr.088.i, i32 -1
  %i_frag.0.i = add nsw i32 %i_frag.089.i, -1
  %cmp.i = icmp sgt i32 %i_frag.089.i, 0
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then97.for.end.i_crit_edge
  %data.addr.0.lcssa.i = phi ptr [ %add.ptr94, %if.then97.for.end.i_crit_edge ], [ %incdec.ptr.i, %cleanup.i.for.end.i_crit_edge ]
  %dma.0.lcssa.i = phi i32 [ 0, %if.then97.for.end.i_crit_edge ], [ %call2.i.i, %cleanup.i.for.end.i_crit_edge ]
  %byte_count.0.lcssa.i = phi i32 [ 0, %if.then97.for.end.i_crit_edge ], [ %95, %cleanup.i.for.end.i_crit_edge ]
  %i_frag.0.lcssa.i = phi i32 [ %i_frag.086.i, %if.then97.for.end.i_crit_edge ], [ -1, %cleanup.i.for.end.i_crit_edge ]
  %103 = ptrtoint ptr %linear to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %linear, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool7.not.i = icmp eq i8 %104, 0
  br i1 %tobool7.not.i, label %for.end.i.mlx4_en_build_dma_wqe.exit_crit_edge, label %if.then8.i

for.end.i.mlx4_en_build_dma_wqe.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx4_en_build_dma_wqe.exit

if.then8.i:                                       ; preds = %for.end.i
  %105 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len.i, align 4
  %107 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %data_len.i, align 8
  %109 = add i32 %lso_header_size.0525, %108
  %sub10.i = sub i32 %106, %109
  %data11.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %110 = ptrtoint ptr %data11.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data11.i, align 4
  %add.ptr.i461 = getelementptr i8, ptr %111, i32 %lso_header_size.0525
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i461) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.then8.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !60

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %91) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 3
  %112 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i462 = icmp eq ptr %113, null
  br i1 %tobool.not.i.i.i462, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %91, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %115, %if.end.i.i.i ], [ %113, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %91, i32 noundef -1) #10
  br label %tx_drop_unmap.i

dma_map_single_attrs.exit.i:                      ; preds = %if.then8.i
  tail call void @debug_dma_map_single(ptr noundef %91, ptr noundef %add.ptr.i461, i32 noundef %sub10.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %116 = load ptr, ptr @mem_map, align 4
  %117 = ptrtoint ptr %add.ptr.i461 to i32
  %sub.i67.i = add i32 %117, 1073741824
  %shr.i.i = lshr i32 %sub.i67.i, 12
  %add.ptr.i.i463 = getelementptr %struct.page, ptr %116, i32 %shr.i.i
  %and.i.i = and i32 %117, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %91, ptr noundef %add.ptr.i.i463, i32 noundef %and.i.i, i32 noundef %sub10.i, i32 noundef 1, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %91, i32 noundef %call41.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i68.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i68.i, label %dma_map_single_attrs.exit.i.tx_drop_unmap.i_crit_edge, label %if.end16.i

dma_map_single_attrs.exit.i.tx_drop_unmap.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_drop_unmap.i

if.end16.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv17.i = zext i32 %call41.i.i to i64
  %addr18.i = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %data.addr.0.lcssa.i, i32 0, i32 2
  %118 = ptrtoint ptr %addr18.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %conv17.i, ptr %addr18.i, align 8
  %lkey19.i = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %data.addr.0.lcssa.i, i32 0, i32 1
  %119 = ptrtoint ptr %lkey19.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %89, ptr %lkey19.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  %120 = ptrtoint ptr %data.addr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %sub10.i, ptr %data.addr.0.lcssa.i, align 8
  br label %mlx4_en_build_dma_wqe.exit

tx_drop_unmap.i:                                  ; preds = %dma_map_single_attrs.exit.i.tx_drop_unmap.i_crit_edge, %dma_map_single_attrs.exit.thread.i, %for.body.i.tx_drop_unmap.i_crit_edge
  %data.addr.085.i = phi ptr [ %data.addr.0.lcssa.i, %dma_map_single_attrs.exit.thread.i ], [ %data.addr.0.lcssa.i, %dma_map_single_attrs.exit.i.tx_drop_unmap.i_crit_edge ], [ %data.addr.088.i, %for.body.i.tx_drop_unmap.i_crit_edge ]
  %i_frag.081.i = phi i32 [ %i_frag.0.lcssa.i, %dma_map_single_attrs.exit.thread.i ], [ %i_frag.0.lcssa.i, %dma_map_single_attrs.exit.i.tx_drop_unmap.i_crit_edge ], [ %i_frag.089.i, %for.body.i.tx_drop_unmap.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.22) #10
  %inc93.i = add nsw i32 %i_frag.081.i, 1
  %121 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %nr_frags, align 2
  %conv2394.i = zext i8 %122 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc93.i, i32 %conv2394.i)
  %cmp2495.i = icmp ult i32 %inc93.i, %conv2394.i
  br i1 %cmp2495.i, label %tx_drop_unmap.i.while.body.i_crit_edge, label %tx_drop_unmap.i.tx_drop_count_crit_edge

tx_drop_unmap.i.tx_drop_count_crit_edge:          ; preds = %tx_drop_unmap.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_drop_count

tx_drop_unmap.i.while.body.i_crit_edge:           ; preds = %tx_drop_unmap.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %tx_drop_unmap.i.while.body.i_crit_edge
  %inc97.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ %inc93.i, %tx_drop_unmap.i.while.body.i_crit_edge ]
  %data.addr.396.i = phi ptr [ %incdec.ptr26.i, %while.body.i.while.body.i_crit_edge ], [ %data.addr.085.i, %tx_drop_unmap.i.while.body.i_crit_edge ]
  %incdec.ptr26.i = getelementptr %struct.mlx4_wqe_data_seg, ptr %data.addr.396.i, i32 1
  %addr27.i = getelementptr %struct.mlx4_wqe_data_seg, ptr %data.addr.396.i, i32 1, i32 2
  %123 = ptrtoint ptr %addr27.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %addr27.i, align 8
  %conv28.i = trunc i64 %124 to i32
  %125 = ptrtoint ptr %incdec.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %incdec.ptr26.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %91, i32 noundef %conv28.i, i32 noundef %126, i32 noundef 1, i32 noundef 0) #10
  %inc.i = add nsw i32 %inc97.i, 1
  %127 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %nr_frags, align 2
  %conv23.i = zext i8 %128 to i32
  %cmp24.i = icmp slt i32 %inc.i, %conv23.i
  br i1 %cmp24.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.tx_drop_count_crit_edge

while.body.i.tx_drop_count_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_drop_count

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

mlx4_en_build_dma_wqe.exit:                       ; preds = %if.end16.i, %for.end.i.mlx4_en_build_dma_wqe.exit_crit_edge
  %dma.1.i = phi i32 [ %call41.i.i, %if.end16.i ], [ %dma.0.lcssa.i, %for.end.i.mlx4_en_build_dma_wqe.exit_crit_edge ]
  %byte_count.1.i = phi i32 [ %sub10.i, %if.end16.i ], [ %byte_count.0.lcssa.i, %for.end.i.mlx4_en_build_dma_wqe.exit_crit_edge ]
  %map0_dma.i = getelementptr %struct.mlx4_en_tx_info, ptr %72, i32 %and50, i32 1
  %129 = ptrtoint ptr %map0_dma.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %dma.1.i, ptr %map0_dma.i, align 4
  %map0_byte_count.i = getelementptr %struct.mlx4_en_tx_info, ptr %72, i32 %and50, i32 2
  %130 = ptrtoint ptr %map0_byte_count.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %byte_count.1.i, ptr %map0_byte_count.i, align 8
  br label %if.end101

if.end101:                                        ; preds = %mlx4_en_build_dma_wqe.exit, %if.end76.if.end101_crit_edge
  %ts_requested = getelementptr %struct.mlx4_en_tx_info, ptr %72, i32 %and50, i32 8
  %131 = ptrtoint ptr %ts_requested to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %ts_requested, align 1
  %hwtstamp_tx_type = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 28
  %132 = ptrtoint ptr %hwtstamp_tx_type to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %hwtstamp_tx_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %133)
  %cmp103 = icmp eq i8 %133, 1
  br i1 %cmp103, label %land.rhs105, label %if.end101.if.end122_crit_edge

if.end101.if.end122_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

land.rhs105:                                      ; preds = %if.end101
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 3
  %134 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %tx_flags, align 1
  %136 = and i8 %135, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool108.not = icmp eq i8 %136, 0
  br i1 %tobool108.not, label %land.rhs105.if.end122_crit_edge, label %if.then117, !prof !60

land.rhs105.if.end122_crit_edge:                  ; preds = %land.rhs105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then117:                                       ; preds = %land.rhs105
  call void @__sanitizer_cov_trace_pc() #12
  %137 = or i8 %135, 4
  %138 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %tx_flags, align 1
  %139 = ptrtoint ptr %ts_requested to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %ts_requested, align 1
  br label %if.end122

if.end122:                                        ; preds = %if.then117, %land.rhs105.if.end122_crit_edge, %if.end101.if.end122_crit_edge
  %ctrl_flags = getelementptr i8, ptr %dev, i32 61436
  %140 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ctrl_flags, align 4
  %142 = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, ptr %tx_desc.0, i32 0, i32 2
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %141, ptr %142, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %144 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %144)
  %bf.load123 = load i16, ptr %ip_summed, align 8
  %145 = and i16 %bf.load123, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %145)
  %cmp127 = icmp eq i16 %145, 1536
  br i1 %cmp127, label %if.then135, label %if.end122.if.end148_crit_edge, !prof !60

if.end122.if.end148_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then135:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  %146 = and i16 %bf.load123, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %tobool140.not = icmp eq i16 %146, 0
  %storemerge.v = select i1 %tobool140.not, i32 48, i32 16
  %storemerge = or i32 %storemerge.v, %141
  %147 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %storemerge, ptr %142, align 8
  %tx_csum = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 11
  %148 = ptrtoint ptr %tx_csum to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tx_csum, align 16
  %inc = add i32 %149, 1
  store i32 %inc, ptr %tx_csum, align 16
  br label %if.end148

if.end148:                                        ; preds = %if.then135, %if.end122.if.end148_crit_edge
  %flags = getelementptr i8, ptr %dev, i32 61440
  %150 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags, align 8
  %and149 = and i32 %151, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end148.if.end162_crit_edge, label %if.then151

if.end148.if.end162_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  %data152 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %152 = ptrtoint ptr %data152 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %data152, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %153, align 1
  %156 = ptrtoint ptr %142 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %142, align 8
  %add.ptr158 = getelementptr i8, ptr %153, i32 2
  %157 = ptrtoint ptr %add.ptr158 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %add.ptr158, align 1
  %imm = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, ptr %tx_desc.0, i32 0, i32 3
  %159 = ptrtoint ptr %imm to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %imm, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then151, %if.end148.if.end162_crit_edge
  %160 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %prod, align 128
  %162 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %size, align 8
  %and183 = and i32 %163, %161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool67.not, label %if.else180, label %if.then164

if.then164:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  %or169 = select i1 %tobool184.not, i32 78, i32 -2147483570
  %164 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %gso_size.i, align 4
  %conv170 = zext i16 %165 to i32
  %shl171 = shl nuw i32 %conv170, 16
  %or172 = or i32 %shl171, %lso_header_size.0525
  %166 = getelementptr inbounds %struct.mlx4_en_tx_desc, ptr %tx_desc.0, i32 0, i32 1
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %or172, ptr %166, align 8
  %header = getelementptr inbounds %struct.mlx4_en_tx_desc, ptr %tx_desc.0, i32 0, i32 1, i32 0, i32 1
  %data174 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %168 = ptrtoint ptr %data174 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %data174, align 4
  %170 = call ptr @memcpy(ptr %header, ptr %169, i32 %lso_header_size.0525)
  %tso_packets = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 12
  %171 = ptrtoint ptr %tso_packets to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %tso_packets, align 4
  %inc175 = add i32 %172, 1
  store i32 %inc175, ptr %tso_packets, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 5
  %173 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %gso_segs, align 2
  %conv176 = zext i16 %174 to i32
  %175 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %len.i, align 4
  %sub177 = add nsw i32 %conv176, -1
  %mul = mul i32 %sub177, %lso_header_size.0525
  %add178 = add i32 %mul, %176
  br label %if.end195

if.else180:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  %or186 = select i1 %tobool184.not, i32 10, i32 -2147483638
  %177 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %len.i, align 4
  %179 = tail call i32 @llvm.umax.i32(i32 %178, i32 60)
  br label %if.end195

if.end195:                                        ; preds = %if.else180, %if.then164
  %.sink = phi i32 [ %179, %if.else180 ], [ %add178, %if.then164 ]
  %.sink552 = phi i32 [ 1, %if.else180 ], [ %conv176, %if.then164 ]
  %op_own.0 = phi i32 [ %or186, %if.else180 ], [ %or169, %if.then164 ]
  %nr_bytes192 = getelementptr %struct.mlx4_en_tx_info, ptr %72, i32 %and50, i32 4
  %180 = ptrtoint ptr %nr_bytes192 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %.sink, ptr %nr_bytes192, align 16
  %packets193 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 10
  %181 = ptrtoint ptr %packets193 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %packets193, align 4
  %inc194 = add i32 %182, %.sink552
  store i32 %inc194, ptr %packets193, align 4
  %nr_bytes196 = getelementptr %struct.mlx4_en_tx_info, ptr %72, i32 %and50, i32 4
  %183 = ptrtoint ptr %nr_bytes196 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %nr_bytes196, align 16
  %bytes = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 9
  %185 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %bytes, align 8
  %add197 = add i32 %186, %184
  store i32 %add197, ptr %bytes, align 8
  %187 = ptrtoint ptr %inl to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %inl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool199.not = icmp eq i8 %188, 0
  br i1 %tobool199.not, label %if.end195.if.end201_crit_edge, label %if.then200

if.end195.if.end201_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201

if.then200:                                       ; preds = %if.end195
  %189 = getelementptr inbounds %struct.mlx4_en_tx_desc, ptr %tx_desc.0, i32 0, i32 1
  %190 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %len.i, align 4
  %192 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %data_len.i, align 8
  %sub.i.i467 = sub i32 %191, %193
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %191)
  %cmp.i468 = icmp ult i32 %191, 45
  br i1 %cmp.i468, label %if.then.i469, label %if.else17.i

if.then.i469:                                     ; preds = %if.then200
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %191)
  %cmp2.i = icmp ugt i32 %191, 16
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i, !prof !60

if.then4.i:                                       ; preds = %if.then.i469
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %191, -2147483648
  %194 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %or.i, ptr %189, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i469
  call void @__sanitizer_cov_trace_pc() #12
  %195 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 -2147483631, ptr %189, align 4
  %add.ptr.i470 = getelementptr %struct.mlx4_en_tx_desc, ptr %tx_desc.0, i32 0, i32 1, i32 0, i32 1
  %196 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %len.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i470, i32 %197
  %sub.i471 = sub i32 17, %197
  %198 = call ptr @memset(ptr %add.ptr8.i, i32 0, i32 %sub.i471)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then4.i
  %add.ptr10.i = getelementptr %struct.mlx4_en_tx_desc, ptr %tx_desc.0, i32 0, i32 1, i32 0, i32 1
  %data.i.i472 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %199 = ptrtoint ptr %data.i.i472 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %data.i.i472, align 4
  %201 = call ptr @memcpy(ptr %add.ptr10.i, ptr %200, i32 %sub.i.i467)
  %202 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool11.not.i = icmp eq i8 %203, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end201_crit_edge, label %if.then12.i

if.end.i.if.end201_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr14.i = getelementptr i8, ptr %add.ptr10.i, i32 %sub.i.i467
  %bv_len.i.i474 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 0, i32 1
  %204 = ptrtoint ptr %bv_len.i.i474 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %bv_len.i.i474, align 4
  %206 = call ptr @memcpy(ptr %add.ptr14.i, ptr %fragptr.1526, i32 %205)
  br label %if.end201

if.else17.i:                                      ; preds = %if.then200
  %207 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 -2147483604, ptr %189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %sub.i.i467)
  %cmp20.i = icmp ult i32 %sub.i.i467, 45
  %add.ptr22.i = getelementptr %struct.mlx4_en_tx_desc, ptr %tx_desc.0, i32 0, i32 1, i32 0, i32 1
  %data.i112.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %208 = ptrtoint ptr %data.i112.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %data.i112.i, align 4
  br i1 %cmp20.i, label %if.then21.i, label %if.else36.i

if.then21.i:                                      ; preds = %if.else17.i
  %210 = call ptr @memcpy(ptr %add.ptr22.i, ptr %209, i32 %sub.i.i467)
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %sub.i.i467)
  %cmp23.not.i = icmp eq i32 %sub.i.i467, 44
  br i1 %cmp23.not.i, label %if.then21.i.if.end30.i_crit_edge, label %if.then24.i

if.then21.i.if.end30.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then24.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr26.i = getelementptr i8, ptr %add.ptr22.i, i32 %sub.i.i467
  %sub27.i = sub nuw nsw i32 44, %sub.i.i467
  %211 = call ptr @memcpy(ptr %add.ptr26.i, ptr %fragptr.1526, i32 %sub27.i)
  %add.ptr29.i = getelementptr i8, ptr %fragptr.1526, i32 %sub27.i
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then24.i, %if.then21.i.if.end30.i_crit_edge
  %fragptr.addr.0.i = phi ptr [ %add.ptr29.i, %if.then24.i ], [ %fragptr.1526, %if.then21.i.if.end30.i_crit_edge ]
  %add.ptr33.i = getelementptr %struct.mlx4_en_tx_desc, ptr %tx_desc.0, i32 2, i32 0, i32 1
  %212 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %len.i, align 4
  %sub35.i = add i32 %213, -44
  %214 = call ptr @memcpy(ptr %add.ptr33.i, ptr %fragptr.addr.0.i, i32 %sub35.i)
  br label %if.end52.i

if.else36.i:                                      ; preds = %if.else17.i
  %215 = call ptr @memcpy(ptr %add.ptr22.i, ptr %209, i32 44)
  %add.ptr40.i = getelementptr %struct.mlx4_en_tx_desc, ptr %tx_desc.0, i32 2, i32 0, i32 1
  %sub41.i = add i32 %sub.i.i467, -44
  %216 = ptrtoint ptr %data.i112.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %data.i112.i, align 4
  %add.ptr.i.i475 = getelementptr i8, ptr %217, i32 44
  %218 = call ptr @memcpy(ptr %add.ptr40.i, ptr %add.ptr.i.i475, i32 %sub41.i)
  %219 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool43.not.i = icmp eq i8 %220, 0
  br i1 %tobool43.not.i, label %if.else36.i.if.end52.i_crit_edge, label %if.then44.i

if.else36.i.if.end52.i_crit_edge:                 ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

if.then44.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr46.i = getelementptr i8, ptr %add.ptr40.i, i32 %sub.i.i467
  %add.ptr47.i = getelementptr i8, ptr %add.ptr46.i, i32 -44
  %bv_len.i115.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 0, i32 1
  %221 = ptrtoint ptr %bv_len.i115.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %bv_len.i115.i, align 4
  %223 = call ptr @memcpy(ptr %add.ptr47.i, ptr %fragptr.1526, i32 %222)
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then44.i, %if.else36.i.if.end52.i_crit_edge, %if.end30.i
  %inl.0.i = getelementptr %struct.mlx4_en_tx_desc, ptr %tx_desc.0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %224 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %len.i, align 4
  %sub54.i = add i32 %225, 2147483604
  %or55.i = or i32 %sub54.i, -2147483648
  %226 = ptrtoint ptr %inl.0.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %or55.i, ptr %inl.0.i, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.end52.i, %if.then12.i, %if.end.i.if.end201_crit_edge, %if.end195.if.end201_crit_edge
  %227 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %227)
  %bf.load203 = load i16, ptr %ip_summed, align 8
  %228 = and i16 %bf.load203, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %tobool207.not = icmp eq i16 %228, 0
  br i1 %tobool207.not, label %if.end201.if.end233_crit_edge, label %if.then208

if.end201.if.end233_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end233

if.then208:                                       ; preds = %if.end201
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %229 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %head.i, align 8
  %inner_network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %231 = ptrtoint ptr %inner_network_header.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %inner_network_header.i, align 4
  %conv.i476 = zext i16 %232 to i32
  %add.ptr.i477 = getelementptr i8, ptr %230, i32 %conv.i476
  %233 = ptrtoint ptr %add.ptr.i477 to i32
  call void @__asan_load1_noabort(i32 %233)
  %bf.load210 = load i8, ptr %add.ptr.i477, align 4
  %bf.lshr211.mask = and i8 %bf.load210, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr211.mask)
  %cmp213 = icmp eq i8 %bf.lshr211.mask, 64
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i477, i32 0, i32 6
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i477, i32 0, i32 3
  %cond220.in.in = select i1 %cmp213, ptr %protocol, ptr %nexthdr
  %234 = ptrtoint ptr %cond220.in.in to i32
  call void @__asan_load1_noabort(i32 %234)
  %cond220.in456 = load i8, ptr %cond220.in.in, align 1
  %235 = zext i8 %cond220.in456 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %cond220.in456, label %if.else230 [
    i8 6, label %if.then208.if.then228_crit_edge
    i8 17, label %if.then208.if.then228_crit_edge566
  ]

if.then208.if.then228_crit_edge566:               ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then228

if.then208.if.then228_crit_edge:                  ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then228

if.then228:                                       ; preds = %if.then208.if.then228_crit_edge, %if.then208.if.then228_crit_edge566
  %or229 = or i32 %op_own.0, 402653184
  br label %if.end233

if.else230:                                       ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #12
  %or231 = or i32 %op_own.0, 268435456
  br label %if.end233

if.end233:                                        ; preds = %if.else230, %if.then228, %if.end201.if.end233_crit_edge
  %op_own.2 = phi i32 [ %op_own.0, %if.end201.if.end233_crit_edge ], [ %or229, %if.then228 ], [ %or231, %if.else230 ]
  %236 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %prod, align 128
  %add235 = add i32 %237, %shr
  store i32 %add235, ptr %prod, align 128
  br i1 %cmp53.not, label %if.then243, label %if.end233.if.end245_crit_edge, !prof !63

if.end233.if.end245_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end245

if.then243:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  %call244 = tail call fastcc ptr @mlx4_en_bounce_to_desc(ptr noundef %7, i32 noundef %and50, i32 noundef %and)
  br label %if.end245

if.end245:                                        ; preds = %if.then243, %if.end233.if.end245_crit_edge
  %tx_desc.1 = phi ptr [ %call244, %if.then243 ], [ %tx_desc.0, %if.end233.if.end245_crit_edge ]
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #10
  %238 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %end.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %239, i32 0, i32 3
  %240 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %tx_flags.i, align 1
  %242 = and i8 %241, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool.not.i478 = icmp eq i8 %242, 0
  br i1 %tobool.not.i478, label %if.end245.skb_tx_timestamp.exit_crit_edge, label %if.then.i479

if.end245.skb_tx_timestamp.exit_crit_edge:        ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tx_timestamp.exit

if.then.i479:                                     ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #10
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i479, %if.end245.skb_tx_timestamp.exit_crit_edge
  %243 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %prod, align 128
  %cons.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 1
  %245 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %cons.i, align 4
  %sub.i481 = sub i32 %244, %246
  %full_size.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 20
  %247 = ptrtoint ptr %full_size.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %full_size.i, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i481, i32 %248)
  %cmp.i482 = icmp ugt i32 %sub.i481, %248
  br i1 %cmp.i482, label %if.then255, label %skb_tx_timestamp.exit.if.end258_crit_edge, !prof !63

skb_tx_timestamp.exit.if.end258_crit_edge:        ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end258

if.then255:                                       ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %249 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %tx_queue, align 4
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %250, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  %queue_stopped = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 30
  %251 = ptrtoint ptr %queue_stopped to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %queue_stopped, align 4
  %inc257 = add i32 %252, 1
  store i32 %inc257, ptr %queue_stopped, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.then255, %skb_tx_timestamp.exit.if.end258_crit_edge
  %253 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %tx_queue, align 4
  %255 = ptrtoint ptr %nr_bytes196 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %nr_bytes196, align 16
  %257 = tail call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i483 = and i32 %257, -16384
  %258 = inttoptr i32 %and.i.i483 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %258, i32 0, i32 3
  %259 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %cpu.i, align 4
  %arrayidx.i484 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %260
  %261 = ptrtoint ptr %arrayidx.i484 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx.i484, align 4
  %add.i = add i32 %262, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %263 = inttoptr i32 %add.i to ptr
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %263, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool.i.not = icmp eq i8 %265, 0
  br i1 %tobool.i.not, label %if.end.i488, label %if.then.i486

if.then.i486:                                     ; preds = %if.end258
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %256)
  %cmp.i.i485 = icmp ugt i32 %256, 268435455
  br i1 %cmp.i.i485, label %do.body2.i.i, label %dql_queued.exit.i, !prof !63

do.body2.i.i:                                     ; preds = %if.then.i486
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !78
  unreachable

dql_queued.exit.i:                                ; preds = %if.then.i486
  call void @__sanitizer_cov_trace_pc() #12
  %dql.i487 = getelementptr inbounds %struct.netdev_queue, ptr %254, i32 0, i32 15
  %last_obj_cnt.i.i = getelementptr inbounds %struct.netdev_queue, ptr %254, i32 0, i32 15, i32 2
  %266 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %256, ptr %last_obj_cnt.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %267 = ptrtoint ptr %dql.i487 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %dql.i487, align 128
  %add.i.i = add i32 %268, %256
  store i32 %add.i.i, ptr %dql.i487, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %254, i32 0, i32 13
  %269 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %270, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i = icmp ne i32 %and1.i.i.i, 0
  br label %__netdev_tx_sent_queue.exit

if.end.i488:                                      ; preds = %if.end258
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %254, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %256)
  %cmp.i.i.i = icmp ugt i32 %256, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !63

do.body2.i.i.i:                                   ; preds = %if.end.i488
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !78
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.end.i488
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %254, i32 0, i32 15, i32 2
  %271 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %256, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %272 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %273, %256
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %254, i32 0, i32 15, i32 1
  %274 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %276 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %275, %276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i4.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i4.i, label %dql_queued.exit.i.i.__netdev_tx_sent_queue.exit_crit_edge, label %if.end.i.i489, !prof !60

dql_queued.exit.i.i.__netdev_tx_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__netdev_tx_sent_queue.exit

if.end.i.i489:                                    ; preds = %dql_queued.exit.i.i
  %state.i5.i = getelementptr inbounds %struct.netdev_queue, ptr %254, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i5.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  %277 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %279 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %278, %280
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i489.__netdev_tx_sent_queue.exit_crit_edge, !prof !63

if.end.i.i489.__netdev_tx_sent_queue.exit_crit_edge: ; preds = %if.end.i.i489
  call void @__sanitizer_cov_trace_pc() #12
  br label %__netdev_tx_sent_queue.exit

if.then14.i.i:                                    ; preds = %if.end.i.i489
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i5.i) #10
  br label %__netdev_tx_sent_queue.exit

__netdev_tx_sent_queue.exit:                      ; preds = %if.then14.i.i, %if.end.i.i489.__netdev_tx_sent_queue.exit_crit_edge, %dql_queued.exit.i.i.__netdev_tx_sent_queue.exit_crit_edge, %dql_queued.exit.i
  %retval.0.i490 = phi i1 [ %tobool.i.i, %dql_queued.exit.i ], [ true, %dql_queued.exit.i.i.__netdev_tx_sent_queue.exit_crit_edge ], [ true, %if.end.i.i489.__netdev_tx_sent_queue.exit_crit_edge ], [ true, %if.then14.i.i ]
  %div = sdiv i32 %retval.0.i528, 16
  %and264 = and i32 %div, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %and)
  %cmp265 = icmp slt i32 %and, 257
  %narrow = select i1 %cmp265, i1 %retval.0.i490, i1 false
  %and274538 = and i1 %bf_ok.1.off0, %narrow
  br i1 %and274538, label %if.then278, label %if.else.i494.critedge

if.then278:                                       ; preds = %__netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %doorbell_qpn = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 16
  %281 = ptrtoint ptr %doorbell_qpn to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %doorbell_qpn, align 16
  %qpn_vlan.sroa.0.0.extract.shift = and i32 %282, -65536
  %.masked = and i32 %282, 255
  %qpn_vlan.sroa.9.0.insert.ext.c = or i32 %.masked, %and264
  %qpn_vlan.sroa.6.0.insert.ext.c532 = and i32 %282, 65280
  %qpn_vlan.sroa.6.0.insert.insert.c533 = or i32 %qpn_vlan.sroa.9.0.insert.ext.c, %qpn_vlan.sroa.6.0.insert.ext.c532
  %qpn_vlan.sroa.0.0.insert.insert.c536 = or i32 %qpn_vlan.sroa.6.0.insert.insert.c533, %qpn_vlan.sroa.0.0.extract.shift
  %qpn_vlan2.i.c537 = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, ptr %tx_desc.1, i32 0, i32 1
  %283 = ptrtoint ptr %qpn_vlan2.i.c537 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %qpn_vlan.sroa.0.0.insert.insert.c536, ptr %qpn_vlan2.i.c537, align 4
  %and.i = shl i32 %62, 8
  %shl.i = and i32 %and.i, 16776960
  %or.i491 = or i32 %op_own.2, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  %284 = ptrtoint ptr %tx_desc.1 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %or.i491, ptr %tx_desc.1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @arm_heavy_mb() #10
  %bf.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 14
  %reg.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 14, i32 3
  %285 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %reg.i, align 4
  %287 = ptrtoint ptr %bf.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %bf.i, align 4
  %add.ptr.i492 = getelementptr i8, ptr %286, i32 %288
  %div1.i.i = lshr exact i32 %and, 3
  tail call void @__iowrite64_copy(ptr noundef %add.ptr.i492, ptr noundef %tx_desc.1, i32 noundef %div1.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %buf_size.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 14, i32 1
  %289 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %buf_size.i, align 4
  %291 = ptrtoint ptr %bf.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %bf.i, align 4
  %xor.i = xor i32 %292, %290
  store i32 %xor.i, ptr %bf.i, align 4
  br label %mlx4_en_tx_write_desc.exit

if.else.i494.critedge:                            ; preds = %__netdev_tx_sent_queue.exit
  %qpn_vlan.sroa.6.0.insert.insert.c = or i32 %and264, %qpn_vlan.sroa.6.1
  %qpn_vlan.sroa.0.0.insert.ext.c = zext i16 %qpn_vlan.sroa.0.0 to i32
  %qpn_vlan.sroa.0.0.insert.shift.c = shl nuw i32 %qpn_vlan.sroa.0.0.insert.ext.c, 16
  %qpn_vlan.sroa.0.0.insert.insert.c = or i32 %qpn_vlan.sroa.0.0.insert.shift.c, %qpn_vlan.sroa.6.0.insert.insert.c
  %qpn_vlan2.i.c = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, ptr %tx_desc.1, i32 0, i32 1
  %293 = ptrtoint ptr %qpn_vlan2.i.c to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %qpn_vlan.sroa.0.0.insert.insert.c, ptr %qpn_vlan2.i.c, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  %294 = ptrtoint ptr %tx_desc.1 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %op_own.2, ptr %tx_desc.1, align 8
  br i1 %retval.0.i490, label %if.then14.i, label %if.else15.i

if.then14.i:                                      ; preds = %if.else.i494.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !73
  tail call void @arm_heavy_mb() #10
  %doorbell_qpn.i.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 16
  %295 = ptrtoint ptr %doorbell_qpn.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %doorbell_qpn.i.i, align 16
  %doorbell_address.i.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 15
  %297 = ptrtoint ptr %doorbell_address.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %doorbell_address.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %296) #10, !srcloc !74
  br label %mlx4_en_tx_write_desc.exit

if.else15.i:                                      ; preds = %if.else.i494.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %xmit_more.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 13
  %299 = ptrtoint ptr %xmit_more.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %xmit_more.i, align 8
  %inc.i495 = add i32 %300, 1
  store i32 %inc.i495, ptr %xmit_more.i, align 8
  br label %mlx4_en_tx_write_desc.exit

mlx4_en_tx_write_desc.exit:                       ; preds = %if.else15.i, %if.then14.i, %if.then278
  br i1 %cmp.i482, label %do.end, label %mlx4_en_tx_write_desc.exit.cleanup_crit_edge, !prof !63

mlx4_en_tx_write_desc.exit.cleanup_crit_edge:     ; preds = %mlx4_en_tx_write_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %mlx4_en_tx_write_desc.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  %301 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %prod, align 128
  %303 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %cons.i, align 4
  %sub.i499 = sub i32 %302, %304
  %305 = ptrtoint ptr %full_size.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %full_size.i, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i499, i32 %306)
  %cmp.i501 = icmp ugt i32 %sub.i499, %306
  br i1 %cmp.i501, label %do.end.cleanup_crit_edge, label %if.then305, !prof !60

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then305:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %307 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %tx_queue, align 4
  tail call void @netif_tx_wake_queue(ptr noundef %308) #10
  %wake_queue = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 2
  %309 = ptrtoint ptr %wake_queue to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %wake_queue, align 8
  %inc307 = add i32 %310, 1
  store i32 %inc307, ptr %wake_queue, align 8
  br label %cleanup

tx_drop_count.sink.split:                         ; preds = %if.then26.tx_drop_count.sink.split_crit_edge, %if.else22.i.tx_drop_count.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.21, %if.else22.i.tx_drop_count.sink.split_crit_edge ], [ @.str.14, %if.then26.tx_drop_count.sink.split_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.11, ptr noundef %add.ptr.i, ptr noundef nonnull %.str.21.sink) #10
  br label %tx_drop_count

tx_drop_count:                                    ; preds = %tx_drop_count.sink.split, %while.body.i.tx_drop_count_crit_edge, %tx_drop_unmap.i.tx_drop_count_crit_edge, %if.then26.tx_drop_count_crit_edge, %get_real_size.exit.tx_drop_count_crit_edge, %if.else22.i.tx_drop_count_crit_edge
  %tx_dropped = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %7, i32 0, i32 8
  %311 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %tx_dropped, align 4
  %inc310 = add i32 %312, 1
  store i32 %inc310, ptr %tx_dropped, align 4
  br label %tx_drop

tx_drop:                                          ; preds = %tx_drop_count, %entry.tx_drop_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %tx_drop, %if.then305, %do.end.cleanup_crit_edge, %mlx4_en_tx_write_desc.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx4_en_bounce_to_desc(ptr nocapture noundef readonly %ring, i32 noundef %index, i32 noundef %desc_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 18
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %sub = sub i32 %1, %index
  %shl = shl i32 %sub, 6
  %sub1 = sub i32 %desc_size, %shl
  %i.01 = add i32 %sub1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.01)
  %cmp2 = icmp sgt i32 %i.01, -1
  br i1 %cmp2, label %for.body.lr.ph, label %entry.for.cond8.preheader_crit_edge

entry.for.cond8.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond8.preheader

for.body.lr.ph:                                   ; preds = %entry
  %bounce_buf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 29
  %buf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 22
  br label %for.body

for.cond8.preheader:                              ; preds = %if.end.for.cond8.preheader_crit_edge, %entry.for.cond8.preheader_crit_edge
  %i.14 = add i32 %shl, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.14)
  %cmp95 = icmp sgt i32 %i.14, 3
  br i1 %cmp95, label %for.body10.lr.ph, label %for.cond8.preheader.for.end26_crit_edge

for.cond8.preheader.for.end26_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = shl i32 %index, 6
  br label %for.end26

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %bounce_buf18 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 29
  %buf20 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 22
  %shl21 = shl i32 %index, 6
  br label %for.body10

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.03 = phi i32 [ %i.01, %for.body.lr.ph ], [ %i.0, %if.end.for.body_crit_edge ]
  %and = and i32 %i.03, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %do.body, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  br label %if.end

if.end:                                           ; preds = %do.body, %for.body.if.end_crit_edge
  %2 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bounce_buf, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %i.03
  %4 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr4, align 4
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 %i.03
  %8 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %add.ptr5, align 4
  %i.0 = add i32 %i.03, -4
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.cond8.preheader_crit_edge

if.end.for.cond8.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond8.preheader

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body10:                                       ; preds = %if.end17.for.body10_crit_edge, %for.body10.lr.ph
  %i.16 = phi i32 [ %i.14, %for.body10.lr.ph ], [ %i.1, %if.end17.for.body10_crit_edge ]
  %and11 = and i32 %i.16, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %do.body14, label %for.body10.if.end17_crit_edge

for.body10.if.end17_crit_edge:                    ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.body14:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @arm_heavy_mb() #10
  br label %if.end17

if.end17:                                         ; preds = %do.body14, %for.body10.if.end17_crit_edge
  %9 = ptrtoint ptr %bounce_buf18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bounce_buf18, align 8
  %add.ptr19 = getelementptr i8, ptr %10, i32 %i.16
  %11 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr19, align 4
  %13 = ptrtoint ptr %buf20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf20, align 8
  %add.ptr22 = getelementptr i8, ptr %14, i32 %shl21
  %add.ptr23 = getelementptr i8, ptr %add.ptr22, i32 %i.16
  %15 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %add.ptr23, align 4
  %i.1 = add nsw i32 %i.16, -4
  %cmp9 = icmp sgt i32 %i.16, 7
  br i1 %cmp9, label %if.end17.for.body10_crit_edge, label %if.end17.for.end26_crit_edge

if.end17.for.end26_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end26

if.end17.for.body10_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

for.end26:                                        ; preds = %if.end17.for.end26_crit_edge, %for.cond8.preheader.for.end26_crit_edge
  %shl28.pre-phi = phi i32 [ %.pre, %for.cond8.preheader.for.end26_crit_edge ], [ %shl21, %if.end17.for.end26_crit_edge ]
  %buf27 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 22
  %16 = ptrtoint ptr %buf27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf27, align 8
  %add.ptr29 = getelementptr i8, ptr %17, i32 %shl28.pre-phi
  ret ptr %add.ptr29
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_init_tx_xdp_ring_descs(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %ring) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 18
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not = icmp eq i32 %1, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tx_info1 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 23
  %buf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 22
  %mr_key = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %ring, i32 0, i32 17
  %ctrl_flags = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %tx_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_info1, align 4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 8
  %shl = shl i32 %i.018, 6
  %add.ptr = getelementptr i8, ptr %5, i32 %shl
  %map0_byte_count = getelementptr %struct.mlx4_en_tx_info, ptr %3, i32 %i.018, i32 2
  %6 = ptrtoint ptr %map0_byte_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %map0_byte_count, align 8
  %nr_txbb = getelementptr %struct.mlx4_en_tx_info, ptr %3, i32 %i.018, i32 3
  %7 = ptrtoint ptr %nr_txbb to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %nr_txbb, align 4
  %data_offset = getelementptr %struct.mlx4_en_tx_info, ptr %3, i32 %i.018, i32 6
  %8 = ptrtoint ptr %data_offset to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %data_offset, align 1
  %ts_requested = getelementptr %struct.mlx4_en_tx_info, ptr %3, i32 %i.018, i32 8
  %9 = ptrtoint ptr %ts_requested to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ts_requested, align 1
  %nr_maps = getelementptr %struct.mlx4_en_tx_info, ptr %3, i32 %i.018, i32 9
  %10 = ptrtoint ptr %nr_maps to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %nr_maps, align 8
  %linear = getelementptr %struct.mlx4_en_tx_info, ptr %3, i32 %i.018, i32 5
  %11 = ptrtoint ptr %linear to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %linear, align 4
  %inl = getelementptr %struct.mlx4_en_tx_info, ptr %3, i32 %i.018, i32 7
  %12 = ptrtoint ptr %inl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %inl, align 2
  %13 = ptrtoint ptr %mr_key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mr_key, align 4
  %15 = getelementptr inbounds %struct.mlx4_en_tx_desc, ptr %add.ptr, i32 0, i32 1
  %lkey = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %lkey, align 4
  %qpn_vlan = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, ptr %add.ptr, i32 0, i32 1
  %fence_size = getelementptr inbounds %struct.anon.161, ptr %qpn_vlan, i32 0, i32 2
  %17 = ptrtoint ptr %fence_size to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %fence_size, align 1
  %18 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrl_flags, align 4
  %20 = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, ptr %add.ptr, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %20, align 8
  %inc = add nuw i32 %i.018, 1
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 8
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_xmit_frame(ptr nocapture noundef %rx_ring, ptr nocapture noundef %frame, ptr nocapture noundef readonly %priv, i32 noundef %length, i32 noundef %tx_ind, ptr nocapture noundef writeonly %doorbell_pending) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_up = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 28
  %0 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_up, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !63

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 52, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr ptr, ptr %3, i32 %tx_ind
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %prod.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prod.i, align 128
  %cons.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cons.i, align 4
  %sub.i = sub i32 %7, %9
  %full_size.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %5, i32 0, i32 20
  %10 = ptrtoint ptr %full_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %full_size.i, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp.i = icmp ugt i32 %sub.i, %11
  br i1 %cmp.i, label %tx_drop_count, label %if.end12, !prof !63

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %size_mask = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %5, i32 0, i32 19
  %12 = ptrtoint ptr %size_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size_mask, align 4
  %and = and i32 %13, %7
  %tx_info13 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %5, i32 0, i32 23
  %14 = ptrtoint ptr %tx_info13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_info13, align 4
  %arrayidx14 = getelementptr %struct.mlx4_en_tx_info, ptr %15, i32 %and
  %buf = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %5, i32 0, i32 22
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 8
  %shl = shl i32 %and, 6
  %add.ptr = getelementptr i8, ptr %17, i32 %shl
  %18 = getelementptr inbounds %struct.mlx4_en_tx_desc, ptr %add.ptr, i32 0, i32 1
  %dma15 = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %frame, i32 0, i32 1
  %19 = ptrtoint ptr %dma15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma15, align 4
  %21 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %frame, align 4
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx14, align 128
  store ptr null, ptr %frame, align 4
  %map0_dma = getelementptr %struct.mlx4_en_tx_info, ptr %15, i32 %and, i32 1
  %24 = ptrtoint ptr %map0_dma to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %20, ptr %map0_dma, align 4
  %25 = tail call i32 @llvm.umax.i32(i32 %length, i32 60)
  %nr_bytes = getelementptr %struct.mlx4_en_tx_info, ptr %15, i32 %and, i32 4
  %26 = ptrtoint ptr %nr_bytes to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %nr_bytes, align 16
  %ddev = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 78
  %27 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ddev, align 4
  %page_offset = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %frame, i32 0, i32 2
  %29 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %page_offset, align 4
  %add.i = add i32 %30, %20
  tail call void @dma_sync_single_for_device(ptr noundef %28, i32 noundef %add.i, i32 noundef %length, i32 noundef 1) #10
  %31 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_offset, align 4
  %add = add i32 %32, %20
  %conv = zext i32 %add to i64
  %addr = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %18, i32 0, i32 2
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv, ptr %addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %length, ptr %18, align 8
  %35 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %prod.i, align 128
  %size = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %5, i32 0, i32 18
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 8
  %and19 = and i32 %38, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or = select i1 %tobool20.not, i32 10, i32 -2147483638
  %xdp_tx = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %rx_ring, i32 0, i32 24
  %39 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %xdp_tx, align 16
  %inc = add i32 %40, 1
  store i32 %inc, ptr %xdp_tx, align 16
  %41 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %prod.i, align 128
  %add23 = add i32 %42, 1
  store i32 %add23, ptr %prod.i, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %add.ptr, align 8
  %xmit_more = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %5, i32 0, i32 13
  %44 = ptrtoint ptr %xmit_more to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xmit_more, align 8
  %inc24 = add i32 %45, 1
  store i32 %inc24, ptr %xmit_more, align 8
  br label %cleanup.sink.split

tx_drop_count:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %xdp_tx_full = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %rx_ring, i32 0, i32 25
  %46 = ptrtoint ptr %xdp_tx_full to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xdp_tx_full, align 4
  %inc25 = add i32 %47, 1
  store i32 %inc25, ptr %xdp_tx_full, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %tx_drop_count, %if.end12
  %retval.0.ph = phi i32 [ 16, %tx_drop_count ], [ 0, %if.end12 ]
  %48 = ptrtoint ptr %doorbell_pending to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %doorbell_pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite64_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 61, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 77, i32 2}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 95, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 101, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 109, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 115, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 122, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 167, i32 2}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 370, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 375, i32 4}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 391, i32 3}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 903, i32 4}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/mm.h", i32 717, i32 2}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 405, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 407, i32 31}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 413, i32 2}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 421, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 658, i32 6}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_tx.c", i32 850, i32 2}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i8 0, i8 2}
!62 = !{!"auto-init"}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 2153373542, i64 2153374025, i64 2153373579, i64 2153373635, i64 2153373669, i64 2153373693, i64 2153373734, i64 2153373755, i64 2153373783, i64 2153373817}
!65 = !{i64 2148316998}
!66 = !{i64 2148231731, i64 2148231763, i64 2148231792, i64 2148231826, i64 2148231857, i64 2148231880}
!67 = !{i64 2148317227}
!68 = !{i64 2148948227, i64 2148948232, i64 2148948245, i64 2148948289, i64 2148948323, i64 2148948344}
!69 = !{i64 2157877164}
!70 = !{i64 2157877805}
!71 = !{i64 2156359653}
!72 = !{i64 2157888122}
!73 = !{i64 2157888396}
!74 = !{i64 6112940}
!75 = !{i64 2157889248}
!76 = !{i64 2157889548}
!77 = !{i64 2157887880}
!78 = !{i64 2155541517, i64 2155542017, i64 2155541554, i64 2155541610, i64 2155541644, i64 2155541668, i64 2155541709, i64 2155541730, i64 2155541758, i64 2155541792}
!79 = !{i64 2155542861}
!80 = !{i64 2156358582}
!81 = !{i64 2157888713}
!82 = !{i64 2157888861}
!83 = !{i64 2157889009}
!84 = !{i64 2157889105}
!85 = !{i64 2157895572}
!86 = !{i64 2157884733}
!87 = !{i64 2157884977}
!88 = !{i64 2157898028}
!89 = !{i64 2157898301}
