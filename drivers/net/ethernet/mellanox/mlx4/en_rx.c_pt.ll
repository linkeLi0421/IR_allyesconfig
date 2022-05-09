; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/en_rx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/en_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.163 }
%union.anon.163 = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.cpumask = type { [1 x i32] }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx4_en_dev = type { ptr, ptr, %struct.mutex, [3 x ptr], [3 x ptr], i32, i8, %struct.mlx4_en_profile, i32, ptr, ptr, ptr, %struct.mlx4_uar, %struct.mlx4_mr, i32, %struct.spinlock, [3 x i8], i32, %struct.cyclecounter, %struct.seqlock_t, %struct.timecounter, i32, ptr, %struct.ptp_clock_info, %struct.notifier_block }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mlx4_en_profile = type { i32, i8, i32, i32, i8, i8, [3 x %struct.mlx4_en_port_profile] }
%struct.mlx4_en_port_profile = type { i32, [2 x i32], i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hwtstamp_config }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.mlx4_mr = type { %struct.mlx4_mtt, i64, i64, i32, i32, i32, i32 }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx4_en_rx_ring = type { %struct.mlx4_hwq_resources, i32, i32, i32, i16, i16, i16, i32, i32, i32, i8, ptr, ptr, ptr, %struct.mlx4_en_page_cache, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [92 x i8], %struct.xdp_rxq_info }
%struct.mlx4_hwq_resources = type { %struct.mlx4_db, %struct.mlx4_mtt, %struct.mlx4_buf }
%struct.mlx4_db = type { ptr, %union.anon.195, i32, i32, i32 }
%union.anon.195 = type { ptr }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%struct.mlx4_en_page_cache = type { i32, [128 x %struct.anon.196] }
%struct.anon.196 = type { ptr, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx4_en_priv = type { ptr, ptr, ptr, [128 x i32], %struct.mlx4_en_port_state, %struct.spinlock, [256 x %struct.ethtool_flow_id], %struct.list_head, [128 x i32], i32, [128 x i32], i32, [128 x i32], i16, i16, i16, i16, i32, i16, i32, i16, i32, i32, i32, i32, i32, %struct.mlx4_hwq_resources, i32, i8, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, %struct.mlx4_en_rss_map, i32, i32, i8, i32, [2 x i32], i32, i32, [4 x %struct.mlx4_en_frag_info], i8, i8, i8, i16, [2 x ptr], [128 x ptr], [2 x ptr], [128 x ptr], %struct.mlx4_qp, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.mlx4_en_pkt_stats, %struct.mlx4_en_counter_stats, [8 x %struct.mlx4_en_flow_stats_rx], [8 x %struct.mlx4_en_flow_stats_tx], %struct.mlx4_en_flow_stats_rx, %struct.mlx4_en_flow_stats_tx, %struct.mlx4_en_port_stats, %struct.mlx4_en_xdp_stats, %struct.mlx4_en_phy_stats, %struct.mlx4_en_stats_bitmap, %struct.list_head, %struct.list_head, i64, %struct.mlx4_en_stat_out_mbox, [128 x i32], i8, ptr, [256 x %struct.hlist_head], %struct.hwtstamp_config, i32, %struct.ieee_ets, [8 x i16], [8 x i32], %struct.mlx4_en_cee_config, i8, %struct.spinlock, i32, %struct.list_head, [16 x %struct.hlist_head], i64, i16, i32, [40 x i8], i8, i32 }
%struct.mlx4_en_port_state = type { i32, i32, i32, i32 }
%struct.ethtool_flow_id = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i64 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.mlx4_en_rss_map = type { i32, [128 x %struct.mlx4_qp], [128 x i32], ptr, i32 }
%struct.mlx4_en_frag_info = type { i16, i32 }
%struct.mlx4_qp = type { ptr, i32, %struct.refcount_struct, %struct.completion, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx4_en_pkt_stats = type { i32, i32, i32, i32, i32, i32, i32, [9 x [2 x i32]], [9 x [2 x i32]] }
%struct.mlx4_en_counter_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_flow_stats_rx = type { i64, i64, i64 }
%struct.mlx4_en_flow_stats_tx = type { i64, i64, i64 }
%struct.mlx4_en_port_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_xdp_stats = type { i32, i32, i32, i32, i32 }
%struct.mlx4_en_phy_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_stats_bitmap = type { [5 x i32], %struct.mutex }
%struct.mlx4_en_stat_out_mbox = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.mlx4_en_cee_config = type { i8, [8 x i32] }
%struct.mlx4_cq = type { ptr, ptr, ptr, i32, i16, ptr, ptr, i32, i32, i32, %struct.refcount_struct, %struct.completion, %struct.anon.199, i32, %struct.list_head, i8 }
%struct.anon.199 = type { %struct.list_head, ptr, ptr }
%struct.mlx4_wqe_data_seg = type { i32, i32, i64 }
%struct.mlx4_en_rx_alloc = type { ptr, i32, i32 }
%struct.mlx4_en_cq = type { %struct.mlx4_cq, %struct.mlx4_hwq_resources, i32, ptr, %union.anon.200, i32, i32, i32, i32, i16, i16, ptr, ptr }
%union.anon.200 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.161, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.161 = type { %struct.atomic_t }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.112 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { %struct.anon.114, [0 x %struct.sock_filter] }
%struct.anon.114 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.165, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.187, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.165 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.187 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlx4_cqe = type { i32, i32, i32, i16, %union.anon.201, i32, i16, i16, [3 x i8], i8 }
%union.anon.201 = type { %struct.anon.202 }
%struct.anon.202 = type { i16, i16, i8, i8 }
%struct.mlx4_err_cqe = type { i32, [5 x i32], i16, i8, i8, [3 x i8], i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mlx4_mac_entry = type { %struct.hlist_node, [8 x i8], i64, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.mlx4_qp_context = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.mlx4_qp_path, %struct.mlx4_qp_path, i32, i32, i32, i32, i16, [3 x i16], i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i16, i16, i32, i16, i8, i8, i32, i32, i8, [2 x i8], i8, i32, [10 x i32] }
%struct.mlx4_qp_path = type { i8, %union.anon.198, i8, i8, i8, i8, i16, i8, i8, i8, i8, i32, [16 x i8], i8, i8, i8, i8, [2 x i8], [6 x i8] }
%union.anon.198 = type { i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate RX ring structure\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Allocated rx_info ring at addr:%p size:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx4_en_destroy_rx_ring.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlx4/en_rx.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@mlx4_en_process_rx_cq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"CQE completed in error - vendor syndrom:%d syndrom:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Accepted frame with bad FCS\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx4_en_process_rx_cq.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx4_en_process_rx_cq.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Rx buffer scatter-list (effective-mtu:%d num_frags:%d):\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  frag:%d - size:%d stride:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed reserving drop qpn\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed allocating drop qp\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Configuring rss steering\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed reserving %d qps\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Optimized Non-RSS steering\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate RSS indirection QP\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Setting RSS context tunnel type to RSS on inner headers\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unknown RSS hash function requested\0A\00", [59 x i8] zeroinitializer }, align 32
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate enough rx buffers\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Only %d buffers allocated reducing ring size to %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Freeing fragment:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Freeing Rx buf - cons:%d prod:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Processing descriptor:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to allocate qp #%x\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 44, i64 132]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 274, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 297, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 437, i32 13 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 683, i32 13 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 716, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 722, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1047, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1050, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1116, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1121, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1155, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1163, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1181, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1194, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1219, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1232, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 198, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 202, i32 6 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 177, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 231, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 236, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 717, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 613, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 271, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 28, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1368, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 108, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlx4/en_rx.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1076, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_set_num_rx_rings(ptr nocapture noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not65 = icmp slt i32 %3, 1
  br i1 %cmp.not65, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 77, i32 %i.066
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 8
  %conv = trunc i32 %i.066 to i8
  %call = tail call i32 @mlx4_get_eqs_per_port(ptr noundef %7, i8 noundef zeroext %conv) #11
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %8 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %8)
  %cmp.i.i.not = icmp eq i64 %8, -1
  br i1 %cmp.i.i.not, label %cond.false17, label %if.then.cond.end43_crit_edge

if.then.cond.end43_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end43

cond.false17:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.smin.i32(i32 %call, i32 16)
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %11 = load volatile i32, ptr @__num_online_cpus, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %10, i32 %11)
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false17, %if.then.cond.end43_crit_edge
  %cond27 = phi i32 [ %12, %cond.false17 ], [ 1, %if.then.cond.end43_crit_edge ]
  %13 = tail call i32 @llvm.ctlz.i32(i32 %cond27, i1 true) #11, !range !82
  %sub.i.i.op.i = xor i32 %13, 31
  %cond44 = shl nuw i32 1, %sub.i.i.op.i
  %rx_ring_num = getelementptr %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 7, i32 6, i32 %i.066, i32 2
  %14 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond44, ptr %rx_ring_num, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end43, %for.body.for.inc_crit_edge
  %inc = add i32 %i.066, 1
  %15 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ports, align 4
  %cmp.not = icmp sgt i32 %inc, %16
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_eqs_per_port(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_create_rx_ring(ptr noundef %priv, ptr nocapture noundef writeonly %pring, i32 noundef %size, i16 noundef zeroext %stride, i32 noundef %node, i32 noundef %queue_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1408) #14
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %prod = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %call.i.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %prod to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %prod, align 4
  %cons = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %call.i.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cons, align 16
  %size2 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %call.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size, ptr %size2, align 8
  %sub = add i32 %size, -1
  %size_mask = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %call.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %size_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %size_mask, align 64
  %stride3 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %call.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %stride3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %stride, ptr %stride3, align 4
  %8 = tail call i16 @llvm.cttz.i16(i16 %stride, i1 true), !range !83
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %stride)
  %iszero = icmp eq i16 %stride, 0
  %conv6 = select i1 %iszero, i16 -1, i16 %8
  %log_stride = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %call.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %log_stride to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv6, ptr %log_stride, align 2
  %conv9 = zext i16 %stride to i32
  %mul = mul i32 %conv9, %size
  %add = add i32 %mul, 64
  %buf_size = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %call.i.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %buf_size, align 4
  %xdp_rxq = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %call.i.i.i, i32 0, i32 30
  %dev = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %call10 = tail call i32 @xdp_rxq_info_reg(ptr noundef %xdp_rxq, ptr noundef %12, i32 noundef %queue_index, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end.err_ring_crit_edge, label %if.end13

if.end.err_ring_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_ring

if.end13:                                         ; preds = %if.end
  %mul14 = shl i32 %size, 6
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul14, i32 noundef 3520, i32 noundef %node) #15
  %rx_info = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %call.i.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %rx_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %rx_info, align 32
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %if.end13.err_xdp_info_crit_edge, label %do.body

if.end13.err_xdp_info_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_xdp_info

do.body:                                          ; preds = %if.end13
  %msg_enable = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 23
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 8
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.body.do.end_crit_edge, label %if.then21

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %priv, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i, i32 noundef %mul14) #11
  br label %do.end

do.end:                                           ; preds = %if.then21, %do.body.do.end_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_size, align 4
  %call28 = tail call i32 @mlx4_alloc_hwq_res(ptr noundef %17, ptr noundef nonnull %call.i.i.i, i32 noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool34.not = icmp eq i32 %call28, 0
  br i1 %tobool34.not, label %if.end36, label %err_info

if.end36:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %buf = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %call.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 32
  %buf39 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %call.i.i.i, i32 0, i32 11
  %22 = ptrtoint ptr %buf39 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %buf39, align 4
  %rx_filter = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 80, i32 2
  %23 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_filter, align 8
  %hwtstamp_rx_filter = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %call.i.i.i, i32 0, i32 27
  %25 = ptrtoint ptr %hwtstamp_rx_filter to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %hwtstamp_rx_filter, align 4
  %26 = ptrtoint ptr %pring to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i.i, ptr %pring, align 4
  br label %cleanup

err_info:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_info, align 32
  tail call void @kvfree(ptr noundef %28) #11
  %29 = ptrtoint ptr %rx_info to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rx_info, align 32
  br label %err_xdp_info

err_xdp_info:                                     ; preds = %err_info, %if.end13.err_xdp_info_crit_edge
  %err.0 = phi i32 [ %call28, %err_info ], [ -12, %if.end13.err_xdp_info_crit_edge ]
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq) #11
  br label %err_ring

err_ring:                                         ; preds = %err_xdp_info, %if.end.err_ring_crit_edge
  %err.1 = phi i32 [ -12, %if.end.err_ring_crit_edge ], [ %err.0, %err_xdp_info ]
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #11
  %30 = ptrtoint ptr %pring to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pring, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_ring, %if.end36, %if.then
  %retval.0 = phi i32 [ %err.1, %err_ring ], [ 0, %if.end36 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @en_print(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_alloc_hwq_res(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_activate_rx_rings(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_frags = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 48
  %rx_ring_num = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 45
  %0 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp47188.not = icmp eq i32 %1, 0
  br i1 %cmp47188.not, label %entry.for.end75_crit_edge, label %for.body.lr.ph

entry.for.end75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end75

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %num_frags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_frags, align 4
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %sub = add nsw i32 %mul, -1
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #11, !range !82
  %sub.i.i.i.pn = sub nuw nsw i32 32, %4
  %cond46 = shl nuw i32 1, %sub.i.i.i.pn
  %conv52 = trunc i32 %cond46 to i16
  %conv55 = and i32 %cond46, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %conv55)
  %cmp56 = icmp ult i32 %conv55, 65
  br label %for.body

for.body:                                         ; preds = %for.inc73.for.body_crit_edge, %for.body.lr.ph
  %ring_ind.0189 = phi i32 [ 0, %for.body.lr.ph ], [ %inc74, %for.inc73.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %ring_ind.0189
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %prod = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %prod to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %prod, align 4
  %cons = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %6, i32 0, i32 8
  %8 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cons, align 16
  %actual_size = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %actual_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %actual_size, align 4
  %arrayidx49 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 55, i32 %ring_ind.0189
  %10 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx49, align 4
  %cqn = getelementptr inbounds %struct.mlx4_cq, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cqn, align 8
  %conv50 = trunc i32 %13 to i16
  %cqn51 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %6, i32 0, i32 6
  %14 = ptrtoint ptr %cqn51 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv50, ptr %cqn51, align 8
  %stride53 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %6, i32 0, i32 4
  %15 = ptrtoint ptr %stride53 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv52, ptr %stride53, align 4
  br i1 %cmp56, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %buf = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %6, i32 0, i32 11
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -2147483648, ptr %17, align 4
  %19 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 64
  store ptr %add.ptr, ptr %buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %20 = ptrtoint ptr %stride53 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %stride53, align 4
  %22 = tail call i16 @llvm.cttz.i16(i16 %21, i1 true), !range !83
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %iszero = icmp eq i16 %21, 0
  %conv62 = select i1 %iszero, i16 -1, i16 %22
  %log_stride = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %6, i32 0, i32 5
  %23 = ptrtoint ptr %log_stride to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv62, ptr %log_stride, align 2
  %size = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %6, i32 0, i32 1
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 8
  %conv64 = zext i16 %21 to i32
  %mul65 = mul i32 %25, %conv64
  %buf_size = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %6, i32 0, i32 9
  %26 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul65, ptr %buf_size, align 4
  %buf66 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %6, i32 0, i32 11
  %27 = ptrtoint ptr %buf66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf66, align 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 %mul65)
  %30 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %prod, align 4
  %and.i = and i32 %31, 65535
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %6, align 128
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i, ptr %33, align 4
  %35 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp70186.not = icmp eq i32 %35, 0
  br i1 %cmp70186.not, label %if.end.for.inc73_crit_edge, label %if.end.for.body72_crit_edge

if.end.for.body72_crit_edge:                      ; preds = %if.end
  br label %for.body72

if.end.for.inc73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc73

for.body72:                                       ; preds = %mlx4_en_init_rx_desc.exit.for.body72_crit_edge, %if.end.for.body72_crit_edge
  %i.0187 = phi i32 [ %inc, %mlx4_en_init_rx_desc.exit.for.body72_crit_edge ], [ 0, %if.end.for.body72_crit_edge ]
  %36 = ptrtoint ptr %buf66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf66, align 4
  %38 = ptrtoint ptr %stride53 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %stride53, align 4
  %conv.i = zext i16 %39 to i32
  %mul.i = mul i32 %i.0187, %conv.i
  %add.ptr.i = getelementptr i8, ptr %37, i32 %mul.i
  %40 = ptrtoint ptr %num_frags to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp45.not.i = icmp eq i8 %41, 0
  br i1 %cmp45.not.i, label %for.body72.for.end.i_crit_edge, label %for.body72.for.body.i_crit_edge

for.body72.for.body.i_crit_edge:                  ; preds = %for.body72
  br label %for.body.i

for.body72.for.end.i_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body72.for.body.i_crit_edge
  %i.046.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body72.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 47, i32 %i.046.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i, align 4
  %conv3.i = zext i16 %43 to i32
  %arrayidx4.i = getelementptr [0 x %struct.mlx4_wqe_data_seg], ptr %add.ptr.i, i32 0, i32 %i.046.i
  %44 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv3.i, ptr %arrayidx4.i, align 8
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  %key.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %46, i32 0, i32 13, i32 3
  %47 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %key.i, align 8
  %lkey.i = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %arrayidx4.i, i32 0, i32 1
  %49 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %lkey.i, align 4
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %50 = ptrtoint ptr %num_frags to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %num_frags, align 4
  %conv1.i = zext i8 %51 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv1.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i.loopexit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i.le = zext i8 %51 to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.body72.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.body72.for.end.i_crit_edge ], [ %conv1.i.le, %for.end.i.loopexit ]
  %52 = ptrtoint ptr %stride53 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %stride53, align 4
  %54 = lshr i16 %53, 4
  %div.i = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i, i32 %div.i)
  %cmp1247.i = icmp ult i32 %.lcssa.i, %div.i
  br i1 %cmp1247.i, label %for.end.i.for.body14.i_crit_edge, label %for.end.i.mlx4_en_init_rx_desc.exit_crit_edge

for.end.i.mlx4_en_init_rx_desc.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_en_init_rx_desc.exit

for.end.i.for.body14.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %for.end.i.for.body14.i_crit_edge
  %i.148.i = phi i32 [ %inc24.i, %for.body14.i.for.body14.i_crit_edge ], [ %.lcssa.i, %for.end.i.for.body14.i_crit_edge ]
  %arrayidx16.i = getelementptr [0 x %struct.mlx4_wqe_data_seg], ptr %add.ptr.i, i32 0, i32 %i.148.i
  %55 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx16.i, align 8
  %lkey20.i = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %arrayidx16.i, i32 0, i32 1
  %56 = ptrtoint ptr %lkey20.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 256, ptr %lkey20.i, align 4
  %addr.i = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %arrayidx16.i, i32 0, i32 2
  %57 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 0, ptr %addr.i, align 8
  %inc24.i = add nuw nsw i32 %i.148.i, 1
  %exitcond.not.i = icmp eq i32 %inc24.i, %div.i
  br i1 %exitcond.not.i, label %for.body14.i.mlx4_en_init_rx_desc.exit_crit_edge, label %for.body14.i.for.body14.i_crit_edge

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14.i

for.body14.i.mlx4_en_init_rx_desc.exit_crit_edge: ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_en_init_rx_desc.exit

mlx4_en_init_rx_desc.exit:                        ; preds = %for.body14.i.mlx4_en_init_rx_desc.exit_crit_edge, %for.end.i.mlx4_en_init_rx_desc.exit_crit_edge
  %inc = add nuw i32 %i.0187, 1
  %58 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size, align 8
  %cmp70 = icmp ult i32 %inc, %59
  br i1 %cmp70, label %mlx4_en_init_rx_desc.exit.for.body72_crit_edge, label %mlx4_en_init_rx_desc.exit.for.inc73_crit_edge

mlx4_en_init_rx_desc.exit.for.inc73_crit_edge:    ; preds = %mlx4_en_init_rx_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc73

mlx4_en_init_rx_desc.exit.for.body72_crit_edge:   ; preds = %mlx4_en_init_rx_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body72

for.inc73:                                        ; preds = %mlx4_en_init_rx_desc.exit.for.inc73_crit_edge, %if.end.for.inc73_crit_edge
  %inc74 = add nuw i32 %ring_ind.0189, 1
  %60 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_ring_num, align 4
  %cmp47 = icmp ult i32 %inc74, %61
  br i1 %cmp47, label %for.inc73.for.body_crit_edge, label %for.inc73.for.end75_crit_edge

for.inc73.for.end75_crit_edge:                    ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end75

for.inc73.for.body_crit_edge:                     ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end75:                                        ; preds = %for.inc73.for.end75_crit_edge, %entry.for.end75_crit_edge
  %prof.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 1
  %62 = ptrtoint ptr %prof.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prof.i, align 4
  %rx_ring_size97.i = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %rx_ring_size97.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_ring_size97.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp98.not.i = icmp eq i32 %65, 0
  br i1 %cmp98.not.i, label %for.end75.for.cond79.preheaderthread-pre-split_crit_edge, label %for.cond1.preheader.lr.ph.i

for.end75.for.cond79.preheaderthread-pre-split_crit_edge: ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond79.preheaderthread-pre-split

for.cond1.preheader.lr.ph.i:                      ; preds = %for.end75
  %log_rx_info.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 49
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc28.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %buf_ind.099.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc29.i, %for.inc28.i.for.cond1.preheader.i_crit_edge ]
  %66 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp295.not.i = icmp eq i32 %67, 0
  br i1 %cmp295.not.i, label %for.cond1.preheader.i.for.inc28.i_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.for.inc28.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc28.i

for.body3.i:                                      ; preds = %if.end.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %ring_ind.096.i = phi i32 [ %inc27.i, %if.end.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %arrayidx.i176 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %ring_ind.096.i
  %68 = ptrtoint ptr %arrayidx.i176 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i176, align 4
  %actual_size.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %actual_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %actual_size.i, align 4
  %buf.i.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %69, i32 0, i32 11
  %72 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buf.i.i, align 4
  %log_stride.i.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %69, i32 0, i32 5
  %74 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %log_stride.i.i, align 2
  %conv.i.i = zext i16 %75 to i32
  %shl.i.i = shl i32 %71, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 %shl.i.i
  %rx_info.i.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %69, i32 0, i32 12
  %76 = ptrtoint ptr %rx_info.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_info.i.i, align 32
  %78 = ptrtoint ptr %log_rx_info.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %log_rx_info.i.i, align 1
  %conv1.i.i = zext i8 %79 to i32
  %shl2.i.i = shl i32 %71, %conv1.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %77, i32 %shl2.i.i
  %page_cache.i.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %69, i32 0, i32 14
  %80 = ptrtoint ptr %page_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %page_cache.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.not.i.i = icmp eq i32 %81, 0
  br i1 %cmp.not.i.i, label %mlx4_en_prepare_rx_desc.exit.i, label %if.then.i.i, !prof !84

if.then.i.i:                                      ; preds = %for.body3.i
  %82 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr3.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %83, null
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.then.i.i.mlx4_en_prepare_rx_desc.exit.thread.i_crit_edge

if.then.i.i.mlx4_en_prepare_rx_desc.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_en_prepare_rx_desc.exit.thread.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i.i = add i32 %81, -1
  %84 = ptrtoint ptr %page_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %dec.i.i, ptr %page_cache.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.mlx4_en_rx_ring, ptr %69, i32 0, i32 14, i32 1, i32 %dec.i.i
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i.i, align 4
  %87 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %add.ptr3.i.i, align 4
  %88 = load i32, ptr %page_cache.i.i, align 8
  %dma.i.i = getelementptr %struct.mlx4_en_rx_ring, ptr %69, i32 0, i32 14, i32 1, i32 %88, i32 1
  %89 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dma.i.i, align 4
  %dma22.i.i = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %add.ptr3.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %dma22.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %dma22.i.i, align 4
  br label %mlx4_en_prepare_rx_desc.exit.thread.i

mlx4_en_prepare_rx_desc.exit.thread.i:            ; preds = %if.then8.i.i, %if.then.i.i.mlx4_en_prepare_rx_desc.exit.thread.i_crit_edge
  %page_offset.i.i = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %add.ptr3.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 256, ptr %page_offset.i.i, align 4
  %dma23.i.i = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %add.ptr3.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %dma23.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dma23.i.i, align 4
  %add.i.i = add i32 %94, 256
  %conv24.i.i = zext i32 %add.i.i to i64
  %addr.i.i = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %add.ptr.i.i, i32 0, i32 2
  %95 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %conv24.i.i, ptr %addr.i.i, align 8
  br label %if.end.i

mlx4_en_prepare_rx_desc.exit.i:                   ; preds = %for.body3.i
  %call.i.i = tail call fastcc i32 @mlx4_en_alloc_frags(ptr noundef %priv, ptr noundef %69, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr3.i.i, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %mlx4_en_prepare_rx_desc.exit.i.if.end.i_crit_edge, label %if.then.i

mlx4_en_prepare_rx_desc.exit.i.if.end.i_crit_edge: ; preds = %mlx4_en_prepare_rx_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %mlx4_en_prepare_rx_desc.exit.i
  %96 = ptrtoint ptr %actual_size.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %actual_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %97)
  %cmp5.i = icmp ult i32 %97, 128
  br i1 %cmp5.i, label %for.cond91.preheader, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  %98 = tail call i32 @llvm.ctlz.i32(i32 %97, i1 true) #11, !range !82
  %sub.pn.i = xor i32 %98, 31
  %cond23.i = shl nuw i32 1, %sub.pn.i
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.23, ptr noundef %priv, ptr noundef nonnull @.str.24, i32 noundef %97, i32 noundef %cond23.i) #11
  %99 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp33101.not.i = icmp eq i32 %100, 0
  br i1 %cmp33101.not.i, label %if.else.i.cleanup_crit_edge, label %for.body35.lr.ph.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body35.lr.ph.i:                               ; preds = %if.else.i
  %msg_enable.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 23
  %ddev.i.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 78
  %dma_dir.i.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 50
  br label %for.body35.i

if.end.i:                                         ; preds = %mlx4_en_prepare_rx_desc.exit.i.if.end.i_crit_edge, %mlx4_en_prepare_rx_desc.exit.thread.i
  %101 = ptrtoint ptr %actual_size.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %actual_size.i, align 4
  %inc.i177 = add i32 %102, 1
  store i32 %inc.i177, ptr %actual_size.i, align 4
  %prod.i178 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %69, i32 0, i32 7
  %103 = ptrtoint ptr %prod.i178 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %prod.i178, align 4
  %inc26.i = add i32 %104, 1
  store i32 %inc26.i, ptr %prod.i178, align 4
  %inc27.i = add nuw i32 %ring_ind.096.i, 1
  %105 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_ring_num, align 4
  %cmp2.i = icmp ult i32 %inc27.i, %106
  br i1 %cmp2.i, label %if.end.i.for.body3.i_crit_edge, label %if.end.i.for.inc28.i_crit_edge

if.end.i.for.inc28.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc28.i

if.end.i.for.body3.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

for.inc28.i:                                      ; preds = %if.end.i.for.inc28.i_crit_edge, %for.cond1.preheader.i.for.inc28.i_crit_edge
  %inc29.i = add nuw i32 %buf_ind.099.i, 1
  %107 = ptrtoint ptr %prof.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prof.i, align 4
  %rx_ring_size.i = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_ring_size.i, align 4
  %cmp.i179 = icmp ult i32 %inc29.i, %110
  br i1 %cmp.i179, label %for.inc28.i.for.cond1.preheader.i_crit_edge, label %for.inc28.i.for.cond79.preheaderthread-pre-split_crit_edge

for.inc28.i.for.cond79.preheaderthread-pre-split_crit_edge: ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond79.preheaderthread-pre-split

for.inc28.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

for.body35.i:                                     ; preds = %for.inc45.i.for.body35.i_crit_edge, %for.body35.lr.ph.i
  %ring_ind.1102.i = phi i32 [ 0, %for.body35.lr.ph.i ], [ %inc46.i, %for.inc45.i.for.body35.i_crit_edge ]
  %arrayidx37.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %ring_ind.1102.i
  %111 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx37.i, align 4
  %actual_size38.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %actual_size38.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %actual_size38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %cond23.i)
  %cmp39100.i = icmp ugt i32 %114, %cond23.i
  br i1 %cmp39100.i, label %while.body.lr.ph.i, label %for.body35.i.for.inc45.i_crit_edge

for.body35.i.for.inc45.i_crit_edge:               ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc45.i

while.body.lr.ph.i:                               ; preds = %for.body35.i
  %prod42.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %112, i32 0, i32 7
  %rx_info.i83.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %112, i32 0, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %mlx4_en_free_rx_desc.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %115 = phi i32 [ %114, %while.body.lr.ph.i ], [ %141, %mlx4_en_free_rx_desc.exit.i.while.body.i_crit_edge ]
  %dec.i = add i32 %115, -1
  %116 = ptrtoint ptr %actual_size38.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %dec.i, ptr %actual_size38.i, align 4
  %117 = ptrtoint ptr %prod42.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %prod42.i, align 4
  %dec43.i = add i32 %118, -1
  store i32 %dec43.i, ptr %prod42.i, align 4
  %119 = ptrtoint ptr %rx_info.i83.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rx_info.i83.i, align 32
  %121 = ptrtoint ptr %log_rx_info.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %log_rx_info.i.i, align 1
  %conv.i85.i = zext i8 %122 to i32
  %shl.i86.i = shl i32 %dec.i, %conv.i85.i
  %add.ptr.i87.i = getelementptr i8, ptr %120, i32 %shl.i86.i
  %123 = ptrtoint ptr %num_frags to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %num_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %cmp12.not.i.i = icmp eq i8 %124, 0
  br i1 %cmp12.not.i.i, label %while.body.i.mlx4_en_free_rx_desc.exit.i_crit_edge, label %while.body.i.do.body.i.i_crit_edge

while.body.i.do.body.i.i_crit_edge:               ; preds = %while.body.i
  br label %do.body.i.i

while.body.i.mlx4_en_free_rx_desc.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_en_free_rx_desc.exit.i

do.body.i.i:                                      ; preds = %mlx4_en_free_frag.exit.i.i.do.body.i.i_crit_edge, %while.body.i.do.body.i.i_crit_edge
  %nr.013.i.i = phi i32 [ %inc.i.i, %mlx4_en_free_frag.exit.i.i.do.body.i.i_crit_edge ], [ 0, %while.body.i.do.body.i.i_crit_edge ]
  %125 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end.i.i_crit_edge, label %if.then.i88.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i88.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %priv, ptr noundef nonnull @.str.26, i32 noundef %nr.013.i.i) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i88.i, %do.body.i.i.do.end.i.i_crit_edge
  %add.ptr3.i89.i = getelementptr %struct.mlx4_en_rx_alloc, ptr %add.ptr.i87.i, i32 %nr.013.i.i
  %127 = ptrtoint ptr %add.ptr3.i89.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr3.i89.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %128, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.mlx4_en_free_frag.exit.i.i_crit_edge, label %if.then.i.i.i

do.end.i.i.mlx4_en_free_frag.exit.i.i_crit_edge:  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_en_free_frag.exit.i.i

if.then.i.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %ddev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ddev.i.i.i, align 4
  %dma.i.i.i = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %add.ptr3.i89.i, i32 0, i32 1
  %131 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dma.i.i.i, align 4
  %133 = ptrtoint ptr %dma_dir.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %dma_dir.i.i.i, align 2
  %conv.i.i.i = zext i8 %134 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %130, i32 noundef %132, i32 noundef 4096, i32 noundef %conv.i.i.i, i32 noundef 0) #11
  %135 = ptrtoint ptr %add.ptr3.i89.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr3.i89.i, align 4
  tail call void @__free_pages(ptr noundef %136, i32 noundef 0) #11
  br label %mlx4_en_free_frag.exit.i.i

mlx4_en_free_frag.exit.i.i:                       ; preds = %if.then.i.i.i, %do.end.i.i.mlx4_en_free_frag.exit.i.i_crit_edge
  %137 = call ptr @memset(ptr %add.ptr3.i89.i, i32 0, i32 12)
  %inc.i.i = add nuw nsw i32 %nr.013.i.i, 1
  %138 = ptrtoint ptr %num_frags to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %num_frags, align 4
  %conv1.i90.i = zext i8 %139 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv1.i90.i
  br i1 %cmp.i.i, label %mlx4_en_free_frag.exit.i.i.do.body.i.i_crit_edge, label %mlx4_en_free_frag.exit.i.i.mlx4_en_free_rx_desc.exit.i_crit_edge

mlx4_en_free_frag.exit.i.i.mlx4_en_free_rx_desc.exit.i_crit_edge: ; preds = %mlx4_en_free_frag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_en_free_rx_desc.exit.i

mlx4_en_free_frag.exit.i.i.do.body.i.i_crit_edge: ; preds = %mlx4_en_free_frag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

mlx4_en_free_rx_desc.exit.i:                      ; preds = %mlx4_en_free_frag.exit.i.i.mlx4_en_free_rx_desc.exit.i_crit_edge, %while.body.i.mlx4_en_free_rx_desc.exit.i_crit_edge
  %140 = ptrtoint ptr %actual_size38.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %actual_size38.i, align 4
  %cmp39.i = icmp ugt i32 %141, %cond23.i
  br i1 %cmp39.i, label %mlx4_en_free_rx_desc.exit.i.while.body.i_crit_edge, label %mlx4_en_free_rx_desc.exit.i.for.inc45.i_crit_edge

mlx4_en_free_rx_desc.exit.i.for.inc45.i_crit_edge: ; preds = %mlx4_en_free_rx_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc45.i

mlx4_en_free_rx_desc.exit.i.while.body.i_crit_edge: ; preds = %mlx4_en_free_rx_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

for.inc45.i:                                      ; preds = %mlx4_en_free_rx_desc.exit.i.for.inc45.i_crit_edge, %for.body35.i.for.inc45.i_crit_edge
  %inc46.i = add nuw i32 %ring_ind.1102.i, 1
  %142 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rx_ring_num, align 4
  %cmp33.i = icmp ult i32 %inc46.i, %143
  br i1 %cmp33.i, label %for.inc45.i.for.body35.i_crit_edge, label %for.inc45.i.for.cond79.preheader_crit_edge

for.inc45.i.for.cond79.preheader_crit_edge:       ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond79.preheader

for.inc45.i.for.body35.i_crit_edge:               ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body35.i

for.cond91.preheader:                             ; preds = %if.then.i
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.22) #11
  %144 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp93190.not = icmp eq i32 %145, 0
  br i1 %cmp93190.not, label %for.cond91.preheader.cleanup_crit_edge, label %for.cond91.preheader.for.body95_crit_edge

for.cond91.preheader.for.body95_crit_edge:        ; preds = %for.cond91.preheader
  br label %for.body95

for.cond91.preheader.cleanup_crit_edge:           ; preds = %for.cond91.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond79.preheaderthread-pre-split:             ; preds = %for.inc28.i.for.cond79.preheaderthread-pre-split_crit_edge, %for.end75.for.cond79.preheaderthread-pre-split_crit_edge
  %146 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %146)
  %.pr = load i32, ptr %rx_ring_num, align 4
  br label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %for.cond79.preheaderthread-pre-split, %for.inc45.i.for.cond79.preheader_crit_edge
  %147 = phi i32 [ %.pr, %for.cond79.preheaderthread-pre-split ], [ %143, %for.inc45.i.for.cond79.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp81196.not = icmp eq i32 %147, 0
  br i1 %cmp81196.not, label %for.cond79.preheader.cleanup_crit_edge, label %for.cond79.preheader.for.body83_crit_edge

for.cond79.preheader.for.body83_crit_edge:        ; preds = %for.cond79.preheader
  br label %for.body83

for.cond79.preheader.cleanup_crit_edge:           ; preds = %for.cond79.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body83:                                       ; preds = %for.body83.for.body83_crit_edge, %for.cond79.preheader.for.body83_crit_edge
  %ring_ind.1197 = phi i32 [ %inc89, %for.body83.for.body83_crit_edge ], [ 0, %for.cond79.preheader.for.body83_crit_edge ]
  %arrayidx85 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %ring_ind.1197
  %148 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx85, align 4
  %actual_size86 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %actual_size86 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %actual_size86, align 4
  %sub87 = add i32 %151, -1
  %size_mask = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %149, i32 0, i32 3
  %152 = ptrtoint ptr %size_mask to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %sub87, ptr %size_mask, align 64
  %prod.i180 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %149, i32 0, i32 7
  %153 = ptrtoint ptr %prod.i180 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %prod.i180, align 4
  %and.i181 = and i32 %154, 65535
  %155 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %149, align 128
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %and.i181, ptr %156, align 4
  %inc89 = add nuw i32 %ring_ind.1197, 1
  %158 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rx_ring_num, align 4
  %cmp81 = icmp ult i32 %inc89, %159
  br i1 %cmp81, label %for.body83.for.body83_crit_edge, label %for.body83.cleanup_crit_edge

for.body83.cleanup_crit_edge:                     ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body83.for.body83_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body83

while.cond.preheader:                             ; preds = %for.body95
  %phi.bo = add i32 %163, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %phi.bo)
  %cmp103194 = icmp sgt i32 %phi.bo, -1
  br i1 %cmp103194, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.body95:                                       ; preds = %for.body95.for.body95_crit_edge, %for.cond91.preheader.for.body95_crit_edge
  %ring_ind.2191 = phi i32 [ %inc99, %for.body95.for.body95_crit_edge ], [ 0, %for.cond91.preheader.for.body95_crit_edge ]
  %arrayidx97 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %ring_ind.2191
  %160 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx97, align 4
  tail call fastcc void @mlx4_en_free_rx_buf(ptr noundef %priv, ptr noundef %161)
  %inc99 = add nuw i32 %ring_ind.2191, 1
  %162 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rx_ring_num, align 4
  %cmp93 = icmp ult i32 %inc99, %163
  br i1 %cmp93, label %for.body95.for.body95_crit_edge, label %while.cond.preheader

for.body95.for.body95_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body95

while.body:                                       ; preds = %if.end116.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %ring_ind.3195 = phi i32 [ %ring_ind.3, %if.end116.while.body_crit_edge ], [ %phi.bo, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx106 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %ring_ind.3195
  %164 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx106, align 4
  %stride107 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %165, i32 0, i32 4
  %166 = ptrtoint ptr %stride107 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %stride107, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %167)
  %cmp109 = icmp ult i16 %167, 65
  br i1 %cmp109, label %if.then111, label %while.body.if.end116_crit_edge

while.body.if.end116_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.then111:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %buf114 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %165, i32 0, i32 11
  %168 = ptrtoint ptr %buf114 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %buf114, align 4
  %add.ptr115 = getelementptr i8, ptr %169, i32 -64
  store ptr %add.ptr115, ptr %buf114, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then111, %while.body.if.end116_crit_edge
  %ring_ind.3 = add i32 %ring_ind.3195, -1
  %cmp103 = icmp sgt i32 %ring_ind.3, -1
  br i1 %cmp103, label %if.end116.while.body_crit_edge, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end116.while.body_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %if.end116.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %for.body83.cleanup_crit_edge, %for.cond79.preheader.cleanup_crit_edge, %for.cond91.preheader.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond79.preheader.cleanup_crit_edge ], [ -12, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ -12, %for.cond91.preheader.cleanup_crit_edge ], [ 0, %for.body83.cleanup_crit_edge ], [ -12, %if.end116.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_en_free_rx_buf(ptr noundef %priv, ptr nocapture noundef %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 23
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cons = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 8
  %2 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cons, align 16
  %prod = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prod, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %priv, ptr noundef nonnull @.str.27, i32 noundef %3, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %size = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp23.not = icmp eq i32 %7, 0
  br i1 %cmp23.not, label %do.end.for.end_crit_edge, label %do.body1.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body1.lr.ph:                                   ; preds = %do.end
  %rx_info.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 12
  %log_rx_info.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 49
  %num_frags.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 48
  %ddev.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 78
  %dma_dir.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 50
  br label %do.body1

do.body1:                                         ; preds = %mlx4_en_free_rx_desc.exit.do.body1_crit_edge, %do.body1.lr.ph
  %index.024 = phi i32 [ 0, %do.body1.lr.ph ], [ %inc, %mlx4_en_free_rx_desc.exit.do.body1_crit_edge ]
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and3 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body1.do.end8_crit_edge, label %if.then5

do.body1.do.end8_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %priv, ptr noundef nonnull @.str.28, i32 noundef %index.024) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1.do.end8_crit_edge
  %10 = ptrtoint ptr %rx_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_info.i, align 32
  %12 = ptrtoint ptr %log_rx_info.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %log_rx_info.i, align 1
  %conv.i = zext i8 %13 to i32
  %shl.i = shl i32 %index.024, %conv.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 %shl.i
  %14 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_frags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp12.not.i = icmp eq i8 %15, 0
  br i1 %cmp12.not.i, label %do.end8.mlx4_en_free_rx_desc.exit_crit_edge, label %do.end8.do.body.i_crit_edge

do.end8.do.body.i_crit_edge:                      ; preds = %do.end8
  br label %do.body.i

do.end8.mlx4_en_free_rx_desc.exit_crit_edge:      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_en_free_rx_desc.exit

do.body.i:                                        ; preds = %mlx4_en_free_frag.exit.i.do.body.i_crit_edge, %do.end8.do.body.i_crit_edge
  %nr.013.i = phi i32 [ %inc.i, %mlx4_en_free_frag.exit.i.do.body.i_crit_edge ], [ 0, %do.end8.do.body.i_crit_edge ]
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %priv, ptr noundef nonnull @.str.26, i32 noundef %nr.013.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i.do.end.i_crit_edge
  %add.ptr3.i = getelementptr %struct.mlx4_en_rx_alloc, ptr %add.ptr.i, i32 %nr.013.i
  %18 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr3.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %do.end.i.mlx4_en_free_frag.exit.i_crit_edge, label %if.then.i.i

do.end.i.mlx4_en_free_frag.exit.i_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_en_free_frag.exit.i

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %ddev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ddev.i.i, align 4
  %dma.i.i = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %add.ptr3.i, i32 0, i32 1
  %22 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma.i.i, align 4
  %24 = ptrtoint ptr %dma_dir.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dma_dir.i.i, align 2
  %conv.i.i = zext i8 %25 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %23, i32 noundef 4096, i32 noundef %conv.i.i, i32 noundef 0) #11
  %26 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr3.i, align 4
  tail call void @__free_pages(ptr noundef %27, i32 noundef 0) #11
  br label %mlx4_en_free_frag.exit.i

mlx4_en_free_frag.exit.i:                         ; preds = %if.then.i.i, %do.end.i.mlx4_en_free_frag.exit.i_crit_edge
  %28 = call ptr @memset(ptr %add.ptr3.i, i32 0, i32 12)
  %inc.i = add nuw nsw i32 %nr.013.i, 1
  %29 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_frags.i, align 4
  %conv1.i = zext i8 %30 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv1.i
  br i1 %cmp.i, label %mlx4_en_free_frag.exit.i.do.body.i_crit_edge, label %mlx4_en_free_frag.exit.i.mlx4_en_free_rx_desc.exit_crit_edge

mlx4_en_free_frag.exit.i.mlx4_en_free_rx_desc.exit_crit_edge: ; preds = %mlx4_en_free_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_en_free_rx_desc.exit

mlx4_en_free_frag.exit.i.do.body.i_crit_edge:     ; preds = %mlx4_en_free_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

mlx4_en_free_rx_desc.exit:                        ; preds = %mlx4_en_free_frag.exit.i.mlx4_en_free_rx_desc.exit_crit_edge, %do.end8.mlx4_en_free_rx_desc.exit_crit_edge
  %inc = add nuw i32 %index.024, 1
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 8
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %mlx4_en_free_rx_desc.exit.do.body1_crit_edge, label %mlx4_en_free_rx_desc.exit.for.end_crit_edge

mlx4_en_free_rx_desc.exit.for.end_crit_edge:      ; preds = %mlx4_en_free_rx_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

mlx4_en_free_rx_desc.exit.do.body1_crit_edge:     ; preds = %mlx4_en_free_rx_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1

for.end:                                          ; preds = %mlx4_en_free_rx_desc.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %cons9 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 8
  %33 = ptrtoint ptr %cons9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cons9, align 16
  %prod10 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 7
  %34 = ptrtoint ptr %prod10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %prod10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_recover_from_oom(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port_up = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 28
  %0 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_up, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %rx_ring_num = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 45
  %2 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not = icmp eq i32 %3, 0
  br i1 %cmp11.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ring.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %ring.012
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %prod.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prod.i, align 4
  %cons.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cons.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp eq i32 %7, %9
  br i1 %cmp.i, label %if.then1, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then1:                                         ; preds = %for.body
  tail call fastcc void @local_bh_disable()
  %arrayidx2 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 55, i32 %ring.012
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %12 = getelementptr inbounds %struct.mlx4_en_cq, ptr %11, i32 0, i32 4
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %12) #11
  br i1 %call.i, label %if.then.i, label %if.then1.napi_reschedule.exit_crit_edge

if.then1.napi_reschedule.exit_crit_edge:          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %napi_reschedule.exit

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule(ptr noundef %12) #11
  br label %napi_reschedule.exit

napi_reschedule.exit:                             ; preds = %if.then.i, %if.then1.napi_reschedule.exit_crit_edge
  tail call fastcc void @local_bh_enable()
  br label %for.inc

for.inc:                                          ; preds = %napi_reschedule.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %ring.012, 1
  %13 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_ring_num, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx4_en_rx_recycle(ptr nocapture noundef %ring, ptr nocapture noundef readonly %frame) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %page_cache = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 14
  %0 = ptrtoint ptr %page_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %1)
  %cmp = icmp ugt i32 %1, 127
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frame, align 4
  %arrayidx = getelementptr %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 14, i32 1, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %arrayidx, align 4
  %dma = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %frame, i32 0, i32 1
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma, align 4
  %dma6 = getelementptr %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 14, i32 1, i32 %1, i32 1
  %7 = ptrtoint ptr %dma6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dma6, align 4
  %8 = ptrtoint ptr %page_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_cache, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %page_cache, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %10 = xor i1 %cmp, true
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_destroy_rx_ring(ptr nocapture noundef readonly %priv, ptr nocapture noundef %pring, i32 noundef %size, i16 noundef zeroext %stride) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %pring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pring, align 4
  %dep_map = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @mlx4_en_destroy_rx_ring.__warned, align 1
  br i1 %.b18, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mlx4_en_destroy_rx_ring.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 439, ptr noundef nonnull @.str.5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %xdp_prog = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xdp_prog, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bpf_prog_put(ptr noundef nonnull %5) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  %xdp_rxq = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %3, i32 0, i32 30
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq) #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %conv = zext i16 %stride to i32
  %mul = mul i32 %conv, %size
  %add = add i32 %mul, 64
  tail call void @mlx4_free_hwq_res(ptr noundef %7, ptr noundef %3, i32 noundef %add) #11
  %rx_info = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_info, align 32
  tail call void @kvfree(ptr noundef %9) #11
  %10 = ptrtoint ptr %rx_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rx_info, align 32
  tail call void @kfree(ptr noundef %3) #11
  %11 = ptrtoint ptr %pring to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pring, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_free_hwq_res(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_deactivate_rx_ring(ptr noundef %priv, ptr nocapture noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %page_cache = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 14
  %0 = ptrtoint ptr %page_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_cache, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23.not = icmp eq i32 %1, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ddev = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 78
  %dma_dir = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 50
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %put_page.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  %arrayidx = getelementptr %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 14, i32 1, i32 %i.024
  %dma = getelementptr %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 14, i32 1, i32 %i.024, i32 1
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %6 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_dir, align 2
  %conv = zext i8 %7 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %5, i32 noundef 4096, i32 noundef %conv, i32 noundef 0) #11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !84

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.29) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !87
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mlx4_en_deactivate_rx_ring, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !91

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %14, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %14) #11
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %i.024, 1
  %19 = ptrtoint ptr %page_cache to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %page_cache, align 8
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %21 = ptrtoint ptr %page_cache to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %page_cache, align 8
  tail call fastcc void @mlx4_en_free_rx_buf(ptr noundef %priv, ptr noundef %ring)
  %stride = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 4
  %22 = ptrtoint ptr %stride to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %stride, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %23)
  %cmp8 = icmp ult i16 %23, 65
  br i1 %cmp8, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %buf10 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 11
  %24 = ptrtoint ptr %buf10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf10, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 -64
  store ptr %add.ptr, ptr %buf10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_process_rx_cq(ptr noundef %dev, ptr noundef %cq, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  %doorbell_pending = alloca i8, align 1
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i594 = getelementptr i8, ptr %dev, i32 2304
  %cqe_factor = getelementptr i8, ptr %dev, i32 51688
  %0 = ptrtoint ptr %cqe_factor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cqe_factor, align 8
  %ring1 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 2
  %2 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %doorbell_pending) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #11
  %4 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %5 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %6 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %7 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %8 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %9 = call ptr @memset(ptr %xdp, i32 255, i32 24)
  %10 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_up, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %budget)
  %cmp = icmp slt i32 %budget, 1
  %spec.select = or i1 %cmp, %tobool.not
  br i1 %spec.select, label %entry.cleanup406_crit_edge, label %if.end, !prof !84

entry.cleanup406_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup406

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i594, i32 0, i32 53, i32 %3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %xdp_prog4 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %xdp_prog4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %xdp_prog4, align 4
  %call6 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b589 = load i1, ptr @mlx4_en_process_rx_cq.__warned, align 1
  br i1 %.b589, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mlx4_en_process_rx_cq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 683, ptr noundef nonnull @.str.6) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %frag_info = getelementptr i8, ptr %dev, i32 61468
  %frag_stride = getelementptr i8, ptr %dev, i32 61472
  %16 = ptrtoint ptr %frag_stride to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frag_stride, align 4
  %xdp_rxq = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 30
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %8, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %xdp_rxq, ptr %7, align 4
  %20 = ptrtoint ptr %doorbell_pending to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %doorbell_pending, align 1
  %cons_index = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 3
  %21 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cons_index, align 4
  %size_mask = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 3
  %23 = ptrtoint ptr %size_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size_mask, align 64
  %and = and i32 %24, %22
  %buf = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 11
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %cqe_size = getelementptr i8, ptr %dev, i32 51692
  %27 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cqe_size, align 4
  %mul.i = mul i32 %28, %and
  %add.ptr.i595 = getelementptr i8, ptr %26, i32 %mul.i
  %size = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 5
  %rx_info = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 12
  %log_rx_info = getelementptr i8, ptr %dev, i32 61501
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %flags = getelementptr i8, ptr %dev, i32 61440
  %ddev = getelementptr i8, ptr %dev, i32 67300
  %validate_loopback = getelementptr i8, ptr %dev, i32 51584
  %loopback_ok.i = getelementptr i8, ptr %dev, i32 51580
  %fcs_del = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 10
  %tobool157.not = icmp eq ptr %15, null
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %15, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %15, i32 0, i32 9
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %15, i32 0, i32 7
  %xdp_redirect_fail = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 23
  %xdp_redirect = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 22
  %xdp_drop = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 21
  %bytes = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 15
  %packets = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 16
  %29 = getelementptr inbounds %struct.mlx4_en_cq, ptr %cq, i32 0, i32 4
  %hwtstamp_rx_filter = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 27
  %conv253 = trunc i32 %3 to i16
  %add.i = add i16 %conv253, 1
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 27
  %csum_ok = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 17
  %csum_complete = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 19
  %csum_none302 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 18
  br label %while.cond

while.cond:                                       ; preds = %cleanup372.while.cond_crit_edge, %do.end15
  %index.0 = phi i32 [ %and, %do.end15 ], [ %and356, %cleanup372.while.cond_crit_edge ]
  %polled.0 = phi i32 [ 0, %do.end15 ], [ %inc361, %cleanup372.while.cond_crit_edge ]
  %add.ptr.i595.pn = phi ptr [ %add.ptr.i595, %do.end15 ], [ %add.ptr.i618, %cleanup372.while.cond_crit_edge ]
  %xdp_redir_flush.0.off0 = phi i1 [ false, %do.end15 ], [ %xdp_redir_flush.3.off0, %cleanup372.while.cond_crit_edge ]
  %cqe.0 = getelementptr %struct.mlx4_cqe, ptr %add.ptr.i595.pn, i32 %1
  %owner_sr_opcode = getelementptr %struct.mlx4_cqe, ptr %add.ptr.i595.pn, i32 %1, i32 9
  %30 = ptrtoint ptr %owner_sr_opcode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %owner_sr_opcode, align 1
  %32 = xor i8 %31, -1
  %33 = lshr i8 %32, 7
  %34 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cons_index, align 4
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size, align 8
  %and25 = and i32 %37, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %38 = zext i1 %tobool26.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %38)
  %cmp29 = icmp eq i8 %33, %38
  br i1 %cmp29, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond
  %39 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_info, align 32
  %41 = ptrtoint ptr %log_rx_info to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %log_rx_info, align 1
  %conv31 = zext i8 %42 to i32
  %shl = shl i32 %index.0, %conv31
  %add.ptr32 = getelementptr i8, ptr %40, i32 %shl
  %43 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr32, align 4
  %call34 = call ptr @page_address(ptr noundef %44) #11
  %page_offset = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %add.ptr32, i32 0, i32 2
  %45 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %page_offset, align 4
  %add.ptr36 = getelementptr i8, ptr %call34, i32 %46
  call void @llvm.prefetch.p0(ptr %add.ptr36, i32 1, i32 3, i32 1) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !92
  %47 = ptrtoint ptr %owner_sr_opcode to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %owner_sr_opcode, align 1
  %49 = and i8 %48, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %49)
  %cmp40 = icmp eq i8 %49, 30
  br i1 %cmp40, label %if.then48, label %if.end51, !prof !84

if.then48:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %vendor_err_syndrome = getelementptr inbounds %struct.mlx4_err_cqe, ptr %cqe.0, i32 0, i32 3
  %50 = ptrtoint ptr %vendor_err_syndrome to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %vendor_err_syndrome, align 2
  %conv49 = zext i8 %51 to i32
  %syndrome = getelementptr inbounds %struct.mlx4_err_cqe, ptr %cqe.0, i32 0, i32 4
  %52 = ptrtoint ptr %syndrome to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %syndrome, align 1
  %conv50 = zext i8 %53 to i32
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i594, ptr noundef nonnull @.str.7, i32 noundef %conv49, i32 noundef %conv50) #11
  br label %cleanup372

if.end51:                                         ; preds = %while.body
  %badfcs_enc = getelementptr %struct.mlx4_cqe, ptr %add.ptr.i595.pn, i32 %1, i32 4, i32 0, i32 3
  %54 = ptrtoint ptr %badfcs_enc to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %badfcs_enc, align 1
  %56 = and i8 %55, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool54.not = icmp eq i8 %56, 0
  br i1 %tobool54.not, label %if.end69, label %do.body62, !prof !86

do.body62:                                        ; preds = %if.end51
  %57 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable, align 8
  %and63 = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body62.cleanup372_crit_edge, label %if.then65

do.body62.cleanup372_crit_edge:                   ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup372

if.then65:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %add.ptr.i594, ptr noundef nonnull @.str.8) #11
  br label %cleanup372

if.end69:                                         ; preds = %if.end51
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 8
  %and70 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end146_crit_edge, label %if.then72

if.end69.if.end146_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

if.then72:                                        ; preds = %if.end69
  %dma74 = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %add.ptr32, i32 0, i32 1
  %61 = ptrtoint ptr %dma74 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma74, align 4
  %63 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %page_offset, align 4
  %add = add i32 %64, %62
  %65 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ddev, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %66, i32 noundef %add, i32 noundef 14, i32 noundef 2) #11
  %67 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr36, align 4
  %69 = and i32 %68, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i.not = icmp eq i32 %69, 0
  br i1 %tobool.i.not, label %if.then72.if.end146_crit_edge, label %if.then78

if.then72.if.end146_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

if.then78:                                        ; preds = %if.then72
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr36, i32 0, i32 1
  %arrayidx80 = getelementptr [6 x i8], ptr %h_source, i32 0, i32 5
  %70 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %71 to i32
  %arrayidx83 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i594, i32 0, i32 79, i32 %conv81
  %72 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %arrayidx83, align 4
  %call89 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %land.lhs.true91, label %if.then78.do.end99_crit_edge

if.then78.do.end99_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end99

land.lhs.true91:                                  ; preds = %if.then78
  %call92 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %land.lhs.true91.do.end99_crit_edge, label %land.lhs.true94

land.lhs.true91.do.end99_crit_edge:               ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end99

land.lhs.true94:                                  ; preds = %land.lhs.true91
  %.b565588 = load i1, ptr @mlx4_en_process_rx_cq.__warned.9, align 1
  br i1 %.b565588, label %land.lhs.true94.do.end99_crit_edge, label %if.then96

land.lhs.true94.do.end99_crit_edge:               ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end99

if.then96:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mlx4_en_process_rx_cq.__warned.9, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 747, ptr noundef nonnull @.str.6) #11
  br label %do.end99

do.end99:                                         ; preds = %if.then96, %land.lhs.true94.do.end99_crit_edge, %land.lhs.true91.do.end99_crit_edge, %if.then78.do.end99_crit_edge
  %tobool105.not640 = icmp eq ptr %73, null
  br i1 %tobool105.not640, label %do.end99.if.end146_crit_edge, label %for.body.lr.ph

do.end99.if.end146_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

for.body.lr.ph:                                   ; preds = %do.end99
  %add.ptr1.i.i = getelementptr i8, ptr %h_source, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end128.for.body_crit_edge, %for.body.lr.ph
  %entry79.0641 = phi ptr [ %73, %for.body.lr.ph ], [ %83, %do.end128.for.body_crit_edge ]
  %mac = getelementptr inbounds %struct.mlx4_mac_entry, ptr %entry79.0641, i32 0, i32 1
  %74 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mac, align 4
  %76 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %h_source, align 4
  %xor.i.i = xor i32 %77, %75
  %add.ptr.i.i = getelementptr %struct.mlx4_mac_entry, ptr %entry79.0641, i32 0, i32 1, i32 4
  %78 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr.i.i, align 2
  %80 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %81, %79
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %for.body.cleanup372_crit_edge, label %for.inc

for.body.cleanup372_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup372

for.inc:                                          ; preds = %for.body
  %82 = ptrtoint ptr %entry79.0641 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %entry79.0641, align 8
  %call118 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %land.lhs.true120, label %for.inc.do.end128_crit_edge

for.inc.do.end128_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end128

land.lhs.true120:                                 ; preds = %for.inc
  %call121 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %land.lhs.true120.do.end128_crit_edge, label %land.lhs.true123

land.lhs.true120.do.end128_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end128

land.lhs.true123:                                 ; preds = %land.lhs.true120
  %.b566587 = load i1, ptr @mlx4_en_process_rx_cq.__warned.10, align 1
  br i1 %.b566587, label %land.lhs.true123.do.end128_crit_edge, label %if.then125

land.lhs.true123.do.end128_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end128

if.then125:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mlx4_en_process_rx_cq.__warned.10, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 747, ptr noundef nonnull @.str.6) #11
  br label %do.end128

do.end128:                                        ; preds = %if.then125, %land.lhs.true123.do.end128_crit_edge, %land.lhs.true120.do.end128_crit_edge, %for.inc.do.end128_crit_edge
  %tobool105.not = icmp eq ptr %83, null
  br i1 %tobool105.not, label %do.end128.if.end146_crit_edge, label %do.end128.for.body_crit_edge

do.end128.for.body_crit_edge:                     ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end128.if.end146_crit_edge:                    ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

if.end146:                                        ; preds = %do.end128.if.end146_crit_edge, %do.end99.if.end146_crit_edge, %if.then72.if.end146_crit_edge, %if.end69.if.end146_crit_edge
  %84 = ptrtoint ptr %validate_loopback to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %validate_loopback, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool147.not = icmp eq i32 %85, 0
  br i1 %tobool147.not, label %if.end155, label %if.then154, !prof !86

if.then154:                                       ; preds = %if.end146
  %add.ptr.i596 = getelementptr i8, ptr %add.ptr36, i32 14
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 112
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then154
  %i.09.i = phi i32 [ 0, %if.then154 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i596, i32 %i.09.i
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i, align 1
  %88 = trunc i32 %i.09.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %88)
  %cmp3.not.i = icmp eq i8 %87, %88
  br i1 %cmp3.not.i, label %for.cond.i, label %for.body.i.cleanup372_crit_edge

for.body.i.cleanup372_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup372

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %loopback_ok.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %loopback_ok.i, align 4
  br label %cleanup372

if.end155:                                        ; preds = %if.end146
  %byte_cnt = getelementptr %struct.mlx4_cqe, ptr %add.ptr.i595.pn, i32 %1, i32 5
  %90 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %byte_cnt, align 4
  %92 = ptrtoint ptr %fcs_del to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %fcs_del, align 8
  %conv156 = zext i8 %93 to i32
  %sub = sub i32 %91, %conv156
  br i1 %tobool157.not, label %if.end155.if.end226_crit_edge, label %if.then158

if.end155.if.end226_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end226

if.then158:                                       ; preds = %if.end155
  %dma161 = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %add.ptr32, i32 0, i32 1
  %94 = ptrtoint ptr %dma161 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma161, align 4
  %96 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %page_offset, align 4
  %add164 = add i32 %97, %95
  %98 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ddev, align 4
  %100 = ptrtoint ptr %frag_info to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %frag_info, align 4
  %conv168 = zext i16 %101 to i32
  call void @dma_sync_single_for_cpu(ptr noundef %99, i32 noundef %add164, i32 noundef %conv168, i32 noundef 2) #11
  %102 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %page_offset, align 4
  %idx.neg = sub i32 0, %103
  %add.ptr171 = getelementptr i8, ptr %add.ptr36, i32 %idx.neg
  %add.ptr.i = getelementptr i8, ptr %add.ptr171, i32 %103
  %104 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %add.ptr171, ptr %6, align 4
  %105 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr.i, ptr %xdp, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %sub
  %106 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %add.ptr2.i, ptr %4, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %add.ptr3.i, ptr %5, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.30, i32 noundef 613) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@mlx4_en_process_rx_cq, %if.then.i.i)) #11
          to label %if.else.i.i [label %if.then.i.i], !srcloc !91

if.then.i.i:                                      ; preds = %if.then158
  %call3.i.i = call i64 @sched_clock() #11
  %108 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi.i.i, ptr noundef %109) #11
  %110 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %stats9.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  %113 = call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %116
  %117 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %118, %112
  %119 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %119, i32 0, i32 3
  %120 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !93
  %and.i.i.i.i = and i32 %120, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_off() #11
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %121 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i.i.i.i = icmp eq i32 %121, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %122 = call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i.i.i.i.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %125, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  %126 = call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i.i.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %129
  %130 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %131, ptrtoint (ptr @lockdep_recursion to i32)
  %132 = inttoptr i32 %add.i.i.i.i to ptr
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %132, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %135 = call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i7.i.i.i.i = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %138, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool20.not.i.i.i.i = icmp eq i32 %134, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %139 = call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i.i.i.i = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp.i.i.i.i = icmp eq i32 %142, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %143 = call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i9.i.i.i.i = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %146, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !96
  %147 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %148
  %149 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %150, ptrtoint (ptr @hardirqs_enabled to i32)
  %151 = inttoptr i32 %add47.i.i.i.i to ptr
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %151, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !97
  %154 = call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i12.i.i.i.i = and i32 %154, -16384
  %155 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %157, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool54.not.i.i.i.i = icmp eq i32 %153, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %158 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %159, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !98
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %119, i32 0, i32 3, i32 0, i32 1
  %160 = call ptr @llvm.returnaddress(i32 0) #11
  %161 = ptrtoint ptr %160 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %161) #11
  %162 = ptrtoint ptr %119 to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %119, align 8
  %inc.i.i.i = add i64 %163, 1
  store i64 %inc.i.i.i, ptr %119, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %119, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #11
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %164 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %165
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %161) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !99
  %166 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %167, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_on() #11
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %168 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !100
  %and.i.i.i3.i.i = and i32 %168, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !84

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %120) #11, !srcloc !101
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #13
  %169 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bpf_func.i.i, align 4
  %call18.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi.i.i, ptr noundef %170) #11
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@mlx4_en_process_rx_cq, %l_yes.i.i)) #11
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !91

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %171 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %7, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 14
  %175 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %176, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.bpf_prog_run_xdp.exit_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.bpf_prog_run_xdp.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bpf_prog_run_xdp.exit

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 15
  %177 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %178, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bpf_prog_run_xdp.exit

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = call i32 @xdp_master_redirect(ptr noundef nonnull %xdp) #11
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit_crit_edge, %land.lhs.true.i.bpf_prog_run_xdp.exit_crit_edge, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ 3, %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit_crit_edge ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ], [ 3, %land.lhs.true.i.bpf_prog_run_xdp.exit_crit_edge ]
  %179 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %4, align 4
  %181 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %180 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %182 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp177.not = icmp eq ptr %182, %add.ptr.i
  br i1 %cmp177.not, label %bpf_prog_run_xdp.exit.if.end187_crit_edge, label %if.then179

bpf_prog_run_xdp.exit.if.end187_crit_edge:        ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end187

if.then179:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #13
  %183 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %6, align 4
  %sub.ptr.rhs.cast182 = ptrtoint ptr %184 to i32
  %sub.ptr.sub183 = sub i32 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast182
  %185 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %sub.ptr.sub183, ptr %page_offset, align 4
  %186 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %xdp, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then179, %bpf_prog_run_xdp.exit.if.end187_crit_edge
  %va.0 = phi ptr [ %187, %if.then179 ], [ %add.ptr36, %bpf_prog_run_xdp.exit.if.end187_crit_edge ]
  %188 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %188, ptr @__sancov_gen_cov_switch_values)
  switch i32 %act.0.i, label %sw.default [
    i32 2, label %if.end187.if.end226_crit_edge
    i32 4, label %sw.bb
    i32 3, label %sw.bb203
    i32 0, label %if.end187.sw.bb218_crit_edge
    i32 1, label %if.end187.sw.bb219_crit_edge
  ]

if.end187.sw.bb219_crit_edge:                     ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb219

if.end187.sw.bb218_crit_edge:                     ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb218

if.end187.if.end226_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end226

sw.bb:                                            ; preds = %if.end187
  %call188 = call i32 @xdp_do_redirect(ptr noundef %dev, ptr noundef nonnull %xdp, ptr noundef nonnull %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.then198, label %if.end201, !prof !86

if.then198:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %189 = ptrtoint ptr %xdp_redirect to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %xdp_redirect, align 8
  %inc = add i32 %190, 1
  store i32 %inc, ptr %xdp_redirect, align 8
  %191 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %add.ptr32, align 4
  br label %cleanup372

if.end201:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %192 = ptrtoint ptr %xdp_redirect_fail to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %xdp_redirect_fail, align 4
  %inc202 = add i32 %193, 1
  store i32 %inc202, ptr %xdp_redirect_fail, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef nonnull %15, i32 noundef 4)
  br label %cleanup372

sw.bb203:                                         ; preds = %if.end187
  %call204 = call i32 @mlx4_en_xmit_frame(ptr noundef %13, ptr noundef %add.ptr32, ptr noundef %add.ptr.i594, i32 noundef %sub.ptr.sub, i32 noundef %3, ptr noundef nonnull %doorbell_pending) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.then214, label %if.end217, !prof !86

if.then214:                                       ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #13
  %194 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %add.ptr32, align 4
  br label %cleanup372

if.end217:                                        ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef nonnull %15, i32 noundef 3)
  br label %cleanup372

sw.default:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  call void @bpf_warn_invalid_xdp_action(ptr noundef %dev, ptr noundef nonnull %15, i32 noundef %act.0.i) #11
  br label %sw.bb218

sw.bb218:                                         ; preds = %sw.default, %if.end187.sw.bb218_crit_edge
  call fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef nonnull %15, i32 noundef %act.0.i)
  br label %sw.bb219

sw.bb219:                                         ; preds = %sw.bb218, %if.end187.sw.bb219_crit_edge
  %195 = ptrtoint ptr %xdp_drop to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %xdp_drop, align 4
  %inc220 = add i32 %196, 1
  store i32 %inc220, ptr %xdp_drop, align 4
  br label %cleanup372

if.end226:                                        ; preds = %if.end187.if.end226_crit_edge, %if.end155.if.end226_crit_edge
  %va.1 = phi ptr [ %add.ptr36, %if.end155.if.end226_crit_edge ], [ %va.0, %if.end187.if.end226_crit_edge ]
  %length.0 = phi i32 [ %sub, %if.end155.if.end226_crit_edge ], [ %sub.ptr.sub, %if.end187.if.end226_crit_edge ]
  %197 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %bytes, align 4
  %add227 = add i32 %198, %length.0
  store i32 %add227, ptr %bytes, align 4
  %199 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %packets, align 16
  %inc228 = add i32 %200, 1
  store i32 %inc228, ptr %packets, align 16
  %call229 = call ptr @napi_get_frags(ptr noundef %29) #11
  %tobool230.not = icmp eq ptr %call229, null
  br i1 %tobool230.not, label %if.end226.cleanup372_crit_edge, label %if.end240, !prof !84

if.end226.cleanup372_crit_edge:                   ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup372

if.end240:                                        ; preds = %if.end226
  %201 = ptrtoint ptr %hwtstamp_rx_filter to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %hwtstamp_rx_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %202)
  %cmp241 = icmp eq i32 %202, 1
  br i1 %cmp241, label %if.then249, label %if.end240.if.end252_crit_edge, !prof !84

if.end240.if.end252_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252

if.then249:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #13
  %call250 = call i64 @mlx4_en_get_cqe_ts(ptr noundef %cqe.0) #11
  %203 = ptrtoint ptr %add.ptr.i594 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %add.ptr.i594, align 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 17
  %205 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %206, i32 0, i32 7
  call void @mlx4_en_fill_hwtstamps(ptr noundef %204, ptr noundef %hwtstamps.i, i64 noundef %call250) #11
  br label %if.end252

if.end252:                                        ; preds = %if.then249, %if.end240.if.end252_crit_edge
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 10
  %207 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %add.i, ptr %queue_mapping.i, align 8
  %208 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %features, align 16
  %and254 = and i64 %209, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and254)
  %tobool255.not = icmp eq i64 %and254, 0
  br i1 %tobool255.not, label %if.end252.csum_none_crit_edge, label %if.then262, !prof !84

if.end252.csum_none_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #13
  br label %csum_none

if.then262:                                       ; preds = %if.end252
  %status = getelementptr %struct.mlx4_cqe, ptr %add.ptr.i595.pn, i32 %1, i32 4, i32 0, i32 1
  %210 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %status, align 2
  %conv263 = zext i16 %211 to i32
  %and264 = and i32 %conv263, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  %and269 = and i32 %conv263, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and269)
  %tobool270.not = icmp eq i32 %and269, 0
  %or.cond = or i1 %tobool265.not, %tobool270.not
  br i1 %or.cond, label %if.then262.if.else_crit_edge, label %land.lhs.true271

if.then262.if.else_crit_edge:                     ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true271:                                 ; preds = %if.then262
  %checksum = getelementptr %struct.mlx4_cqe, ptr %add.ptr.i595.pn, i32 %1, i32 7
  %212 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %checksum, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %213)
  %cmp273 = icmp eq i16 %213, -1
  br i1 %cmp273, label %if.then275, label %land.lhs.true271.if.else_crit_edge

land.lhs.true271.if.else_crit_edge:               ; preds = %land.lhs.true271
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then275:                                       ; preds = %land.lhs.true271
  %214 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %hw_enc_features, align 16
  %and276 = and i64 %215, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and276)
  %tobool277.not = icmp eq i64 %and276, 0
  br i1 %tobool277.not, label %if.then275.if.end282_crit_edge, label %land.rhs

if.then275.if.end282_crit_edge:                   ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end282

land.rhs:                                         ; preds = %if.then275
  %216 = ptrtoint ptr %cqe.0 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %cqe.0, align 4
  %and278 = and i32 %217, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278)
  %tobool279.not = icmp eq i32 %and278, 0
  br i1 %tobool279.not, label %land.rhs.if.end282_crit_edge, label %if.then281

land.rhs.if.end282_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end282

if.then281:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %csum_level = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 15, i32 0, i32 3
  %218 = ptrtoint ptr %csum_level to i32
  call void @__asan_loadN_noabort(i32 %218, i32 4)
  %bf.load = load i32, ptr %csum_level, align 2
  %bf.clear = and i32 %bf.load, -805306369
  %bf.set = or i32 %bf.clear, 268435456
  store i32 %bf.set, ptr %csum_level, align 2
  br label %if.end282

if.end282:                                        ; preds = %if.then281, %land.rhs.if.end282_crit_edge, %if.then275.if.end282_crit_edge
  %219 = ptrtoint ptr %csum_ok to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %csum_ok, align 4
  %inc283 = add i32 %220, 1
  store i32 %inc283, ptr %csum_ok, align 4
  br label %if.end304

if.else:                                          ; preds = %land.lhs.true271.if.else_crit_edge, %if.then262.if.else_crit_edge
  %221 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %flags, align 8
  %and285 = and i32 %222, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  %223 = and i16 %211, 320
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %223)
  %tobool291.not = icmp eq i16 %223, 0
  %or.cond638 = select i1 %tobool286.not, i1 true, i1 %tobool291.not
  br i1 %or.cond638, label %if.else.csum_none_crit_edge, label %if.end293

if.else.csum_none_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %csum_none

if.end293:                                        ; preds = %if.else
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 6
  %224 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %225)
  %cmp.i597 = icmp ult i32 %225, 65
  br i1 %cmp.i597, label %if.end293.csum_none_crit_edge, label %if.end.i

if.end293.csum_none_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #13
  br label %csum_none

if.end.i:                                         ; preds = %if.end293
  %add.ptr.i598 = getelementptr i8, ptr %va.1, i32 14
  %checksum.i = getelementptr %struct.mlx4_cqe, ptr %add.ptr.i595.pn, i32 %1, i32 7
  %226 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %checksum.i, align 2
  %conv.i.i = zext i16 %227 to i32
  %228 = ptrtoint ptr %cqe.0 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %cqe.0, align 4
  %and.i = and i32 %229, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %and1.i = and i64 %209, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  %or.cond.i599 = and i1 %tobool2.not.i, %tobool.not.i
  br i1 %or.cond.i599, label %if.then3.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %230 = ptrtoint ptr %add.ptr.i598 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %add.ptr.i598, align 4
  %add.i.i.i600 = add i32 %231, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i600, i32 %231)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i600, %231
  %conv.i.i.i601 = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i600, %conv.i.i.i601
  %add.ptr5.i = getelementptr i8, ptr %va.1, i32 18
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %hw_checksum.0.i = phi i32 [ %add1.i.i.i, %if.then3.i ], [ %conv.i.i, %if.end.i.if.end6.i_crit_edge ]
  %hdr.0.i = phi ptr [ %add.ptr5.i, %if.then3.i ], [ %add.ptr.i598, %if.end.i.if.end6.i_crit_edge ]
  %232 = and i16 %211, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %232)
  %tobool8.not.i = icmp eq i16 %232, 0
  br i1 %tobool8.not.i, label %if.end11.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end6.i
  %nexthdr1.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %hdr.0.i, i32 0, i32 3
  %233 = ptrtoint ptr %nexthdr1.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %nexthdr1.i.i, align 2
  %235 = zext i8 %234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %234, label %lor.rhs.i.i [
    i8 44, label %if.then9.i.csum_none_crit_edge
    i8 0, label %if.then9.i.csum_none_crit_edge648
    i8 -124, label %if.then9.i.csum_none_crit_edge649
  ], !prof !102

if.then9.i.csum_none_crit_edge649:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %csum_none

if.then9.i.csum_none_crit_edge648:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %csum_none

if.then9.i.csum_none_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %csum_none

lor.rhs.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %236 = ptrtoint ptr %hdr.0.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %hdr.0.i, align 4
  %add.i.i23.i = add i32 %237, %hw_checksum.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i23.i, i32 %237)
  %cmp.i.i24.i = icmp ult i32 %add.i.i23.i, %237
  %conv.i.i25.i = zext i1 %cmp.i.i24.i to i32
  %238 = ptrtoint ptr %nexthdr1.i.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %nexthdr1.i.i, align 2
  %conv11.i.i = zext i16 %239 to i32
  %add1.i.i26.i = add i32 %add.i.i23.i, %conv11.i.i
  %add.i18.i.i = add i32 %add1.i.i26.i, %conv.i.i25.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i18.i.i, i32 %conv11.i.i)
  %cmp.i19.i.i = icmp ult i32 %add.i18.i.i, %conv11.i.i
  br label %if.end298

if.end11.i:                                       ; preds = %if.end6.i
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %hdr.0.i, i32 0, i32 6
  %240 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %protocol.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %241)
  %cmp.i.i602 = icmp eq i8 %241, -124
  br i1 %cmp.i.i602, label %if.end11.i.csum_none_crit_edge, label %if.end.i.i, !prof !84

if.end11.i.csum_none_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %csum_none

if.end.i.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %tot_len.i.i = getelementptr inbounds %struct.iphdr, ptr %hdr.0.i, i32 0, i32 2
  %242 = ptrtoint ptr %tot_len.i.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %tot_len.i.i, align 2
  %244 = ptrtoint ptr %hdr.0.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %bf.load.i.i = load i8, ptr %hdr.0.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %245 = and i8 %bf.clear.i.i, 60
  %shl.i.i = zext i8 %245 to i16
  %sub.i.i603 = sub i16 %243, %shl.i.i
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %hdr.0.i, i32 0, i32 8
  %246 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %saddr.i.i, align 4
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %hdr.0.i, i32 0, i32 9
  %248 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %daddr.i.i, align 4
  %conv6.i.i = zext i16 %sub.i.i603 to i32
  %conv.i.i27.i = zext i8 %241 to i32
  %add.i.i28.i = add nuw nsw i32 %conv6.i.i, %conv.i.i27.i
  %250 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %249, i32 %247, i32 %add.i.i28.i) #16, !srcloc !103
  %neg.i.i.i = xor i32 %250, -1
  %add.i.i.i.i604 = add i32 %hw_checksum.0.i, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i604, i32 %neg.i.i.i)
  %cmp.i.i.i.i605 = icmp ult i32 %add.i.i.i.i604, %neg.i.i.i
  br label %if.end298

if.end298:                                        ; preds = %if.end.i.i, %lor.rhs.i.i
  %cmp.i.i.i.sink.i = phi i1 [ %cmp.i.i.i.i605, %if.end.i.i ], [ %cmp.i19.i.i, %lor.rhs.i.i ]
  %add.i.i.i.sink.i = phi i32 [ %add.i.i.i.i604, %if.end.i.i ], [ %add.i18.i.i, %lor.rhs.i.i ]
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.sink.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.sink.i, %conv.i.i.i.i
  %251 = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 15, i32 0, i32 5
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %add1.i.i.i.i, ptr %251, align 8
  %253 = ptrtoint ptr %csum_complete to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %csum_complete, align 4
  %inc299 = add i32 %254, 1
  store i32 %inc299, ptr %csum_complete, align 4
  br label %if.end304

csum_none:                                        ; preds = %if.end11.i.csum_none_crit_edge, %if.then9.i.csum_none_crit_edge, %if.then9.i.csum_none_crit_edge648, %if.then9.i.csum_none_crit_edge649, %if.end293.csum_none_crit_edge, %if.else.csum_none_crit_edge, %if.end252.csum_none_crit_edge
  %255 = ptrtoint ptr %csum_none302 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %csum_none302, align 8
  %inc303 = add i32 %256, 1
  store i32 %inc303, ptr %csum_none302, align 8
  br label %if.end304

if.end304:                                        ; preds = %csum_none, %if.end298, %if.end282
  %ip_summed.0 = phi i8 [ 1, %if.end282 ], [ 0, %csum_none ], [ 2, %if.end298 ]
  %cmp.i606 = phi i16 [ 128, %if.end282 ], [ 0, %csum_none ], [ 0, %if.end298 ]
  %ip_summed306 = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 15
  %257 = zext i8 %ip_summed.0 to i16
  %258 = ptrtoint ptr %ip_summed306 to i32
  call void @__asan_load2_noabort(i32 %258)
  %bf.load307 = load i16, ptr %ip_summed306, align 8
  %bf.shl = shl nuw nsw i16 %257, 9
  %bf.clear308 = and i16 %bf.load307, -1537
  %bf.set309 = or i16 %bf.clear308, %bf.shl
  store i16 %bf.set309, ptr %ip_summed306, align 8
  %259 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %features, align 16
  %and311 = and i64 %260, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and311)
  %tobool312.not = icmp eq i64 %and311, 0
  br i1 %tobool312.not, label %if.end304.if.end314_crit_edge, label %if.then313

if.end304.if.end314_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end314

if.then313:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #13
  %immed_rss_invalid = getelementptr %struct.mlx4_cqe, ptr %add.ptr.i595.pn, i32 %1, i32 1
  %261 = ptrtoint ptr %immed_rss_invalid to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %immed_rss_invalid, align 4
  %bf.clear.i.i608 = and i16 %bf.set309, -193
  %bf.set.i.i = or i16 %bf.clear.i.i608, %cmp.i606
  %263 = ptrtoint ptr %ip_summed306 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %bf.set.i.i, ptr %ip_summed306, align 8
  %hash10.i.i = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 15, i32 0, i32 8
  %264 = ptrtoint ptr %hash10.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %262, ptr %hash10.i.i, align 4
  br label %if.end314

if.end314:                                        ; preds = %if.then313, %if.end304.if.end314_crit_edge
  %265 = ptrtoint ptr %cqe.0 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %cqe.0, align 4
  %and316 = and i32 %266, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316)
  %tobool317.not = icmp eq i32 %and316, 0
  br i1 %tobool317.not, label %if.end314.if.else323_crit_edge, label %land.lhs.true318

if.end314.if.else323_crit_edge:                   ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else323

land.lhs.true318:                                 ; preds = %if.end314
  %267 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %features, align 16
  %and320 = and i64 %268, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and320)
  %tobool321.not = icmp eq i64 %and320, 0
  br i1 %tobool321.not, label %land.lhs.true318.if.else323_crit_edge, label %land.lhs.true318.if.end334.sink.split_crit_edge

land.lhs.true318.if.end334.sink.split_crit_edge:  ; preds = %land.lhs.true318
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end334.sink.split

land.lhs.true318.if.else323_crit_edge:            ; preds = %land.lhs.true318
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else323

if.else323:                                       ; preds = %land.lhs.true318.if.else323_crit_edge, %if.end314.if.else323_crit_edge
  %and325 = and i32 %266, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325)
  %tobool326.not = icmp eq i32 %and325, 0
  br i1 %tobool326.not, label %if.else323.if.end334_crit_edge, label %land.lhs.true327

if.else323.if.end334_crit_edge:                   ; preds = %if.else323
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end334

land.lhs.true327:                                 ; preds = %if.else323
  %269 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %features, align 16
  %and329 = and i64 %270, 70368744177664
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and329)
  %tobool330.not = icmp eq i64 %and329, 0
  br i1 %tobool330.not, label %land.lhs.true327.if.end334_crit_edge, label %land.lhs.true327.if.end334.sink.split_crit_edge

land.lhs.true327.if.end334.sink.split_crit_edge:  ; preds = %land.lhs.true327
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end334.sink.split

land.lhs.true327.if.end334_crit_edge:             ; preds = %land.lhs.true327
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end334

if.end334.sink.split:                             ; preds = %land.lhs.true327.if.end334.sink.split_crit_edge, %land.lhs.true318.if.end334.sink.split_crit_edge
  %.sink645 = phi i16 [ -32512, %land.lhs.true318.if.end334.sink.split_crit_edge ], [ -30552, %land.lhs.true327.if.end334.sink.split_crit_edge ]
  %sl_vid = getelementptr %struct.mlx4_cqe, ptr %add.ptr.i595.pn, i32 %1, i32 3
  %271 = ptrtoint ptr %sl_vid to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %sl_vid, align 4
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 15, i32 0, i32 9
  %273 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %.sink645, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 15, i32 0, i32 10
  %274 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %272, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 15, i32 0, i32 3
  %275 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %275, i32 4)
  %bf.load.i612 = load i32, ptr %vlan_present.i, align 2
  %bf.set.i613 = or i32 %bf.load.i612, -2147483648
  store i32 %bf.set.i613, ptr %vlan_present.i, align 2
  br label %if.end334

if.end334:                                        ; preds = %if.end334.sink.split, %land.lhs.true327.if.end334_crit_edge, %if.else323.if.end334_crit_edge
  %call335 = call fastcc i32 @mlx4_en_complete_rx_desc(ptr noundef %add.ptr.i594, ptr noundef %add.ptr32, ptr noundef nonnull %call229, i32 noundef %length.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call335)
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %if.else347, label %if.then343, !prof !84

if.then343:                                       ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #13
  %conv344 = trunc i32 %call335 to i8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 17
  %276 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %conv344, ptr %nr_frags, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 6
  %279 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %length.0, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 7
  %280 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %length.0, ptr %data_len, align 8
  %call346 = call i32 @napi_gro_frags(ptr noundef %29) #11
  br label %cleanup372

if.else347:                                       ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_present.i614 = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 15, i32 0, i32 3
  %281 = ptrtoint ptr %vlan_present.i614 to i32
  call void @__asan_loadN_noabort(i32 %281, i32 4)
  %bf.load.i615 = load i32, ptr %vlan_present.i614, align 2
  %bf.clear.i = and i32 %bf.load.i615, 2147483647
  store i32 %bf.clear.i, ptr %vlan_present.i614, align 2
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %call229, i32 0, i32 15, i32 0, i32 8
  %282 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 0, ptr %hash.i, align 4
  %283 = ptrtoint ptr %ip_summed306 to i32
  call void @__asan_load2_noabort(i32 %283)
  %bf.load.i616 = load i16, ptr %ip_summed306, align 8
  %bf.clear2.i = and i16 %bf.load.i616, -193
  store i16 %bf.clear2.i, ptr %ip_summed306, align 8
  br label %cleanup372

cleanup372:                                       ; preds = %if.else347, %if.then343, %if.end226.cleanup372_crit_edge, %sw.bb219, %if.end217, %if.then214, %if.end201, %if.then198, %for.end.i, %for.body.i.cleanup372_crit_edge, %for.body.cleanup372_crit_edge, %if.then65, %do.body62.cleanup372_crit_edge, %if.then48
  %xdp_redir_flush.3.off0 = phi i1 [ %xdp_redir_flush.0.off0, %if.then48 ], [ %xdp_redir_flush.0.off0, %if.then65 ], [ %xdp_redir_flush.0.off0, %do.body62.cleanup372_crit_edge ], [ %xdp_redir_flush.0.off0, %if.end226.cleanup372_crit_edge ], [ %xdp_redir_flush.0.off0, %if.then343 ], [ %xdp_redir_flush.0.off0, %if.else347 ], [ %xdp_redir_flush.0.off0, %for.end.i ], [ %xdp_redir_flush.0.off0, %if.end201 ], [ %xdp_redir_flush.0.off0, %if.end217 ], [ %xdp_redir_flush.0.off0, %sw.bb219 ], [ true, %if.then198 ], [ %xdp_redir_flush.0.off0, %if.then214 ], [ %xdp_redir_flush.0.off0, %for.body.i.cleanup372_crit_edge ], [ %xdp_redir_flush.0.off0, %for.body.cleanup372_crit_edge ]
  %284 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %cons_index, align 4
  %inc352 = add i32 %285, 1
  store i32 %inc352, ptr %cons_index, align 4
  %286 = ptrtoint ptr %size_mask to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %size_mask, align 64
  %and356 = and i32 %287, %inc352
  %288 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %buf, align 4
  %290 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %cqe_size, align 4
  %mul.i617 = mul i32 %291, %and356
  %add.ptr.i618 = getelementptr i8, ptr %289, i32 %mul.i617
  %inc361 = add i32 %polled.0, 1
  %cmp362.not = icmp eq i32 %inc361, %budget
  br i1 %cmp362.not, label %cleanup372.while.end_crit_edge, label %cleanup372.while.cond_crit_edge

cleanup372.while.cond_crit_edge:                  ; preds = %cleanup372
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

cleanup372.while.end_crit_edge:                   ; preds = %cleanup372
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup372.while.end_crit_edge, %while.cond.while.end_crit_edge
  %polled.2 = phi i32 [ %budget, %cleanup372.while.end_crit_edge ], [ %polled.0, %while.cond.while.end_crit_edge ]
  %xdp_redir_flush.5.off0 = phi i1 [ %xdp_redir_flush.3.off0, %cleanup372.while.end_crit_edge ], [ %xdp_redir_flush.0.off0, %while.cond.while.end_crit_edge ]
  br i1 %xdp_redir_flush.5.off0, label %if.then382, label %while.end.if.end383_crit_edge

while.end.if.end383_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end383

if.then382:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @xdp_do_flush() #11
  br label %if.end383

if.end383:                                        ; preds = %if.then382, %while.end.if.end383_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %polled.2)
  %tobool384.not = icmp eq i32 %polled.2, 0
  br i1 %tobool384.not, label %if.end383.if.end405_crit_edge, label %if.then391, !prof !84

if.end383.if.end405_crit_edge:                    ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end405

if.then391:                                       ; preds = %if.end383
  %292 = ptrtoint ptr %doorbell_pending to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %doorbell_pending, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %tobool392.not = icmp eq i8 %293, 0
  br i1 %tobool392.not, label %if.then391.if.end398_crit_edge, label %if.then393

if.then391.if.end398_crit_edge:                   ; preds = %if.then391
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end398

if.then393:                                       ; preds = %if.then391
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx394 = getelementptr i8, ptr %dev, i32 62032
  %294 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %arrayidx394, align 4
  %arrayidx395 = getelementptr ptr, ptr %295, i32 %3
  %296 = ptrtoint ptr %arrayidx395 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx395, align 4
  %298 = getelementptr inbounds %struct.mlx4_en_cq, ptr %297, i32 0, i32 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 1, ptr %298, align 8
  %arrayidx396 = getelementptr i8, ptr %dev, i32 61512
  %300 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %arrayidx396, align 4
  %arrayidx397 = getelementptr ptr, ptr %301, i32 %3
  %302 = ptrtoint ptr %arrayidx397 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx397, align 4
  call void @mlx4_en_xmit_doorbell(ptr noundef %303) #11
  br label %if.end398

if.end398:                                        ; preds = %if.then393, %if.then391.if.end398_crit_edge
  %304 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %cons_index, align 4
  %and.i619 = and i32 %305, 16777215
  %set_ci_db.i = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 5
  %306 = ptrtoint ptr %set_ci_db.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %set_ci_db.i, align 4
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %and.i619, ptr %307, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @arm_heavy_mb() #11
  %309 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %cons_index, align 4
  %cons = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 8
  %311 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %310, ptr %cons, align 16
  br label %if.end405

if.end405:                                        ; preds = %if.end398, %if.end383.if.end405_crit_edge
  %actual_size.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 2
  %312 = ptrtoint ptr %actual_size.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %actual_size.i, align 4
  %prod.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 7
  %314 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %prod.i, align 4
  %cons.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 8
  %316 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %cons.i, align 16
  %sub.neg.i = sub i32 %317, %315
  %sub1.i = add i32 %sub.neg.i, %313
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub1.i)
  %cmp.i620 = icmp ult i32 %sub1.i, 8
  br i1 %cmp.i620, label %if.end405.cleanup406_crit_edge, label %do.body.preheader.i

if.end405.cleanup406_crit_edge:                   ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup406

do.body.preheader.i:                              ; preds = %if.end405
  %buf.i.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 11
  %log_stride.i.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 5
  %page_cache.i.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %if.end4.i.do.body.i_crit_edge, %do.body.preheader.i
  %missing.0.i = phi i32 [ %dec.i, %if.end4.i.do.body.i_crit_edge ], [ %sub1.i, %do.body.preheader.i ]
  %318 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %prod.i, align 4
  %320 = ptrtoint ptr %size_mask to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %size_mask, align 64
  %and.i621 = and i32 %321, %319
  %322 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %buf.i.i, align 4
  %324 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %log_stride.i.i, align 2
  %conv.i.i622 = zext i16 %325 to i32
  %shl.i.i623 = shl i32 %and.i621, %conv.i.i622
  %add.ptr.i.i624 = getelementptr i8, ptr %323, i32 %shl.i.i623
  %326 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %rx_info, align 32
  %328 = ptrtoint ptr %log_rx_info to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %log_rx_info, align 1
  %conv1.i.i = zext i8 %329 to i32
  %shl2.i.i = shl i32 %and.i621, %conv1.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %327, i32 %shl2.i.i
  %330 = ptrtoint ptr %page_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %page_cache.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %331)
  %cmp.not.i.i = icmp eq i32 %331, 0
  br i1 %cmp.not.i.i, label %mlx4_en_prepare_rx_desc.exit.i, label %if.then.i.i625, !prof !84

if.then.i.i625:                                   ; preds = %do.body.i
  %332 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %add.ptr3.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %333, null
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.then.i.i625.mlx4_en_prepare_rx_desc.exit.thread.i_crit_edge

if.then.i.i625.mlx4_en_prepare_rx_desc.exit.thread.i_crit_edge: ; preds = %if.then.i.i625
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx4_en_prepare_rx_desc.exit.thread.i

if.then8.i.i:                                     ; preds = %if.then.i.i625
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i.i = add i32 %331, -1
  %334 = ptrtoint ptr %page_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %dec.i.i, ptr %page_cache.i.i, align 8
  %arrayidx.i.i626 = getelementptr %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 14, i32 1, i32 %dec.i.i
  %335 = ptrtoint ptr %arrayidx.i.i626 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %arrayidx.i.i626, align 4
  %337 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %336, ptr %add.ptr3.i.i, align 4
  %338 = load i32, ptr %page_cache.i.i, align 8
  %dma.i.i = getelementptr %struct.mlx4_en_rx_ring, ptr %13, i32 0, i32 14, i32 1, i32 %338, i32 1
  %339 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %dma.i.i, align 4
  %dma22.i.i = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %add.ptr3.i.i, i32 0, i32 1
  %341 = ptrtoint ptr %dma22.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %340, ptr %dma22.i.i, align 4
  br label %mlx4_en_prepare_rx_desc.exit.thread.i

mlx4_en_prepare_rx_desc.exit.thread.i:            ; preds = %if.then8.i.i, %if.then.i.i625.mlx4_en_prepare_rx_desc.exit.thread.i_crit_edge
  %page_offset.i.i = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %add.ptr3.i.i, i32 0, i32 2
  %342 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 256, ptr %page_offset.i.i, align 4
  %dma23.i.i = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %add.ptr3.i.i, i32 0, i32 1
  %343 = ptrtoint ptr %dma23.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %dma23.i.i, align 4
  %add.i.i627 = add i32 %344, 256
  %conv24.i.i = zext i32 %add.i.i627 to i64
  %addr.i.i = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %add.ptr.i.i624, i32 0, i32 2
  %345 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store8_noabort(i32 %345)
  store i64 %conv24.i.i, ptr %addr.i.i, align 8
  br label %if.end4.i

mlx4_en_prepare_rx_desc.exit.i:                   ; preds = %do.body.i
  %call.i.i = call fastcc i32 @mlx4_en_alloc_frags(ptr noundef %add.ptr.i594, ptr noundef %13, ptr noundef %add.ptr.i.i624, ptr noundef %add.ptr3.i.i, i32 noundef 133664) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i628 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i628, label %mlx4_en_prepare_rx_desc.exit.i.if.end4.i_crit_edge, label %mlx4_en_prepare_rx_desc.exit.i.do.end.i_crit_edge

mlx4_en_prepare_rx_desc.exit.i.do.end.i_crit_edge: ; preds = %mlx4_en_prepare_rx_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

mlx4_en_prepare_rx_desc.exit.i.if.end4.i_crit_edge: ; preds = %mlx4_en_prepare_rx_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %mlx4_en_prepare_rx_desc.exit.i.if.end4.i_crit_edge, %mlx4_en_prepare_rx_desc.exit.thread.i
  %346 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %prod.i, align 4
  %inc.i629 = add i32 %347, 1
  store i32 %inc.i629, ptr %prod.i, align 4
  %dec.i = add i32 %missing.0.i, -1
  %tobool6.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.do.end.i_crit_edge, label %if.end4.i.do.body.i_crit_edge, !prof !84

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end4.i.do.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.end4.i.do.end.i_crit_edge, %mlx4_en_prepare_rx_desc.exit.i.do.end.i_crit_edge
  %348 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %prod.i, align 4
  %and.i.i630 = and i32 %349, 65535
  %350 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %13, align 128
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %and.i.i630, ptr %351, align 4
  br label %cleanup406

cleanup406:                                       ; preds = %do.end.i, %if.end405.cleanup406_crit_edge, %entry.cleanup406_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup406_crit_edge ], [ %polled.2, %if.end405.cleanup406_crit_edge ], [ %polled.2, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %doorbell_pending) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !91

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !105
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 51, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #11
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
declare dso_local i32 @mlx4_en_xmit_frame(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @napi_get_frags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx4_en_get_cqe_ts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_fill_hwtstamps(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_en_complete_rx_desc(ptr nocapture noundef readonly %priv, ptr nocapture noundef %frags, ptr nocapture noundef %skb, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frags, align 4
  %tobool.not126 = icmp eq ptr %1, null
  br i1 %tobool.not126, label %entry.cleanup_crit_edge, label %if.end.lr.ph, !prof !84

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %frag_info1 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 47
  %2 = ptrtoint ptr %frag_info1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %frag_info1, align 4
  %conv125 = zext i16 %3 to i32
  %4 = tail call i32 @llvm.smin.i32(i32 %length, i32 %conv125)
  %ddev = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 78
  %dma_dir = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 50
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %pfmemalloc.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %rx_headroom = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 51
  br label %if.end

while.cond.preheader:                             ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %nr.0134)
  %cmp52138 = icmp ult i32 %nr.0134, 2147483647
  br i1 %cmp52138, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  br label %while.body

if.end:                                           ; preds = %if.end48.if.end_crit_edge, %if.end.lr.ph
  %5 = phi ptr [ %1, %if.end.lr.ph ], [ %63, %if.end48.if.end_crit_edge ]
  %6 = phi i32 [ %4, %if.end.lr.ph ], [ %61, %if.end48.if.end_crit_edge ]
  %frags.addr.0135 = phi ptr [ %frags, %if.end.lr.ph ], [ %incdec.ptr49, %if.end48.if.end_crit_edge ]
  %nr.0134 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %if.end48.if.end_crit_edge ]
  %release.0.off0133 = phi i1 [ true, %if.end.lr.ph ], [ %release.1.off0114, %if.end48.if.end_crit_edge ]
  %truesize.0132 = phi i32 [ 0, %if.end.lr.ph ], [ %add, %if.end48.if.end_crit_edge ]
  %frag_info.0128 = phi ptr [ %frag_info1, %if.end.lr.ph ], [ %incdec.ptr, %if.end48.if.end_crit_edge ]
  %length.addr.0127 = phi i32 [ %length, %if.end.lr.ph ], [ %sub, %if.end48.if.end_crit_edge ]
  %dma8 = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %frags.addr.0135, i32 0, i32 1
  %7 = ptrtoint ptr %dma8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma8, align 4
  %9 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddev, align 4
  %page_offset = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %frags.addr.0135, i32 0, i32 2
  %11 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_offset, align 4
  %13 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dma_dir, align 2
  %conv9 = zext i8 %14 to i32
  %add.i = add i32 %12, %8
  tail call void @dma_sync_single_for_cpu(ptr noundef %10, i32 noundef %add.i, i32 noundef %6, i32 noundef %conv9) #11
  %15 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page_offset, align 4
  %17 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i, align 4
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %18, i32 0, i32 12, i32 %nr.0134
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %5, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %18, i32 0, i32 12, i32 %nr.0134, i32 2
  %20 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %16, ptr %bv_offset.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %18, i32 0, i32 12, i32 %nr.0134, i32 1
  %21 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %6, ptr %bv_len.i.i, align 4
  %22 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %24, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %25, %if.end.i.i ]
  %26 = inttoptr i32 %retval.0.i.i to ptr
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %29 to i32
  %and.i8.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.i.not.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.i.not.i, label %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge, label %if.then.i

_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_fill_page_desc.exit

if.then.i:                                        ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %pfmemalloc.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %pfmemalloc.i, align 2
  %bf.set.i = or i8 %bf.load.i, 2
  store i8 %bf.set.i, ptr %pfmemalloc.i, align 2
  br label %__skb_fill_page_desc.exit

__skb_fill_page_desc.exit:                        ; preds = %if.then.i, %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge
  %frag_stride = getelementptr inbounds %struct.mlx4_en_frag_info, ptr %frag_info.0128, i32 0, i32 1
  %32 = ptrtoint ptr %frag_stride to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frag_stride, align 4
  %add = add i32 %33, %truesize.0132
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %33)
  %cmp12 = icmp eq i32 %33, 2048
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %__skb_fill_page_desc.exit
  %34 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %page_offset, align 4
  %xor = xor i32 %35, 2048
  store i32 %xor, ptr %page_offset, align 4
  %36 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %22, align 4
  %and.i.i104 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i104)
  %tobool.not.i.i105 = icmp eq i32 %and.i.i104, 0
  br i1 %tobool.not.i.i105, label %if.end.i.i108, label %if.then.i.i107, !prof !86

if.then.i.i107:                                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i106 = add i32 %37, -1
  br label %page_count.exit

if.end.i.i108:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %5 to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i108, %if.then.i.i107
  %retval.0.i.i109 = phi i32 [ %sub.i.i106, %if.then.i.i107 ], [ %38, %if.end.i.i108 ]
  %39 = inttoptr i32 %retval.0.i.i109 to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #11
  %40 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp16.not = icmp eq i32 %41, 1
  br i1 %cmp16.not, label %lor.lhs.false, label %page_count.exit.if.then39_crit_edge

page_count.exit.if.then39_crit_edge:              ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

lor.lhs.false:                                    ; preds = %page_count.exit
  %42 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %22, align 4
  %44 = ptrtoint ptr %43 to i32
  %and.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.rhs, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

lor.rhs:                                          ; preds = %lor.lhs.false
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp.i.not.i = icmp eq i32 %46, -1
  br i1 %cmp.i.not.i, label %if.then.i111, label %lor.rhs.if.else44_crit_edge, !prof !84

lor.rhs.if.else44_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else44

if.then.i111:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef nonnull %5, ptr noundef nonnull @.str.33) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #11, !srcloc !109
  unreachable

if.else:                                          ; preds = %__skb_fill_page_desc.exit
  %47 = ptrtoint ptr %rx_headroom to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rx_headroom, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool24.not = icmp eq i16 %48, 0
  br i1 %tobool24.not, label %if.then25, label %if.end37

if.then25:                                        ; preds = %if.else
  %add26 = add nsw i32 %6, 127
  %and = and i32 %add26, -128
  %49 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %page_offset, align 4
  %add28 = add i32 %50, %and
  store i32 %add28, ptr %page_offset, align 4
  %51 = ptrtoint ptr %frag_info.0128 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %frag_info.0128, align 4
  %conv31 = zext i16 %52 to i32
  %add32 = add i32 %add28, %conv31
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add32)
  %cmp33 = icmp ugt i32 %add32, 4096
  br i1 %cmp33, label %if.then25.if.then39_crit_edge, label %if.then25.if.else44_crit_edge

if.then25.if.else44_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else44

if.then25.if.then39_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

if.end37:                                         ; preds = %if.else
  br i1 %release.0.off0133, label %if.end37.if.then39_crit_edge, label %if.end37.if.else44_crit_edge

if.end37.if.else44_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else44

if.end37.if.then39_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

if.then39:                                        ; preds = %if.end37.if.then39_crit_edge, %if.then25.if.then39_crit_edge, %lor.lhs.false.if.then39_crit_edge, %page_count.exit.if.then39_crit_edge
  %53 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ddev, align 4
  %55 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dma_dir, align 2
  %conv42 = zext i8 %56 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %54, i32 noundef %8, i32 noundef 4096, i32 noundef %conv42, i32 noundef 0) #11
  %57 = ptrtoint ptr %frags.addr.0135 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %frags.addr.0135, align 4
  br label %if.end45

if.else44:                                        ; preds = %if.end37.if.else44_crit_edge, %if.then25.if.else44_crit_edge, %lor.rhs.if.else44_crit_edge
  %_refcount.i = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #11
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #11, !srcloc !110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mlx4_en_complete_rx_desc, %if.then.i112)) #11
          to label %if.end45 [label %if.then.i112], !srcloc !91

if.then.i112:                                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef nonnull %5, i32 noundef 1) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then.i112, %if.else44, %if.then39
  %release.1.off0114 = phi i1 [ true, %if.then39 ], [ false, %if.else44 ], [ false, %if.then.i112 ]
  %inc = add i32 %nr.0134, 1
  %sub = sub i32 %length.addr.0127, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool46.not = icmp eq i32 %sub, 0
  br i1 %tobool46.not, label %for.end, label %if.end48

if.end48:                                         ; preds = %if.end45
  %incdec.ptr = getelementptr %struct.mlx4_en_frag_info, ptr %frag_info.0128, i32 1
  %incdec.ptr49 = getelementptr %struct.mlx4_en_rx_alloc, ptr %frags.addr.0135, i32 1
  %59 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %incdec.ptr, align 4
  %conv = zext i16 %60 to i32
  %61 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %conv)
  %62 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %incdec.ptr49, align 4
  %tobool.not = icmp eq ptr %63, null
  br i1 %tobool.not, label %while.cond.preheader, label %if.end48.if.end_crit_edge, !prof !84

if.end48.if.end_crit_edge:                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.end:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %truesize50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %64 = ptrtoint ptr %truesize50 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %truesize50, align 8
  %add51 = add i32 %65, %add
  store i32 %add51, ptr %truesize50, align 8
  br label %cleanup

while.body:                                       ; preds = %__skb_frag_unref.exit.while.body_crit_edge, %while.body.lr.ph
  %nr.1139 = phi i32 [ %inc, %while.body.lr.ph ], [ %dec, %__skb_frag_unref.exit.while.body_crit_edge ]
  %dec = add nsw i32 %nr.1139, -1
  %66 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i, align 4
  %frags55 = getelementptr inbounds %struct.skb_shared_info, ptr %67, i32 0, i32 12
  %add.ptr = getelementptr %struct.bio_vec, ptr %frags55, i32 %dec
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr, align 4
  %70 = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %and.i.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add i32 %72, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %69 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %73, %if.end.i.i.i ]
  %74 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %74, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  %75 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.i.i.i.i = icmp eq i32 %76, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !84

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call void @dump_page(ptr noundef %77, ptr noundef nonnull @.str.29) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !87
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #11, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %78, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mlx4_en_complete_rx_desc, %if.then.i.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !91

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %74, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.__skb_frag_unref.exit_crit_edge

folio_put_testzero.exit.i.i.i.__skb_frag_unref.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_frag_unref.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %74) #11
  br label %__skb_frag_unref.exit

__skb_frag_unref.exit:                            ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.__skb_frag_unref.exit_crit_edge
  %cmp52 = icmp ugt i32 %nr.1139, 1
  br i1 %cmp52, label %__skb_frag_unref.exit.while.body_crit_edge, label %__skb_frag_unref.exit.cleanup_crit_edge

__skb_frag_unref.exit.cleanup_crit_edge:          ; preds = %__skb_frag_unref.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

__skb_frag_unref.exit.while.body_crit_edge:       ; preds = %__skb_frag_unref.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %__skb_frag_unref.exit.cleanup_crit_edge, %for.end, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %inc, %for.end ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %__skb_frag_unref.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_frags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_xmit_doorbell(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_rx_irq(ptr noundef %mcq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlx4_en_cq, ptr %mcq, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %port_up = getelementptr i8, ptr %1, i32 51648
  %2 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_up, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !84

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.mlx4_en_cq, ptr %mcq, i32 0, i32 4
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %4) #11
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule_irqoff(ptr noundef %4) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @mlx4_en_arm_cq(ptr noundef %add.ptr.i, ptr noundef %mcq) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_arm_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_poll_rx_cq(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -200
  %dev1 = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool.not = icmp eq i32 %budget, 0
  br i1 %tobool.not, label %entry.cleanup38_crit_edge, label %if.end

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %1, i32 61456
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %if.then3

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %arrayidx4 = getelementptr i8, ptr %1, i32 62032
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %ring = getelementptr i8, ptr %napi, i32 -12
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ring, align 4
  %arrayidx5 = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %10 = getelementptr inbounds %struct.mlx4_en_cq, ptr %9, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %if.then3.if.end12_crit_edge, label %if.then7

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @mlx4_en_process_tx_cq(ptr noundef %1, ptr noundef %9, i32 noundef %budget) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %budget)
  %cmp = icmp sge i32 %call8, %budget
  %frombool10 = zext i1 %cmp to i8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool10, ptr %10, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.then3.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %clean_complete.0.off0 = phi i1 [ %cmp, %if.then7 ], [ false, %if.then3.if.end12_crit_edge ], [ false, %if.end.if.end12_crit_edge ]
  %call13 = tail call i32 @mlx4_en_process_rx_cq(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %budget)
  %cmp14 = icmp eq i32 %call13, %budget
  %brmerge = select i1 %cmp14, i1 true, i1 %clean_complete.0.off0
  br i1 %brmerge, label %if.then16, label %if.end12.if.end28_crit_edge

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then16:                                        ; preds = %if.end12
  %14 = tail call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %aff_mask = getelementptr i8, ptr %napi, i32 248
  %18 = ptrtoint ptr %aff_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aff_mask, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %17)
  %cmp.not.i.i.i = icmp ugt i32 %20, %17
  br i1 %cmp.not.i.i.i, label %if.then16.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then16.cpumask_test_cpu.exit_crit_edge:        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then16
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !86

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %if.then16.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %17, 5
  %arrayidx.i.i = getelementptr i32, ptr %19, i32 %div3.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %17, 31
  %23 = shl nuw i32 1, %and.i.i
  %24 = and i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool19.not = icmp eq i32 %24, 0
  br i1 %tobool19.not, label %cleanup.thread, label %cpumask_test_cpu.exit.cleanup38_crit_edge, !prof !84

cpumask_test_cpu.exit.cleanup38_crit_edge:        ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

cleanup.thread:                                   ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i32 %budget, -1
  br label %if.end28

if.end28:                                         ; preds = %cleanup.thread, %if.end12.if.end28_crit_edge
  %done.2 = phi i32 [ %call13, %if.end12.if.end28_crit_edge ], [ %dec, %cleanup.thread ]
  %call29 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %done.2) #11
  br i1 %call29, label %if.then36, label %if.end28.cleanup38_crit_edge, !prof !86

if.end28.cleanup38_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx4_en_arm_cq(ptr noundef %add.ptr.i, ptr noundef %add.ptr) #11
  br label %cleanup38

cleanup38:                                        ; preds = %if.then36, %if.end28.cleanup38_crit_edge, %cpumask_test_cpu.exit.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup38_crit_edge ], [ %done.2, %if.then36 ], [ %done.2, %if.end28.cleanup38_crit_edge ], [ %budget, %cpumask_test_cpu.exit.cleanup38_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_process_tx_cq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_calc_rx_buf(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  %add1 = add i32 %1, 22
  %arrayidx = getelementptr i8, ptr %dev, i32 61456
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %add1 to i16
  %frag_info = getelementptr i8, ptr %dev, i32 61468
  %4 = ptrtoint ptr %frag_info to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %frag_info, align 4
  %frag_stride = getelementptr i8, ptr %dev, i32 61472
  %5 = ptrtoint ptr %frag_stride to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %frag_stride, align 4
  br label %if.end32

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %add1)
  %cmp = icmp ugt i32 %add1, 10240
  %spec.select = select i1 %cmp, i32 4096, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1)
  %cmp7315 = icmp sgt i32 %add1, 0
  br i1 %cmp7315, label %if.else.while.body_crit_edge, label %if.else.if.end32_crit_edge

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else.while.body_crit_edge
  %buf_size.0317 = phi i32 [ %add29, %while.body.while.body_crit_edge ], [ 0, %if.else.while.body_crit_edge ]
  %i.0316 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.else.while.body_crit_edge ]
  %sub = sub i32 %add1, %buf_size.0317
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0316)
  %cmp11 = icmp slt i32 %i.0316, 3
  %6 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %spec.select)
  %frag_size10.0 = select i1 %cmp11, i32 %6, i32 %sub
  %conv17 = trunc i32 %frag_size10.0 to i16
  %arrayidx19 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 47, i32 %i.0316
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv17, ptr %arrayidx19, align 4
  %add21 = add i32 %frag_size10.0, 127
  %and = and i32 %add21, -128
  %div = udiv i32 4096, %and
  %mul = mul i32 %div, %and
  %sub22 = sub i32 4096, %mul
  %div23 = udiv i32 %sub22, %div
  %and24 = and i32 %div23, -128
  %add25 = add i32 %and24, %and
  %frag_stride28 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 47, i32 %i.0316, i32 1
  %8 = ptrtoint ptr %frag_stride28 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add25, ptr %frag_stride28, align 4
  %add29 = add i32 %frag_size10.0, %buf_size.0317
  %inc = add i32 %i.0316, 1
  %cmp7 = icmp sgt i32 %add1, %add29
  br i1 %cmp7, label %while.body.while.body_crit_edge, label %while.body.if.end32_crit_edge

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end32:                                         ; preds = %while.body.if.end32_crit_edge, %if.else.if.end32_crit_edge, %if.then
  %.sink322 = phi i8 [ 0, %if.then ], [ 2, %if.else.if.end32_crit_edge ], [ 2, %while.body.if.end32_crit_edge ]
  %.sink = phi i16 [ 256, %if.then ], [ 0, %if.else.if.end32_crit_edge ], [ 0, %while.body.if.end32_crit_edge ]
  %i.1 = phi i32 [ 1, %if.then ], [ 0, %if.else.if.end32_crit_edge ], [ %inc, %while.body.if.end32_crit_edge ]
  %dma_dir30 = getelementptr i8, ptr %dev, i32 61502
  %9 = ptrtoint ptr %dma_dir30 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink322, ptr %dma_dir30, align 2
  %rx_headroom31 = getelementptr i8, ptr %dev, i32 61504
  %10 = ptrtoint ptr %rx_headroom31 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %.sink, ptr %rx_headroom31, align 8
  %conv33 = trunc i32 %i.1 to i8
  %num_frags = getelementptr i8, ptr %dev, i32 61500
  %11 = ptrtoint ptr %num_frags to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv33, ptr %num_frags, align 4
  %rx_skb_size = getelementptr i8, ptr %dev, i32 61464
  %12 = ptrtoint ptr %rx_skb_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add1, ptr %rx_skb_size, align 8
  %mul34 = mul i32 %i.1, 12
  %sub121 = add i32 %mul34, -1
  %13 = tail call i32 @llvm.ctlz.i32(i32 %sub121, i1 true) #11, !range !82
  %sub.i.i.i304.pn = sub nuw nsw i32 32, %13
  %cond150 = shl nuw i32 1, %sub.i.i.i304.pn
  %14 = tail call i32 @llvm.ctlz.i32(i32 %cond150, i1 true) #11, !range !82
  %15 = trunc i32 %14 to i8
  %conv198 = xor i8 %15, 31
  %log_rx_info = getelementptr i8, ptr %dev, i32 61501
  %16 = ptrtoint ptr %log_rx_info to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv198, ptr %log_rx_info, align 1
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 8
  %and199 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.end32.do.end_crit_edge, label %if.then201

if.end32.do.end_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then201:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %conv203 = and i32 %i.1, 255
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.11, i32 noundef %add1, i32 noundef %conv203) #11
  br label %do.end

do.end:                                           ; preds = %if.then201, %if.end32.do.end_crit_edge
  %19 = ptrtoint ptr %num_frags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp207319.not = icmp eq i8 %20, 0
  br i1 %cmp207319.not, label %do.end.for.end_crit_edge, label %do.end.do.body209_crit_edge

do.end.do.body209_crit_edge:                      ; preds = %do.end
  br label %do.body209

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body209:                                       ; preds = %for.inc.do.body209_crit_edge, %do.end.do.body209_crit_edge
  %i.2320 = phi i32 [ %inc224, %for.inc.do.body209_crit_edge ], [ 0, %do.end.do.body209_crit_edge ]
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 8
  %and211 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %do.body209.for.inc_crit_edge, label %if.then213

do.body209.for.inc_crit_edge:                     ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then213:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx215 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 47, i32 %i.2320
  %23 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx215, align 4
  %conv217 = zext i16 %24 to i32
  %frag_stride220 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 47, i32 %i.2320, i32 1
  %25 = ptrtoint ptr %frag_stride220 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %frag_stride220, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.12, i32 noundef %i.2320, i32 noundef %conv217, i32 noundef %26) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then213, %do.body209.for.inc_crit_edge
  %inc224 = add nuw nsw i32 %i.2320, 1
  %27 = ptrtoint ptr %num_frags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_frags, align 4
  %conv206 = zext i8 %28 to i32
  %cmp207 = icmp ult i32 %inc224, %conv206
  br i1 %cmp207, label %for.inc.do.body209_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.do.body209_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body209

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_create_drop_qp(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %qpn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qpn) #11
  %0 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %qpn, align 4, !annotation !111
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %call = call i32 @mlx4_qp_reserve_range(ptr noundef %4, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %qpn, i8 noundef zeroext 64, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qpn, align 4
  %drop_qp = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 56
  %call3 = call i32 @mlx4_qp_alloc(ptr noundef %8, i32 noundef %10, ptr noundef %drop_qp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.14) #11
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qpn, align 4
  call void @mlx4_qp_release_range(ptr noundef %14, i32 noundef %16, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qpn) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_qp_reserve_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_qp_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_qp_release_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_destroy_drop_qp(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drop_qp = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 56
  %qpn1 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 56, i32 1
  %0 = ptrtoint ptr %qpn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qpn1, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @mlx4_qp_remove(ptr noundef %5, ptr noundef %drop_qp) #11
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void @mlx4_qp_free(ptr noundef %9, ptr noundef %drop_qp) #11
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void @mlx4_qp_release_range(ptr noundef %13, i32 noundef %1, i32 noundef 1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_qp_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_qp_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_config_rss_steer(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %context = alloca %struct.mlx4_qp_context, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rss_map2 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %context) #11
  %2 = call ptr @memset(ptr %context, i32 255, i32 248)
  %msg_enable = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 23
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.2, ptr noundef %priv, ptr noundef nonnull @.str.15) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %rx_ring_num = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 45
  %5 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %conv = select i1 %cmp, i8 64, i8 0
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call = tail call i32 @mlx4_qp_reserve_range(ptr noundef %8, i32 noundef %6, i32 noundef %6, ptr noundef %rss_map2, i8 noundef zeroext %conv, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  %9 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_ring_num, align 4
  br i1 %tobool5.not, label %for.cond.preheader, label %if.then6

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10268.not = icmp eq i32 %10, 0
  br i1 %cmp10268.not, label %for.cond.preheader.if.end29_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end29_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev11.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 2
  br label %for.body

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.16, i32 noundef %10) #11
  br label %cleanup

for.body:                                         ; preds = %if.end18.critedge.for.body_crit_edge, %for.body.lr.ph
  %good_qps.0270 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.critedge.for.body_crit_edge ]
  %11 = ptrtoint ptr %rss_map2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rss_map2, align 4
  %add = add i32 %12, %good_qps.0270
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %good_qps.0270
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 2, i32 %good_qps.0270
  %arrayidx14 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 1, i32 %good_qps.0270
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 248) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.rss_err_crit_edge, label %if.end.i

for.body.rss_err_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rss_err

if.end.i:                                         ; preds = %for.body
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %16, align 8
  %call2.i = tail call i32 @mlx4_qp_alloc(ptr noundef %19, i32 noundef %add, ptr noundef %arrayidx14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %mlx4_en_config_rss_qp.exit.thread257

mlx4_en_config_rss_qp.exit.thread257:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.35, i32 noundef %add) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %rss_err

if.end5.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mlx4_en_sqp_event, ptr %arrayidx14, align 4
  %21 = call ptr @memset(ptr %call7.i.i, i32 0, i32 248)
  %actual_size.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %14, i32 0, i32 2
  %22 = ptrtoint ptr %actual_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_size.i, align 4
  %stride.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %14, i32 0, i32 4
  %24 = ptrtoint ptr %stride.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %stride.i, align 4
  %conv.i = zext i16 %25 to i32
  %cqn.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %14, i32 0, i32 6
  %26 = ptrtoint ptr %cqn.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cqn.i, align 8
  %conv6.i = zext i16 %27 to i32
  tail call void @mlx4_en_fill_qp_context(ptr noundef %priv, i32 noundef %23, i32 noundef %conv.i, i32 noundef 0, i32 noundef 0, i32 noundef %add, i32 noundef %conv6.i, i32 noundef -1, ptr noundef nonnull %call7.i.i) #11
  %dma.i = getelementptr inbounds %struct.mlx4_db, ptr %14, i32 0, i32 2
  %28 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma.i, align 8
  %conv7.i = zext i32 %29 to i64
  %db_rec_addr.i = getelementptr inbounds %struct.mlx4_qp_context, ptr %call7.i.i, i32 0, i32 23
  %30 = ptrtoint ptr %db_rec_addr.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv7.i, ptr %db_rec_addr.i, align 8
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %16, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %32, i32 0, i32 3, i32 60
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %34, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool9.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool9.not.i, label %if.else17.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end5.i
  %param3.i = getelementptr inbounds %struct.mlx4_qp_context, ptr %call7.i.i, i32 0, i32 33
  %35 = ptrtoint ptr %param3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %param3.i, align 8
  %or.i = or i32 %36, 536870912
  store i32 %or.i, ptr %param3.i, align 8
  %37 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev11.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 23
  %39 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %features.i, align 16
  %and12.i = and i64 %40, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.i)
  %tobool13.not.i = icmp eq i64 %and12.i, 0
  %fcs_del15.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %14, i32 0, i32 10
  br i1 %tobool13.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %fcs_del15.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %fcs_del15.i, align 8
  br label %if.end19.i

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %fcs_del15.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 4, ptr %fcs_del15.i, align 8
  br label %if.end19.i

if.else17.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %fcs_del18.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %14, i32 0, i32 10
  %43 = ptrtoint ptr %fcs_del18.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %fcs_del18.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else17.i, %if.else.i, %if.then14.i
  %44 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %16, align 8
  %mtt.i = getelementptr inbounds %struct.mlx4_hwq_resources, ptr %14, i32 0, i32 1
  %call22.i = tail call i32 @mlx4_qp_to_ready(ptr noundef %45, ptr noundef %mtt.i, ptr noundef nonnull %call7.i.i, ptr noundef %arrayidx14, ptr noundef %arrayidx13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end18.critedge, label %if.then24.i

if.then24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %16, align 8
  tail call void @mlx4_qp_remove(ptr noundef %47, ptr noundef %arrayidx14) #11
  %48 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %16, align 8
  tail call void @mlx4_qp_free(ptr noundef %49, ptr noundef %arrayidx14) #11
  %prod.i.i.c292 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %14, i32 0, i32 7
  %50 = ptrtoint ptr %prod.i.i.c292 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prod.i.i.c292, align 4
  %and.i.i.c293 = and i32 %51, 65535
  %52 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %14, align 128
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and.i.i.c293, ptr %53, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %rss_err

if.end18.critedge:                                ; preds = %if.end19.i
  %prod.i.i.c = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %14, i32 0, i32 7
  %55 = ptrtoint ptr %prod.i.i.c to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %prod.i.i.c, align 4
  %and.i.i.c = and i32 %56, 65535
  %57 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %14, align 128
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and.i.i.c, ptr %58, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %inc = add nuw i32 %good_qps.0270, 1
  %60 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_ring_num, align 4
  %cmp10 = icmp ult i32 %inc, %61
  br i1 %cmp10, label %if.end18.critedge.for.body_crit_edge, label %for.end

if.end18.critedge.for.body_crit_edge:             ; preds = %if.end18.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end18.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %phi.cmp = icmp eq i32 %61, 1
  br i1 %phi.cmp, label %if.then23, label %for.end.if.end29_crit_edge

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %qps24 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 1
  %indir_qp = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 3
  %62 = ptrtoint ptr %indir_qp to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %qps24, ptr %indir_qp, align 4
  %qpn27 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %qpn27 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %qpn27, align 4
  %base_qpn28 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 36
  %65 = ptrtoint ptr %base_qpn28 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %base_qpn28, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.17, ptr noundef %priv, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end29:                                         ; preds = %for.end.if.end29_crit_edge, %for.cond.preheader.if.end29_crit_edge
  %good_qps.0.lcssa284 = phi i32 [ %inc, %for.end.if.end29_crit_edge ], [ 0, %for.cond.preheader.if.end29_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i254 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3520, i32 noundef 72) #14
  %indir_qp31 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 3
  %67 = ptrtoint ptr %indir_qp31 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i254, ptr %indir_qp31, align 4
  %tobool33.not = icmp eq ptr %call7.i.i254, null
  br i1 %tobool33.not, label %if.end29.rss_err_crit_edge, label %if.end35

if.end29.rss_err_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %rss_err

if.end35:                                         ; preds = %if.end29
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %base_qpn37 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 36
  %70 = ptrtoint ptr %base_qpn37 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base_qpn37, align 4
  %call39 = tail call i32 @mlx4_qp_alloc(ptr noundef %69, i32 noundef %71, ptr noundef nonnull %call7.i.i254) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.19) #11
  br label %qp_alloc_err

if.end42:                                         ; preds = %if.end35
  %72 = ptrtoint ptr %indir_qp31 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %indir_qp31, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @mlx4_en_sqp_event, ptr %73, align 4
  %75 = ptrtoint ptr %base_qpn37 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %base_qpn37, align 4
  %rx_ring45 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53
  %77 = ptrtoint ptr %rx_ring45 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rx_ring45, align 4
  %cqn = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %cqn to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %cqn, align 8
  %conv47 = zext i16 %80 to i32
  call void @mlx4_en_fill_qp_context(ptr noundef %priv, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef %76, i32 noundef %conv47, i32 noundef -1, ptr noundef nonnull %context) #11
  %prof = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 1
  %81 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prof, align 4
  %rss_rings48 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %rss_rings48 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rss_rings48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool49.not = icmp eq i32 %84, 0
  br i1 %tobool49.not, label %if.end42.if.then55_crit_edge, label %lor.lhs.false

if.end42.if.then55_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

lor.lhs.false:                                    ; preds = %if.end42
  %85 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp53 = icmp ugt i32 %84, %86
  br i1 %cmp53, label %lor.lhs.false.if.then55_crit_edge, label %lor.lhs.false.if.end59_crit_edge

lor.lhs.false.if.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

lor.lhs.false.if.then55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false.if.then55_crit_edge, %if.end42.if.then55_crit_edge
  %87 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_ring_num, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %lor.lhs.false.if.end59_crit_edge
  %rss_rings.0 = phi i32 [ %88, %if.then55 ], [ %84, %lor.lhs.false.if.end59_crit_edge ]
  %add.ptr60 = getelementptr inbounds i8, ptr %context, i32 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rss_rings.0)
  %tobool.not.i.i = icmp eq i32 %rss_rings.0, 0
  %89 = call i32 @llvm.ctlz.i32(i32 %rss_rings.0, i1 true) #11, !range !82
  %sub.i.op.i = shl nuw nsw i32 %89, 24
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 520093696
  %shl = select i1 %tobool.not.i.i, i32 -16777216, i32 %sub.i.op.i.op
  %90 = ptrtoint ptr %rss_map2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rss_map2, align 4
  %or = or i32 %shl, %91
  %92 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or, ptr %add.ptr60, align 4
  %default_qpn = getelementptr inbounds i8, ptr %context, i32 64
  %93 = ptrtoint ptr %default_qpn to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %91, ptr %default_qpn, align 8
  %94 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv, align 8
  %profile = getelementptr inbounds %struct.mlx4_en_dev, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %profile, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool74.not = icmp eq i32 %97, 0
  br i1 %tobool74.not, label %if.end59.if.end80_crit_edge, label %if.then75

if.end59.if.end80_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then75:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %base_qpn_udp = getelementptr inbounds i8, ptr %context, i32 112
  %98 = ptrtoint ptr %base_qpn_udp to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %91, ptr %base_qpn_udp, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end59.if.end80_crit_edge
  %rss_mask.0 = phi i8 [ 63, %if.then75 ], [ 60, %if.end59.if.end80_crit_edge ]
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 8
  %tunnel_offload_mode = getelementptr inbounds %struct.mlx4_dev, ptr %100, i32 0, i32 3, i32 89
  %101 = ptrtoint ptr %tunnel_offload_mode to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tunnel_offload_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp82 = icmp eq i32 %102, 1
  br i1 %cmp82, label %if.then84, label %if.end80.if.end88_crit_edge

if.end80.if.end88_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.17, ptr noundef %priv, ptr noundef nonnull @.str.20) #11
  %103 = or i8 %rss_mask.0, -128
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end80.if.end88_crit_edge
  %rss_mask.1 = phi i8 [ %103, %if.then84 ], [ %rss_mask.0, %if.end80.if.end88_crit_edge ]
  %flags89 = getelementptr inbounds i8, ptr %context, i32 71
  %104 = ptrtoint ptr %flags89 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %rss_mask.1, ptr %flags89, align 1
  %hash_fn = getelementptr inbounds i8, ptr %context, i32 70
  %105 = ptrtoint ptr %hash_fn to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %hash_fn, align 2
  %rss_hash_fn = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 95
  %106 = ptrtoint ptr %rss_hash_fn to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %rss_hash_fn, align 8
  %108 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %107, label %if.else104 [
    i8 2, label %if.then93
    i8 1, label %if.then100
  ]

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %hash_fn to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %hash_fn, align 2
  br label %if.end106

if.then100:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %rss_key = getelementptr inbounds i8, ptr %context, i32 72
  %rss_key102 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 94
  %110 = call ptr @memcpy(ptr %rss_key, ptr %rss_key102, i32 40)
  br label %if.end106

if.else104:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.21) #11
  br label %indir_err

if.end106:                                        ; preds = %if.then100, %if.then93
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 8
  %mtt = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 26, i32 1
  %113 = ptrtoint ptr %indir_qp31 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %indir_qp31, align 4
  %indir_state = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 4
  %call109 = call i32 @mlx4_qp_to_ready(ptr noundef %112, ptr noundef %mtt, ptr noundef nonnull %context, ptr noundef %114, ptr noundef %indir_state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end106.cleanup_crit_edge, label %if.end106.indir_err_crit_edge

if.end106.indir_err_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %indir_err

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

indir_err:                                        ; preds = %if.end106.indir_err_crit_edge, %if.else104
  %err.0 = phi i32 [ %call109, %if.end106.indir_err_crit_edge ], [ -22, %if.else104 ]
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 8
  %indir_state114 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 4
  %117 = ptrtoint ptr %indir_state114 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %indir_state114, align 4
  %119 = ptrtoint ptr %indir_qp31 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %indir_qp31, align 4
  %call116 = call i32 @mlx4_qp_modify(ptr noundef %116, ptr noundef null, i32 noundef %118, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %120) #11
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 8
  %123 = ptrtoint ptr %indir_qp31 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %indir_qp31, align 4
  call void @mlx4_qp_remove(ptr noundef %122, ptr noundef %124) #11
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 8
  %127 = ptrtoint ptr %indir_qp31 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %indir_qp31, align 4
  call void @mlx4_qp_free(ptr noundef %126, ptr noundef %128) #11
  br label %qp_alloc_err

qp_alloc_err:                                     ; preds = %indir_err, %if.then41
  %err.1 = phi i32 [ %call39, %if.then41 ], [ %err.0, %indir_err ]
  %129 = ptrtoint ptr %indir_qp31 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %indir_qp31, align 4
  call void @kfree(ptr noundef %130) #11
  %131 = ptrtoint ptr %indir_qp31 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %indir_qp31, align 4
  br label %rss_err

rss_err:                                          ; preds = %qp_alloc_err, %if.end29.rss_err_crit_edge, %if.then24.i, %mlx4_en_config_rss_qp.exit.thread257, %for.body.rss_err_crit_edge
  %good_qps.0265 = phi i32 [ %good_qps.0.lcssa284, %qp_alloc_err ], [ %good_qps.0.lcssa284, %if.end29.rss_err_crit_edge ], [ %good_qps.0270, %mlx4_en_config_rss_qp.exit.thread257 ], [ %good_qps.0270, %if.then24.i ], [ %good_qps.0270, %for.body.rss_err_crit_edge ]
  %err.2 = phi i32 [ %err.1, %qp_alloc_err ], [ -12, %if.end29.rss_err_crit_edge ], [ %call2.i, %mlx4_en_config_rss_qp.exit.thread257 ], [ %call22.i, %if.then24.i ], [ -12, %for.body.rss_err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %good_qps.0265)
  %cmp124272 = icmp sgt i32 %good_qps.0265, 0
  br i1 %cmp124272, label %rss_err.for.body126_crit_edge, label %rss_err.for.end141_crit_edge

rss_err.for.end141_crit_edge:                     ; preds = %rss_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end141

rss_err.for.body126_crit_edge:                    ; preds = %rss_err
  br label %for.body126

for.body126:                                      ; preds = %for.body126.for.body126_crit_edge, %rss_err.for.body126_crit_edge
  %i.1273 = phi i32 [ %inc140, %for.body126.for.body126_crit_edge ], [ 0, %rss_err.for.body126_crit_edge ]
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 8
  %arrayidx129 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 2, i32 %i.1273
  %134 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx129, align 4
  %arrayidx131 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 1, i32 %i.1273
  %call132 = call i32 @mlx4_qp_modify(ptr noundef %133, ptr noundef null, i32 noundef %135, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %arrayidx131) #11
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 8
  call void @mlx4_qp_remove(ptr noundef %137, ptr noundef %arrayidx131) #11
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 8
  call void @mlx4_qp_free(ptr noundef %139, ptr noundef %arrayidx131) #11
  %inc140 = add nuw nsw i32 %i.1273, 1
  %exitcond.not = icmp eq i32 %inc140, %good_qps.0265
  br i1 %exitcond.not, label %for.body126.for.end141_crit_edge, label %for.body126.for.body126_crit_edge

for.body126.for.body126_crit_edge:                ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body126

for.body126.for.end141_crit_edge:                 ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end141

for.end141:                                       ; preds = %for.body126.for.end141_crit_edge, %rss_err.for.end141_crit_edge
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 8
  %142 = ptrtoint ptr %rss_map2 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rss_map2, align 4
  %144 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rx_ring_num, align 4
  call void @mlx4_qp_release_range(ptr noundef %141, i32 noundef %143, i32 noundef %145) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end141, %if.end106.cleanup_crit_edge, %if.then23, %if.then6
  %retval.0 = phi i32 [ %call, %if.then6 ], [ %err.2, %for.end141 ], [ 0, %if.then23 ], [ 0, %if.end106.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %context) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_sqp_event(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_fill_qp_context(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_qp_to_ready(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_qp_modify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_release_rss_steer(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rx_ring_num = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 45
  %2 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %indir_state = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 4
  %6 = ptrtoint ptr %indir_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %indir_state, align 4
  %indir_qp = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 3
  %8 = ptrtoint ptr %indir_qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %indir_qp, align 4
  %call = tail call i32 @mlx4_qp_modify(ptr noundef %5, ptr noundef null, i32 noundef %7, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %9) #11
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = ptrtoint ptr %indir_qp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %indir_qp, align 4
  tail call void @mlx4_qp_remove(ptr noundef %11, ptr noundef %13) #11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %16 = ptrtoint ptr %indir_qp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %indir_qp, align 4
  tail call void @mlx4_qp_free(ptr noundef %15, ptr noundef %17) #11
  %18 = ptrtoint ptr %indir_qp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %indir_qp, align 4
  tail call void @kfree(ptr noundef %19) #11
  %20 = ptrtoint ptr %indir_qp to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %indir_qp, align 4
  %21 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %rx_ring_num, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %22 = phi i32 [ %.pr, %if.then ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1047.not = icmp eq i32 %22, 0
  br i1 %cmp1047.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 2, i32 %i.048
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39, i32 1, i32 %i.048
  %call13 = tail call i32 @mlx4_qp_modify(ptr noundef %24, ptr noundef null, i32 noundef %26, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %arrayidx12) #11
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  tail call void @mlx4_qp_remove(ptr noundef %28, ptr noundef %arrayidx12) #11
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  tail call void @mlx4_qp_free(ptr noundef %30, ptr noundef %arrayidx12) #11
  %inc = add nuw i32 %i.048, 1
  %31 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_ring_num, align 4
  %cmp10 = icmp ult i32 %inc, %32
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %32, %for.body.for.end_crit_edge ]
  %rss_map2 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 39
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %35 = ptrtoint ptr %rss_map2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rss_map2, align 4
  tail call void @mlx4_qp_release_range(ptr noundef %34, i32 noundef %36, i32 noundef %.lcssa) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_en_alloc_frags(ptr nocapture noundef readonly %priv, ptr nocapture noundef %ring, ptr nocapture noundef writeonly %rx_desc, ptr nocapture noundef %frags, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_frags = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 48
  %0 = ptrtoint ptr %num_frags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp17.not = icmp eq i8 %1, 0
  br i1 %cmp17.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %ddev.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 78
  %dma_dir.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 50
  %rx_headroom.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 51
  %rx_alloc_pages = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %ring, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc6, %if.end4.for.body_crit_edge ]
  %frags.addr.018 = phi ptr [ %frags, %for.body.lr.ph ], [ %incdec.ptr, %if.end4.for.body_crit_edge ]
  %2 = ptrtoint ptr %frags.addr.018 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frags.addr.018, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %for.body.if.end4_crit_edge

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %for.body
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i, !prof !84

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev.i, align 4
  %6 = ptrtoint ptr %dma_dir.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_dir.i, align 2
  %conv.i = zext i8 %7 to i32
  %call4.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef %conv.i, i32 noundef 0) #11
  %8 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %9, i32 noundef %call4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %cmp.i.not.i = icmp eq i32 %call4.i, -1
  br i1 %cmp.i.not.i, label %if.then14.i, label %if.end, !prof !84

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %frags.addr.018 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call38.i.i.i.i, ptr %frags.addr.018, align 4
  %dma17.i = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %frags.addr.018, i32 0, i32 1
  %11 = ptrtoint ptr %dma17.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call4.i, ptr %dma17.i, align 4
  %12 = ptrtoint ptr %rx_headroom.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rx_headroom.i, align 8
  %conv18.i = zext i16 %13 to i32
  %page_offset.i = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %frags.addr.018, i32 0, i32 2
  %14 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv18.i, ptr %page_offset.i, align 4
  %15 = ptrtoint ptr %rx_alloc_pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_alloc_pages, align 128
  %inc = add i32 %16, 1
  store i32 %inc, ptr %rx_alloc_pages, align 128
  br label %if.end4

if.end4:                                          ; preds = %if.end, %for.body.if.end4_crit_edge
  %dma = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %frags.addr.018, i32 0, i32 1
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma, align 4
  %page_offset = getelementptr inbounds %struct.mlx4_en_rx_alloc, ptr %frags.addr.018, i32 0, i32 2
  %19 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %page_offset, align 4
  %add = add i32 %20, %18
  %conv5 = zext i32 %add to i64
  %addr = getelementptr [0 x %struct.mlx4_wqe_data_seg], ptr %rx_desc, i32 0, i32 %i.020, i32 2
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv5, ptr %addr, align 8
  %inc6 = add nuw nsw i32 %i.020, 1
  %incdec.ptr = getelementptr %struct.mlx4_en_rx_alloc, ptr %frags.addr.018, i32 1
  %22 = ptrtoint ptr %num_frags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_frags, align 4
  %conv = zext i8 %23 to i32
  %cmp = icmp ult i32 %inc6, %conv
  br i1 %cmp, label %if.end4.for.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %if.then14.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then14.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

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
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !12, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !64, !65, !67, !69, !70}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 274, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 297, i32 2}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 437, i32 13}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 683, i32 13}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 716, i32 4}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 722, i32 4}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 747, i32 5}
!19 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 1047, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 1050, i32 3}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 1116, i32 3}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 1121, i32 3}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 1155, i32 2}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 1163, i32 3}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 1181, i32 3}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 1194, i32 3}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 1219, i32 3}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 1232, i32 3}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 198, i32 6}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 202, i32 6}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 177, i32 3}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 231, i32 2}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 236, i32 3}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/mm.h", i32 717, i32 2}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/filter.h", i32 613, i32 2}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_rx.c", i32 1076, i32 3}
!72 = !{!"sp"}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i32 0, i32 33}
!83 = !{i16 0, i16 17}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i8 0, i8 2}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2153702947, i64 2153703430, i64 2153702984, i64 2153703040, i64 2153703074, i64 2153703098, i64 2153703139, i64 2153703160, i64 2153703188, i64 2153703222}
!88 = !{i64 2148806555}
!89 = !{i64 2148721264, i64 2148721296, i64 2148721325, i64 2148721359, i64 2148721390, i64 2148721413}
!90 = !{i64 2148806784}
!91 = !{i64 2149279405, i64 2149279410, i64 2149279423, i64 2149279467, i64 2149279501, i64 2149279522}
!92 = !{i64 2159480211}
!93 = !{i64 1121779, i64 1121840}
!94 = !{i64 2150077577}
!95 = !{i64 2150082509}
!96 = !{i64 2150104221}
!97 = !{i64 2150109113}
!98 = !{i64 2150189631}
!99 = !{i64 2150189956}
!100 = !{i64 1124511}
!101 = !{i64 1124796}
!102 = !{!"branch_weights", i32 2000000, i32 2001, i32 2000, i32 2000000}
!103 = !{i64 7611492, i64 7611533, i64 7611578}
!104 = !{i64 2159506688}
!105 = !{i64 2157120922}
!106 = !{i64 2157121137}
!107 = !{i64 2149717959}
!108 = !{i64 2149718995}
!109 = !{i64 2153728641, i64 2153729125, i64 2153728678, i64 2153728734, i64 2153728768, i64 2153728792, i64 2153728833, i64 2153728854, i64 2153728882, i64 2153728916}
!110 = !{i64 2148718079, i64 2148718105, i64 2148718134, i64 2148718168, i64 2148718199, i64 2148718222}
!111 = !{!"auto-init"}
