; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/en_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ptys2ethtool_config = type { [3 x i32], [3 x i32], i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlx4_en_priv = type { ptr, ptr, ptr, [128 x i32], %struct.mlx4_en_port_state, %struct.spinlock, [256 x %struct.ethtool_flow_id], %struct.list_head, [128 x i32], i32, [128 x i32], i32, [128 x i32], i16, i16, i16, i16, i32, i16, i32, i16, i32, i32, i32, i32, i32, %struct.mlx4_hwq_resources, i32, i8, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, %struct.mlx4_en_rss_map, i32, i32, i8, i32, [2 x i32], i32, i32, [4 x %struct.mlx4_en_frag_info], i8, i8, i8, i16, [2 x ptr], [128 x ptr], [2 x ptr], [128 x ptr], %struct.mlx4_qp, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.mlx4_en_pkt_stats, %struct.mlx4_en_counter_stats, [8 x %struct.mlx4_en_flow_stats_rx], [8 x %struct.mlx4_en_flow_stats_tx], %struct.mlx4_en_flow_stats_rx, %struct.mlx4_en_flow_stats_tx, %struct.mlx4_en_port_stats, %struct.mlx4_en_xdp_stats, %struct.mlx4_en_phy_stats, %struct.mlx4_en_stats_bitmap, %struct.list_head, %struct.list_head, i64, %struct.mlx4_en_stat_out_mbox, [128 x i32], i8, ptr, [256 x %struct.hlist_head], %struct.hwtstamp_config, i32, %struct.ieee_ets, [8 x i16], [8 x i32], %struct.mlx4_en_cee_config, i8, %struct.spinlock, i32, %struct.list_head, [16 x %struct.hlist_head], i64, i16, i32, [40 x i8], i8, i32 }
%struct.mlx4_en_port_state = type { i32, i32, i32, i32 }
%struct.ethtool_flow_id = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i64 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.mlx4_hwq_resources = type { %struct.mlx4_db, %struct.mlx4_mtt, %struct.mlx4_buf }
%struct.mlx4_db = type { ptr, %union.anon.153, i32, i32, i32 }
%union.anon.153 = type { ptr }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%struct.mlx4_en_rss_map = type { i32, [128 x %struct.mlx4_qp], [128 x i32], ptr, i32 }
%struct.mlx4_en_frag_info = type { i16, i32 }
%struct.mlx4_qp = type { ptr, i32, %struct.refcount_struct, %struct.completion, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx4_en_stat_out_mbox = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.mlx4_en_cee_config = type { i8, [8 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mlx4_en_cq = type { %struct.mlx4_cq, %struct.mlx4_hwq_resources, i32, ptr, %union.anon.158, i32, i32, i32, i32, i16, i16, ptr, ptr }
%struct.mlx4_cq = type { ptr, ptr, ptr, i32, i16, ptr, ptr, i32, i32, i32, %struct.refcount_struct, %struct.completion, %struct.anon.157, i32, %struct.list_head, i8 }
%struct.anon.157 = type { %struct.list_head, ptr, ptr }
%union.anon.158 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_rx_ring = type { %struct.mlx4_hwq_resources, i32, i32, i32, i16, i16, i16, i32, i32, i32, i8, ptr, ptr, ptr, %struct.mlx4_en_page_cache, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [92 x i8], %struct.xdp_rxq_info }
%struct.mlx4_en_page_cache = type { i32, [128 x %struct.anon.154] }
%struct.anon.154 = type { ptr, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, ptr, ptr, ptr, [104 x i8], i32, i32, i32, i32, i32, i32, i32, %struct.mlx4_bf, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, ptr, i32, i32, %struct.mlx4_hwq_resources, %struct.mlx4_qp, %struct.mlx4_qp_context, %struct.cpumask, i32, i16, i16, [20 x i8] }
%struct.mlx4_bf = type { i32, i32, ptr, ptr }
%struct.mlx4_qp_context = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.mlx4_qp_path, %struct.mlx4_qp_path, i32, i32, i32, i32, i16, [3 x i16], i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i16, i16, i32, i16, i8, i8, i32, i32, i8, [2 x i8], i8, i32, [10 x i32] }
%struct.mlx4_qp_path = type { i8, %union.anon.156, i8, i8, i8, i8, i16, i8, i8, i8, i8, i32, [16 x i8], i8, i8, i8, i8, [2 x i8], [6 x i8] }
%union.anon.156 = type { i8 }
%struct.cpumask = type { [1 x i32] }
%struct.mlx4_en_port_profile = type { i32, [2 x i32], i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hwtstamp_config }
%struct.mlx4_en_dev = type { ptr, ptr, %struct.mutex, [3 x ptr], [3 x ptr], i32, i8, %struct.mlx4_en_profile, i32, ptr, ptr, ptr, %struct.mlx4_uar, %struct.mlx4_mr, i32, %struct.spinlock, [3 x i8], i32, %struct.cyclecounter, %struct.seqlock_t, %struct.timecounter, i32, ptr, %struct.ptp_clock_info, %struct.notifier_block }
%struct.mlx4_en_profile = type { i32, i8, i32, i32, i8, i8, [3 x %struct.mlx4_en_port_profile] }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.mlx4_mr = type { %struct.mlx4_mtt, i64, i64, i32, i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ethtool_pause_stats = type { i64, i64 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.149 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.146, [0 x i32] }
%union.anon.146 = type { i32 }
%struct.mlx4_net_trans_rule = type { %struct.list_head, i32, i8, i8, i32, i8, i16, i32 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mlx4_spec_list = type { %struct.list_head, i32, %union.anon.165 }
%union.anon.165 = type { %struct.mlx4_spec_ib }
%struct.mlx4_spec_ib = type { i32, i32, [16 x i8], [16 x i8] }
%struct.mlx4_spec_eth = type { [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i16, i16, i16 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }
%struct.mlx4_ptys_reg = type { i8, i8, i8, i8, [2 x i32], i32, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.147, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.147 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.mlx4_spec_tcp_udp = type { i16, i16, i16, i16 }

@ptys2ethtool_map = internal global { [32 x %struct.ptys2ethtool_config], [224 x i8] } zeroinitializer, align 32
@mlx4_en_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 2300595, i32 0, ptr @mlx4_en_get_drvinfo, ptr null, ptr null, ptr @mlx4_en_get_wol, ptr @mlx4_en_set_wol, ptr @mlx4_en_get_msglevel, ptr @mlx4_en_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_get_coalesce, ptr @mlx4_en_set_coalesce, ptr @mlx4_en_get_ringparam, ptr @mlx4_en_set_ringparam, ptr @mlx4_en_get_pause_stats, ptr @mlx4_en_get_pauseparam, ptr @mlx4_en_set_pauseparam, ptr @mlx4_en_self_test, ptr @mlx4_en_get_strings, ptr @mlx4_en_set_phys_id, ptr @mlx4_en_get_ethtool_stats, ptr null, ptr null, ptr @mlx4_en_get_priv_flags, ptr @mlx4_en_set_priv_flags, ptr @mlx4_en_get_sset_count, ptr @mlx4_en_get_rxnfc, ptr @mlx4_en_set_rxnfc, ptr null, ptr null, ptr @mlx4_en_get_rxfh_key_size, ptr @mlx4_en_get_rxfh_indir_size, ptr @mlx4_en_get_rxfh, ptr @mlx4_en_set_rxfh, ptr null, ptr null, ptr @mlx4_en_get_channels, ptr @mlx4_en_set_channels, ptr null, ptr null, ptr null, ptr @mlx4_en_get_ts_info, ptr @mlx4_en_get_module_info, ptr @mlx4_en_get_module_eeprom, ptr null, ptr null, ptr @mlx4_en_get_tunable, ptr @mlx4_en_set_tunable, ptr null, ptr null, ptr @mlx4_en_get_link_ksettings, ptr @mlx4_en_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx4_en\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4.0-0\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get WoL information\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to get WoL info, unable to modify\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set WoL information\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: maximum coalesce time supported is %d usecs\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.mlx4_en_set_coalesce = private unnamed_addr constant [21 x i8] c"mlx4_en_set_coalesce\00", align 1
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: maximum coalesced frames supported is %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: rx_pending (%d) < min (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.mlx4_en_set_ringparam = private unnamed_addr constant [22 x i8] c"mlx4_en_set_ringparam\00", align 1
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: tx_pending (%d) < min (%lu)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed starting port\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed setting pause params, err = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx4_en_test_names = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"Interrupt Test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Link Test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Speed Test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Register Test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Loopback Test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@main_strings = internal constant { [141 x [32 x i8]], [1120 x i8] } { [141 x [32 x i8]] [[32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_heartbeat_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_window_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tso_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"xmit_more\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"queue_stopped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"wake_queue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_timeout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_alloc_pages\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_csum_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_csum_none\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_csum_complete\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_chksum_offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"pf_rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"pf_rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"pf_tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"pf_tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_duration_prio_0\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_transition_prio_0\00\00\00\00\00\00", [32 x i8] c"rx_pause_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_duration_prio_1\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_transition_prio_1\00\00\00\00\00\00", [32 x i8] c"rx_pause_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_duration_prio_2\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_transition_prio_2\00\00\00\00\00\00", [32 x i8] c"rx_pause_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_duration_prio_3\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_transition_prio_3\00\00\00\00\00\00", [32 x i8] c"rx_pause_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_duration_prio_4\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_transition_prio_4\00\00\00\00\00\00", [32 x i8] c"rx_pause_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_duration_prio_5\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_transition_prio_5\00\00\00\00\00\00", [32 x i8] c"rx_pause_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_duration_prio_6\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_transition_prio_6\00\00\00\00\00\00", [32 x i8] c"rx_pause_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_duration_prio_7\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_transition_prio_7\00\00\00\00\00\00", [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_duration\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_transition\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_duration_prio_0\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_transition_prio_0\00\00\00\00\00\00", [32 x i8] c"tx_pause_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_duration_prio_1\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_transition_prio_1\00\00\00\00\00\00", [32 x i8] c"tx_pause_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_duration_prio_2\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_transition_prio_2\00\00\00\00\00\00", [32 x i8] c"tx_pause_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_duration_prio_3\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_transition_prio_3\00\00\00\00\00\00", [32 x i8] c"tx_pause_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_duration_prio_4\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_transition_prio_4\00\00\00\00\00\00", [32 x i8] c"tx_pause_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_duration_prio_5\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_transition_prio_5\00\00\00\00\00\00", [32 x i8] c"tx_pause_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_duration_prio_6\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_transition_prio_6\00\00\00\00\00\00", [32 x i8] c"tx_pause_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_duration_prio_7\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_transition_prio_7\00\00\00\00\00\00", [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_duration\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_transition\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_multicast_packets\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_broadcast_packets\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_in_range_length_error\00\00\00\00\00\00\00\00", [32 x i8] c"rx_out_range_length_error\00\00\00\00\00\00\00", [32 x i8] c"tx_multicast_packets\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_broadcast_packets\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_0_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_0_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_1_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_1_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_2_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_2_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_3_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_3_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_4_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_4_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_5_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_5_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_6_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_6_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_7_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_prio_7_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_novlan_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_novlan_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_0_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_0_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_1_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_1_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_2_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_2_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_3_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_3_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_4_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_4_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_5_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_5_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_6_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_6_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_7_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_prio_7_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_novlan_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_novlan_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_xdp_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_xdp_redirect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_xdp_redirect_fail\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_xdp_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_xdp_tx_full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_packets_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_packets_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [1120 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx%d_packets\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx%d_bytes\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx%d_packets\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx%d_bytes\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx%d_dropped\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx%d_xdp_drop\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx%d_xdp_redirect\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx%d_xdp_redirect_fail\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx%d_xdp_tx\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx%d_xdp_tx_full\00", [47 x i8] zeroinitializer }, align 32
@mlx4_en_priv_flags = internal constant { [2 x [32 x i8]], [32 x i8] } { [2 x [32 x i8]] [[32 x i8] c"blueflame\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"phv-bit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BlueFlame is not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BlueFlame %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PHV bit %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unsupported ethtool command. (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__const.mlx4_en_flow_replace.rule = private unnamed_addr constant { %struct.list_head, i32, i8, i8, [2 x i8], i32, i8, [1 x i8], i16, i32 } { %struct.list_head zeroinitializer, i32 0, i8 0, i8 1, [2 x i8] zeroinitializer, i32 1, i8 0, [1 x i8] zeroinitializer, i16 0, i32 0 }, align 4
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rxnfc: RX ring (%llu) doesn't exist\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rxnfc: RX ring (%llu) is inactive\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Fail to detach network rule at location %d. registration id = %llx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Fail to attach network rule at location %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Fail to detach network rule at location %d. registration id = 0x%llx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Toeplitz hash function should be used in conjunction with RX hashing for optimal performance\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Enabling both XOR Hash function and RX Hashing can limit RPS functionality\0A\00", [52 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.54 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Total number of TX and XDP rings (%d) exceeds the maximum supported (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Using %d TX rings\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Using %d RX rings\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mlx4_get_module_info i(%d) offset(%d) len(%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"mlx4_get_module_info i(%d) offset(%d) bytes_to_read(%d) - FAILED (0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"query port state.flags ANC(%x) ANE(%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to run mlx4_ACCESS_PTYS_REG status(%x)\00", [50 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ptys_reg.proto_mask       %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ptys_reg.eth_proto_cap    %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ptys_reg.eth_proto_admin  %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ptys_reg.eth_proto_oper   %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ptys_reg.eth_proto_lp_adv %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Set Speed=%d adv={%*pbl} autoneg=%d duplex=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to QUERY mlx4_ACCESS_PTYS_REG status(%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Not supported link mode(s) requested, check supported link modes.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"mlx4_ACCESS_PTYS_REG SET: ptys_reg.eth_proto_admin = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Failed to write mlx4_ACCESS_PTYS_REG eth_proto_admin(0x%x) status(0x%x)\00", [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Port link mode changed, restarting port...\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed restarting port %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Speed was set to 0, Reset advertised Link Modes to default (%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Setting Speed to %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 32, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 49, i64 50]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 13, i64 18]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 4095]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 13, i64 18]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 12, i64 13, i64 17]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 128]
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"ptys2ethtool_map\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 664, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"mlx4_en_ethtool_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2148, i32 26 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 92, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 93, i32 28 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 96, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 239, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 291, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 305, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1041, i32 20 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1048, i32 20 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1160, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1166, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1202, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1101, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"mlx4_en_test_names\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 211, i32 19 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"main_strings\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 109, i32 19 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 514, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 516, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 520, i32 5 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 522, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 524, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 526, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 528, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 530, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 532, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 534, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant [19 x i8] c"mlx4_en_priv_flags\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 104, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1960, i32 5 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1974, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1986, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1810, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1639, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1645, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1659, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1670, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1705, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1248, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1254, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1860, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1889, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1890, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2099, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 2110, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 878, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 760, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 764, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 766, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 768, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 770, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 772, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 930, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 948, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 971, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 980, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 987, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 994, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 997, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 905, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.287 = private constant [51 x i8] c"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 911, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @ptys2ethtool_map, ptr @mlx4_en_ethtool_ops, ptr @.str, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @mlx4_en_test_names, ptr @main_strings, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @mlx4_en_priv_flags, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptys2ethtool_map to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_test_names to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_strings to i32), i32 4512, i32 5632, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_priv_flags to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_moderation_update(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_frames = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 16
  %tx_usecs = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 15
  %port_up = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 28
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 44, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp282.not = icmp eq i32 %1, 0
  br i1 %cmp282.not, label %entry.for.inc15_crit_edge, label %for.body3.lr.ph

entry.for.inc15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc15

for.body3.lr.ph:                                  ; preds = %entry
  %arrayidx4 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 54, i32 0
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body3.lr.ph
  %i.083 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %for.inc.for.body3_crit_edge ]
  %2 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tx_frames, align 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr ptr, ptr %5, i32 %i.083
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %moder_cnt = getelementptr inbounds %struct.mlx4_en_cq, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %moder_cnt to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %3, ptr %moder_cnt, align 2
  %9 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tx_usecs, align 4
  %11 = load ptr, ptr %arrayidx4, align 4
  %arrayidx8 = getelementptr ptr, ptr %11, i32 %i.083
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  %moder_time = getelementptr inbounds %struct.mlx4_en_cq, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %moder_time to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %10, ptr %moder_time, align 8
  %15 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_up, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %for.body3.for.inc_crit_edge, label %if.then

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then:                                          ; preds = %for.body3
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx4, align 4
  %arrayidx11 = getelementptr ptr, ptr %18, i32 %i.083
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11, align 4
  %call = tail call i32 @mlx4_en_set_cq_moder(ptr noundef %priv, ptr noundef %20) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then.for.inc_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body3.for.inc_crit_edge
  %inc = add nuw i32 %i.083, 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %cmp2 = icmp ult i32 %inc, %22
  br i1 %cmp2, label %for.inc.for.body3_crit_edge, label %for.inc.for.inc15_crit_edge

for.inc.for.inc15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc15

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body3

for.inc15:                                        ; preds = %for.inc.for.inc15_crit_edge, %entry.for.inc15_crit_edge
  %arrayidx.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 44, i32 1
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp282.not.1 = icmp eq i32 %24, 0
  br i1 %cmp282.not.1, label %for.inc15.for.inc15.1_crit_edge, label %for.body3.lr.ph.1

for.inc15.for.inc15.1_crit_edge:                  ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc15.1

for.body3.lr.ph.1:                                ; preds = %for.inc15
  %arrayidx4.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 54, i32 1
  br label %for.body3.1

for.body3.1:                                      ; preds = %for.inc.1.for.body3.1_crit_edge, %for.body3.lr.ph.1
  %i.083.1 = phi i32 [ 0, %for.body3.lr.ph.1 ], [ %inc.1, %for.inc.1.for.body3.1_crit_edge ]
  %25 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tx_frames, align 2
  %27 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx4.1, align 4
  %arrayidx5.1 = getelementptr ptr, ptr %28, i32 %i.083.1
  %29 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx5.1, align 4
  %moder_cnt.1 = getelementptr inbounds %struct.mlx4_en_cq, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %moder_cnt.1 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %26, ptr %moder_cnt.1, align 2
  %32 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tx_usecs, align 4
  %34 = load ptr, ptr %arrayidx4.1, align 4
  %arrayidx8.1 = getelementptr ptr, ptr %34, i32 %i.083.1
  %35 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx8.1, align 4
  %moder_time.1 = getelementptr inbounds %struct.mlx4_en_cq, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %moder_time.1 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %33, ptr %moder_time.1, align 8
  %38 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %port_up, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.1 = icmp eq i8 %39, 0
  br i1 %tobool.not.1, label %for.body3.1.for.inc.1_crit_edge, label %if.then.1

for.body3.1.for.inc.1_crit_edge:                  ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1

if.then.1:                                        ; preds = %for.body3.1
  %40 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx4.1, align 4
  %arrayidx11.1 = getelementptr ptr, ptr %41, i32 %i.083.1
  %42 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx11.1, align 4
  %call.1 = tail call i32 @mlx4_en_set_cq_moder(ptr noundef %priv, ptr noundef %43) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool12.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool12.not.1, label %if.then.1.for.inc.1_crit_edge, label %if.then.1.cleanup_crit_edge

if.then.1.cleanup_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1.for.inc.1_crit_edge, %for.body3.1.for.inc.1_crit_edge
  %inc.1 = add nuw i32 %i.083.1, 1
  %44 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.1, align 4
  %cmp2.1 = icmp ult i32 %inc.1, %45
  br i1 %cmp2.1, label %for.inc.1.for.body3.1_crit_edge, label %for.inc.1.for.inc15.1_crit_edge

for.inc.1.for.inc15.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc15.1

for.inc.1.for.body3.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body3.1

for.inc15.1:                                      ; preds = %for.inc.1.for.inc15.1_crit_edge, %for.inc15.for.inc15.1_crit_edge
  %adaptive_rx_coal = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 22
  %46 = ptrtoint ptr %adaptive_rx_coal to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %adaptive_rx_coal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool18.not = icmp eq i32 %47, 0
  br i1 %tobool18.not, label %for.cond21.preheader, label %for.inc15.1.cleanup_crit_edge

for.inc15.1.cleanup_crit_edge:                    ; preds = %for.inc15.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond21.preheader:                             ; preds = %for.inc15.1
  %rx_ring_num = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 45
  %48 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp2287.not = icmp eq i32 %49, 0
  br i1 %cmp2287.not, label %for.cond21.preheader.cleanup_crit_edge, label %for.body23.lr.ph

for.cond21.preheader.cleanup_crit_edge:           ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body23.lr.ph:                                 ; preds = %for.cond21.preheader
  %rx_frames = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 14
  %rx_usecs = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 13
  br label %for.body23

for.body23:                                       ; preds = %for.inc40.for.body23_crit_edge, %for.body23.lr.ph
  %i.188 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc41, %for.inc40.for.body23_crit_edge ]
  %50 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %rx_frames, align 2
  %arrayidx24 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 55, i32 %i.188
  %52 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx24, align 4
  %moder_cnt25 = getelementptr inbounds %struct.mlx4_en_cq, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %moder_cnt25 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %51, ptr %moder_cnt25, align 2
  %55 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %rx_usecs, align 8
  %57 = load ptr, ptr %arrayidx24, align 4
  %moder_time28 = getelementptr inbounds %struct.mlx4_en_cq, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %moder_time28 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %56, ptr %moder_time28, align 8
  %arrayidx29 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 12, i32 %i.188
  %59 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 65535, ptr %arrayidx29, align 4
  %60 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %port_up, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool31.not = icmp eq i8 %61, 0
  br i1 %tobool31.not, label %for.body23.for.inc40_crit_edge, label %if.then32

for.body23.for.inc40_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc40

if.then32:                                        ; preds = %for.body23
  %62 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx24, align 4
  %call35 = tail call i32 @mlx4_en_set_cq_moder(ptr noundef %priv, ptr noundef %63) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then32.for.inc40_crit_edge, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then32.for.inc40_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc40

for.inc40:                                        ; preds = %if.then32.for.inc40_crit_edge, %for.body23.for.inc40_crit_edge
  %inc41 = add nuw i32 %i.188, 1
  %64 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_ring_num, align 4
  %cmp22 = icmp ult i32 %inc41, %65
  br i1 %cmp22, label %for.inc40.for.body23_crit_edge, label %for.inc40.cleanup_crit_edge

for.inc40.cleanup_crit_edge:                      ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.inc40.for.body23_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body23

cleanup:                                          ; preds = %for.inc40.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %for.cond21.preheader.cleanup_crit_edge, %for.inc15.1.cleanup_crit_edge, %if.then.1.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc15.1.cleanup_crit_edge ], [ 0, %for.cond21.preheader.cleanup_crit_edge ], [ %call35, %if.then32.cleanup_crit_edge ], [ 0, %for.inc40.cleanup_crit_edge ], [ %call.1, %if.then.1.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_set_cq_moder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_init_ptys2ethtool_map() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 100, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 24, i32 2), align 4
  %0 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 24, i32 0, i32 1), i32 0, i32 20)
  store i32 8, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 24), align 4
  store i32 8, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 24, i32 1), align 4
  store i32 1000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 25, i32 2), align 4
  %1 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 25, i32 0, i32 1), i32 0, i32 20)
  store i32 32, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 25), align 4
  store i32 32, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 25, i32 1), align 4
  store i32 1000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 0, i32 2), align 4
  %2 = call ptr @memset(ptr @ptys2ethtool_map, i32 0, i32 24)
  store i32 512, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 512, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 0, i32 1, i32 1), align 4
  store i32 1000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 1, i32 2), align 4
  %3 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 1, i32 0, i32 1), i32 0, i32 20)
  store i32 131072, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 1), align 4
  store i32 131072, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 1, i32 1), align 4
  store i32 10000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 26, i32 2), align 4
  %4 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 26, i32 0, i32 1), i32 0, i32 20)
  store i32 4096, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 26), align 4
  store i32 4096, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 26, i32 1), align 4
  store i32 10000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 2, i32 2), align 4
  %5 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 2, i32 0, i32 1), i32 0, i32 20)
  store i32 262144, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 2), align 4
  store i32 262144, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 2, i32 1), align 4
  store i32 10000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 3, i32 2), align 4
  %6 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 3, i32 0, i32 1), i32 0, i32 20)
  store i32 262144, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 3), align 4
  store i32 262144, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 3, i32 1), align 4
  store i32 10000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 4, i32 2), align 4
  %7 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 4, i32 0, i32 1), i32 0, i32 20)
  store i32 524288, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 4), align 4
  store i32 524288, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 4, i32 1), align 4
  store i32 10000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 12, i32 2), align 4
  %8 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 12), i32 0, i32 24)
  store i32 1024, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 12, i32 0, i32 1), align 4
  store i32 1024, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 12, i32 1, i32 1), align 4
  store i32 10000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 13, i32 2), align 4
  %9 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 13), i32 0, i32 24)
  store i32 2048, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 13, i32 0, i32 1), align 4
  store i32 2048, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 13, i32 1, i32 1), align 4
  store i32 20000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 5, i32 2), align 4
  %10 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 5, i32 0, i32 1), i32 0, i32 20)
  store i32 6291456, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 5), align 4
  store i32 6291456, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 5, i32 1), align 4
  store i32 40000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 6, i32 2), align 4
  %11 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 6, i32 0, i32 1), i32 0, i32 20)
  store i32 16777216, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 6), align 4
  store i32 16777216, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 6, i32 1), align 4
  store i32 40000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 7, i32 2), align 4
  %12 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 7, i32 0, i32 1), i32 0, i32 20)
  store i32 8388608, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 7), align 4
  store i32 8388608, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 7, i32 1), align 4
  store i32 40000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 15, i32 2), align 4
  %13 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 15, i32 0, i32 1), i32 0, i32 20)
  store i32 33554432, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 15), align 4
  store i32 33554432, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 15, i32 1), align 4
  store i32 56000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 8, i32 2), align 4
  %14 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 8, i32 0, i32 1), i32 0, i32 20)
  store i32 134217728, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 8), align 4
  store i32 134217728, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 8, i32 1), align 4
  store i32 56000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 17, i32 2), align 4
  %15 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 17, i32 0, i32 1), i32 0, i32 20)
  store i32 268435456, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 17), align 4
  store i32 268435456, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 17, i32 1), align 4
  store i32 56000, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 18, i32 2), align 4
  %16 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 18, i32 0, i32 1), i32 0, i32 20)
  store i32 536870912, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 18), align 4
  store i32 536870912, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 18, i32 1), align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %drvinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #20
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call4 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.17, i32 noundef 32) #20
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %caps = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %caps, align 8
  %shr = lshr i64 %5, 32
  %conv = trunc i64 %shr to i32
  %conv7 = and i32 %conv, 65535
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 16
  %conv19 = and i32 %6, 65535
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.18, i32 noundef %conv7, i32 noundef %7, i32 noundef %conv19)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call24 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_get_wol(ptr noundef %netdev, ptr nocapture noundef writeonly %wol) #0 align 64 {
entry:
  %config = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %config) #20
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %config, align 8
  %port = getelementptr i8, ptr %netdev, i32 51652
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %7 = add i32 %6, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.20) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5 = icmp eq i32 %6, 1
  %cond = select i1 %cmp5, i64 137438953472, i64 274877906944
  %flags = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 60
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %flags, align 8
  %and = and i64 %10, %cond
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %11 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %12 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %wolopts, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 96, i32 %6
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  %spec.select = select i1 %tobool9.not, i32 0, i32 32
  %15 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %15, align 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %call17 = call i32 @mlx4_wol_read(ptr noundef %20, ptr noundef nonnull %config, i32 noundef %22) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.20) #20
  br label %cleanup

if.end20:                                         ; preds = %if.end7
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %config, align 8
  %25 = and i64 %24, 6917529027641081856
  call void @__sanitizer_cov_trace_const_cmp8(i64 6917529027641081856, i64 %25)
  %.not = icmp eq i64 %25, 6917529027641081856
  %wolopts26 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  br i1 %.not, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %wolopts26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 32, ptr %wolopts26, align 4
  br label %cleanup

if.else27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  %27 = ptrtoint ptr %wolopts26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %wolopts26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else27, %if.then25, %if.then19, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %config) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_wol(ptr noundef %netdev, ptr nocapture noundef readonly %wol) #0 align 64 {
entry:
  %config = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %config) #20
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %config, align 8
  %port = getelementptr i8, ptr %netdev, i32 51652
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %3 = add i32 %2, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %3)
  %4 = icmp ult i32 %3, -2
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp4 = icmp eq i32 %2, 1
  %cond = select i1 %cmp4, i64 137438953472, i64 274877906944
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %flags = getelementptr inbounds %struct.mlx4_dev, ptr %8, i32 0, i32 3, i32 60
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %flags, align 8
  %and = and i64 %10, %cond
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %11 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %supported, align 4
  %and7 = and i32 %12, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call14 = call i32 @mlx4_wol_read(ptr noundef %8, ptr noundef nonnull %config, i32 noundef %2) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end10
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %13 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wolopts, align 4
  %and18 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %config, align 8
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  %or = or i64 %16, -2305843009213693952
  br label %if.end23

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  %and21 = and i64 %16, 2305843009213693951
  %or22 = or i64 %and21, -9223372036854775808
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %storemerge = phi i64 [ %or22, %if.else ], [ %or, %if.then20 ]
  %17 = ptrtoint ptr %config to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %storemerge, ptr %config, align 8
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %call27 = call i32 @mlx4_wol_write(ptr noundef %21, i64 noundef %storemerge, i32 noundef %23) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end23.cleanup_crit_edge, label %if.end23.cleanup.sink.split_crit_edge

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end23.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.21, %if.end10.cleanup.sink.split_crit_edge ], [ @.str.22, %if.end23.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call14, %if.end10.cleanup.sink.split_crit_edge ], [ %call27, %if.end23.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull %.str.22.sink) #20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end23.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %config) #20
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_en_get_msglevel(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mlx4_en_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_en_get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_usecs = getelementptr i8, ptr %dev, i32 51548
  %0 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_usecs, align 4
  %conv = zext i16 %1 to i32
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %2 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %tx_coalesce_usecs, align 4
  %tx_frames = getelementptr i8, ptr %dev, i32 51550
  %3 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tx_frames, align 2
  %conv1 = zext i16 %4 to i32
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 6
  %5 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1, ptr %tx_max_coalesced_frames, align 4
  %tx_work_limit = getelementptr i8, ptr %dev, i32 61448
  %6 = ptrtoint ptr %tx_work_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_work_limit, align 8
  %tx_max_coalesced_frames_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 8
  %8 = ptrtoint ptr %tx_max_coalesced_frames_irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx_max_coalesced_frames_irq, align 4
  %rx_usecs = getelementptr i8, ptr %dev, i32 51544
  %9 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rx_usecs, align 8
  %conv2 = zext i16 %10 to i32
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %11 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv2, ptr %rx_coalesce_usecs, align 4
  %rx_frames = getelementptr i8, ptr %dev, i32 51546
  %12 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rx_frames, align 2
  %conv3 = zext i16 %13 to i32
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 2
  %14 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv3, ptr %rx_max_coalesced_frames, align 4
  %pkt_rate_low = getelementptr i8, ptr %dev, i32 51552
  %15 = ptrtoint ptr %pkt_rate_low to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pkt_rate_low, align 8
  %pkt_rate_low4 = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 12
  %17 = ptrtoint ptr %pkt_rate_low4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %pkt_rate_low4, align 4
  %rx_usecs_low = getelementptr i8, ptr %dev, i32 51556
  %18 = ptrtoint ptr %rx_usecs_low to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rx_usecs_low, align 4
  %conv5 = zext i16 %19 to i32
  %rx_coalesce_usecs_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 13
  %20 = ptrtoint ptr %rx_coalesce_usecs_low to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv5, ptr %rx_coalesce_usecs_low, align 4
  %pkt_rate_high = getelementptr i8, ptr %dev, i32 51560
  %21 = ptrtoint ptr %pkt_rate_high to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pkt_rate_high, align 8
  %pkt_rate_high6 = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 17
  %23 = ptrtoint ptr %pkt_rate_high6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pkt_rate_high6, align 4
  %rx_usecs_high = getelementptr i8, ptr %dev, i32 51564
  %24 = ptrtoint ptr %rx_usecs_high to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rx_usecs_high, align 4
  %conv7 = zext i16 %25 to i32
  %rx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 18
  %26 = ptrtoint ptr %rx_coalesce_usecs_high to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv7, ptr %rx_coalesce_usecs_high, align 4
  %sample_interval = getelementptr i8, ptr %dev, i32 51568
  %27 = ptrtoint ptr %sample_interval to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sample_interval, align 8
  %rate_sample_interval = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 22
  %29 = ptrtoint ptr %rate_sample_interval to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rate_sample_interval, align 4
  %adaptive_rx_coal = getelementptr i8, ptr %dev, i32 51572
  %30 = ptrtoint ptr %adaptive_rx_coal to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %adaptive_rx_coal, align 4
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 10
  %32 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %use_adaptive_rx_coalesce, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_coalesce(ptr noundef %dev, ptr nocapture noundef readonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_max_coalesced_frames_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 8
  %0 = ptrtoint ptr %tx_max_coalesced_frames_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_max_coalesced_frames_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %2 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp = icmp ugt i32 %3, 65535
  br i1 %cmp, label %if.end.if.then6_crit_edge, label %lor.lhs.false

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp1 = icmp ugt i32 %5, 65535
  br i1 %cmp1, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then6

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %rx_coalesce_usecs_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 13
  %6 = ptrtoint ptr %rx_coalesce_usecs_low to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_coalesce_usecs_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %7)
  %cmp3 = icmp ugt i32 %7, 65535
  br i1 %cmp3, label %lor.lhs.false2.if.then6_crit_edge, label %lor.lhs.false4

lor.lhs.false2.if.then6_crit_edge:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then6

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %rx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 18
  %8 = ptrtoint ptr %rx_coalesce_usecs_high to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_coalesce_usecs_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %9)
  %cmp5 = icmp ugt i32 %9, 65535
  br i1 %cmp5, label %lor.lhs.false4.if.then6_crit_edge, label %if.end7

lor.lhs.false4.if.then6_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false4.if.then6_crit_edge, %lor.lhs.false2.if.then6_crit_edge, %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.mlx4_en_set_coalesce, i32 noundef 65535) #23
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 6
  %10 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %11)
  %cmp8 = icmp ugt i32 %11, 65535
  br i1 %cmp8, label %if.end7.if.then11_crit_edge, label %lor.lhs.false9

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11

lor.lhs.false9:                                   ; preds = %if.end7
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 2
  %12 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %13)
  %cmp10 = icmp ugt i32 %13, 65535
  br i1 %cmp10, label %lor.lhs.false9.if.then11_crit_edge, label %if.end12

lor.lhs.false9.if.then11_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false9.if.then11_crit_edge, %if.end7.if.then11_crit_edge
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mlx4_en_set_coalesce, i32 noundef 65535) #23
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %13)
  %cmp14 = icmp eq i32 %13, 65535
  %phi.cast = trunc i32 %13 to i16
  %spec.select = select i1 %cmp14, i16 44, i16 %phi.cast
  %rx_frames = getelementptr i8, ptr %dev, i32 51546
  %14 = ptrtoint ptr %rx_frames to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %spec.select, ptr %rx_frames, align 2
  %15 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %16)
  %cmp17 = icmp eq i32 %16, 65535
  %phi.cast87 = trunc i32 %16 to i16
  %cond23 = select i1 %cmp17, i16 16, i16 %phi.cast87
  %rx_usecs = getelementptr i8, ptr %dev, i32 51544
  %17 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %cond23, ptr %rx_usecs, align 8
  %18 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_coalesce_usecs, align 4
  %tx_usecs = getelementptr i8, ptr %dev, i32 51548
  %20 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tx_usecs, align 4
  %conv26 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv26)
  %cmp27.not = icmp eq i32 %19, %conv26
  br i1 %cmp27.not, label %lor.lhs.false29, label %if.end12.if.then34_crit_edge

if.end12.if.then34_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then34

lor.lhs.false29:                                  ; preds = %if.end12
  %22 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_max_coalesced_frames, align 4
  %tx_frames = getelementptr i8, ptr %dev, i32 51550
  %24 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tx_frames, align 2
  %conv31 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv31)
  %cmp32.not = icmp eq i32 %23, %conv31
  br i1 %cmp32.not, label %lor.lhs.false29.if.end41_crit_edge, label %lor.lhs.false29.if.then34_crit_edge

lor.lhs.false29.if.then34_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then34

lor.lhs.false29.if.end41_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41

if.then34:                                        ; preds = %lor.lhs.false29.if.then34_crit_edge, %if.end12.if.then34_crit_edge
  %conv36 = trunc i32 %19 to i16
  %26 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv36, ptr %tx_usecs, align 4
  %27 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_max_coalesced_frames, align 4
  %conv39 = trunc i32 %28 to i16
  %tx_frames40 = getelementptr i8, ptr %dev, i32 51550
  %29 = ptrtoint ptr %tx_frames40 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv39, ptr %tx_frames40, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %lor.lhs.false29.if.end41_crit_edge
  %pkt_rate_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 12
  %30 = ptrtoint ptr %pkt_rate_low to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pkt_rate_low, align 4
  %pkt_rate_low42 = getelementptr i8, ptr %dev, i32 51552
  %32 = ptrtoint ptr %pkt_rate_low42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pkt_rate_low42, align 8
  %33 = ptrtoint ptr %rx_coalesce_usecs_low to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_coalesce_usecs_low, align 4
  %conv44 = trunc i32 %34 to i16
  %rx_usecs_low = getelementptr i8, ptr %dev, i32 51556
  %35 = ptrtoint ptr %rx_usecs_low to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv44, ptr %rx_usecs_low, align 4
  %pkt_rate_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 17
  %36 = ptrtoint ptr %pkt_rate_high to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pkt_rate_high, align 4
  %pkt_rate_high45 = getelementptr i8, ptr %dev, i32 51560
  %38 = ptrtoint ptr %pkt_rate_high45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %pkt_rate_high45, align 8
  %39 = ptrtoint ptr %rx_coalesce_usecs_high to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_coalesce_usecs_high, align 4
  %conv47 = trunc i32 %40 to i16
  %rx_usecs_high = getelementptr i8, ptr %dev, i32 51564
  %41 = ptrtoint ptr %rx_usecs_high to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv47, ptr %rx_usecs_high, align 4
  %rate_sample_interval = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 22
  %42 = ptrtoint ptr %rate_sample_interval to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rate_sample_interval, align 4
  %sample_interval = getelementptr i8, ptr %dev, i32 51568
  %44 = ptrtoint ptr %sample_interval to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sample_interval, align 8
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 10
  %45 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  %adaptive_rx_coal = getelementptr i8, ptr %dev, i32 51572
  %47 = ptrtoint ptr %adaptive_rx_coal to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %adaptive_rx_coal, align 4
  %48 = ptrtoint ptr %tx_max_coalesced_frames_irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_max_coalesced_frames_irq, align 4
  %tx_work_limit = getelementptr i8, ptr %dev, i32 61448
  %50 = ptrtoint ptr %tx_work_limit to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %tx_work_limit, align 8
  %call49 = tail call i32 @mlx4_en_moderation_update(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then11, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %if.then6 ], [ -34, %if.then11 ], [ %call49, %if.end41 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx4_en_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %param, ptr nocapture noundef readnone %kernel_param, ptr nocapture noundef readnone %extack) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %param, i32 0, i32 36)
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 1
  %1 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8192, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 4
  %2 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8192, ptr %tx_max_pending, align 4
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %3 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_up, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %rx_ring1 = getelementptr i8, ptr %dev, i32 61516
  %5 = ptrtoint ptr %rx_ring1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_ring1, align 4
  %actual_size = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %6, i32 0, i32 2
  %size = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %6, i32 0, i32 1
  %cond.in = select i1 %tobool.not, ptr %size, ptr %actual_size
  %7 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond = load i32, ptr %cond.in, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %rx_pending, align 4
  %tx_ring = getelementptr i8, ptr %dev, i32 61508
  %9 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_ring, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %size5 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size5, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 8
  %15 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_ringparam(ptr noundef %dev, ptr nocapture noundef readonly %param, ptr nocapture noundef readnone %kernel_param, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %new_prof = alloca %struct.mlx4_en_port_profile, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %new_prof) #20
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 7
  %2 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 6
  %4 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 5
  %6 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %7)
  %cmp = icmp ult i32 %7, 128
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.mlx4_en_set_ringparam, i32 noundef %7, i32 noundef 128) #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 8
  %8 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %9)
  %cmp6 = icmp ult i32 %9, 64
  br i1 %cmp6, label %if.then7, label %cond.end35

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.mlx4_en_set_ringparam, i32 noundef %9, i32 noundef 64) #20
  br label %cleanup

cond.end35:                                       ; preds = %if.end5
  %sub = add i32 %7, -1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #20, !range !171
  %sub.i.i.i = sub nuw nsw i32 32, %10
  %cond36 = shl nuw i32 1, %sub.i.i.i
  %sub45 = add i32 %9, -1
  %11 = tail call i32 @llvm.ctlz.i32(i32 %sub45, i1 true) #20, !range !171
  %sub.i.i.i170.pn = sub nuw nsw i32 32, %11
  %cond74 = shl nuw i32 1, %sub.i.i.i170.pn
  %port_up75 = getelementptr i8, ptr %dev, i32 51648
  %12 = ptrtoint ptr %port_up75 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_up75, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool76.not = icmp eq i8 %13, 0
  %rx_ring80 = getelementptr i8, ptr %dev, i32 61516
  %14 = ptrtoint ptr %rx_ring80 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_ring80, align 4
  %actual_size = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %15, i32 0, i32 2
  %size = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %15, i32 0, i32 1
  %cond83.in = select i1 %tobool76.not, ptr %size, ptr %actual_size
  %16 = ptrtoint ptr %cond83.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond83 = load i32, ptr %cond83.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond36, i32 %cond83)
  %cmp84 = icmp eq i32 %cond36, %cond83
  br i1 %cmp84, label %land.lhs.true, label %cond.end35.if.end92_crit_edge

cond.end35.if.end92_crit_edge:                    ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end92

land.lhs.true:                                    ; preds = %cond.end35
  %tx_ring = getelementptr i8, ptr %dev, i32 61508
  %17 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_ring, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %size88 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %size88 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size88, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond74, i32 %22)
  %cmp89 = icmp eq i32 %cond74, %22
  br i1 %cmp89, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end92_crit_edge

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end92

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end92:                                         ; preds = %land.lhs.true.if.end92_crit_edge, %cond.end35.if.end92_crit_edge
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 66376, i32 noundef 3520, i32 noundef 5) #24
  %tobool94.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool94.not, label %if.end92.cleanup_crit_edge, label %if.end96

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end96:                                         ; preds = %if.end92
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #20
  %prof = getelementptr i8, ptr %dev, i32 2308
  %23 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prof, align 4
  %25 = call ptr @memcpy(ptr %new_prof, ptr %24, i32 52)
  %tx_ring_size = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 3
  %26 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond74, ptr %tx_ring_size, align 4
  %rx_ring_size = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 4
  %27 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond36, ptr %rx_ring_size, align 4
  %call97 = call i32 @mlx4_en_try_alloc_resources(ptr noundef %add.ptr.i, ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull %new_prof, i1 noundef zeroext true) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end96.out_crit_edge

if.end96.out_crit_edge:                           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end100:                                        ; preds = %if.end96
  %28 = ptrtoint ptr %port_up75 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port_up75, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool102.not = icmp eq i8 %29, 0
  br i1 %tobool102.not, label %if.end111.critedge, label %if.then103

if.then103:                                       ; preds = %if.end100
  call void @mlx4_en_stop_port(ptr noundef %dev, i32 noundef 1) #20
  call void @mlx4_en_safe_replace_resources(ptr noundef %add.ptr.i, ptr noundef nonnull %call1.i.i.i) #20
  %call107 = call i32 @mlx4_en_start_port(ptr noundef %dev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then103.if.end111_crit_edge, label %if.then109

if.then103.if.end111_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end111

if.then109:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.28) #20
  br label %if.end111

if.end111.critedge:                               ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #22
  call void @mlx4_en_safe_replace_resources(ptr noundef %add.ptr.i, ptr noundef nonnull %call1.i.i.i) #20
  br label %if.end111

if.end111:                                        ; preds = %if.end111.critedge, %if.then109, %if.then103.if.end111_crit_edge
  %call112 = call i32 @mlx4_en_moderation_update(ptr noundef %add.ptr.i)
  br label %out

out:                                              ; preds = %if.end111, %if.end96.out_crit_edge
  %err.0 = phi i32 [ %call97, %if.end96.out_crit_edge ], [ %call112, %if.end111 ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #20
  call void @mutex_unlock(ptr noundef %state_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end92.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then7, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -22, %if.then7 ], [ %err.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end92.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %new_prof) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_get_pause_stats(ptr noundef %dev, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_bitmap = getelementptr i8, ptr %dev, i32 63652
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %stats_bitmap, i32 noundef 141) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %call.i.i)
  %cmp4.i.i = icmp eq i32 %call.i.i, 141
  br i1 %cmp4.i.i, label %entry.bitmap_iterator_init.exit_crit_edge, label %cond.true.i

entry.bitmap_iterator_init.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_init.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %stats_bitmap, i32 noundef 141) #20
  br label %bitmap_iterator_init.exit

bitmap_iterator_init.exit:                        ; preds = %cond.true.i, %entry.bitmap_iterator_init.exit_crit_edge
  %stats_lock = getelementptr i8, ptr %dev, i32 2844
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #20
  %arrayidx.i = getelementptr i8, ptr %dev, i32 63660
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %2 = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %bitmap_iterator_init.exit.if.end_crit_edge, label %if.then

bitmap_iterator_init.exit.if.end_crit_edge:       ; preds = %bitmap_iterator_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %bitmap_iterator_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  %tx_flowstats = getelementptr i8, ptr %dev, i32 63552
  %3 = ptrtoint ptr %tx_flowstats to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tx_flowstats, align 8
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %stats, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %bitmap_iterator_init.exit.if.end_crit_edge
  %arrayidx.i20 = getelementptr i8, ptr %dev, i32 63656
  %6 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i20, align 4
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %rx_flowstats = getelementptr i8, ptr %dev, i32 63528
  %9 = ptrtoint ptr %rx_flowstats to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rx_flowstats, align 8
  %rx_pause_frames = getelementptr inbounds %struct.ethtool_pause_stats, ptr %stats, i32 0, i32 1
  %11 = ptrtoint ptr %rx_pause_frames to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %rx_pause_frames, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx4_en_get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pause) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %prof = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prof, align 4
  %tx_pause = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_pause, align 1
  %conv = zext i8 %3 to i32
  %tx_pause1 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %4 = ptrtoint ptr %tx_pause1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %tx_pause1, align 4
  %5 = load ptr, ptr %prof, align 4
  %rx_pause = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_pause, align 1
  %conv3 = zext i8 %7 to i32
  %rx_pause4 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %8 = ptrtoint ptr %rx_pause4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv3, ptr %rx_pause4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_pauseparam(ptr noundef %dev, ptr nocapture noundef readonly %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_pause2 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %4 = ptrtoint ptr %tx_pause2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pause2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3 = icmp ne i32 %5, 0
  %conv = zext i1 %tobool3 to i8
  %rx_pause5 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %6 = ptrtoint ptr %rx_pause5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pause5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6 = icmp ne i32 %7, 0
  %conv11 = zext i1 %tobool6 to i8
  %brmerge = select i1 %tobool3, i1 true, i1 %tobool6
  br i1 %brmerge, label %if.end.cond.end29_crit_edge, label %cond.false25

if.end.cond.end29_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end29

cond.false25:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %prof = getelementptr i8, ptr %dev, i32 2308
  %8 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prof, align 4
  %rx_ppp16 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %rx_ppp16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rx_ppp16, align 2
  %tx_ppp27 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %tx_ppp27 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_ppp27, align 4
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false25, %if.end.cond.end29_crit_edge
  %cond83 = phi i8 [ %11, %cond.false25 ], [ 0, %if.end.cond.end29_crit_edge ]
  %cond30 = phi i8 [ %13, %cond.false25 ], [ 0, %if.end.cond.end29_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %conv33 = trunc i32 %17 to i8
  %rx_skb_size = getelementptr i8, ptr %dev, i32 61464
  %18 = ptrtoint ptr %rx_skb_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_skb_size, align 8
  %add = add i32 %19, 4
  %call34 = tail call i32 @mlx4_SET_PORT_general(ptr noundef %15, i8 noundef zeroext %conv33, i32 noundef %add, i8 noundef zeroext %conv, i8 noundef zeroext %cond30, i8 noundef zeroext %conv11, i8 noundef zeroext %cond83) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.29, i32 noundef %call34) #20
  br label %cleanup

if.end37:                                         ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #22
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %stats_bitmap = getelementptr i8, ptr %dev, i32 63652
  tail call void @mlx4_en_update_pfc_stats_bitmap(ptr noundef %21, ptr noundef %stats_bitmap, i8 noundef zeroext %cond83, i8 noundef zeroext %conv11, i8 noundef zeroext %cond30, i8 noundef zeroext %conv) #20
  %prof39 = getelementptr i8, ptr %dev, i32 2308
  %22 = ptrtoint ptr %prof39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prof39, align 4
  %tx_pause40 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %tx_pause40 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %tx_pause40, align 1
  %25 = load ptr, ptr %prof39, align 4
  %rx_pause42 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %rx_pause42 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv11, ptr %rx_pause42, align 1
  %27 = load ptr, ptr %prof39, align 4
  %tx_ppp44 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %tx_ppp44 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %cond30, ptr %tx_ppp44, align 4
  %29 = load ptr, ptr %prof39, align 4
  %rx_ppp46 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %rx_ppp46 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %cond83, ptr %rx_ppp46, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.then36 ], [ 0, %if.end37 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_self_test(ptr noundef %dev, ptr noundef %etest, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %etest, i32 0, i32 1
  tail call void @mlx4_en_ex_selftest(ptr noundef %dev, ptr noundef %flags, ptr noundef %buf) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_get_strings(ptr noundef %dev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %stats_bitmap = getelementptr i8, ptr %dev, i32 63652
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %stats_bitmap, i32 noundef 141) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %call.i.i)
  %cmp4.i.i = icmp eq i32 %call.i.i, 141
  br i1 %cmp4.i.i, label %entry.bitmap_iterator_init.exit_crit_edge, label %cond.true.i

entry.bitmap_iterator_init.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_init.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %stats_bitmap, i32 noundef 141) #20
  br label %bitmap_iterator_init.exit

bitmap_iterator_init.exit:                        ; preds = %cond.true.i, %entry.bitmap_iterator_init.exit_crit_edge
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %stringset, label %bitmap_iterator_init.exit.sw.epilog_crit_edge [
    i32 0, label %for.body.preheader
    i32 1, label %bitmap_iterator_init.exit.for.body18_crit_edge
    i32 2, label %for.body198.preheader
  ]

bitmap_iterator_init.exit.for.body18_crit_edge:   ; preds = %bitmap_iterator_init.exit
  br label %for.body18

bitmap_iterator_init.exit.sw.epilog_crit_edge:    ; preds = %bitmap_iterator_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

for.body198.preheader:                            ; preds = %bitmap_iterator_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  %call203 = tail call ptr @strcpy(ptr noundef %data, ptr noundef nonnull @mlx4_en_priv_flags) #25
  br label %sw.epilog.sink.split

for.body.preheader:                               ; preds = %bitmap_iterator_init.exit
  %call2 = tail call ptr @strcpy(ptr noundef %data, ptr noundef nonnull @mlx4_en_test_names) #25
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %call2.1 = tail call ptr @strcpy(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([5 x [32 x i8]], ptr @mlx4_en_test_names, i32 0, i32 1)) #25
  %add.ptr.2 = getelementptr i8, ptr %data, i32 64
  %call2.2 = tail call ptr @strcpy(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([5 x [32 x i8]], ptr @mlx4_en_test_names, i32 0, i32 2)) #25
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %flags = getelementptr inbounds %struct.mlx4_dev, ptr %4, i32 0, i32 3, i32 60
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %flags, align 8
  %and = and i64 %6, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not.not = icmp eq i64 %and, 0
  br i1 %tobool.not.not, label %for.body.preheader.sw.epilog_crit_edge, label %for.body6.preheader

for.body.preheader.sw.epilog_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

for.body6.preheader:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr8 = getelementptr i8, ptr %data, i32 96
  %call11 = tail call ptr @strcpy(ptr noundef %add.ptr8, ptr noundef getelementptr inbounds ([5 x [32 x i8]], ptr @mlx4_en_test_names, i32 0, i32 3)) #25
  br label %sw.epilog.sink.split

for.body18:                                       ; preds = %for.inc29.for.body18_crit_edge, %bitmap_iterator_init.exit.for.body18_crit_edge
  %strings.0426 = phi i32 [ %inc31, %for.inc29.for.body18_crit_edge ], [ 0, %bitmap_iterator_init.exit.for.body18_crit_edge ]
  %index.0424 = phi i32 [ %index.1, %for.inc29.for.body18_crit_edge ], [ 0, %bitmap_iterator_init.exit.for.body18_crit_edge ]
  br i1 %cmp4.i.i, label %for.body18.if.then21_crit_edge, label %bitmap_iterator_test.exit

for.body18.if.then21_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then21

bitmap_iterator_test.exit:                        ; preds = %for.body18
  %div3.i.i = lshr i32 %strings.0426, 5
  %arrayidx.i.i = getelementptr i32, ptr %stats_bitmap, i32 %div3.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %9 = shl nuw i32 1, %strings.0426
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool20.not = icmp eq i32 %10, 0
  br i1 %tobool20.not, label %bitmap_iterator_test.exit.for.inc29_crit_edge, label %bitmap_iterator_test.exit.if.then21_crit_edge

bitmap_iterator_test.exit.if.then21_crit_edge:    ; preds = %bitmap_iterator_test.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then21

bitmap_iterator_test.exit.for.inc29_crit_edge:    ; preds = %bitmap_iterator_test.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc29

if.then21:                                        ; preds = %bitmap_iterator_test.exit.if.then21_crit_edge, %for.body18.if.then21_crit_edge
  %inc22 = add i32 %index.0424, 1
  %mul23 = shl i32 %index.0424, 5
  %add.ptr24 = getelementptr i8, ptr %data, i32 %mul23
  %arrayidx25 = getelementptr [141 x [32 x i8]], ptr @main_strings, i32 0, i32 %strings.0426
  %call27 = tail call ptr @strcpy(ptr noundef %add.ptr24, ptr noundef %arrayidx25) #25
  br label %for.inc29

for.inc29:                                        ; preds = %if.then21, %bitmap_iterator_test.exit.for.inc29_crit_edge
  %index.1 = phi i32 [ %inc22, %if.then21 ], [ %index.0424, %bitmap_iterator_test.exit.for.inc29_crit_edge ]
  %inc31 = add nuw nsw i32 %strings.0426, 1
  %exitcond.not = icmp eq i32 %inc31, 21
  br i1 %exitcond.not, label %for.inc29.for.body36.outer_crit_edge, label %for.inc29.for.body18_crit_edge

for.inc29.for.body18_crit_edge:                   ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body18

for.inc29.for.body36.outer_crit_edge:             ; preds = %for.inc29
  br label %for.body36.outer

for.body36.outer:                                 ; preds = %for.inc47.for.body36.outer_crit_edge, %for.inc29.for.body36.outer_crit_edge
  %strings.1432.ph = phi i32 [ %inc49, %for.inc47.for.body36.outer_crit_edge ], [ 21, %for.inc29.for.body36.outer_crit_edge ]
  %index.2430.ph = phi i32 [ %inc40, %for.inc47.for.body36.outer_crit_edge ], [ %index.1, %for.inc29.for.body36.outer_crit_edge ]
  br label %for.body36

for.body36:                                       ; preds = %for.inc47.thread.for.body36_crit_edge, %for.body36.outer
  %strings.1432 = phi i32 [ %inc49483, %for.inc47.thread.for.body36_crit_edge ], [ %strings.1432.ph, %for.body36.outer ]
  br i1 %cmp4.i.i, label %for.body36.for.inc47_crit_edge, label %bitmap_iterator_test.exit311

for.body36.for.inc47_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc47

bitmap_iterator_test.exit311:                     ; preds = %for.body36
  %div3.i.i304 = lshr i32 %strings.1432, 5
  %arrayidx.i.i305 = getelementptr i32, ptr %stats_bitmap, i32 %div3.i.i304
  %11 = ptrtoint ptr %arrayidx.i.i305 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i.i305, align 4
  %13 = shl nuw i32 1, %strings.1432
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool38.not = icmp eq i32 %14, 0
  br i1 %tobool38.not, label %for.inc47.thread, label %bitmap_iterator_test.exit311.for.inc47_crit_edge

bitmap_iterator_test.exit311.for.inc47_crit_edge: ; preds = %bitmap_iterator_test.exit311
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc47

for.inc47:                                        ; preds = %bitmap_iterator_test.exit311.for.inc47_crit_edge, %for.body36.for.inc47_crit_edge
  %inc40 = add i32 %index.2430.ph, 1
  %mul41 = shl i32 %index.2430.ph, 5
  %add.ptr42 = getelementptr i8, ptr %data, i32 %mul41
  %arrayidx43 = getelementptr [141 x [32 x i8]], ptr @main_strings, i32 0, i32 %strings.1432
  %call45 = tail call ptr @strcpy(ptr noundef %add.ptr42, ptr noundef %arrayidx43) #25
  %inc49 = add nuw nsw i32 %strings.1432, 1
  %exitcond474.not = icmp eq i32 %inc49, 31
  br i1 %exitcond474.not, label %for.body54.preheader, label %for.inc47.for.body36.outer_crit_edge

for.inc47.for.body36.outer_crit_edge:             ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body36.outer

for.inc47.thread:                                 ; preds = %bitmap_iterator_test.exit311
  %inc49483 = add nuw nsw i32 %strings.1432, 1
  %exitcond474.not484 = icmp eq i32 %inc49483, 31
  br i1 %exitcond474.not484, label %for.inc47.thread.bitmap_iterator_test.exit324_crit_edge, label %for.inc47.thread.for.body36_crit_edge

for.inc47.thread.for.body36_crit_edge:            ; preds = %for.inc47.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body36

for.inc47.thread.bitmap_iterator_test.exit324_crit_edge: ; preds = %for.inc47.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit324

for.body54.preheader:                             ; preds = %for.inc47
  br i1 %cmp4.i.i, label %for.inc65.2.thread510, label %for.body54.preheader.bitmap_iterator_test.exit324_crit_edge

for.body54.preheader.bitmap_iterator_test.exit324_crit_edge: ; preds = %for.body54.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit324

for.inc65.2.thread510:                            ; preds = %for.body54.preheader
  call void @__sanitizer_cov_trace_pc() #22
  %mul59495 = shl i32 %inc40, 5
  %add.ptr60496 = getelementptr i8, ptr %data, i32 %mul59495
  %call63497 = tail call ptr @strcpy(ptr noundef %add.ptr60496, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 31)) #25
  %inc58494 = shl i32 %index.2430.ph, 5
  %mul59.1504 = add i32 %inc58494, 64
  %add.ptr60.1505 = getelementptr i8, ptr %data, i32 %mul59.1504
  %call63.1506 = tail call ptr @strcpy(ptr noundef %add.ptr60.1505, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 32)) #25
  %inc58.2512 = add i32 %index.2430.ph, 4
  %inc58.1503 = shl i32 %index.2430.ph, 5
  %mul59.2513 = add i32 %inc58.1503, 96
  %add.ptr60.2514 = getelementptr i8, ptr %data, i32 %mul59.2513
  %call63.2515 = tail call ptr @strcpy(ptr noundef %add.ptr60.2514, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 33)) #25
  br label %if.then57.3

bitmap_iterator_test.exit324:                     ; preds = %for.body54.preheader.bitmap_iterator_test.exit324_crit_edge, %for.inc47.thread.bitmap_iterator_test.exit324_crit_edge
  %index.3485487 = phi i32 [ %inc40, %for.body54.preheader.bitmap_iterator_test.exit324_crit_edge ], [ %index.2430.ph, %for.inc47.thread.bitmap_iterator_test.exit324_crit_edge ]
  %15 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %stats_bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool56.not = icmp sgt i32 %16, -1
  br i1 %tobool56.not, label %bitmap_iterator_test.exit324.bitmap_iterator_test.exit324.1_crit_edge, label %for.inc65

bitmap_iterator_test.exit324.bitmap_iterator_test.exit324.1_crit_edge: ; preds = %bitmap_iterator_test.exit324
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit324.1

for.inc65:                                        ; preds = %bitmap_iterator_test.exit324
  call void @__sanitizer_cov_trace_pc() #22
  %inc58 = add i32 %index.3485487, 1
  %mul59 = shl i32 %index.3485487, 5
  %add.ptr60 = getelementptr i8, ptr %data, i32 %mul59
  %call63 = tail call ptr @strcpy(ptr noundef %add.ptr60, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 31)) #25
  br label %bitmap_iterator_test.exit324.1

bitmap_iterator_test.exit324.1:                   ; preds = %for.inc65, %bitmap_iterator_test.exit324.bitmap_iterator_test.exit324.1_crit_edge
  %index.5490 = phi i32 [ %inc58, %for.inc65 ], [ %index.3485487, %bitmap_iterator_test.exit324.bitmap_iterator_test.exit324.1_crit_edge ]
  %arrayidx.i.i318.1 = getelementptr i8, ptr %dev, i32 63656
  %17 = ptrtoint ptr %arrayidx.i.i318.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i318.1, align 4
  %19 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool56.not.1 = icmp eq i32 %19, 0
  br i1 %tobool56.not.1, label %bitmap_iterator_test.exit324.1.bitmap_iterator_test.exit324.2_crit_edge, label %for.inc65.1

bitmap_iterator_test.exit324.1.bitmap_iterator_test.exit324.2_crit_edge: ; preds = %bitmap_iterator_test.exit324.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit324.2

for.inc65.1:                                      ; preds = %bitmap_iterator_test.exit324.1
  call void @__sanitizer_cov_trace_pc() #22
  %inc58.1 = add i32 %index.5490, 1
  %mul59.1 = shl i32 %index.5490, 5
  %add.ptr60.1 = getelementptr i8, ptr %data, i32 %mul59.1
  %call63.1 = tail call ptr @strcpy(ptr noundef %add.ptr60.1, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 32)) #25
  br label %bitmap_iterator_test.exit324.2

bitmap_iterator_test.exit324.2:                   ; preds = %for.inc65.1, %bitmap_iterator_test.exit324.1.bitmap_iterator_test.exit324.2_crit_edge
  %index.5.1499 = phi i32 [ %inc58.1, %for.inc65.1 ], [ %index.5490, %bitmap_iterator_test.exit324.1.bitmap_iterator_test.exit324.2_crit_edge ]
  %arrayidx.i.i318.2 = getelementptr i8, ptr %dev, i32 63656
  %20 = ptrtoint ptr %arrayidx.i.i318.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i318.2, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool56.not.2 = icmp eq i32 %22, 0
  br i1 %tobool56.not.2, label %bitmap_iterator_test.exit324.2.bitmap_iterator_test.exit324.3_crit_edge, label %for.inc65.2

bitmap_iterator_test.exit324.2.bitmap_iterator_test.exit324.3_crit_edge: ; preds = %bitmap_iterator_test.exit324.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit324.3

for.inc65.2:                                      ; preds = %bitmap_iterator_test.exit324.2
  call void @__sanitizer_cov_trace_pc() #22
  %inc58.2 = add i32 %index.5.1499, 1
  %mul59.2 = shl i32 %index.5.1499, 5
  %add.ptr60.2 = getelementptr i8, ptr %data, i32 %mul59.2
  %call63.2 = tail call ptr @strcpy(ptr noundef %add.ptr60.2, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 33)) #25
  br label %bitmap_iterator_test.exit324.3

bitmap_iterator_test.exit324.3:                   ; preds = %for.inc65.2, %bitmap_iterator_test.exit324.2.bitmap_iterator_test.exit324.3_crit_edge
  %index.5.2508 = phi i32 [ %inc58.2, %for.inc65.2 ], [ %index.5.1499, %bitmap_iterator_test.exit324.2.bitmap_iterator_test.exit324.3_crit_edge ]
  %arrayidx.i.i318.3 = getelementptr i8, ptr %dev, i32 63656
  %23 = ptrtoint ptr %arrayidx.i.i318.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i318.3, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool56.not.3 = icmp eq i32 %25, 0
  br i1 %tobool56.not.3, label %bitmap_iterator_test.exit324.3.for.body72.preheader_crit_edge, label %bitmap_iterator_test.exit324.3.if.then57.3_crit_edge

bitmap_iterator_test.exit324.3.if.then57.3_crit_edge: ; preds = %bitmap_iterator_test.exit324.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then57.3

bitmap_iterator_test.exit324.3.for.body72.preheader_crit_edge: ; preds = %bitmap_iterator_test.exit324.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body72.preheader

if.then57.3:                                      ; preds = %bitmap_iterator_test.exit324.3.if.then57.3_crit_edge, %for.inc65.2.thread510
  %index.5.2509 = phi i32 [ %index.5.2508, %bitmap_iterator_test.exit324.3.if.then57.3_crit_edge ], [ %inc58.2512, %for.inc65.2.thread510 ]
  %inc58.3 = add i32 %index.5.2509, 1
  %mul59.3 = shl i32 %index.5.2509, 5
  %add.ptr60.3 = getelementptr i8, ptr %data, i32 %mul59.3
  %call63.3 = tail call ptr @strcpy(ptr noundef %add.ptr60.3, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 34)) #25
  br label %for.body72.preheader

for.body72.preheader:                             ; preds = %if.then57.3, %bitmap_iterator_test.exit324.3.for.body72.preheader_crit_edge
  %index.6442.ph = phi i32 [ %index.5.2508, %bitmap_iterator_test.exit324.3.for.body72.preheader_crit_edge ], [ %inc58.3, %if.then57.3 ]
  br label %for.body72

for.body72:                                       ; preds = %for.inc83.for.body72_crit_edge, %for.body72.preheader
  %strings.3444 = phi i32 [ %inc85, %for.inc83.for.body72_crit_edge ], [ 35, %for.body72.preheader ]
  %index.6442 = phi i32 [ %index.7, %for.inc83.for.body72_crit_edge ], [ %index.6442.ph, %for.body72.preheader ]
  br i1 %cmp4.i.i, label %for.body72.if.then75_crit_edge, label %bitmap_iterator_test.exit337

for.body72.if.then75_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then75

bitmap_iterator_test.exit337:                     ; preds = %for.body72
  %div3.i.i330 = lshr i32 %strings.3444, 5
  %arrayidx.i.i331 = getelementptr i32, ptr %stats_bitmap, i32 %div3.i.i330
  %26 = ptrtoint ptr %arrayidx.i.i331 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i331, align 4
  %and.i.i332 = and i32 %strings.3444, 31
  %28 = shl nuw i32 1, %and.i.i332
  %29 = and i32 %27, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool74.not = icmp eq i32 %29, 0
  br i1 %tobool74.not, label %bitmap_iterator_test.exit337.for.inc83_crit_edge, label %bitmap_iterator_test.exit337.if.then75_crit_edge

bitmap_iterator_test.exit337.if.then75_crit_edge: ; preds = %bitmap_iterator_test.exit337
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then75

bitmap_iterator_test.exit337.for.inc83_crit_edge: ; preds = %bitmap_iterator_test.exit337
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc83

if.then75:                                        ; preds = %bitmap_iterator_test.exit337.if.then75_crit_edge, %for.body72.if.then75_crit_edge
  %inc76 = add i32 %index.6442, 1
  %mul77 = shl i32 %index.6442, 5
  %add.ptr78 = getelementptr i8, ptr %data, i32 %mul77
  %arrayidx79 = getelementptr [141 x [32 x i8]], ptr @main_strings, i32 0, i32 %strings.3444
  %call81 = tail call ptr @strcpy(ptr noundef %add.ptr78, ptr noundef %arrayidx79) #25
  br label %for.inc83

for.inc83:                                        ; preds = %if.then75, %bitmap_iterator_test.exit337.for.inc83_crit_edge
  %index.7 = phi i32 [ %inc76, %if.then75 ], [ %index.6442, %bitmap_iterator_test.exit337.for.inc83_crit_edge ]
  %inc85 = add nuw nsw i32 %strings.3444, 1
  %exitcond476.not = icmp eq i32 %inc85, 89
  br i1 %exitcond476.not, label %for.inc83.for.body90.outer_crit_edge, label %for.inc83.for.body72_crit_edge

for.inc83.for.body72_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body72

for.inc83.for.body90.outer_crit_edge:             ; preds = %for.inc83
  br label %for.body90.outer

for.body90.outer:                                 ; preds = %for.inc101.for.body90.outer_crit_edge, %for.inc83.for.body90.outer_crit_edge
  %strings.4450.ph = phi i32 [ %inc103, %for.inc101.for.body90.outer_crit_edge ], [ 89, %for.inc83.for.body90.outer_crit_edge ]
  %index.8448.ph = phi i32 [ %inc94, %for.inc101.for.body90.outer_crit_edge ], [ %index.7, %for.inc83.for.body90.outer_crit_edge ]
  br label %for.body90

for.body90:                                       ; preds = %for.inc101.thread.for.body90_crit_edge, %for.body90.outer
  %strings.4450 = phi i32 [ %inc103517, %for.inc101.thread.for.body90_crit_edge ], [ %strings.4450.ph, %for.body90.outer ]
  br i1 %cmp4.i.i, label %for.body90.for.inc101_crit_edge, label %bitmap_iterator_test.exit350

for.body90.for.inc101_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc101

bitmap_iterator_test.exit350:                     ; preds = %for.body90
  %div3.i.i343 = lshr i32 %strings.4450, 5
  %arrayidx.i.i344 = getelementptr i32, ptr %stats_bitmap, i32 %div3.i.i343
  %30 = ptrtoint ptr %arrayidx.i.i344 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.i.i344, align 4
  %and.i.i345 = and i32 %strings.4450, 31
  %32 = shl nuw i32 1, %and.i.i345
  %33 = and i32 %31, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool92.not = icmp eq i32 %33, 0
  br i1 %tobool92.not, label %for.inc101.thread, label %bitmap_iterator_test.exit350.for.inc101_crit_edge

bitmap_iterator_test.exit350.for.inc101_crit_edge: ; preds = %bitmap_iterator_test.exit350
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc101

for.inc101:                                       ; preds = %bitmap_iterator_test.exit350.for.inc101_crit_edge, %for.body90.for.inc101_crit_edge
  %inc94 = add i32 %index.8448.ph, 1
  %mul95 = shl i32 %index.8448.ph, 5
  %add.ptr96 = getelementptr i8, ptr %data, i32 %mul95
  %arrayidx97 = getelementptr [141 x [32 x i8]], ptr @main_strings, i32 0, i32 %strings.4450
  %call99 = tail call ptr @strcpy(ptr noundef %add.ptr96, ptr noundef %arrayidx97) #25
  %inc103 = add nuw nsw i32 %strings.4450, 1
  %exitcond477.not = icmp eq i32 %inc103, 132
  br i1 %exitcond477.not, label %for.body108.preheader, label %for.inc101.for.body90.outer_crit_edge

for.inc101.for.body90.outer_crit_edge:            ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body90.outer

for.inc101.thread:                                ; preds = %bitmap_iterator_test.exit350
  %inc103517 = add nuw nsw i32 %strings.4450, 1
  %exitcond477.not518 = icmp eq i32 %inc103517, 132
  br i1 %exitcond477.not518, label %for.inc101.thread.bitmap_iterator_test.exit363_crit_edge, label %for.inc101.thread.for.body90_crit_edge

for.inc101.thread.for.body90_crit_edge:           ; preds = %for.inc101.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body90

for.inc101.thread.bitmap_iterator_test.exit363_crit_edge: ; preds = %for.inc101.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit363

for.body108.preheader:                            ; preds = %for.inc101
  br i1 %cmp4.i.i, label %for.inc137.2.thread589, label %for.body108.preheader.bitmap_iterator_test.exit363_crit_edge

for.body108.preheader.bitmap_iterator_test.exit363_crit_edge: ; preds = %for.body108.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit363

for.inc137.2.thread589:                           ; preds = %for.body108.preheader
  call void @__sanitizer_cov_trace_pc() #22
  %mul113529 = shl i32 %inc94, 5
  %add.ptr114530 = getelementptr i8, ptr %data, i32 %mul113529
  %call117531 = tail call ptr @strcpy(ptr noundef %add.ptr114530, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 132)) #25
  %inc112528 = shl i32 %index.8448.ph, 5
  %mul113.1538 = add i32 %inc112528, 64
  %add.ptr114.1539 = getelementptr i8, ptr %data, i32 %mul113.1538
  %call117.1540 = tail call ptr @strcpy(ptr noundef %add.ptr114.1539, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 133)) #25
  %inc112.1537 = shl i32 %index.8448.ph, 5
  %mul113.2547 = add i32 %inc112.1537, 96
  %add.ptr114.2548 = getelementptr i8, ptr %data, i32 %mul113.2547
  %call117.2549 = tail call ptr @strcpy(ptr noundef %add.ptr114.2548, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 134)) #25
  %inc112.2546 = shl i32 %index.8448.ph, 5
  %mul113.3556 = add i32 %inc112.2546, 128
  %add.ptr114.3557 = getelementptr i8, ptr %data, i32 %mul113.3556
  %call117.3558 = tail call ptr @strcpy(ptr noundef %add.ptr114.3557, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 135)) #25
  %inc112.3555 = shl i32 %index.8448.ph, 5
  %mul113.4565 = add i32 %inc112.3555, 160
  %add.ptr114.4566 = getelementptr i8, ptr %data, i32 %mul113.4565
  %call117.4567 = tail call ptr @strcpy(ptr noundef %add.ptr114.4566, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 136)) #25
  %inc112.4564 = shl i32 %index.8448.ph, 5
  %mul131574 = add i32 %inc112.4564, 192
  %add.ptr132575 = getelementptr i8, ptr %data, i32 %mul131574
  %call135576 = tail call ptr @strcpy(ptr noundef %add.ptr132575, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 137)) #25
  %inc130573 = shl i32 %index.8448.ph, 5
  %mul131.1583 = add i32 %inc130573, 224
  %add.ptr132.1584 = getelementptr i8, ptr %data, i32 %mul131.1583
  %call135.1585 = tail call ptr @strcpy(ptr noundef %add.ptr132.1584, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 138)) #25
  %inc130.2591 = add i32 %index.8448.ph, 9
  %inc130.1582 = shl i32 %index.8448.ph, 5
  %mul131.2592 = add i32 %inc130.1582, 256
  %add.ptr132.2593 = getelementptr i8, ptr %data, i32 %mul131.2592
  %call135.2594 = tail call ptr @strcpy(ptr noundef %add.ptr132.2593, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 139)) #25
  br label %if.then129.3

bitmap_iterator_test.exit363:                     ; preds = %for.body108.preheader.bitmap_iterator_test.exit363_crit_edge, %for.inc101.thread.bitmap_iterator_test.exit363_crit_edge
  %index.9519521 = phi i32 [ %inc94, %for.body108.preheader.bitmap_iterator_test.exit363_crit_edge ], [ %index.8448.ph, %for.inc101.thread.bitmap_iterator_test.exit363_crit_edge ]
  %arrayidx.i.i357 = getelementptr i8, ptr %dev, i32 63668
  %34 = ptrtoint ptr %arrayidx.i.i357 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i.i357, align 4
  %36 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool110.not = icmp eq i32 %36, 0
  br i1 %tobool110.not, label %bitmap_iterator_test.exit363.bitmap_iterator_test.exit363.1_crit_edge, label %for.inc119

bitmap_iterator_test.exit363.bitmap_iterator_test.exit363.1_crit_edge: ; preds = %bitmap_iterator_test.exit363
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit363.1

for.inc119:                                       ; preds = %bitmap_iterator_test.exit363
  call void @__sanitizer_cov_trace_pc() #22
  %inc112 = add i32 %index.9519521, 1
  %mul113 = shl i32 %index.9519521, 5
  %add.ptr114 = getelementptr i8, ptr %data, i32 %mul113
  %call117 = tail call ptr @strcpy(ptr noundef %add.ptr114, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 132)) #25
  br label %bitmap_iterator_test.exit363.1

bitmap_iterator_test.exit363.1:                   ; preds = %for.inc119, %bitmap_iterator_test.exit363.bitmap_iterator_test.exit363.1_crit_edge
  %index.11524 = phi i32 [ %inc112, %for.inc119 ], [ %index.9519521, %bitmap_iterator_test.exit363.bitmap_iterator_test.exit363.1_crit_edge ]
  %arrayidx.i.i357.1 = getelementptr i8, ptr %dev, i32 63668
  %37 = ptrtoint ptr %arrayidx.i.i357.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i.i357.1, align 4
  %39 = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool110.not.1 = icmp eq i32 %39, 0
  br i1 %tobool110.not.1, label %bitmap_iterator_test.exit363.1.bitmap_iterator_test.exit363.2_crit_edge, label %for.inc119.1

bitmap_iterator_test.exit363.1.bitmap_iterator_test.exit363.2_crit_edge: ; preds = %bitmap_iterator_test.exit363.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit363.2

for.inc119.1:                                     ; preds = %bitmap_iterator_test.exit363.1
  call void @__sanitizer_cov_trace_pc() #22
  %inc112.1 = add i32 %index.11524, 1
  %mul113.1 = shl i32 %index.11524, 5
  %add.ptr114.1 = getelementptr i8, ptr %data, i32 %mul113.1
  %call117.1 = tail call ptr @strcpy(ptr noundef %add.ptr114.1, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 133)) #25
  br label %bitmap_iterator_test.exit363.2

bitmap_iterator_test.exit363.2:                   ; preds = %for.inc119.1, %bitmap_iterator_test.exit363.1.bitmap_iterator_test.exit363.2_crit_edge
  %index.11.1533 = phi i32 [ %inc112.1, %for.inc119.1 ], [ %index.11524, %bitmap_iterator_test.exit363.1.bitmap_iterator_test.exit363.2_crit_edge ]
  %arrayidx.i.i357.2 = getelementptr i8, ptr %dev, i32 63668
  %40 = ptrtoint ptr %arrayidx.i.i357.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx.i.i357.2, align 4
  %42 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool110.not.2 = icmp eq i32 %42, 0
  br i1 %tobool110.not.2, label %bitmap_iterator_test.exit363.2.bitmap_iterator_test.exit363.3_crit_edge, label %for.inc119.2

bitmap_iterator_test.exit363.2.bitmap_iterator_test.exit363.3_crit_edge: ; preds = %bitmap_iterator_test.exit363.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit363.3

for.inc119.2:                                     ; preds = %bitmap_iterator_test.exit363.2
  call void @__sanitizer_cov_trace_pc() #22
  %inc112.2 = add i32 %index.11.1533, 1
  %mul113.2 = shl i32 %index.11.1533, 5
  %add.ptr114.2 = getelementptr i8, ptr %data, i32 %mul113.2
  %call117.2 = tail call ptr @strcpy(ptr noundef %add.ptr114.2, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 134)) #25
  br label %bitmap_iterator_test.exit363.3

bitmap_iterator_test.exit363.3:                   ; preds = %for.inc119.2, %bitmap_iterator_test.exit363.2.bitmap_iterator_test.exit363.3_crit_edge
  %index.11.2542 = phi i32 [ %inc112.2, %for.inc119.2 ], [ %index.11.1533, %bitmap_iterator_test.exit363.2.bitmap_iterator_test.exit363.3_crit_edge ]
  %arrayidx.i.i357.3 = getelementptr i8, ptr %dev, i32 63668
  %43 = ptrtoint ptr %arrayidx.i.i357.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i.i357.3, align 4
  %45 = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool110.not.3 = icmp eq i32 %45, 0
  br i1 %tobool110.not.3, label %bitmap_iterator_test.exit363.3.bitmap_iterator_test.exit363.4_crit_edge, label %for.inc119.3

bitmap_iterator_test.exit363.3.bitmap_iterator_test.exit363.4_crit_edge: ; preds = %bitmap_iterator_test.exit363.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit363.4

for.inc119.3:                                     ; preds = %bitmap_iterator_test.exit363.3
  call void @__sanitizer_cov_trace_pc() #22
  %inc112.3 = add i32 %index.11.2542, 1
  %mul113.3 = shl i32 %index.11.2542, 5
  %add.ptr114.3 = getelementptr i8, ptr %data, i32 %mul113.3
  %call117.3 = tail call ptr @strcpy(ptr noundef %add.ptr114.3, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 135)) #25
  br label %bitmap_iterator_test.exit363.4

bitmap_iterator_test.exit363.4:                   ; preds = %for.inc119.3, %bitmap_iterator_test.exit363.3.bitmap_iterator_test.exit363.4_crit_edge
  %index.11.3551 = phi i32 [ %inc112.3, %for.inc119.3 ], [ %index.11.2542, %bitmap_iterator_test.exit363.3.bitmap_iterator_test.exit363.4_crit_edge ]
  %arrayidx.i.i357.4 = getelementptr i8, ptr %dev, i32 63668
  %46 = ptrtoint ptr %arrayidx.i.i357.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i.i357.4, align 4
  %48 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool110.not.4 = icmp eq i32 %48, 0
  br i1 %tobool110.not.4, label %bitmap_iterator_test.exit363.4.bitmap_iterator_test.exit376_crit_edge, label %for.inc119.4

bitmap_iterator_test.exit363.4.bitmap_iterator_test.exit376_crit_edge: ; preds = %bitmap_iterator_test.exit363.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit376

for.inc119.4:                                     ; preds = %bitmap_iterator_test.exit363.4
  call void @__sanitizer_cov_trace_pc() #22
  %inc112.4 = add i32 %index.11.3551, 1
  %mul113.4 = shl i32 %index.11.3551, 5
  %add.ptr114.4 = getelementptr i8, ptr %data, i32 %mul113.4
  %call117.4 = tail call ptr @strcpy(ptr noundef %add.ptr114.4, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 136)) #25
  br label %bitmap_iterator_test.exit376

bitmap_iterator_test.exit376:                     ; preds = %for.inc119.4, %bitmap_iterator_test.exit363.4.bitmap_iterator_test.exit376_crit_edge
  %index.11.4560 = phi i32 [ %inc112.4, %for.inc119.4 ], [ %index.11.3551, %bitmap_iterator_test.exit363.4.bitmap_iterator_test.exit376_crit_edge ]
  %arrayidx.i.i370 = getelementptr i8, ptr %dev, i32 63668
  %49 = ptrtoint ptr %arrayidx.i.i370 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %arrayidx.i.i370, align 4
  %51 = and i32 %50, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool128.not = icmp eq i32 %51, 0
  br i1 %tobool128.not, label %bitmap_iterator_test.exit376.bitmap_iterator_test.exit376.1_crit_edge, label %for.inc137

bitmap_iterator_test.exit376.bitmap_iterator_test.exit376.1_crit_edge: ; preds = %bitmap_iterator_test.exit376
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit376.1

for.inc137:                                       ; preds = %bitmap_iterator_test.exit376
  call void @__sanitizer_cov_trace_pc() #22
  %inc130 = add i32 %index.11.4560, 1
  %mul131 = shl i32 %index.11.4560, 5
  %add.ptr132 = getelementptr i8, ptr %data, i32 %mul131
  %call135 = tail call ptr @strcpy(ptr noundef %add.ptr132, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 137)) #25
  br label %bitmap_iterator_test.exit376.1

bitmap_iterator_test.exit376.1:                   ; preds = %for.inc137, %bitmap_iterator_test.exit376.bitmap_iterator_test.exit376.1_crit_edge
  %index.13569 = phi i32 [ %inc130, %for.inc137 ], [ %index.11.4560, %bitmap_iterator_test.exit376.bitmap_iterator_test.exit376.1_crit_edge ]
  %arrayidx.i.i370.1 = getelementptr i8, ptr %dev, i32 63668
  %52 = ptrtoint ptr %arrayidx.i.i370.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %arrayidx.i.i370.1, align 4
  %54 = and i32 %53, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool128.not.1 = icmp eq i32 %54, 0
  br i1 %tobool128.not.1, label %bitmap_iterator_test.exit376.1.bitmap_iterator_test.exit376.2_crit_edge, label %for.inc137.1

bitmap_iterator_test.exit376.1.bitmap_iterator_test.exit376.2_crit_edge: ; preds = %bitmap_iterator_test.exit376.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit376.2

for.inc137.1:                                     ; preds = %bitmap_iterator_test.exit376.1
  call void @__sanitizer_cov_trace_pc() #22
  %inc130.1 = add i32 %index.13569, 1
  %mul131.1 = shl i32 %index.13569, 5
  %add.ptr132.1 = getelementptr i8, ptr %data, i32 %mul131.1
  %call135.1 = tail call ptr @strcpy(ptr noundef %add.ptr132.1, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 138)) #25
  br label %bitmap_iterator_test.exit376.2

bitmap_iterator_test.exit376.2:                   ; preds = %for.inc137.1, %bitmap_iterator_test.exit376.1.bitmap_iterator_test.exit376.2_crit_edge
  %index.13.1578 = phi i32 [ %inc130.1, %for.inc137.1 ], [ %index.13569, %bitmap_iterator_test.exit376.1.bitmap_iterator_test.exit376.2_crit_edge ]
  %arrayidx.i.i370.2 = getelementptr i8, ptr %dev, i32 63668
  %55 = ptrtoint ptr %arrayidx.i.i370.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %arrayidx.i.i370.2, align 4
  %57 = and i32 %56, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool128.not.2 = icmp eq i32 %57, 0
  br i1 %tobool128.not.2, label %bitmap_iterator_test.exit376.2.bitmap_iterator_test.exit376.3_crit_edge, label %for.inc137.2

bitmap_iterator_test.exit376.2.bitmap_iterator_test.exit376.3_crit_edge: ; preds = %bitmap_iterator_test.exit376.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit376.3

for.inc137.2:                                     ; preds = %bitmap_iterator_test.exit376.2
  call void @__sanitizer_cov_trace_pc() #22
  %inc130.2 = add i32 %index.13.1578, 1
  %mul131.2 = shl i32 %index.13.1578, 5
  %add.ptr132.2 = getelementptr i8, ptr %data, i32 %mul131.2
  %call135.2 = tail call ptr @strcpy(ptr noundef %add.ptr132.2, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 139)) #25
  br label %bitmap_iterator_test.exit376.3

bitmap_iterator_test.exit376.3:                   ; preds = %for.inc137.2, %bitmap_iterator_test.exit376.2.bitmap_iterator_test.exit376.3_crit_edge
  %index.13.2587 = phi i32 [ %inc130.2, %for.inc137.2 ], [ %index.13.1578, %bitmap_iterator_test.exit376.2.bitmap_iterator_test.exit376.3_crit_edge ]
  %arrayidx.i.i370.3 = getelementptr i8, ptr %dev, i32 63668
  %58 = ptrtoint ptr %arrayidx.i.i370.3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %arrayidx.i.i370.3, align 4
  %60 = and i32 %59, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool128.not.3 = icmp eq i32 %60, 0
  br i1 %tobool128.not.3, label %bitmap_iterator_test.exit376.3.for.inc137.3_crit_edge, label %bitmap_iterator_test.exit376.3.if.then129.3_crit_edge

bitmap_iterator_test.exit376.3.if.then129.3_crit_edge: ; preds = %bitmap_iterator_test.exit376.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then129.3

bitmap_iterator_test.exit376.3.for.inc137.3_crit_edge: ; preds = %bitmap_iterator_test.exit376.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc137.3

if.then129.3:                                     ; preds = %bitmap_iterator_test.exit376.3.if.then129.3_crit_edge, %for.inc137.2.thread589
  %index.13.2588 = phi i32 [ %index.13.2587, %bitmap_iterator_test.exit376.3.if.then129.3_crit_edge ], [ %inc130.2591, %for.inc137.2.thread589 ]
  %inc130.3 = add i32 %index.13.2588, 1
  %mul131.3 = shl i32 %index.13.2588, 5
  %add.ptr132.3 = getelementptr i8, ptr %data, i32 %mul131.3
  %call135.3 = tail call ptr @strcpy(ptr noundef %add.ptr132.3, ptr noundef getelementptr inbounds ([141 x [32 x i8]], ptr @main_strings, i32 0, i32 140)) #25
  br label %for.inc137.3

for.inc137.3:                                     ; preds = %if.then129.3, %bitmap_iterator_test.exit376.3.for.inc137.3_crit_edge
  %index.13.3 = phi i32 [ %inc130.3, %if.then129.3 ], [ %index.13.2587, %bitmap_iterator_test.exit376.3.for.inc137.3_crit_edge ]
  %tx_ring_num = getelementptr i8, ptr %dev, i32 61452
  %61 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp144463.not = icmp eq i32 %62, 0
  br i1 %cmp144463.not, label %for.inc137.3.for.cond157.preheader_crit_edge, label %for.inc137.3.for.body145_crit_edge

for.inc137.3.for.body145_crit_edge:               ; preds = %for.inc137.3
  br label %for.body145

for.inc137.3.for.cond157.preheader_crit_edge:     ; preds = %for.inc137.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond157.preheader

for.cond157.preheader:                            ; preds = %for.body145.for.cond157.preheader_crit_edge, %for.inc137.3.for.cond157.preheader_crit_edge
  %index.14.lcssa = phi i32 [ %index.13.3, %for.inc137.3.for.cond157.preheader_crit_edge ], [ %inc150, %for.body145.for.cond157.preheader_crit_edge ]
  %rx_ring_num = getelementptr i8, ptr %dev, i32 61460
  %63 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp158466.not = icmp eq i32 %64, 0
  br i1 %cmp158466.not, label %for.cond157.preheader.sw.epilog_crit_edge, label %for.cond157.preheader.for.body159_crit_edge

for.cond157.preheader.for.body159_crit_edge:      ; preds = %for.cond157.preheader
  br label %for.body159

for.cond157.preheader.sw.epilog_crit_edge:        ; preds = %for.cond157.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

for.body145:                                      ; preds = %for.body145.for.body145_crit_edge, %for.inc137.3.for.body145_crit_edge
  %i.9465 = phi i32 [ %inc155, %for.body145.for.body145_crit_edge ], [ 0, %for.inc137.3.for.body145_crit_edge ]
  %index.14464 = phi i32 [ %inc150, %for.body145.for.body145_crit_edge ], [ %index.13.3, %for.inc137.3.for.body145_crit_edge ]
  %mul147 = shl i32 %index.14464, 5
  %add.ptr148 = getelementptr i8, ptr %data, i32 %mul147
  %call149 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr148, ptr noundef nonnull @.str.30, i32 noundef %i.9465)
  %inc150 = add i32 %index.14464, 2
  %mul151 = add i32 %mul147, 32
  %add.ptr152 = getelementptr i8, ptr %data, i32 %mul151
  %call153 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr152, ptr noundef nonnull @.str.31, i32 noundef %i.9465)
  %inc155 = add nuw i32 %i.9465, 1
  %65 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_ring_num, align 4
  %cmp144 = icmp ult i32 %inc155, %66
  br i1 %cmp144, label %for.body145.for.body145_crit_edge, label %for.body145.for.cond157.preheader_crit_edge

for.body145.for.cond157.preheader_crit_edge:      ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond157.preheader

for.body145.for.body145_crit_edge:                ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body145

for.body159:                                      ; preds = %for.body159.for.body159_crit_edge, %for.cond157.preheader.for.body159_crit_edge
  %i.10468 = phi i32 [ %inc193, %for.body159.for.body159_crit_edge ], [ 0, %for.cond157.preheader.for.body159_crit_edge ]
  %index.15467 = phi i32 [ %inc188, %for.body159.for.body159_crit_edge ], [ %index.14.lcssa, %for.cond157.preheader.for.body159_crit_edge ]
  %mul161 = shl i32 %index.15467, 5
  %add.ptr162 = getelementptr i8, ptr %data, i32 %mul161
  %call163 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr162, ptr noundef nonnull @.str.32, i32 noundef %i.10468)
  %mul165 = add i32 %mul161, 32
  %add.ptr166 = getelementptr i8, ptr %data, i32 %mul165
  %call167 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr166, ptr noundef nonnull @.str.33, i32 noundef %i.10468)
  %mul169 = add i32 %mul161, 64
  %add.ptr170 = getelementptr i8, ptr %data, i32 %mul169
  %call171 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr170, ptr noundef nonnull @.str.34, i32 noundef %i.10468)
  %mul173 = add i32 %mul161, 96
  %add.ptr174 = getelementptr i8, ptr %data, i32 %mul173
  %call175 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr174, ptr noundef nonnull @.str.35, i32 noundef %i.10468)
  %mul177 = add i32 %mul161, 128
  %add.ptr178 = getelementptr i8, ptr %data, i32 %mul177
  %call179 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr178, ptr noundef nonnull @.str.36, i32 noundef %i.10468)
  %mul181 = add i32 %mul161, 160
  %add.ptr182 = getelementptr i8, ptr %data, i32 %mul181
  %call183 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr182, ptr noundef nonnull @.str.37, i32 noundef %i.10468)
  %mul185 = add i32 %mul161, 192
  %add.ptr186 = getelementptr i8, ptr %data, i32 %mul185
  %call187 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr186, ptr noundef nonnull @.str.38, i32 noundef %i.10468)
  %inc188 = add i32 %index.15467, 8
  %mul189 = add i32 %mul161, 224
  %add.ptr190 = getelementptr i8, ptr %data, i32 %mul189
  %call191 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr190, ptr noundef nonnull @.str.39, i32 noundef %i.10468)
  %inc193 = add nuw i32 %i.10468, 1
  %67 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_ring_num, align 4
  %cmp158 = icmp ult i32 %inc193, %68
  br i1 %cmp158, label %for.body159.for.body159_crit_edge, label %for.body159.sw.epilog_crit_edge

for.body159.sw.epilog_crit_edge:                  ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

for.body159.for.body159_crit_edge:                ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body159

sw.epilog.sink.split:                             ; preds = %for.body6.preheader, %for.body198.preheader
  %.sink599 = phi i32 [ 32, %for.body198.preheader ], [ 128, %for.body6.preheader ]
  %.sink = phi ptr [ getelementptr inbounds ([2 x [32 x i8]], ptr @mlx4_en_priv_flags, i32 0, i32 1), %for.body198.preheader ], [ getelementptr inbounds ([5 x [32 x i8]], ptr @mlx4_en_test_names, i32 0, i32 4), %for.body6.preheader ]
  %add.ptr200.1 = getelementptr i8, ptr %data, i32 %.sink599
  %call203.1 = tail call ptr @strcpy(ptr noundef %add.ptr200.1, ptr noundef %.sink) #25
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body159.sw.epilog_crit_edge, %for.cond157.preheader.sw.epilog_crit_edge, %for.body.preheader.sw.epilog_crit_edge, %bitmap_iterator_init.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_phys_id(ptr nocapture noundef readonly %dev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 61
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags2, align 8
  %and = and i64 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %state, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 0, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %beacon_duration.0 = phi i16 [ 0, %sw.bb3 ], [ -1, %if.end.sw.epilog_crit_edge ]
  %port = getelementptr i8, ptr %dev, i32 51652
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %conv = trunc i32 %8 to i8
  %call5 = tail call i32 @mlx4_SET_PORT_BEACON(ptr noundef %3, i8 noundef zeroext %conv, i16 noundef zeroext %beacon_duration.0) #20
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %stats_bitmap = getelementptr i8, ptr %dev, i32 63652
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %stats_bitmap, i32 noundef 141) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %call.i.i)
  %cmp4.i.i = icmp eq i32 %call.i.i, 141
  br i1 %cmp4.i.i, label %entry.bitmap_iterator_init.exit_crit_edge, label %cond.true.i

entry.bitmap_iterator_init.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_init.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %stats_bitmap, i32 noundef 141) #20
  br label %bitmap_iterator_init.exit

bitmap_iterator_init.exit:                        ; preds = %cond.true.i, %entry.bitmap_iterator_init.exit_crit_edge
  %stats_lock = getelementptr i8, ptr %dev, i32 2844
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #20
  tail call void @mlx4_en_fold_software_stats(ptr noundef %dev) #20
  %stats2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  br label %for.body.outer

for.cond6.preheader:                              ; preds = %for.inc
  %port_stats = getelementptr i8, ptr %dev, i32 63576
  br i1 %cmp4.i.i, label %for.inc18.8.thread668, label %for.cond6.preheader.bitmap_iterator_test.exit334_crit_edge

for.cond6.preheader.bitmap_iterator_test.exit334_crit_edge: ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit334

for.inc18.8.thread668:                            ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #22
  %0 = ptrtoint ptr %port_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_stats, align 4
  %conv14599 = zext i32 %1 to i64
  %inc15600 = add i32 %index.0501.ph, 2
  %arrayidx16601 = getelementptr i64, ptr %data, i32 %inc
  %2 = ptrtoint ptr %arrayidx16601 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv14599, ptr %arrayidx16601, align 8
  %arrayidx13.1607 = getelementptr i8, ptr %dev, i32 63580
  %3 = ptrtoint ptr %arrayidx13.1607 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx13.1607, align 4
  %conv14.1608 = zext i32 %4 to i64
  %inc15.1609 = add i32 %index.0501.ph, 3
  %arrayidx16.1610 = getelementptr i64, ptr %data, i32 %inc15600
  %5 = ptrtoint ptr %arrayidx16.1610 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv14.1608, ptr %arrayidx16.1610, align 8
  %arrayidx13.2616 = getelementptr i8, ptr %dev, i32 63584
  %6 = ptrtoint ptr %arrayidx13.2616 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx13.2616, align 4
  %conv14.2617 = zext i32 %7 to i64
  %inc15.2618 = add i32 %index.0501.ph, 4
  %arrayidx16.2619 = getelementptr i64, ptr %data, i32 %inc15.1609
  %8 = ptrtoint ptr %arrayidx16.2619 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv14.2617, ptr %arrayidx16.2619, align 8
  %arrayidx13.3625 = getelementptr i8, ptr %dev, i32 63588
  %9 = ptrtoint ptr %arrayidx13.3625 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx13.3625, align 4
  %conv14.3626 = zext i32 %10 to i64
  %inc15.3627 = add i32 %index.0501.ph, 5
  %arrayidx16.3628 = getelementptr i64, ptr %data, i32 %inc15.2618
  %11 = ptrtoint ptr %arrayidx16.3628 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv14.3626, ptr %arrayidx16.3628, align 8
  %arrayidx13.4634 = getelementptr i8, ptr %dev, i32 63592
  %12 = ptrtoint ptr %arrayidx13.4634 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13.4634, align 4
  %conv14.4635 = zext i32 %13 to i64
  %inc15.4636 = add i32 %index.0501.ph, 6
  %arrayidx16.4637 = getelementptr i64, ptr %data, i32 %inc15.3627
  %14 = ptrtoint ptr %arrayidx16.4637 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv14.4635, ptr %arrayidx16.4637, align 8
  %arrayidx13.5643 = getelementptr i8, ptr %dev, i32 63596
  %15 = ptrtoint ptr %arrayidx13.5643 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13.5643, align 4
  %conv14.5644 = zext i32 %16 to i64
  %inc15.5645 = add i32 %index.0501.ph, 7
  %arrayidx16.5646 = getelementptr i64, ptr %data, i32 %inc15.4636
  %17 = ptrtoint ptr %arrayidx16.5646 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv14.5644, ptr %arrayidx16.5646, align 8
  %arrayidx13.6652 = getelementptr i8, ptr %dev, i32 63600
  %18 = ptrtoint ptr %arrayidx13.6652 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13.6652, align 4
  %conv14.6653 = zext i32 %19 to i64
  %inc15.6654 = add i32 %index.0501.ph, 8
  %arrayidx16.6655 = getelementptr i64, ptr %data, i32 %inc15.5645
  %20 = ptrtoint ptr %arrayidx16.6655 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv14.6653, ptr %arrayidx16.6655, align 8
  %arrayidx13.7661 = getelementptr i8, ptr %dev, i32 63604
  %21 = ptrtoint ptr %arrayidx13.7661 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx13.7661, align 4
  %conv14.7662 = zext i32 %22 to i64
  %inc15.7663 = add i32 %index.0501.ph, 9
  %arrayidx16.7664 = getelementptr i64, ptr %data, i32 %inc15.6654
  %23 = ptrtoint ptr %arrayidx16.7664 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv14.7662, ptr %arrayidx16.7664, align 8
  %arrayidx13.8670 = getelementptr i8, ptr %dev, i32 63608
  %24 = ptrtoint ptr %arrayidx13.8670 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx13.8670, align 4
  %conv14.8671 = zext i32 %25 to i64
  %inc15.8672 = add i32 %index.0501.ph, 10
  %arrayidx16.8673 = getelementptr i64, ptr %data, i32 %inc15.7663
  %26 = ptrtoint ptr %arrayidx16.8673 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv14.8671, ptr %arrayidx16.8673, align 8
  br label %for.inc18.9

for.body:                                         ; preds = %for.inc.thread.for.body_crit_edge, %for.body.outer
  %i.0503 = phi i32 [ %inc4584, %for.inc.thread.for.body_crit_edge ], [ %i.0503.ph, %for.body.outer ]
  br i1 %cmp4.i.i, label %for.body.for.inc_crit_edge, label %bitmap_iterator_test.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

bitmap_iterator_test.exit:                        ; preds = %for.body
  %div3.i.i = lshr i32 %i.0503, 5
  %arrayidx.i.i = getelementptr i32, ptr %stats_bitmap, i32 %div3.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i.i, align 4
  %29 = shl nuw i32 1, %i.0503
  %30 = and i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %for.inc.thread, label %bitmap_iterator_test.exit.for.inc_crit_edge

bitmap_iterator_test.exit.for.inc_crit_edge:      ; preds = %bitmap_iterator_test.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.inc:                                          ; preds = %bitmap_iterator_test.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %arrayidx = getelementptr i32, ptr %stats2, i32 %i.0503
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %32 to i64
  %inc = add i32 %index.0501.ph, 1
  %arrayidx3 = getelementptr i64, ptr %data, i32 %index.0501.ph
  %33 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv, ptr %arrayidx3, align 8
  %inc4 = add nuw nsw i32 %i.0503, 1
  %exitcond.not = icmp eq i32 %inc4, 21
  br i1 %exitcond.not, label %for.cond6.preheader, label %for.inc.for.body.outer_crit_edge

for.inc.for.body.outer_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.for.body.outer_crit_edge, %bitmap_iterator_init.exit
  %i.0503.ph = phi i32 [ %inc4, %for.inc.for.body.outer_crit_edge ], [ 0, %bitmap_iterator_init.exit ]
  %index.0501.ph = phi i32 [ %inc, %for.inc.for.body.outer_crit_edge ], [ 0, %bitmap_iterator_init.exit ]
  br label %for.body

for.inc.thread:                                   ; preds = %bitmap_iterator_test.exit
  %inc4584 = add nuw nsw i32 %i.0503, 1
  %exitcond.not585 = icmp eq i32 %inc4584, 21
  br i1 %exitcond.not585, label %for.cond6.preheader.thread, label %for.inc.thread.for.body_crit_edge

for.inc.thread.for.body_crit_edge:                ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.cond6.preheader.thread:                       ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #22
  %port_stats589 = getelementptr i8, ptr %dev, i32 63576
  br label %bitmap_iterator_test.exit334

bitmap_iterator_test.exit334:                     ; preds = %for.cond6.preheader.thread, %for.cond6.preheader.bitmap_iterator_test.exit334_crit_edge
  %port_stats591 = phi ptr [ %port_stats589, %for.cond6.preheader.thread ], [ %port_stats, %for.cond6.preheader.bitmap_iterator_test.exit334_crit_edge ]
  %index.1586590 = phi i32 [ %index.0501.ph, %for.cond6.preheader.thread ], [ %inc, %for.cond6.preheader.bitmap_iterator_test.exit334_crit_edge ]
  %34 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %stats_bitmap, align 4
  %36 = and i32 %35, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool11.not = icmp eq i32 %36, 0
  br i1 %tobool11.not, label %bitmap_iterator_test.exit334.bitmap_iterator_test.exit334.1_crit_edge, label %for.inc18

bitmap_iterator_test.exit334.bitmap_iterator_test.exit334.1_crit_edge: ; preds = %bitmap_iterator_test.exit334
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit334.1

for.inc18:                                        ; preds = %bitmap_iterator_test.exit334
  call void @__sanitizer_cov_trace_pc() #22
  %37 = ptrtoint ptr %port_stats591 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port_stats591, align 4
  %conv14 = zext i32 %38 to i64
  %inc15 = add i32 %index.1586590, 1
  %arrayidx16 = getelementptr i64, ptr %data, i32 %index.1586590
  %39 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv14, ptr %arrayidx16, align 8
  br label %bitmap_iterator_test.exit334.1

bitmap_iterator_test.exit334.1:                   ; preds = %for.inc18, %bitmap_iterator_test.exit334.bitmap_iterator_test.exit334.1_crit_edge
  %index.3594 = phi i32 [ %inc15, %for.inc18 ], [ %index.1586590, %bitmap_iterator_test.exit334.bitmap_iterator_test.exit334.1_crit_edge ]
  %40 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %stats_bitmap, align 4
  %42 = and i32 %41, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool11.not.1 = icmp eq i32 %42, 0
  br i1 %tobool11.not.1, label %bitmap_iterator_test.exit334.1.bitmap_iterator_test.exit334.2_crit_edge, label %for.inc18.1

bitmap_iterator_test.exit334.1.bitmap_iterator_test.exit334.2_crit_edge: ; preds = %bitmap_iterator_test.exit334.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit334.2

for.inc18.1:                                      ; preds = %bitmap_iterator_test.exit334.1
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx13.1 = getelementptr i8, ptr %dev, i32 63580
  %43 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx13.1, align 4
  %conv14.1 = zext i32 %44 to i64
  %inc15.1 = add i32 %index.3594, 1
  %arrayidx16.1 = getelementptr i64, ptr %data, i32 %index.3594
  %45 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv14.1, ptr %arrayidx16.1, align 8
  br label %bitmap_iterator_test.exit334.2

bitmap_iterator_test.exit334.2:                   ; preds = %for.inc18.1, %bitmap_iterator_test.exit334.1.bitmap_iterator_test.exit334.2_crit_edge
  %index.3.1603 = phi i32 [ %inc15.1, %for.inc18.1 ], [ %index.3594, %bitmap_iterator_test.exit334.1.bitmap_iterator_test.exit334.2_crit_edge ]
  %46 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %stats_bitmap, align 4
  %48 = and i32 %47, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool11.not.2 = icmp eq i32 %48, 0
  br i1 %tobool11.not.2, label %bitmap_iterator_test.exit334.2.bitmap_iterator_test.exit334.3_crit_edge, label %for.inc18.2

bitmap_iterator_test.exit334.2.bitmap_iterator_test.exit334.3_crit_edge: ; preds = %bitmap_iterator_test.exit334.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit334.3

for.inc18.2:                                      ; preds = %bitmap_iterator_test.exit334.2
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx13.2 = getelementptr i8, ptr %dev, i32 63584
  %49 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx13.2, align 4
  %conv14.2 = zext i32 %50 to i64
  %inc15.2 = add i32 %index.3.1603, 1
  %arrayidx16.2 = getelementptr i64, ptr %data, i32 %index.3.1603
  %51 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv14.2, ptr %arrayidx16.2, align 8
  br label %bitmap_iterator_test.exit334.3

bitmap_iterator_test.exit334.3:                   ; preds = %for.inc18.2, %bitmap_iterator_test.exit334.2.bitmap_iterator_test.exit334.3_crit_edge
  %index.3.2612 = phi i32 [ %inc15.2, %for.inc18.2 ], [ %index.3.1603, %bitmap_iterator_test.exit334.2.bitmap_iterator_test.exit334.3_crit_edge ]
  %52 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %stats_bitmap, align 4
  %54 = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool11.not.3 = icmp eq i32 %54, 0
  br i1 %tobool11.not.3, label %bitmap_iterator_test.exit334.3.bitmap_iterator_test.exit334.4_crit_edge, label %for.inc18.3

bitmap_iterator_test.exit334.3.bitmap_iterator_test.exit334.4_crit_edge: ; preds = %bitmap_iterator_test.exit334.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit334.4

for.inc18.3:                                      ; preds = %bitmap_iterator_test.exit334.3
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx13.3 = getelementptr i8, ptr %dev, i32 63588
  %55 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx13.3, align 4
  %conv14.3 = zext i32 %56 to i64
  %inc15.3 = add i32 %index.3.2612, 1
  %arrayidx16.3 = getelementptr i64, ptr %data, i32 %index.3.2612
  %57 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv14.3, ptr %arrayidx16.3, align 8
  br label %bitmap_iterator_test.exit334.4

bitmap_iterator_test.exit334.4:                   ; preds = %for.inc18.3, %bitmap_iterator_test.exit334.3.bitmap_iterator_test.exit334.4_crit_edge
  %index.3.3621 = phi i32 [ %inc15.3, %for.inc18.3 ], [ %index.3.2612, %bitmap_iterator_test.exit334.3.bitmap_iterator_test.exit334.4_crit_edge ]
  %58 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %stats_bitmap, align 4
  %60 = and i32 %59, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool11.not.4 = icmp eq i32 %60, 0
  br i1 %tobool11.not.4, label %bitmap_iterator_test.exit334.4.bitmap_iterator_test.exit334.5_crit_edge, label %for.inc18.4

bitmap_iterator_test.exit334.4.bitmap_iterator_test.exit334.5_crit_edge: ; preds = %bitmap_iterator_test.exit334.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit334.5

for.inc18.4:                                      ; preds = %bitmap_iterator_test.exit334.4
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx13.4 = getelementptr i8, ptr %dev, i32 63592
  %61 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx13.4, align 4
  %conv14.4 = zext i32 %62 to i64
  %inc15.4 = add i32 %index.3.3621, 1
  %arrayidx16.4 = getelementptr i64, ptr %data, i32 %index.3.3621
  %63 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv14.4, ptr %arrayidx16.4, align 8
  br label %bitmap_iterator_test.exit334.5

bitmap_iterator_test.exit334.5:                   ; preds = %for.inc18.4, %bitmap_iterator_test.exit334.4.bitmap_iterator_test.exit334.5_crit_edge
  %index.3.4630 = phi i32 [ %inc15.4, %for.inc18.4 ], [ %index.3.3621, %bitmap_iterator_test.exit334.4.bitmap_iterator_test.exit334.5_crit_edge ]
  %64 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %stats_bitmap, align 4
  %66 = and i32 %65, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool11.not.5 = icmp eq i32 %66, 0
  br i1 %tobool11.not.5, label %bitmap_iterator_test.exit334.5.bitmap_iterator_test.exit334.6_crit_edge, label %for.inc18.5

bitmap_iterator_test.exit334.5.bitmap_iterator_test.exit334.6_crit_edge: ; preds = %bitmap_iterator_test.exit334.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit334.6

for.inc18.5:                                      ; preds = %bitmap_iterator_test.exit334.5
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx13.5 = getelementptr i8, ptr %dev, i32 63596
  %67 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx13.5, align 4
  %conv14.5 = zext i32 %68 to i64
  %inc15.5 = add i32 %index.3.4630, 1
  %arrayidx16.5 = getelementptr i64, ptr %data, i32 %index.3.4630
  %69 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv14.5, ptr %arrayidx16.5, align 8
  br label %bitmap_iterator_test.exit334.6

bitmap_iterator_test.exit334.6:                   ; preds = %for.inc18.5, %bitmap_iterator_test.exit334.5.bitmap_iterator_test.exit334.6_crit_edge
  %index.3.5639 = phi i32 [ %inc15.5, %for.inc18.5 ], [ %index.3.4630, %bitmap_iterator_test.exit334.5.bitmap_iterator_test.exit334.6_crit_edge ]
  %70 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %stats_bitmap, align 4
  %72 = and i32 %71, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool11.not.6 = icmp eq i32 %72, 0
  br i1 %tobool11.not.6, label %bitmap_iterator_test.exit334.6.bitmap_iterator_test.exit334.7_crit_edge, label %for.inc18.6

bitmap_iterator_test.exit334.6.bitmap_iterator_test.exit334.7_crit_edge: ; preds = %bitmap_iterator_test.exit334.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit334.7

for.inc18.6:                                      ; preds = %bitmap_iterator_test.exit334.6
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx13.6 = getelementptr i8, ptr %dev, i32 63600
  %73 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx13.6, align 4
  %conv14.6 = zext i32 %74 to i64
  %inc15.6 = add i32 %index.3.5639, 1
  %arrayidx16.6 = getelementptr i64, ptr %data, i32 %index.3.5639
  %75 = ptrtoint ptr %arrayidx16.6 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv14.6, ptr %arrayidx16.6, align 8
  br label %bitmap_iterator_test.exit334.7

bitmap_iterator_test.exit334.7:                   ; preds = %for.inc18.6, %bitmap_iterator_test.exit334.6.bitmap_iterator_test.exit334.7_crit_edge
  %index.3.6648 = phi i32 [ %inc15.6, %for.inc18.6 ], [ %index.3.5639, %bitmap_iterator_test.exit334.6.bitmap_iterator_test.exit334.7_crit_edge ]
  %76 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %stats_bitmap, align 4
  %78 = and i32 %77, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool11.not.7 = icmp eq i32 %78, 0
  br i1 %tobool11.not.7, label %bitmap_iterator_test.exit334.7.bitmap_iterator_test.exit334.8_crit_edge, label %for.inc18.7

bitmap_iterator_test.exit334.7.bitmap_iterator_test.exit334.8_crit_edge: ; preds = %bitmap_iterator_test.exit334.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit334.8

for.inc18.7:                                      ; preds = %bitmap_iterator_test.exit334.7
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx13.7 = getelementptr i8, ptr %dev, i32 63604
  %79 = ptrtoint ptr %arrayidx13.7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx13.7, align 4
  %conv14.7 = zext i32 %80 to i64
  %inc15.7 = add i32 %index.3.6648, 1
  %arrayidx16.7 = getelementptr i64, ptr %data, i32 %index.3.6648
  %81 = ptrtoint ptr %arrayidx16.7 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv14.7, ptr %arrayidx16.7, align 8
  br label %bitmap_iterator_test.exit334.8

bitmap_iterator_test.exit334.8:                   ; preds = %for.inc18.7, %bitmap_iterator_test.exit334.7.bitmap_iterator_test.exit334.8_crit_edge
  %index.3.7657 = phi i32 [ %inc15.7, %for.inc18.7 ], [ %index.3.6648, %bitmap_iterator_test.exit334.7.bitmap_iterator_test.exit334.8_crit_edge ]
  %82 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %stats_bitmap, align 4
  %84 = and i32 %83, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool11.not.8 = icmp eq i32 %84, 0
  br i1 %tobool11.not.8, label %bitmap_iterator_test.exit334.8.bitmap_iterator_test.exit334.9_crit_edge, label %for.inc18.8

bitmap_iterator_test.exit334.8.bitmap_iterator_test.exit334.9_crit_edge: ; preds = %bitmap_iterator_test.exit334.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit334.9

for.inc18.8:                                      ; preds = %bitmap_iterator_test.exit334.8
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx13.8 = getelementptr i8, ptr %dev, i32 63608
  %85 = ptrtoint ptr %arrayidx13.8 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx13.8, align 4
  %conv14.8 = zext i32 %86 to i64
  %inc15.8 = add i32 %index.3.7657, 1
  %arrayidx16.8 = getelementptr i64, ptr %data, i32 %index.3.7657
  %87 = ptrtoint ptr %arrayidx16.8 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %conv14.8, ptr %arrayidx16.8, align 8
  br label %bitmap_iterator_test.exit334.9

bitmap_iterator_test.exit334.9:                   ; preds = %for.inc18.8, %bitmap_iterator_test.exit334.8.bitmap_iterator_test.exit334.9_crit_edge
  %index.3.8666 = phi i32 [ %inc15.8, %for.inc18.8 ], [ %index.3.7657, %bitmap_iterator_test.exit334.8.bitmap_iterator_test.exit334.9_crit_edge ]
  %88 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %stats_bitmap, align 4
  %90 = and i32 %89, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool11.not.9 = icmp eq i32 %90, 0
  br i1 %tobool11.not.9, label %for.inc18.9.thread, label %bitmap_iterator_test.exit334.9.for.inc18.9_crit_edge

bitmap_iterator_test.exit334.9.for.inc18.9_crit_edge: ; preds = %bitmap_iterator_test.exit334.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc18.9

for.inc18.9.thread:                               ; preds = %bitmap_iterator_test.exit334.9
  call void @__sanitizer_cov_trace_pc() #22
  %pf_stats675 = getelementptr i8, ptr %dev, i32 63124
  br label %bitmap_iterator_test.exit347

for.inc18.9:                                      ; preds = %bitmap_iterator_test.exit334.9.for.inc18.9_crit_edge, %for.inc18.8.thread668
  %index.3.8667 = phi i32 [ %index.3.8666, %bitmap_iterator_test.exit334.9.for.inc18.9_crit_edge ], [ %inc15.8672, %for.inc18.8.thread668 ]
  %arrayidx13.9 = getelementptr i8, ptr %dev, i32 63612
  %91 = ptrtoint ptr %arrayidx13.9 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx13.9, align 4
  %conv14.9 = zext i32 %92 to i64
  %inc15.9 = add i32 %index.3.8667, 1
  %arrayidx16.9 = getelementptr i64, ptr %data, i32 %index.3.8667
  %93 = ptrtoint ptr %arrayidx16.9 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv14.9, ptr %arrayidx16.9, align 8
  %pf_stats = getelementptr i8, ptr %dev, i32 63124
  br i1 %cmp4.i.i, label %for.inc34.2.thread701, label %for.inc18.9.bitmap_iterator_test.exit347_crit_edge

for.inc18.9.bitmap_iterator_test.exit347_crit_edge: ; preds = %for.inc18.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit347

for.inc34.2.thread701:                            ; preds = %for.inc18.9
  call void @__sanitizer_cov_trace_pc() #22
  %94 = ptrtoint ptr %pf_stats to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pf_stats, align 4
  %conv30686 = zext i32 %95 to i64
  %inc31687 = add i32 %index.3.8667, 2
  %arrayidx32688 = getelementptr i64, ptr %data, i32 %inc15.9
  %96 = ptrtoint ptr %arrayidx32688 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv30686, ptr %arrayidx32688, align 8
  %arrayidx29.1694 = getelementptr i8, ptr %dev, i32 63128
  %97 = ptrtoint ptr %arrayidx29.1694 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx29.1694, align 4
  %conv30.1695 = zext i32 %98 to i64
  %inc31.1696 = add i32 %index.3.8667, 3
  %arrayidx32.1697 = getelementptr i64, ptr %data, i32 %inc31687
  %99 = ptrtoint ptr %arrayidx32.1697 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %conv30.1695, ptr %arrayidx32.1697, align 8
  %arrayidx29.2703 = getelementptr i8, ptr %dev, i32 63132
  %100 = ptrtoint ptr %arrayidx29.2703 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx29.2703, align 4
  %conv30.2704 = zext i32 %101 to i64
  %inc31.2705 = add i32 %index.3.8667, 4
  %arrayidx32.2706 = getelementptr i64, ptr %data, i32 %inc31.1696
  %102 = ptrtoint ptr %arrayidx32.2706 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv30.2704, ptr %arrayidx32.2706, align 8
  br label %if.then28.3

bitmap_iterator_test.exit347:                     ; preds = %for.inc18.9.bitmap_iterator_test.exit347_crit_edge, %for.inc18.9.thread
  %pf_stats678 = phi ptr [ %pf_stats675, %for.inc18.9.thread ], [ %pf_stats, %for.inc18.9.bitmap_iterator_test.exit347_crit_edge ]
  %index.3.9676 = phi i32 [ %index.3.8666, %for.inc18.9.thread ], [ %inc15.9, %for.inc18.9.bitmap_iterator_test.exit347_crit_edge ]
  %103 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %stats_bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %tobool27.not = icmp sgt i32 %104, -1
  br i1 %tobool27.not, label %bitmap_iterator_test.exit347.bitmap_iterator_test.exit347.1_crit_edge, label %for.inc34

bitmap_iterator_test.exit347.bitmap_iterator_test.exit347.1_crit_edge: ; preds = %bitmap_iterator_test.exit347
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit347.1

for.inc34:                                        ; preds = %bitmap_iterator_test.exit347
  call void @__sanitizer_cov_trace_pc() #22
  %105 = ptrtoint ptr %pf_stats678 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pf_stats678, align 4
  %conv30 = zext i32 %106 to i64
  %inc31 = add i32 %index.3.9676, 1
  %arrayidx32 = getelementptr i64, ptr %data, i32 %index.3.9676
  %107 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv30, ptr %arrayidx32, align 8
  br label %bitmap_iterator_test.exit347.1

bitmap_iterator_test.exit347.1:                   ; preds = %for.inc34, %bitmap_iterator_test.exit347.bitmap_iterator_test.exit347.1_crit_edge
  %index.5681 = phi i32 [ %inc31, %for.inc34 ], [ %index.3.9676, %bitmap_iterator_test.exit347.bitmap_iterator_test.exit347.1_crit_edge ]
  %arrayidx.i.i341.1 = getelementptr i8, ptr %dev, i32 63656
  %108 = ptrtoint ptr %arrayidx.i.i341.1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %arrayidx.i.i341.1, align 4
  %110 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool27.not.1 = icmp eq i32 %110, 0
  br i1 %tobool27.not.1, label %bitmap_iterator_test.exit347.1.bitmap_iterator_test.exit347.2_crit_edge, label %for.inc34.1

bitmap_iterator_test.exit347.1.bitmap_iterator_test.exit347.2_crit_edge: ; preds = %bitmap_iterator_test.exit347.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit347.2

for.inc34.1:                                      ; preds = %bitmap_iterator_test.exit347.1
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx29.1 = getelementptr i8, ptr %dev, i32 63128
  %111 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx29.1, align 4
  %conv30.1 = zext i32 %112 to i64
  %inc31.1 = add i32 %index.5681, 1
  %arrayidx32.1 = getelementptr i64, ptr %data, i32 %index.5681
  %113 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv30.1, ptr %arrayidx32.1, align 8
  br label %bitmap_iterator_test.exit347.2

bitmap_iterator_test.exit347.2:                   ; preds = %for.inc34.1, %bitmap_iterator_test.exit347.1.bitmap_iterator_test.exit347.2_crit_edge
  %index.5.1690 = phi i32 [ %inc31.1, %for.inc34.1 ], [ %index.5681, %bitmap_iterator_test.exit347.1.bitmap_iterator_test.exit347.2_crit_edge ]
  %arrayidx.i.i341.2 = getelementptr i8, ptr %dev, i32 63656
  %114 = ptrtoint ptr %arrayidx.i.i341.2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %arrayidx.i.i341.2, align 4
  %116 = and i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool27.not.2 = icmp eq i32 %116, 0
  br i1 %tobool27.not.2, label %bitmap_iterator_test.exit347.2.bitmap_iterator_test.exit347.3_crit_edge, label %for.inc34.2

bitmap_iterator_test.exit347.2.bitmap_iterator_test.exit347.3_crit_edge: ; preds = %bitmap_iterator_test.exit347.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit347.3

for.inc34.2:                                      ; preds = %bitmap_iterator_test.exit347.2
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx29.2 = getelementptr i8, ptr %dev, i32 63132
  %117 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx29.2, align 4
  %conv30.2 = zext i32 %118 to i64
  %inc31.2 = add i32 %index.5.1690, 1
  %arrayidx32.2 = getelementptr i64, ptr %data, i32 %index.5.1690
  %119 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv30.2, ptr %arrayidx32.2, align 8
  br label %bitmap_iterator_test.exit347.3

bitmap_iterator_test.exit347.3:                   ; preds = %for.inc34.2, %bitmap_iterator_test.exit347.2.bitmap_iterator_test.exit347.3_crit_edge
  %index.5.2699 = phi i32 [ %inc31.2, %for.inc34.2 ], [ %index.5.1690, %bitmap_iterator_test.exit347.2.bitmap_iterator_test.exit347.3_crit_edge ]
  %arrayidx.i.i341.3 = getelementptr i8, ptr %dev, i32 63656
  %120 = ptrtoint ptr %arrayidx.i.i341.3 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %arrayidx.i.i341.3, align 4
  %122 = and i32 %121, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool27.not.3 = icmp eq i32 %122, 0
  br i1 %tobool27.not.3, label %bitmap_iterator_test.exit347.3.for.inc34.3_crit_edge, label %bitmap_iterator_test.exit347.3.if.then28.3_crit_edge

bitmap_iterator_test.exit347.3.if.then28.3_crit_edge: ; preds = %bitmap_iterator_test.exit347.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then28.3

bitmap_iterator_test.exit347.3.for.inc34.3_crit_edge: ; preds = %bitmap_iterator_test.exit347.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc34.3

if.then28.3:                                      ; preds = %bitmap_iterator_test.exit347.3.if.then28.3_crit_edge, %for.inc34.2.thread701
  %index.5.2700 = phi i32 [ %index.5.2699, %bitmap_iterator_test.exit347.3.if.then28.3_crit_edge ], [ %inc31.2705, %for.inc34.2.thread701 ]
  %arrayidx29.3 = getelementptr i8, ptr %dev, i32 63136
  %123 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx29.3, align 4
  %conv30.3 = zext i32 %124 to i64
  %inc31.3 = add i32 %index.5.2700, 1
  %arrayidx32.3 = getelementptr i64, ptr %data, i32 %index.5.2700
  %125 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %conv30.3, ptr %arrayidx32.3, align 8
  br label %for.inc34.3

for.inc34.3:                                      ; preds = %if.then28.3, %bitmap_iterator_test.exit347.3.for.inc34.3_crit_edge
  %index.5.3 = phi i32 [ %inc31.3, %if.then28.3 ], [ %index.5.2699, %bitmap_iterator_test.exit347.3.for.inc34.3_crit_edge ]
  %rx_priority_flowstats = getelementptr i8, ptr %dev, i32 63144
  br label %for.body41.outer

for.cond53.preheader:                             ; preds = %for.inc49
  %rx_flowstats = getelementptr i8, ptr %dev, i32 63528
  br i1 %cmp4.i.i, label %for.inc64.1.thread729, label %for.cond53.preheader.bitmap_iterator_test.exit373_crit_edge

for.cond53.preheader.bitmap_iterator_test.exit373_crit_edge: ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit373

for.inc64.1.thread729:                            ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #22
  %126 = ptrtoint ptr %rx_flowstats to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %rx_flowstats, align 8
  %inc61724 = add i32 %index.6522.ph, 2
  %arrayidx62725 = getelementptr i64, ptr %data, i32 %inc46
  %128 = ptrtoint ptr %arrayidx62725 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %127, ptr %arrayidx62725, align 8
  %arrayidx60.1731 = getelementptr i8, ptr %dev, i32 63536
  %129 = ptrtoint ptr %arrayidx60.1731 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %arrayidx60.1731, align 8
  %inc61.1732 = add i32 %index.6522.ph, 3
  %arrayidx62.1733 = getelementptr i64, ptr %data, i32 %inc61724
  %131 = ptrtoint ptr %arrayidx62.1733 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %arrayidx62.1733, align 8
  br label %if.then59.2

for.body41:                                       ; preds = %for.inc49.thread.for.body41_crit_edge, %for.body41.outer
  %i.3524 = phi i32 [ %inc50708, %for.inc49.thread.for.body41_crit_edge ], [ %i.3524.ph, %for.body41.outer ]
  %it.sroa.15.3519 = phi i32 [ %inc.i362709, %for.inc49.thread.for.body41_crit_edge ], [ %it.sroa.15.3519.ph, %for.body41.outer ]
  br i1 %cmp4.i.i, label %for.body41.for.inc49_crit_edge, label %bitmap_iterator_test.exit360

for.body41.for.inc49_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc49

bitmap_iterator_test.exit360:                     ; preds = %for.body41
  %div3.i.i353 = lshr i32 %it.sroa.15.3519, 5
  %arrayidx.i.i354 = getelementptr i32, ptr %stats_bitmap, i32 %div3.i.i353
  %132 = ptrtoint ptr %arrayidx.i.i354 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %arrayidx.i.i354, align 4
  %and.i.i355 = and i32 %it.sroa.15.3519, 31
  %134 = shl nuw i32 1, %and.i.i355
  %135 = and i32 %133, %134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool43.not = icmp eq i32 %135, 0
  br i1 %tobool43.not, label %for.inc49.thread, label %bitmap_iterator_test.exit360.for.inc49_crit_edge

bitmap_iterator_test.exit360.for.inc49_crit_edge: ; preds = %bitmap_iterator_test.exit360
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc49

for.inc49:                                        ; preds = %bitmap_iterator_test.exit360.for.inc49_crit_edge, %for.body41.for.inc49_crit_edge
  %arrayidx45 = getelementptr i64, ptr %rx_priority_flowstats, i32 %i.3524
  %136 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %arrayidx45, align 8
  %inc46 = add i32 %index.6522.ph, 1
  %arrayidx47 = getelementptr i64, ptr %data, i32 %index.6522.ph
  %138 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %arrayidx47, align 8
  %inc50 = add nuw nsw i32 %i.3524, 1
  %inc.i362 = add nuw nsw i32 %it.sroa.15.3519, 1
  %exitcond576.not = icmp eq i32 %inc50, 24
  br i1 %exitcond576.not, label %for.cond53.preheader, label %for.inc49.for.body41.outer_crit_edge

for.inc49.for.body41.outer_crit_edge:             ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body41.outer

for.body41.outer:                                 ; preds = %for.inc49.for.body41.outer_crit_edge, %for.inc34.3
  %i.3524.ph = phi i32 [ %inc50, %for.inc49.for.body41.outer_crit_edge ], [ 0, %for.inc34.3 ]
  %index.6522.ph = phi i32 [ %inc46, %for.inc49.for.body41.outer_crit_edge ], [ %index.5.3, %for.inc34.3 ]
  %it.sroa.15.3519.ph = phi i32 [ %inc.i362, %for.inc49.for.body41.outer_crit_edge ], [ 35, %for.inc34.3 ]
  br label %for.body41

for.inc49.thread:                                 ; preds = %bitmap_iterator_test.exit360
  %inc50708 = add nuw nsw i32 %i.3524, 1
  %inc.i362709 = add nuw nsw i32 %it.sroa.15.3519, 1
  %exitcond576.not710 = icmp eq i32 %inc50708, 24
  br i1 %exitcond576.not710, label %for.cond53.preheader.thread, label %for.inc49.thread.for.body41_crit_edge

for.inc49.thread.for.body41_crit_edge:            ; preds = %for.inc49.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body41

for.cond53.preheader.thread:                      ; preds = %for.inc49.thread
  call void @__sanitizer_cov_trace_pc() #22
  %rx_flowstats714 = getelementptr i8, ptr %dev, i32 63528
  br label %bitmap_iterator_test.exit373

bitmap_iterator_test.exit373:                     ; preds = %for.cond53.preheader.thread, %for.cond53.preheader.bitmap_iterator_test.exit373_crit_edge
  %rx_flowstats716 = phi ptr [ %rx_flowstats714, %for.cond53.preheader.thread ], [ %rx_flowstats, %for.cond53.preheader.bitmap_iterator_test.exit373_crit_edge ]
  %index.7711715 = phi i32 [ %index.6522.ph, %for.cond53.preheader.thread ], [ %inc46, %for.cond53.preheader.bitmap_iterator_test.exit373_crit_edge ]
  %arrayidx.i.i367 = getelementptr i8, ptr %dev, i32 63656
  %139 = ptrtoint ptr %arrayidx.i.i367 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %arrayidx.i.i367, align 4
  %141 = and i32 %140, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool58.not = icmp eq i32 %141, 0
  br i1 %tobool58.not, label %bitmap_iterator_test.exit373.bitmap_iterator_test.exit373.1_crit_edge, label %for.inc64

bitmap_iterator_test.exit373.bitmap_iterator_test.exit373.1_crit_edge: ; preds = %bitmap_iterator_test.exit373
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit373.1

for.inc64:                                        ; preds = %bitmap_iterator_test.exit373
  call void @__sanitizer_cov_trace_pc() #22
  %142 = ptrtoint ptr %rx_flowstats716 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %rx_flowstats716, align 8
  %inc61 = add i32 %index.7711715, 1
  %arrayidx62 = getelementptr i64, ptr %data, i32 %index.7711715
  %144 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %arrayidx62, align 8
  br label %bitmap_iterator_test.exit373.1

bitmap_iterator_test.exit373.1:                   ; preds = %for.inc64, %bitmap_iterator_test.exit373.bitmap_iterator_test.exit373.1_crit_edge
  %index.9719 = phi i32 [ %inc61, %for.inc64 ], [ %index.7711715, %bitmap_iterator_test.exit373.bitmap_iterator_test.exit373.1_crit_edge ]
  %arrayidx.i.i367.1 = getelementptr i8, ptr %dev, i32 63656
  %145 = ptrtoint ptr %arrayidx.i.i367.1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %arrayidx.i.i367.1, align 4
  %147 = and i32 %146, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool58.not.1 = icmp eq i32 %147, 0
  br i1 %tobool58.not.1, label %bitmap_iterator_test.exit373.1.bitmap_iterator_test.exit373.2_crit_edge, label %for.inc64.1

bitmap_iterator_test.exit373.1.bitmap_iterator_test.exit373.2_crit_edge: ; preds = %bitmap_iterator_test.exit373.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit373.2

for.inc64.1:                                      ; preds = %bitmap_iterator_test.exit373.1
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx60.1 = getelementptr i8, ptr %dev, i32 63536
  %148 = ptrtoint ptr %arrayidx60.1 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %arrayidx60.1, align 8
  %inc61.1 = add i32 %index.9719, 1
  %arrayidx62.1 = getelementptr i64, ptr %data, i32 %index.9719
  %150 = ptrtoint ptr %arrayidx62.1 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %149, ptr %arrayidx62.1, align 8
  br label %bitmap_iterator_test.exit373.2

bitmap_iterator_test.exit373.2:                   ; preds = %for.inc64.1, %bitmap_iterator_test.exit373.1.bitmap_iterator_test.exit373.2_crit_edge
  %index.9.1727 = phi i32 [ %inc61.1, %for.inc64.1 ], [ %index.9719, %bitmap_iterator_test.exit373.1.bitmap_iterator_test.exit373.2_crit_edge ]
  %arrayidx.i.i367.2 = getelementptr i8, ptr %dev, i32 63656
  %151 = ptrtoint ptr %arrayidx.i.i367.2 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %arrayidx.i.i367.2, align 4
  %153 = and i32 %152, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool58.not.2 = icmp eq i32 %153, 0
  br i1 %tobool58.not.2, label %bitmap_iterator_test.exit373.2.for.inc64.2_crit_edge, label %bitmap_iterator_test.exit373.2.if.then59.2_crit_edge

bitmap_iterator_test.exit373.2.if.then59.2_crit_edge: ; preds = %bitmap_iterator_test.exit373.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then59.2

bitmap_iterator_test.exit373.2.for.inc64.2_crit_edge: ; preds = %bitmap_iterator_test.exit373.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc64.2

if.then59.2:                                      ; preds = %bitmap_iterator_test.exit373.2.if.then59.2_crit_edge, %for.inc64.1.thread729
  %index.9.1728 = phi i32 [ %index.9.1727, %bitmap_iterator_test.exit373.2.if.then59.2_crit_edge ], [ %inc61.1732, %for.inc64.1.thread729 ]
  %arrayidx60.2 = getelementptr i8, ptr %dev, i32 63544
  %154 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %arrayidx60.2, align 8
  %inc61.2 = add i32 %index.9.1728, 1
  %arrayidx62.2 = getelementptr i64, ptr %data, i32 %index.9.1728
  %156 = ptrtoint ptr %arrayidx62.2 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %155, ptr %arrayidx62.2, align 8
  br label %for.inc64.2

for.inc64.2:                                      ; preds = %if.then59.2, %bitmap_iterator_test.exit373.2.for.inc64.2_crit_edge
  %index.9.2 = phi i32 [ %inc61.2, %if.then59.2 ], [ %index.9.1727, %bitmap_iterator_test.exit373.2.for.inc64.2_crit_edge ]
  %tx_priority_flowstats = getelementptr i8, ptr %dev, i32 63336
  br label %for.body71.outer

for.cond83.preheader:                             ; preds = %for.inc79
  %tx_flowstats = getelementptr i8, ptr %dev, i32 63552
  br i1 %cmp4.i.i, label %for.inc94.1.thread756, label %for.cond83.preheader.bitmap_iterator_test.exit399_crit_edge

for.cond83.preheader.bitmap_iterator_test.exit399_crit_edge: ; preds = %for.cond83.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit399

for.inc94.1.thread756:                            ; preds = %for.cond83.preheader
  call void @__sanitizer_cov_trace_pc() #22
  %157 = ptrtoint ptr %tx_flowstats to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %tx_flowstats, align 8
  %inc91751 = add i32 %index.10536.ph, 2
  %arrayidx92752 = getelementptr i64, ptr %data, i32 %inc76
  %159 = ptrtoint ptr %arrayidx92752 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %arrayidx92752, align 8
  %arrayidx90.1758 = getelementptr i8, ptr %dev, i32 63560
  %160 = ptrtoint ptr %arrayidx90.1758 to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %arrayidx90.1758, align 8
  %inc91.1759 = add i32 %index.10536.ph, 3
  %arrayidx92.1760 = getelementptr i64, ptr %data, i32 %inc91751
  %162 = ptrtoint ptr %arrayidx92.1760 to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %161, ptr %arrayidx92.1760, align 8
  br label %if.then89.2

for.body71:                                       ; preds = %for.inc79.thread.for.body71_crit_edge, %for.body71.outer
  %i.5538 = phi i32 [ %inc80735, %for.inc79.thread.for.body71_crit_edge ], [ %i.5538.ph, %for.body71.outer ]
  %it.sroa.15.5533 = phi i32 [ %inc.i388736, %for.inc79.thread.for.body71_crit_edge ], [ %it.sroa.15.5533.ph, %for.body71.outer ]
  br i1 %cmp4.i.i, label %for.body71.for.inc79_crit_edge, label %bitmap_iterator_test.exit386

for.body71.for.inc79_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc79

bitmap_iterator_test.exit386:                     ; preds = %for.body71
  %div3.i.i379 = lshr i32 %it.sroa.15.5533, 5
  %arrayidx.i.i380 = getelementptr i32, ptr %stats_bitmap, i32 %div3.i.i379
  %163 = ptrtoint ptr %arrayidx.i.i380 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %arrayidx.i.i380, align 4
  %and.i.i381 = and i32 %it.sroa.15.5533, 31
  %165 = shl nuw i32 1, %and.i.i381
  %166 = and i32 %164, %165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool73.not = icmp eq i32 %166, 0
  br i1 %tobool73.not, label %for.inc79.thread, label %bitmap_iterator_test.exit386.for.inc79_crit_edge

bitmap_iterator_test.exit386.for.inc79_crit_edge: ; preds = %bitmap_iterator_test.exit386
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc79

for.inc79:                                        ; preds = %bitmap_iterator_test.exit386.for.inc79_crit_edge, %for.body71.for.inc79_crit_edge
  %arrayidx75 = getelementptr i64, ptr %tx_priority_flowstats, i32 %i.5538
  %167 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %arrayidx75, align 8
  %inc76 = add i32 %index.10536.ph, 1
  %arrayidx77 = getelementptr i64, ptr %data, i32 %index.10536.ph
  %169 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %168, ptr %arrayidx77, align 8
  %inc80 = add nuw nsw i32 %i.5538, 1
  %inc.i388 = add nuw nsw i32 %it.sroa.15.5533, 1
  %exitcond578.not = icmp eq i32 %inc80, 24
  br i1 %exitcond578.not, label %for.cond83.preheader, label %for.inc79.for.body71.outer_crit_edge

for.inc79.for.body71.outer_crit_edge:             ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body71.outer

for.body71.outer:                                 ; preds = %for.inc79.for.body71.outer_crit_edge, %for.inc64.2
  %i.5538.ph = phi i32 [ %inc80, %for.inc79.for.body71.outer_crit_edge ], [ 0, %for.inc64.2 ]
  %index.10536.ph = phi i32 [ %inc76, %for.inc79.for.body71.outer_crit_edge ], [ %index.9.2, %for.inc64.2 ]
  %it.sroa.15.5533.ph = phi i32 [ %inc.i388, %for.inc79.for.body71.outer_crit_edge ], [ 62, %for.inc64.2 ]
  br label %for.body71

for.inc79.thread:                                 ; preds = %bitmap_iterator_test.exit386
  %inc80735 = add nuw nsw i32 %i.5538, 1
  %inc.i388736 = add nuw nsw i32 %it.sroa.15.5533, 1
  %exitcond578.not737 = icmp eq i32 %inc80735, 24
  br i1 %exitcond578.not737, label %for.cond83.preheader.thread, label %for.inc79.thread.for.body71_crit_edge

for.inc79.thread.for.body71_crit_edge:            ; preds = %for.inc79.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body71

for.cond83.preheader.thread:                      ; preds = %for.inc79.thread
  call void @__sanitizer_cov_trace_pc() #22
  %tx_flowstats741 = getelementptr i8, ptr %dev, i32 63552
  br label %bitmap_iterator_test.exit399

bitmap_iterator_test.exit399:                     ; preds = %for.cond83.preheader.thread, %for.cond83.preheader.bitmap_iterator_test.exit399_crit_edge
  %tx_flowstats743 = phi ptr [ %tx_flowstats741, %for.cond83.preheader.thread ], [ %tx_flowstats, %for.cond83.preheader.bitmap_iterator_test.exit399_crit_edge ]
  %index.11738742 = phi i32 [ %index.10536.ph, %for.cond83.preheader.thread ], [ %inc76, %for.cond83.preheader.bitmap_iterator_test.exit399_crit_edge ]
  %arrayidx.i.i393 = getelementptr i8, ptr %dev, i32 63660
  %170 = ptrtoint ptr %arrayidx.i.i393 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %arrayidx.i.i393, align 4
  %172 = and i32 %171, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool88.not = icmp eq i32 %172, 0
  br i1 %tobool88.not, label %bitmap_iterator_test.exit399.bitmap_iterator_test.exit399.1_crit_edge, label %for.inc94

bitmap_iterator_test.exit399.bitmap_iterator_test.exit399.1_crit_edge: ; preds = %bitmap_iterator_test.exit399
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit399.1

for.inc94:                                        ; preds = %bitmap_iterator_test.exit399
  call void @__sanitizer_cov_trace_pc() #22
  %173 = ptrtoint ptr %tx_flowstats743 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %tx_flowstats743, align 8
  %inc91 = add i32 %index.11738742, 1
  %arrayidx92 = getelementptr i64, ptr %data, i32 %index.11738742
  %175 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %arrayidx92, align 8
  br label %bitmap_iterator_test.exit399.1

bitmap_iterator_test.exit399.1:                   ; preds = %for.inc94, %bitmap_iterator_test.exit399.bitmap_iterator_test.exit399.1_crit_edge
  %index.13746 = phi i32 [ %inc91, %for.inc94 ], [ %index.11738742, %bitmap_iterator_test.exit399.bitmap_iterator_test.exit399.1_crit_edge ]
  %arrayidx.i.i393.1 = getelementptr i8, ptr %dev, i32 63660
  %176 = ptrtoint ptr %arrayidx.i.i393.1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %arrayidx.i.i393.1, align 4
  %178 = and i32 %177, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool88.not.1 = icmp eq i32 %178, 0
  br i1 %tobool88.not.1, label %bitmap_iterator_test.exit399.1.bitmap_iterator_test.exit399.2_crit_edge, label %for.inc94.1

bitmap_iterator_test.exit399.1.bitmap_iterator_test.exit399.2_crit_edge: ; preds = %bitmap_iterator_test.exit399.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit399.2

for.inc94.1:                                      ; preds = %bitmap_iterator_test.exit399.1
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx90.1 = getelementptr i8, ptr %dev, i32 63560
  %179 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %arrayidx90.1, align 8
  %inc91.1 = add i32 %index.13746, 1
  %arrayidx92.1 = getelementptr i64, ptr %data, i32 %index.13746
  %181 = ptrtoint ptr %arrayidx92.1 to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %180, ptr %arrayidx92.1, align 8
  br label %bitmap_iterator_test.exit399.2

bitmap_iterator_test.exit399.2:                   ; preds = %for.inc94.1, %bitmap_iterator_test.exit399.1.bitmap_iterator_test.exit399.2_crit_edge
  %index.13.1754 = phi i32 [ %inc91.1, %for.inc94.1 ], [ %index.13746, %bitmap_iterator_test.exit399.1.bitmap_iterator_test.exit399.2_crit_edge ]
  %arrayidx.i.i393.2 = getelementptr i8, ptr %dev, i32 63660
  %182 = ptrtoint ptr %arrayidx.i.i393.2 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %arrayidx.i.i393.2, align 4
  %184 = and i32 %183, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool88.not.2 = icmp eq i32 %184, 0
  br i1 %tobool88.not.2, label %bitmap_iterator_test.exit399.2.for.inc94.2_crit_edge, label %bitmap_iterator_test.exit399.2.if.then89.2_crit_edge

bitmap_iterator_test.exit399.2.if.then89.2_crit_edge: ; preds = %bitmap_iterator_test.exit399.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then89.2

bitmap_iterator_test.exit399.2.for.inc94.2_crit_edge: ; preds = %bitmap_iterator_test.exit399.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc94.2

if.then89.2:                                      ; preds = %bitmap_iterator_test.exit399.2.if.then89.2_crit_edge, %for.inc94.1.thread756
  %index.13.1755 = phi i32 [ %index.13.1754, %bitmap_iterator_test.exit399.2.if.then89.2_crit_edge ], [ %inc91.1759, %for.inc94.1.thread756 ]
  %arrayidx90.2 = getelementptr i8, ptr %dev, i32 63568
  %185 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %arrayidx90.2, align 8
  %inc91.2 = add i32 %index.13.1755, 1
  %arrayidx92.2 = getelementptr i64, ptr %data, i32 %index.13.1755
  %187 = ptrtoint ptr %arrayidx92.2 to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %186, ptr %arrayidx92.2, align 8
  br label %for.inc94.2

for.inc94.2:                                      ; preds = %if.then89.2, %bitmap_iterator_test.exit399.2.for.inc94.2_crit_edge
  %index.13.2 = phi i32 [ %inc91.2, %if.then89.2 ], [ %index.13.1754, %bitmap_iterator_test.exit399.2.for.inc94.2_crit_edge ]
  %pkstats = getelementptr i8, ptr %dev, i32 62952
  br label %for.body101.outer

for.cond114.preheader:                            ; preds = %for.inc110
  %xdp_stats = getelementptr i8, ptr %dev, i32 63616
  br i1 %cmp4.i.i, label %for.inc126.3.thread802, label %for.cond114.preheader.bitmap_iterator_test.exit425_crit_edge

for.cond114.preheader.bitmap_iterator_test.exit425_crit_edge: ; preds = %for.cond114.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit425

for.inc126.3.thread802:                           ; preds = %for.cond114.preheader
  call void @__sanitizer_cov_trace_pc() #22
  %188 = ptrtoint ptr %xdp_stats to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %xdp_stats, align 4
  %conv122778 = zext i32 %189 to i64
  %inc123779 = add i32 %index.14550.ph, 2
  %arrayidx124780 = getelementptr i64, ptr %data, i32 %inc107
  %190 = ptrtoint ptr %arrayidx124780 to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %conv122778, ptr %arrayidx124780, align 8
  %arrayidx121.1786 = getelementptr i8, ptr %dev, i32 63620
  %191 = ptrtoint ptr %arrayidx121.1786 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx121.1786, align 4
  %conv122.1787 = zext i32 %192 to i64
  %inc123.1788 = add i32 %index.14550.ph, 3
  %arrayidx124.1789 = getelementptr i64, ptr %data, i32 %inc123779
  %193 = ptrtoint ptr %arrayidx124.1789 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %conv122.1787, ptr %arrayidx124.1789, align 8
  %arrayidx121.2795 = getelementptr i8, ptr %dev, i32 63624
  %194 = ptrtoint ptr %arrayidx121.2795 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx121.2795, align 4
  %conv122.2796 = zext i32 %195 to i64
  %inc123.2797 = add i32 %index.14550.ph, 4
  %arrayidx124.2798 = getelementptr i64, ptr %data, i32 %inc123.1788
  %196 = ptrtoint ptr %arrayidx124.2798 to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 %conv122.2796, ptr %arrayidx124.2798, align 8
  %arrayidx121.3804 = getelementptr i8, ptr %dev, i32 63628
  %197 = ptrtoint ptr %arrayidx121.3804 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx121.3804, align 4
  %conv122.3805 = zext i32 %198 to i64
  %inc123.3806 = add i32 %index.14550.ph, 5
  %arrayidx124.3807 = getelementptr i64, ptr %data, i32 %inc123.2797
  %199 = ptrtoint ptr %arrayidx124.3807 to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %conv122.3805, ptr %arrayidx124.3807, align 8
  br label %for.inc126.4

for.body101:                                      ; preds = %for.inc110.thread.for.body101_crit_edge, %for.body101.outer
  %i.7552 = phi i32 [ %inc111762, %for.inc110.thread.for.body101_crit_edge ], [ %i.7552.ph, %for.body101.outer ]
  %it.sroa.15.7547 = phi i32 [ %inc.i414763, %for.inc110.thread.for.body101_crit_edge ], [ %it.sroa.15.7547.ph, %for.body101.outer ]
  br i1 %cmp4.i.i, label %for.body101.for.inc110_crit_edge, label %bitmap_iterator_test.exit412

for.body101.for.inc110_crit_edge:                 ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc110

bitmap_iterator_test.exit412:                     ; preds = %for.body101
  %div3.i.i405 = lshr i32 %it.sroa.15.7547, 5
  %arrayidx.i.i406 = getelementptr i32, ptr %stats_bitmap, i32 %div3.i.i405
  %200 = ptrtoint ptr %arrayidx.i.i406 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %arrayidx.i.i406, align 4
  %and.i.i407 = and i32 %it.sroa.15.7547, 31
  %202 = shl nuw i32 1, %and.i.i407
  %203 = and i32 %201, %202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool103.not = icmp eq i32 %203, 0
  br i1 %tobool103.not, label %for.inc110.thread, label %bitmap_iterator_test.exit412.for.inc110_crit_edge

bitmap_iterator_test.exit412.for.inc110_crit_edge: ; preds = %bitmap_iterator_test.exit412
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc110

for.inc110:                                       ; preds = %bitmap_iterator_test.exit412.for.inc110_crit_edge, %for.body101.for.inc110_crit_edge
  %arrayidx105 = getelementptr i32, ptr %pkstats, i32 %i.7552
  %204 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx105, align 4
  %conv106 = zext i32 %205 to i64
  %inc107 = add i32 %index.14550.ph, 1
  %arrayidx108 = getelementptr i64, ptr %data, i32 %index.14550.ph
  %206 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 %conv106, ptr %arrayidx108, align 8
  %inc111 = add nuw nsw i32 %i.7552, 1
  %inc.i414 = add nuw nsw i32 %it.sroa.15.7547, 1
  %exitcond580.not = icmp eq i32 %inc111, 43
  br i1 %exitcond580.not, label %for.cond114.preheader, label %for.inc110.for.body101.outer_crit_edge

for.inc110.for.body101.outer_crit_edge:           ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body101.outer

for.body101.outer:                                ; preds = %for.inc110.for.body101.outer_crit_edge, %for.inc94.2
  %i.7552.ph = phi i32 [ %inc111, %for.inc110.for.body101.outer_crit_edge ], [ 0, %for.inc94.2 ]
  %index.14550.ph = phi i32 [ %inc107, %for.inc110.for.body101.outer_crit_edge ], [ %index.13.2, %for.inc94.2 ]
  %it.sroa.15.7547.ph = phi i32 [ %inc.i414, %for.inc110.for.body101.outer_crit_edge ], [ 89, %for.inc94.2 ]
  br label %for.body101

for.inc110.thread:                                ; preds = %bitmap_iterator_test.exit412
  %inc111762 = add nuw nsw i32 %i.7552, 1
  %inc.i414763 = add nuw nsw i32 %it.sroa.15.7547, 1
  %exitcond580.not764 = icmp eq i32 %inc111762, 43
  br i1 %exitcond580.not764, label %for.cond114.preheader.thread, label %for.inc110.thread.for.body101_crit_edge

for.inc110.thread.for.body101_crit_edge:          ; preds = %for.inc110.thread
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body101

for.cond114.preheader.thread:                     ; preds = %for.inc110.thread
  call void @__sanitizer_cov_trace_pc() #22
  %xdp_stats768 = getelementptr i8, ptr %dev, i32 63616
  br label %bitmap_iterator_test.exit425

bitmap_iterator_test.exit425:                     ; preds = %for.cond114.preheader.thread, %for.cond114.preheader.bitmap_iterator_test.exit425_crit_edge
  %xdp_stats770 = phi ptr [ %xdp_stats768, %for.cond114.preheader.thread ], [ %xdp_stats, %for.cond114.preheader.bitmap_iterator_test.exit425_crit_edge ]
  %index.15765769 = phi i32 [ %index.14550.ph, %for.cond114.preheader.thread ], [ %inc107, %for.cond114.preheader.bitmap_iterator_test.exit425_crit_edge ]
  %arrayidx.i.i419 = getelementptr i8, ptr %dev, i32 63668
  %207 = ptrtoint ptr %arrayidx.i.i419 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %arrayidx.i.i419, align 4
  %209 = and i32 %208, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool119.not = icmp eq i32 %209, 0
  br i1 %tobool119.not, label %bitmap_iterator_test.exit425.bitmap_iterator_test.exit425.1_crit_edge, label %for.inc126

bitmap_iterator_test.exit425.bitmap_iterator_test.exit425.1_crit_edge: ; preds = %bitmap_iterator_test.exit425
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit425.1

for.inc126:                                       ; preds = %bitmap_iterator_test.exit425
  call void @__sanitizer_cov_trace_pc() #22
  %210 = ptrtoint ptr %xdp_stats770 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %xdp_stats770, align 4
  %conv122 = zext i32 %211 to i64
  %inc123 = add i32 %index.15765769, 1
  %arrayidx124 = getelementptr i64, ptr %data, i32 %index.15765769
  %212 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %conv122, ptr %arrayidx124, align 8
  br label %bitmap_iterator_test.exit425.1

bitmap_iterator_test.exit425.1:                   ; preds = %for.inc126, %bitmap_iterator_test.exit425.bitmap_iterator_test.exit425.1_crit_edge
  %index.17773 = phi i32 [ %inc123, %for.inc126 ], [ %index.15765769, %bitmap_iterator_test.exit425.bitmap_iterator_test.exit425.1_crit_edge ]
  %arrayidx.i.i419.1 = getelementptr i8, ptr %dev, i32 63668
  %213 = ptrtoint ptr %arrayidx.i.i419.1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load volatile i32, ptr %arrayidx.i.i419.1, align 4
  %215 = and i32 %214, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool119.not.1 = icmp eq i32 %215, 0
  br i1 %tobool119.not.1, label %bitmap_iterator_test.exit425.1.bitmap_iterator_test.exit425.2_crit_edge, label %for.inc126.1

bitmap_iterator_test.exit425.1.bitmap_iterator_test.exit425.2_crit_edge: ; preds = %bitmap_iterator_test.exit425.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit425.2

for.inc126.1:                                     ; preds = %bitmap_iterator_test.exit425.1
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx121.1 = getelementptr i8, ptr %dev, i32 63620
  %216 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx121.1, align 4
  %conv122.1 = zext i32 %217 to i64
  %inc123.1 = add i32 %index.17773, 1
  %arrayidx124.1 = getelementptr i64, ptr %data, i32 %index.17773
  %218 = ptrtoint ptr %arrayidx124.1 to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %conv122.1, ptr %arrayidx124.1, align 8
  br label %bitmap_iterator_test.exit425.2

bitmap_iterator_test.exit425.2:                   ; preds = %for.inc126.1, %bitmap_iterator_test.exit425.1.bitmap_iterator_test.exit425.2_crit_edge
  %index.17.1782 = phi i32 [ %inc123.1, %for.inc126.1 ], [ %index.17773, %bitmap_iterator_test.exit425.1.bitmap_iterator_test.exit425.2_crit_edge ]
  %arrayidx.i.i419.2 = getelementptr i8, ptr %dev, i32 63668
  %219 = ptrtoint ptr %arrayidx.i.i419.2 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %arrayidx.i.i419.2, align 4
  %221 = and i32 %220, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool119.not.2 = icmp eq i32 %221, 0
  br i1 %tobool119.not.2, label %bitmap_iterator_test.exit425.2.bitmap_iterator_test.exit425.3_crit_edge, label %for.inc126.2

bitmap_iterator_test.exit425.2.bitmap_iterator_test.exit425.3_crit_edge: ; preds = %bitmap_iterator_test.exit425.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit425.3

for.inc126.2:                                     ; preds = %bitmap_iterator_test.exit425.2
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx121.2 = getelementptr i8, ptr %dev, i32 63624
  %222 = ptrtoint ptr %arrayidx121.2 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx121.2, align 4
  %conv122.2 = zext i32 %223 to i64
  %inc123.2 = add i32 %index.17.1782, 1
  %arrayidx124.2 = getelementptr i64, ptr %data, i32 %index.17.1782
  %224 = ptrtoint ptr %arrayidx124.2 to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %conv122.2, ptr %arrayidx124.2, align 8
  br label %bitmap_iterator_test.exit425.3

bitmap_iterator_test.exit425.3:                   ; preds = %for.inc126.2, %bitmap_iterator_test.exit425.2.bitmap_iterator_test.exit425.3_crit_edge
  %index.17.2791 = phi i32 [ %inc123.2, %for.inc126.2 ], [ %index.17.1782, %bitmap_iterator_test.exit425.2.bitmap_iterator_test.exit425.3_crit_edge ]
  %arrayidx.i.i419.3 = getelementptr i8, ptr %dev, i32 63668
  %225 = ptrtoint ptr %arrayidx.i.i419.3 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile i32, ptr %arrayidx.i.i419.3, align 4
  %227 = and i32 %226, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool119.not.3 = icmp eq i32 %227, 0
  br i1 %tobool119.not.3, label %bitmap_iterator_test.exit425.3.bitmap_iterator_test.exit425.4_crit_edge, label %for.inc126.3

bitmap_iterator_test.exit425.3.bitmap_iterator_test.exit425.4_crit_edge: ; preds = %bitmap_iterator_test.exit425.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit425.4

for.inc126.3:                                     ; preds = %bitmap_iterator_test.exit425.3
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx121.3 = getelementptr i8, ptr %dev, i32 63628
  %228 = ptrtoint ptr %arrayidx121.3 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx121.3, align 4
  %conv122.3 = zext i32 %229 to i64
  %inc123.3 = add i32 %index.17.2791, 1
  %arrayidx124.3 = getelementptr i64, ptr %data, i32 %index.17.2791
  %230 = ptrtoint ptr %arrayidx124.3 to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %conv122.3, ptr %arrayidx124.3, align 8
  br label %bitmap_iterator_test.exit425.4

bitmap_iterator_test.exit425.4:                   ; preds = %for.inc126.3, %bitmap_iterator_test.exit425.3.bitmap_iterator_test.exit425.4_crit_edge
  %index.17.3800 = phi i32 [ %inc123.3, %for.inc126.3 ], [ %index.17.2791, %bitmap_iterator_test.exit425.3.bitmap_iterator_test.exit425.4_crit_edge ]
  %arrayidx.i.i419.4 = getelementptr i8, ptr %dev, i32 63668
  %231 = ptrtoint ptr %arrayidx.i.i419.4 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %arrayidx.i.i419.4, align 4
  %233 = and i32 %232, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool119.not.4 = icmp eq i32 %233, 0
  br i1 %tobool119.not.4, label %for.inc126.4.thread, label %bitmap_iterator_test.exit425.4.for.inc126.4_crit_edge

bitmap_iterator_test.exit425.4.for.inc126.4_crit_edge: ; preds = %bitmap_iterator_test.exit425.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc126.4

for.inc126.4.thread:                              ; preds = %bitmap_iterator_test.exit425.4
  call void @__sanitizer_cov_trace_pc() #22
  %phy_stats809 = getelementptr i8, ptr %dev, i32 63636
  br label %bitmap_iterator_test.exit438

for.inc126.4:                                     ; preds = %bitmap_iterator_test.exit425.4.for.inc126.4_crit_edge, %for.inc126.3.thread802
  %index.17.3801 = phi i32 [ %index.17.3800, %bitmap_iterator_test.exit425.4.for.inc126.4_crit_edge ], [ %inc123.3806, %for.inc126.3.thread802 ]
  %arrayidx121.4 = getelementptr i8, ptr %dev, i32 63632
  %234 = ptrtoint ptr %arrayidx121.4 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx121.4, align 4
  %conv122.4 = zext i32 %235 to i64
  %inc123.4 = add i32 %index.17.3801, 1
  %arrayidx124.4 = getelementptr i64, ptr %data, i32 %index.17.3801
  %236 = ptrtoint ptr %arrayidx124.4 to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 %conv122.4, ptr %arrayidx124.4, align 8
  %phy_stats = getelementptr i8, ptr %dev, i32 63636
  br i1 %cmp4.i.i, label %for.inc142.2.thread835, label %for.inc126.4.bitmap_iterator_test.exit438_crit_edge

for.inc126.4.bitmap_iterator_test.exit438_crit_edge: ; preds = %for.inc126.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit438

for.inc142.2.thread835:                           ; preds = %for.inc126.4
  call void @__sanitizer_cov_trace_pc() #22
  %237 = ptrtoint ptr %phy_stats to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %phy_stats, align 4
  %conv138820 = zext i32 %238 to i64
  %inc139821 = add i32 %index.17.3801, 2
  %arrayidx140822 = getelementptr i64, ptr %data, i32 %inc123.4
  %239 = ptrtoint ptr %arrayidx140822 to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %conv138820, ptr %arrayidx140822, align 8
  %arrayidx137.1828 = getelementptr i8, ptr %dev, i32 63640
  %240 = ptrtoint ptr %arrayidx137.1828 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx137.1828, align 4
  %conv138.1829 = zext i32 %241 to i64
  %inc139.1830 = add i32 %index.17.3801, 3
  %arrayidx140.1831 = getelementptr i64, ptr %data, i32 %inc139821
  %242 = ptrtoint ptr %arrayidx140.1831 to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %conv138.1829, ptr %arrayidx140.1831, align 8
  %arrayidx137.2837 = getelementptr i8, ptr %dev, i32 63644
  %243 = ptrtoint ptr %arrayidx137.2837 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx137.2837, align 4
  %conv138.2838 = zext i32 %244 to i64
  %inc139.2839 = add i32 %index.17.3801, 4
  %arrayidx140.2840 = getelementptr i64, ptr %data, i32 %inc139.1830
  %245 = ptrtoint ptr %arrayidx140.2840 to i32
  call void @__asan_store8_noabort(i32 %245)
  store i64 %conv138.2838, ptr %arrayidx140.2840, align 8
  br label %if.then136.3

for.body150.lr.ph:                                ; preds = %for.inc142.3
  %tx_ring = getelementptr i8, ptr %dev, i32 61508
  br label %for.body150

bitmap_iterator_test.exit438:                     ; preds = %for.inc126.4.bitmap_iterator_test.exit438_crit_edge, %for.inc126.4.thread
  %phy_stats812 = phi ptr [ %phy_stats809, %for.inc126.4.thread ], [ %phy_stats, %for.inc126.4.bitmap_iterator_test.exit438_crit_edge ]
  %index.17.4810 = phi i32 [ %index.17.3800, %for.inc126.4.thread ], [ %inc123.4, %for.inc126.4.bitmap_iterator_test.exit438_crit_edge ]
  %arrayidx.i.i432 = getelementptr i8, ptr %dev, i32 63668
  %246 = ptrtoint ptr %arrayidx.i.i432 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load volatile i32, ptr %arrayidx.i.i432, align 4
  %248 = and i32 %247, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %tobool135.not = icmp eq i32 %248, 0
  br i1 %tobool135.not, label %bitmap_iterator_test.exit438.bitmap_iterator_test.exit438.1_crit_edge, label %for.inc142

bitmap_iterator_test.exit438.bitmap_iterator_test.exit438.1_crit_edge: ; preds = %bitmap_iterator_test.exit438
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit438.1

for.inc142:                                       ; preds = %bitmap_iterator_test.exit438
  call void @__sanitizer_cov_trace_pc() #22
  %249 = ptrtoint ptr %phy_stats812 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %phy_stats812, align 4
  %conv138 = zext i32 %250 to i64
  %inc139 = add i32 %index.17.4810, 1
  %arrayidx140 = getelementptr i64, ptr %data, i32 %index.17.4810
  %251 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 %conv138, ptr %arrayidx140, align 8
  br label %bitmap_iterator_test.exit438.1

bitmap_iterator_test.exit438.1:                   ; preds = %for.inc142, %bitmap_iterator_test.exit438.bitmap_iterator_test.exit438.1_crit_edge
  %index.19815 = phi i32 [ %inc139, %for.inc142 ], [ %index.17.4810, %bitmap_iterator_test.exit438.bitmap_iterator_test.exit438.1_crit_edge ]
  %arrayidx.i.i432.1 = getelementptr i8, ptr %dev, i32 63668
  %252 = ptrtoint ptr %arrayidx.i.i432.1 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load volatile i32, ptr %arrayidx.i.i432.1, align 4
  %254 = and i32 %253, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool135.not.1 = icmp eq i32 %254, 0
  br i1 %tobool135.not.1, label %bitmap_iterator_test.exit438.1.bitmap_iterator_test.exit438.2_crit_edge, label %for.inc142.1

bitmap_iterator_test.exit438.1.bitmap_iterator_test.exit438.2_crit_edge: ; preds = %bitmap_iterator_test.exit438.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit438.2

for.inc142.1:                                     ; preds = %bitmap_iterator_test.exit438.1
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx137.1 = getelementptr i8, ptr %dev, i32 63640
  %255 = ptrtoint ptr %arrayidx137.1 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx137.1, align 4
  %conv138.1 = zext i32 %256 to i64
  %inc139.1 = add i32 %index.19815, 1
  %arrayidx140.1 = getelementptr i64, ptr %data, i32 %index.19815
  %257 = ptrtoint ptr %arrayidx140.1 to i32
  call void @__asan_store8_noabort(i32 %257)
  store i64 %conv138.1, ptr %arrayidx140.1, align 8
  br label %bitmap_iterator_test.exit438.2

bitmap_iterator_test.exit438.2:                   ; preds = %for.inc142.1, %bitmap_iterator_test.exit438.1.bitmap_iterator_test.exit438.2_crit_edge
  %index.19.1824 = phi i32 [ %inc139.1, %for.inc142.1 ], [ %index.19815, %bitmap_iterator_test.exit438.1.bitmap_iterator_test.exit438.2_crit_edge ]
  %arrayidx.i.i432.2 = getelementptr i8, ptr %dev, i32 63668
  %258 = ptrtoint ptr %arrayidx.i.i432.2 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load volatile i32, ptr %arrayidx.i.i432.2, align 4
  %260 = and i32 %259, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool135.not.2 = icmp eq i32 %260, 0
  br i1 %tobool135.not.2, label %bitmap_iterator_test.exit438.2.bitmap_iterator_test.exit438.3_crit_edge, label %for.inc142.2

bitmap_iterator_test.exit438.2.bitmap_iterator_test.exit438.3_crit_edge: ; preds = %bitmap_iterator_test.exit438.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_test.exit438.3

for.inc142.2:                                     ; preds = %bitmap_iterator_test.exit438.2
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx137.2 = getelementptr i8, ptr %dev, i32 63644
  %261 = ptrtoint ptr %arrayidx137.2 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx137.2, align 4
  %conv138.2 = zext i32 %262 to i64
  %inc139.2 = add i32 %index.19.1824, 1
  %arrayidx140.2 = getelementptr i64, ptr %data, i32 %index.19.1824
  %263 = ptrtoint ptr %arrayidx140.2 to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 %conv138.2, ptr %arrayidx140.2, align 8
  br label %bitmap_iterator_test.exit438.3

bitmap_iterator_test.exit438.3:                   ; preds = %for.inc142.2, %bitmap_iterator_test.exit438.2.bitmap_iterator_test.exit438.3_crit_edge
  %index.19.2833 = phi i32 [ %inc139.2, %for.inc142.2 ], [ %index.19.1824, %bitmap_iterator_test.exit438.2.bitmap_iterator_test.exit438.3_crit_edge ]
  %arrayidx.i.i432.3 = getelementptr i8, ptr %dev, i32 63668
  %264 = ptrtoint ptr %arrayidx.i.i432.3 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load volatile i32, ptr %arrayidx.i.i432.3, align 4
  %266 = and i32 %265, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool135.not.3 = icmp eq i32 %266, 0
  br i1 %tobool135.not.3, label %bitmap_iterator_test.exit438.3.for.inc142.3_crit_edge, label %bitmap_iterator_test.exit438.3.if.then136.3_crit_edge

bitmap_iterator_test.exit438.3.if.then136.3_crit_edge: ; preds = %bitmap_iterator_test.exit438.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then136.3

bitmap_iterator_test.exit438.3.for.inc142.3_crit_edge: ; preds = %bitmap_iterator_test.exit438.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc142.3

if.then136.3:                                     ; preds = %bitmap_iterator_test.exit438.3.if.then136.3_crit_edge, %for.inc142.2.thread835
  %index.19.2834 = phi i32 [ %index.19.2833, %bitmap_iterator_test.exit438.3.if.then136.3_crit_edge ], [ %inc139.2839, %for.inc142.2.thread835 ]
  %arrayidx137.3 = getelementptr i8, ptr %dev, i32 63648
  %267 = ptrtoint ptr %arrayidx137.3 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx137.3, align 4
  %conv138.3 = zext i32 %268 to i64
  %inc139.3 = add i32 %index.19.2834, 1
  %arrayidx140.3 = getelementptr i64, ptr %data, i32 %index.19.2834
  %269 = ptrtoint ptr %arrayidx140.3 to i32
  call void @__asan_store8_noabort(i32 %269)
  store i64 %conv138.3, ptr %arrayidx140.3, align 8
  br label %for.inc142.3

for.inc142.3:                                     ; preds = %if.then136.3, %bitmap_iterator_test.exit438.3.for.inc142.3_crit_edge
  %index.19.3 = phi i32 [ %inc139.3, %if.then136.3 ], [ %index.19.2833, %bitmap_iterator_test.exit438.3.for.inc142.3_crit_edge ]
  %tx_ring_num = getelementptr i8, ptr %dev, i32 61452
  %270 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %tx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %cmp148568.not = icmp eq i32 %271, 0
  br i1 %cmp148568.not, label %for.inc142.3.for.cond165.preheader_crit_edge, label %for.body150.lr.ph

for.inc142.3.for.cond165.preheader_crit_edge:     ; preds = %for.inc142.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond165.preheader

for.cond165.preheader:                            ; preds = %for.body150.for.cond165.preheader_crit_edge, %for.inc142.3.for.cond165.preheader_crit_edge
  %index.20.lcssa = phi i32 [ %index.19.3, %for.inc142.3.for.cond165.preheader_crit_edge ], [ %inc160, %for.body150.for.cond165.preheader_crit_edge ]
  %rx_ring_num = getelementptr i8, ptr %dev, i32 61460
  %272 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %cmp166571.not = icmp eq i32 %273, 0
  br i1 %cmp166571.not, label %for.cond165.preheader.for.end212_crit_edge, label %for.cond165.preheader.for.body168_crit_edge

for.cond165.preheader.for.body168_crit_edge:      ; preds = %for.cond165.preheader
  br label %for.body168

for.cond165.preheader.for.end212_crit_edge:       ; preds = %for.cond165.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end212

for.body150:                                      ; preds = %for.body150.for.body150_crit_edge, %for.body150.lr.ph
  %i.10570 = phi i32 [ 0, %for.body150.lr.ph ], [ %inc163, %for.body150.for.body150_crit_edge ]
  %index.20569 = phi i32 [ %index.19.3, %for.body150.lr.ph ], [ %inc160, %for.body150.for.body150_crit_edge ]
  %274 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %tx_ring, align 4
  %arrayidx152 = getelementptr ptr, ptr %275, i32 %i.10570
  %276 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx152, align 4
  %packets = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %277, i32 0, i32 10
  %278 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %packets, align 4
  %conv153 = zext i32 %279 to i64
  %inc154 = add i32 %index.20569, 1
  %arrayidx155 = getelementptr i64, ptr %data, i32 %index.20569
  %280 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store8_noabort(i32 %280)
  store i64 %conv153, ptr %arrayidx155, align 8
  %281 = load ptr, ptr %tx_ring, align 4
  %arrayidx158 = getelementptr ptr, ptr %281, i32 %i.10570
  %282 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %arrayidx158, align 4
  %bytes = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %283, i32 0, i32 9
  %284 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %bytes, align 8
  %conv159 = zext i32 %285 to i64
  %inc160 = add i32 %index.20569, 2
  %arrayidx161 = getelementptr i64, ptr %data, i32 %inc154
  %286 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store8_noabort(i32 %286)
  store i64 %conv159, ptr %arrayidx161, align 8
  %inc163 = add nuw i32 %i.10570, 1
  %287 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %tx_ring_num, align 4
  %cmp148 = icmp ult i32 %inc163, %288
  br i1 %cmp148, label %for.body150.for.body150_crit_edge, label %for.body150.for.cond165.preheader_crit_edge

for.body150.for.cond165.preheader_crit_edge:      ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond165.preheader

for.body150.for.body150_crit_edge:                ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body150

for.body168:                                      ; preds = %for.body168.for.body168_crit_edge, %for.cond165.preheader.for.body168_crit_edge
  %i.11573 = phi i32 [ %inc211, %for.body168.for.body168_crit_edge ], [ 0, %for.cond165.preheader.for.body168_crit_edge ]
  %index.21572 = phi i32 [ %inc208, %for.body168.for.body168_crit_edge ], [ %index.20.lcssa, %for.cond165.preheader.for.body168_crit_edge ]
  %arrayidx169 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 53, i32 %i.11573
  %289 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %arrayidx169, align 4
  %packets170 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %290, i32 0, i32 16
  %291 = ptrtoint ptr %packets170 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %packets170, align 16
  %conv171 = zext i32 %292 to i64
  %inc172 = add i32 %index.21572, 1
  %arrayidx173 = getelementptr i64, ptr %data, i32 %index.21572
  %293 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store8_noabort(i32 %293)
  store i64 %conv171, ptr %arrayidx173, align 8
  %294 = load ptr, ptr %arrayidx169, align 4
  %bytes176 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %294, i32 0, i32 15
  %295 = ptrtoint ptr %bytes176 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %bytes176, align 4
  %conv177 = zext i32 %296 to i64
  %inc178 = add i32 %index.21572, 2
  %arrayidx179 = getelementptr i64, ptr %data, i32 %inc172
  %297 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store8_noabort(i32 %297)
  store i64 %conv177, ptr %arrayidx179, align 8
  %298 = load ptr, ptr %arrayidx169, align 4
  %dropped = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %298, i32 0, i32 26
  %299 = ptrtoint ptr %dropped to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %dropped, align 8
  %conv182 = zext i32 %300 to i64
  %inc183 = add i32 %index.21572, 3
  %arrayidx184 = getelementptr i64, ptr %data, i32 %inc178
  %301 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store8_noabort(i32 %301)
  store i64 %conv182, ptr %arrayidx184, align 8
  %302 = load ptr, ptr %arrayidx169, align 4
  %xdp_drop = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %302, i32 0, i32 21
  %303 = ptrtoint ptr %xdp_drop to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %xdp_drop, align 4
  %conv187 = zext i32 %304 to i64
  %inc188 = add i32 %index.21572, 4
  %arrayidx189 = getelementptr i64, ptr %data, i32 %inc183
  %305 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store8_noabort(i32 %305)
  store i64 %conv187, ptr %arrayidx189, align 8
  %306 = load ptr, ptr %arrayidx169, align 4
  %xdp_redirect = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %306, i32 0, i32 22
  %307 = ptrtoint ptr %xdp_redirect to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %xdp_redirect, align 8
  %conv192 = zext i32 %308 to i64
  %inc193 = add i32 %index.21572, 5
  %arrayidx194 = getelementptr i64, ptr %data, i32 %inc188
  %309 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store8_noabort(i32 %309)
  store i64 %conv192, ptr %arrayidx194, align 8
  %310 = load ptr, ptr %arrayidx169, align 4
  %xdp_redirect_fail = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %310, i32 0, i32 23
  %311 = ptrtoint ptr %xdp_redirect_fail to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %xdp_redirect_fail, align 4
  %conv197 = zext i32 %312 to i64
  %inc198 = add i32 %index.21572, 6
  %arrayidx199 = getelementptr i64, ptr %data, i32 %inc193
  %313 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store8_noabort(i32 %313)
  store i64 %conv197, ptr %arrayidx199, align 8
  %314 = load ptr, ptr %arrayidx169, align 4
  %xdp_tx = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %314, i32 0, i32 24
  %315 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %xdp_tx, align 16
  %conv202 = zext i32 %316 to i64
  %inc203 = add i32 %index.21572, 7
  %arrayidx204 = getelementptr i64, ptr %data, i32 %inc198
  %317 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store8_noabort(i32 %317)
  store i64 %conv202, ptr %arrayidx204, align 8
  %318 = load ptr, ptr %arrayidx169, align 4
  %xdp_tx_full = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %318, i32 0, i32 25
  %319 = ptrtoint ptr %xdp_tx_full to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %xdp_tx_full, align 4
  %conv207 = zext i32 %320 to i64
  %inc208 = add i32 %index.21572, 8
  %arrayidx209 = getelementptr i64, ptr %data, i32 %inc203
  %321 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store8_noabort(i32 %321)
  store i64 %conv207, ptr %arrayidx209, align 8
  %inc211 = add nuw i32 %i.11573, 1
  %322 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %rx_ring_num, align 4
  %cmp166 = icmp ult i32 %inc211, %323
  br i1 %cmp166, label %for.body168.for.body168_crit_edge, label %for.body168.for.end212_crit_edge

for.body168.for.end212_crit_edge:                 ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end212

for.body168.for.body168_crit_edge:                ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body168

for.end212:                                       ; preds = %for.body168.for.end212_crit_edge, %for.cond165.preheader.for.end212_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_en_get_priv_flags(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %pflags = getelementptr i8, ptr %dev, i32 68628
  %0 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pflags, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_priv_flags(ptr noundef %dev, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %2 = trunc i32 %and to i8
  %pflags = getelementptr i8, ptr %dev, i32 68628
  %3 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pflags, align 4
  %and3 = and i32 %4, 1
  %and8 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and3)
  %cmp.not = icmp eq i32 %and, %and3
  br i1 %cmp.not, label %entry.if.end75_crit_edge, label %if.then

entry.if.end75_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end75

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else, label %for.cond27.preheader.preheader

for.cond27.preheader.preheader:                   ; preds = %if.then
  %arrayidx = getelementptr i8, ptr %dev, i32 61452
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp28153.not = icmp eq i32 %6, 0
  br i1 %cmp28153.not, label %for.cond27.preheader.preheader.for.inc40_crit_edge, label %for.body30.lr.ph

for.cond27.preheader.preheader.for.inc40_crit_edge: ; preds = %for.cond27.preheader.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc40

for.body30.lr.ph:                                 ; preds = %for.cond27.preheader.preheader
  %arrayidx31 = getelementptr i8, ptr %dev, i32 61508
  %7 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx31, align 4
  br label %for.body30

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.body30.lr.ph
  %bf_supported.1.off0155 = phi i1 [ true, %for.body30.lr.ph ], [ %tobool38, %for.body30.for.body30_crit_edge ]
  %i.0154 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc, %for.body30.for.body30_crit_edge ]
  %arrayidx32 = getelementptr ptr, ptr %8, i32 %i.0154
  %9 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx32, align 4
  %bf_alloced = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %bf_alloced to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bf_alloced, align 2, !range !170
  %13 = zext i8 %12 to i32
  %conv36 = zext i1 %bf_supported.1.off0155 to i32
  %and37 = and i32 %13, %conv36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38 = icmp ne i32 %and37, 0
  %inc = add nuw i32 %i.0154, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.body30.for.inc40_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body30

for.body30.for.inc40_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc40

for.inc40:                                        ; preds = %for.body30.for.inc40_crit_edge, %for.cond27.preheader.preheader.for.inc40_crit_edge
  %bf_supported.1.off0.lcssa = phi i1 [ true, %for.cond27.preheader.preheader.for.inc40_crit_edge ], [ %tobool38, %for.body30.for.inc40_crit_edge ]
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 61456
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp28153.not.1 = icmp eq i32 %15, 0
  br i1 %cmp28153.not.1, label %for.inc40.for.inc40.1_crit_edge, label %for.body30.lr.ph.1

for.inc40.for.inc40.1_crit_edge:                  ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc40.1

for.body30.lr.ph.1:                               ; preds = %for.inc40
  %arrayidx31.1 = getelementptr i8, ptr %dev, i32 61512
  %16 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx31.1, align 4
  br label %for.body30.1

for.body30.1:                                     ; preds = %for.body30.1.for.body30.1_crit_edge, %for.body30.lr.ph.1
  %bf_supported.1.off0155.1 = phi i1 [ %bf_supported.1.off0.lcssa, %for.body30.lr.ph.1 ], [ %tobool38.1, %for.body30.1.for.body30.1_crit_edge ]
  %i.0154.1 = phi i32 [ 0, %for.body30.lr.ph.1 ], [ %inc.1, %for.body30.1.for.body30.1_crit_edge ]
  %arrayidx32.1 = getelementptr ptr, ptr %17, i32 %i.0154.1
  %18 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx32.1, align 4
  %bf_alloced.1 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %bf_alloced.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bf_alloced.1, align 2, !range !170
  %22 = zext i8 %21 to i32
  %conv36.1 = zext i1 %bf_supported.1.off0155.1 to i32
  %and37.1 = and i32 %22, %conv36.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.1)
  %tobool38.1 = icmp ne i32 %and37.1, 0
  %inc.1 = add nuw i32 %i.0154.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %15
  br i1 %exitcond.1.not, label %for.body30.1.for.inc40.1_crit_edge, label %for.body30.1.for.body30.1_crit_edge

for.body30.1.for.body30.1_crit_edge:              ; preds = %for.body30.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body30.1

for.body30.1.for.inc40.1_crit_edge:               ; preds = %for.body30.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc40.1

for.inc40.1:                                      ; preds = %for.body30.1.for.inc40.1_crit_edge, %for.inc40.for.inc40.1_crit_edge
  %bf_supported.1.off0.lcssa.1 = phi i1 [ %bf_supported.1.off0.lcssa, %for.inc40.for.inc40.1_crit_edge ], [ %tobool38.1, %for.body30.1.for.inc40.1_crit_edge ]
  br i1 %bf_supported.1.off0.lcssa.1, label %if.end, label %if.then44

if.then44:                                        ; preds = %for.inc40.1
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.40) #20
  br label %cleanup104

if.end:                                           ; preds = %for.inc40.1
  call void @__sanitizer_cov_trace_pc() #22
  %or = or i32 %4, 1
  br label %if.end48

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %and47 = and i32 %4, -2
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.end
  %storemerge152 = phi i32 [ %or, %if.end ], [ %and47, %if.else ]
  %23 = ptrtoint ptr %pflags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge152, ptr %pflags, align 4
  %arrayidx55 = getelementptr i8, ptr %dev, i32 61452
  %24 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp56159.not = icmp eq i32 %25, 0
  br i1 %cmp56159.not, label %if.end48.for.inc67_crit_edge, label %for.body58.lr.ph

if.end48.for.inc67_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc67

for.body58.lr.ph:                                 ; preds = %if.end48
  %arrayidx61 = getelementptr i8, ptr %dev, i32 61508
  br label %for.body58

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %for.body58.lr.ph
  %i.1160 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc65, %for.body58.for.body58_crit_edge ]
  %26 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx61, align 4
  %arrayidx62 = getelementptr ptr, ptr %27, i32 %i.1160
  %28 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx62, align 4
  %bf_enabled = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %29, i32 0, i32 26
  %30 = ptrtoint ptr %bf_enabled to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %2, ptr %bf_enabled, align 1
  %inc65 = add nuw i32 %i.1160, 1
  %31 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx55, align 4
  %cmp56 = icmp ult i32 %inc65, %32
  br i1 %cmp56, label %for.body58.for.body58_crit_edge, label %for.body58.for.inc67_crit_edge

for.body58.for.inc67_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc67

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body58

for.inc67:                                        ; preds = %for.body58.for.inc67_crit_edge, %if.end48.for.inc67_crit_edge
  %arrayidx55.1 = getelementptr i8, ptr %dev, i32 61456
  %33 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx55.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp56159.not.1 = icmp eq i32 %34, 0
  br i1 %cmp56159.not.1, label %for.inc67.for.inc67.1_crit_edge, label %for.body58.lr.ph.1

for.inc67.for.inc67.1_crit_edge:                  ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc67.1

for.body58.lr.ph.1:                               ; preds = %for.inc67
  %arrayidx61.1 = getelementptr i8, ptr %dev, i32 61512
  br label %for.body58.1

for.body58.1:                                     ; preds = %for.body58.1.for.body58.1_crit_edge, %for.body58.lr.ph.1
  %i.1160.1 = phi i32 [ 0, %for.body58.lr.ph.1 ], [ %inc65.1, %for.body58.1.for.body58.1_crit_edge ]
  %35 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx61.1, align 4
  %arrayidx62.1 = getelementptr ptr, ptr %36, i32 %i.1160.1
  %37 = ptrtoint ptr %arrayidx62.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx62.1, align 4
  %bf_enabled.1 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %38, i32 0, i32 26
  %39 = ptrtoint ptr %bf_enabled.1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %2, ptr %bf_enabled.1, align 1
  %inc65.1 = add nuw i32 %i.1160.1, 1
  %40 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx55.1, align 4
  %cmp56.1 = icmp ult i32 %inc65.1, %41
  br i1 %cmp56.1, label %for.body58.1.for.body58.1_crit_edge, label %for.body58.1.for.inc67.1_crit_edge

for.body58.1.for.inc67.1_crit_edge:               ; preds = %for.body58.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc67.1

for.body58.1.for.body58.1_crit_edge:              ; preds = %for.body58.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body58.1

for.inc67.1:                                      ; preds = %for.body58.1.for.inc67.1_crit_edge, %for.inc67.for.inc67.1_crit_edge
  %cond = select i1 %tobool.not, ptr @.str.44, ptr @.str.43
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.41, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.42, ptr noundef nonnull %cond) #20
  br label %if.end75

if.end75:                                         ; preds = %for.inc67.1, %entry.if.end75_crit_edge
  %and8.lobit = lshr exact i32 %and8, 1
  %and14 = lshr i32 %4, 1
  %and14.lobit = and i32 %and14, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and8.lobit, i32 %and14.lobit)
  %cmp80.not = icmp eq i32 %and8.lobit, %and14.lobit
  br i1 %cmp80.not, label %if.end75.cleanup104_crit_edge, label %if.then82

if.end75.cleanup104_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup104

if.then82:                                        ; preds = %if.end75
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %conv84 = trunc i32 %45 to i8
  %call87 = tail call i32 @set_phv_bit(ptr noundef %43, i8 noundef zeroext %conv84, i32 noundef %and8.lobit) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.else90, label %if.then82.cleanup104_crit_edge

if.then82.cleanup104_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup104

if.else90:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #22
  %46 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pflags, align 4
  %and97 = and i32 %47, -3
  %cond102 = select i1 %tobool9.not, ptr @.str.44, ptr @.str.43
  %storemerge = or i32 %and97, %and8
  store i32 %storemerge, ptr %pflags, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.41, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond102) #20
  br label %cleanup104

cleanup104:                                       ; preds = %if.else90, %if.then82.cleanup104_crit_edge, %if.end75.cleanup104_crit_edge, %if.then44
  %retval.3 = phi i32 [ -22, %if.then44 ], [ %call87, %if.then82.cleanup104_crit_edge ], [ 0, %if.else90 ], [ 0, %if.end75.cleanup104_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_get_sset_count(ptr noundef %dev, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %stats_bitmap = getelementptr i8, ptr %dev, i32 63652
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %stats_bitmap, i32 noundef 141) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %call.i.i)
  %cmp4.i.i = icmp eq i32 %call.i.i, 141
  br i1 %cmp4.i.i, label %entry.bitmap_iterator_init.exit_crit_edge, label %cond.true.i

entry.bitmap_iterator_init.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %bitmap_iterator_init.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %stats_bitmap, i32 noundef 141) #20
  br label %bitmap_iterator_init.exit

bitmap_iterator_init.exit:                        ; preds = %cond.true.i, %entry.bitmap_iterator_init.exit_crit_edge
  %cond.i = phi i32 [ %call4.i.i, %cond.true.i ], [ 141, %entry.bitmap_iterator_init.exit_crit_edge ]
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %sset, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb4
    i32 2, label %bitmap_iterator_init.exit.cleanup_crit_edge
  ]

bitmap_iterator_init.exit.cleanup_crit_edge:      ; preds = %bitmap_iterator_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb:                                            ; preds = %bitmap_iterator_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  %tx_ring_num = getelementptr i8, ptr %dev, i32 61452
  %1 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_ring_num, align 4
  %mul = shl i32 %2, 1
  %add = add i32 %mul, %cond.i
  %rx_ring_num = getelementptr i8, ptr %dev, i32 61460
  %3 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_ring_num, align 4
  %mul2 = shl i32 %4, 3
  %add3 = add i32 %add, %mul2
  br label %cleanup

sw.bb4:                                           ; preds = %bitmap_iterator_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %flags = getelementptr inbounds %struct.mlx4_dev, ptr %8, i32 0, i32 3, i32 60
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %flags, align 8
  %sh.diff = lshr i64 %10, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %11 = or i32 %tr.sh.diff, -3
  %sub = add nsw i32 %11, 6
  br label %cleanup

sw.default:                                       ; preds = %bitmap_iterator_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb4, %sw.bb, %bitmap_iterator_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ %sub, %sw.bb4 ], [ %add3, %sw.bb ], [ %sset, %bitmap_iterator_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_get_rxnfc(ptr nocapture noundef readonly %dev, ptr nocapture noundef %cmd, ptr nocapture noundef writeonly %rule_locs) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %.off = add i32 %1, -46
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %steering_mode = getelementptr inbounds %struct.mlx4_dev, ptr %5, i32 0, i32 3, i32 50
  %6 = ptrtoint ptr %steering_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %steering_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp9.not = icmp eq i32 %7, 2
  br i1 %cmp9.not, label %lor.lhs.false10, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false10:                                  ; preds = %land.lhs.true
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %8 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_up, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false10.if.end_crit_edge

lor.lhs.false10.if.end_crit_edge:                 ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false10.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 45, label %sw.bb
    i32 46, label %if.end.for.body.i_crit_edge
    i32 47, label %sw.bb14
    i32 48, label %sw.bb16
  ]

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %rx_ring_num = getelementptr i8, ptr %dev, i32 61460
  %11 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_ring_num, align 4
  %conv = zext i32 %12 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %res.06.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %i.05.i = phi i32 [ %inc1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %i.05.i, i32 2
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not.i = icmp ne i64 %15, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %res.06.i, %inc.i
  %inc1.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc1.i, 256
  br i1 %exitcond.not.i, label %mlx4_en_get_num_flows.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

mlx4_en_get_num_flows.exit:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %16, align 8
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %19)
  %20 = icmp ugt i32 %19, 255
  br i1 %20, label %sw.bb14.cleanup_crit_edge, label %if.end.i

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb14
  %id.i54 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %19, i32 2
  %21 = ptrtoint ptr %id.i54 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %id.i54, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool.not.i55 = icmp eq i64 %22, 0
  br i1 %tobool.not.i55, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %flow_spec.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %19, i32 1
  %23 = call ptr @memcpy(ptr %fs.i, ptr %flow_spec.i, i32 168)
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  %data17 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %24 = ptrtoint ptr %data17 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 256, ptr %data17, align 8
  %25 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %fs.i60 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %sw.bb16
  %err.0 = phi i32 [ 0, %sw.bb16 ], [ %retval.0.i6367, %if.end27 ]
  %i.0 = phi i32 [ 0, %sw.bb16 ], [ %inc28, %if.end27 ]
  %priority.0 = phi i32 [ 0, %sw.bb16 ], [ %priority.1, %if.end27 ]
  %26 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %err.0, label %while.cond.cleanup_crit_edge [
    i32 0, label %while.cond.land.rhs_crit_edge
    i32 -2, label %while.cond.land.rhs_crit_edge68
  ]

while.cond.land.rhs_crit_edge68:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.rhs

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge68
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %25, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %priority.0, i32 %28)
  %cmp22 = icmp ult i32 %priority.0, %28
  br i1 %cmp22, label %while.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.0)
  %29 = icmp ugt i32 %i.0, 255
  br i1 %29, label %while.body.if.end27_crit_edge, label %if.end.i59

while.body.if.end27_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.end.i59:                                       ; preds = %while.body
  %id.i57 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %i.0, i32 2
  %30 = ptrtoint ptr %id.i57 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %id.i57, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool.not.i58 = icmp eq i64 %31, 0
  br i1 %tobool.not.i58, label %if.end.i59.if.end27_crit_edge, label %if.then26

if.end.i59.if.end27_crit_edge:                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.then26:                                        ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #22
  %flow_spec.i61 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %i.0, i32 1
  %32 = call ptr @memcpy(ptr %fs.i60, ptr %flow_spec.i61, i32 168)
  %inc = add nuw i32 %priority.0, 1
  %arrayidx = getelementptr i32, ptr %rule_locs, i32 %priority.0
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.0, ptr %arrayidx, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end.i59.if.end27_crit_edge, %while.body.if.end27_crit_edge
  %retval.0.i6367 = phi i32 [ 0, %if.then26 ], [ -2, %if.end.i59.if.end27_crit_edge ], [ -22, %while.body.if.end27_crit_edge ]
  %priority.1 = phi i32 [ %inc, %if.then26 ], [ %priority.0, %if.end.i59.if.end27_crit_edge ], [ %priority.0, %while.body.if.end27_crit_edge ]
  %inc28 = add i32 %i.0, 1
  br label %while.cond

cleanup:                                          ; preds = %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.then2.i, %if.end.i.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %mlx4_en_get_num_flows.exit, %sw.bb, %if.end.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %mlx4_en_get_num_flows.exit ], [ 0, %sw.bb ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ 0, %if.then2.i ], [ -2, %if.end.i.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_rxnfc(ptr noundef %dev, ptr noundef readonly %cmd) #0 align 64 {
entry:
  %reg_id.i = alloca i64, align 8
  %rule.i = alloca %struct.mlx4_net_trans_rule, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %steering_mode = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 50
  %4 = ptrtoint ptr %steering_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %steering_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %6 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_up, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %9, label %sw.default [
    i32 50, label %sw.bb
    i32 49, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_id.i) #20
  %11 = ptrtoint ptr %reg_id.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %reg_id.i, align 8, !annotation !172
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rule.i) #20
  %12 = call ptr @memcpy(ptr %rule.i, ptr @__const.mlx4_en_flow_replace.rule, i32 28)
  %port.i = getelementptr i8, ptr %dev, i32 51652
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %conv.i = trunc i32 %14 to i8
  %port1.i = getelementptr inbounds %struct.mlx4_net_trans_rule, ptr %rule.i, i32 0, i32 5
  %15 = ptrtoint ptr %port1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %port1.i, align 4
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %location.i, align 8
  %18 = trunc i32 %17 to i16
  %conv2.i = or i16 %18, 8192
  %priority.i = getelementptr inbounds %struct.mlx4_net_trans_rule, ptr %rule.i, i32 0, i32 6
  %19 = ptrtoint ptr %priority.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv2.i, ptr %priority.i, align 2
  %20 = ptrtoint ptr %rule.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %rule.i, ptr %rule.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rule.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rule.i, ptr %prev.i.i, align 4
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %22 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ring_cookie.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %23)
  %cmp.i = icmp eq i64 %23, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %qpn5.i = getelementptr i8, ptr %dev, i32 62552
  %24 = ptrtoint ptr %qpn5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qpn5.i, align 4
  br label %if.end31.i

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %23)
  %tobool.not.i = icmp sgt i64 %23, -1
  br i1 %tobool.not.i, label %if.else13.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %conv12.i = trunc i64 %23 to i32
  br label %if.end31.i

if.else13.i:                                      ; preds = %if.else.i
  %rx_ring_num.i = getelementptr i8, ptr %dev, i32 61460
  %26 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_ring_num.i, align 4
  %conv16.i = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv16.i)
  %cmp17.not.i = icmp ult i64 %23, %conv16.i
  br i1 %cmp17.not.i, label %if.end.i, label %if.else13.i.cleanup.sink.split.i_crit_edge

if.else13.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.else13.i
  %idxprom.i = trunc i64 %23 to i32
  %qpn24.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 39, i32 1, i32 %idxprom.i, i32 1
  %28 = ptrtoint ptr %qpn24.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qpn24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not.i = icmp eq i32 %29, 0
  br i1 %tobool25.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end.i.if.end31.i_crit_edge

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.end31.i:                                       ; preds = %if.end.i.if.end31.i_crit_edge, %if.then8.i, %if.then.i
  %qpn.0.i = phi i32 [ %25, %if.then.i ], [ %conv12.i, %if.then8.i ], [ %29, %if.end.i.if.end31.i_crit_edge ]
  %qpn32.i = getelementptr inbounds %struct.mlx4_net_trans_rule, ptr %rule.i, i32 0, i32 7
  %30 = ptrtoint ptr %qpn32.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %qpn.0.i, ptr %qpn32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %17)
  %cmp.i.i.i = icmp ugt i32 %17, 255
  br i1 %cmp.i.i.i, label %if.end31.i.out_free_list.i_crit_edge, label %if.end.i.i.i

if.end31.i.out_free_list.i_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

if.end.i.i.i:                                     ; preds = %if.end31.i
  %31 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fs.i, align 8
  %and.i.i.i = and i32 %32, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end6.i.i.i_crit_edge, label %if.then2.i.i.i

if.end.i.i.i.if.end6.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  %h_dest.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1
  %33 = ptrtoint ptr %h_dest.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %h_dest.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 2
  %35 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %and9.i.i.i.i = and i16 %36, %34
  %add.ptr3.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 4
  %37 = ptrtoint ptr %add.ptr3.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr3.i.i.i.i, align 2
  %and510.i.i.i.i = and i16 %and9.i.i.i.i, %38
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i16 %and510.i.i.i.i, -1
  br i1 %cmp.i.i.i.i, label %if.then2.i.i.i.if.end6.i.i.i_crit_edge, label %if.then2.i.i.i.out_free_list.i_crit_edge

if.then2.i.i.i.out_free_list.i_crit_edge:         ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

if.then2.i.i.i.if.end6.i.i.i_crit_edge:           ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.then2.i.i.i.if.end6.i.i.i_crit_edge, %if.end.i.i.i.if.end6.i.i.i_crit_edge
  %and9.i.i.i = and i32 %32, 1073741823
  %39 = zext i32 %and9.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %and9.i.i.i, label %if.end6.i.i.i.out_free_list.i_crit_edge [
    i32 1, label %if.end6.i.i.i.sw.bb.i.i.i_crit_edge
    i32 2, label %if.end6.i.i.i.sw.bb.i.i.i_crit_edge31
    i32 13, label %sw.bb43.i.i.i
    i32 18, label %sw.bb82.i.i.i
  ]

if.end6.i.i.i.sw.bb.i.i.i_crit_edge31:            ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i.i.i

if.end6.i.i.i.sw.bb.i.i.i_crit_edge:              ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i.i.i

if.end6.i.i.i.out_free_list.i_crit_edge:          ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

sw.bb.i.i.i:                                      ; preds = %if.end6.i.i.i.sw.bb.i.i.i_crit_edge, %if.end6.i.i.i.sw.bb.i.i.i_crit_edge31
  %m_u.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %tos.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %40 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tos.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool11.not.i.i.i = icmp eq i8 %41, 0
  br i1 %tobool11.not.i.i.i, label %if.end13.i.i.i, label %sw.bb.i.i.i.out_free_list.i_crit_edge

sw.bb.i.i.i.out_free_list.i_crit_edge:            ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

if.end13.i.i.i:                                   ; preds = %sw.bb.i.i.i
  %42 = ptrtoint ptr %m_u.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %m_u.i.i.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %43, label %if.end13.i.i.i.out_free_list.i_crit_edge [
    i32 0, label %if.end13.i.i.i.lor.lhs.false19.i.i.i_crit_edge
    i32 -1, label %if.end13.i.i.i.lor.lhs.false19.i.i.i_crit_edge32
  ]

if.end13.i.i.i.lor.lhs.false19.i.i.i_crit_edge32: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false19.i.i.i

if.end13.i.i.i.lor.lhs.false19.i.i.i_crit_edge:   ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false19.i.i.i

if.end13.i.i.i.out_free_list.i_crit_edge:         ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

lor.lhs.false19.i.i.i:                            ; preds = %if.end13.i.i.i.lor.lhs.false19.i.i.i_crit_edge, %if.end13.i.i.i.lor.lhs.false19.i.i.i_crit_edge32
  %ip4dst.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %ip4dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ip4dst.i.i.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %46, label %lor.lhs.false19.i.i.i.out_free_list.i_crit_edge [
    i32 0, label %lor.lhs.false19.i.i.i.lor.lhs.false24.i.i.i_crit_edge
    i32 -1, label %lor.lhs.false19.i.i.i.lor.lhs.false24.i.i.i_crit_edge33
  ]

lor.lhs.false19.i.i.i.lor.lhs.false24.i.i.i_crit_edge33: ; preds = %lor.lhs.false19.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false24.i.i.i

lor.lhs.false19.i.i.i.lor.lhs.false24.i.i.i_crit_edge: ; preds = %lor.lhs.false19.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false24.i.i.i

lor.lhs.false19.i.i.i.out_free_list.i_crit_edge:  ; preds = %lor.lhs.false19.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

lor.lhs.false24.i.i.i:                            ; preds = %lor.lhs.false19.i.i.i.lor.lhs.false24.i.i.i_crit_edge, %lor.lhs.false19.i.i.i.lor.lhs.false24.i.i.i_crit_edge33
  %psrc.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %48 = ptrtoint ptr %psrc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %psrc.i.i.i, align 4
  %50 = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %49, label %lor.lhs.false24.i.i.i.out_free_list.i_crit_edge [
    i16 0, label %lor.lhs.false24.i.i.i.lor.lhs.false32.i.i.i_crit_edge
    i16 -1, label %lor.lhs.false24.i.i.i.lor.lhs.false32.i.i.i_crit_edge34
  ]

lor.lhs.false24.i.i.i.lor.lhs.false32.i.i.i_crit_edge34: ; preds = %lor.lhs.false24.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false32.i.i.i

lor.lhs.false24.i.i.i.lor.lhs.false32.i.i.i_crit_edge: ; preds = %lor.lhs.false24.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false32.i.i.i

lor.lhs.false24.i.i.i.out_free_list.i_crit_edge:  ; preds = %lor.lhs.false24.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

lor.lhs.false32.i.i.i:                            ; preds = %lor.lhs.false24.i.i.i.lor.lhs.false32.i.i.i_crit_edge, %lor.lhs.false24.i.i.i.lor.lhs.false32.i.i.i_crit_edge34
  %pdst.i.i.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %pdst.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %pdst.i.i.i, align 2
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %52, label %lor.lhs.false32.i.i.i.out_free_list.i_crit_edge [
    i16 0, label %lor.lhs.false32.i.i.i.sw.epilog.i.i.i_crit_edge
    i16 -1, label %lor.lhs.false32.i.i.i.sw.epilog.i.i.i_crit_edge35
  ]

lor.lhs.false32.i.i.i.sw.epilog.i.i.i_crit_edge35: ; preds = %lor.lhs.false32.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i.i.i

lor.lhs.false32.i.i.i.sw.epilog.i.i.i_crit_edge:  ; preds = %lor.lhs.false32.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i.i.i

lor.lhs.false32.i.i.i.out_free_list.i_crit_edge:  ; preds = %lor.lhs.false32.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

sw.bb43.i.i.i:                                    ; preds = %if.end6.i.i.i
  %m_u45.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %l4_4_bytes.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %54 = ptrtoint ptr %l4_4_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %l4_4_bytes.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool46.not.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool46.not.i.i.i, label %lor.lhs.false47.i.i.i, label %sw.bb43.i.i.i.out_free_list.i_crit_edge

sw.bb43.i.i.i.out_free_list.i_crit_edge:          ; preds = %sw.bb43.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

lor.lhs.false47.i.i.i:                            ; preds = %sw.bb43.i.i.i
  %tos48.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %56 = ptrtoint ptr %tos48.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tos48.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool50.not.i.i.i = icmp eq i8 %57, 0
  br i1 %tobool50.not.i.i.i, label %lor.lhs.false51.i.i.i, label %lor.lhs.false47.i.i.i.out_free_list.i_crit_edge

lor.lhs.false47.i.i.i.out_free_list.i_crit_edge:  ; preds = %lor.lhs.false47.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

lor.lhs.false51.i.i.i:                            ; preds = %lor.lhs.false47.i.i.i
  %proto.i.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u45.i.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %proto.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %proto.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool53.not.i.i.i = icmp eq i8 %59, 0
  br i1 %tobool53.not.i.i.i, label %lor.lhs.false54.i.i.i, label %lor.lhs.false51.i.i.i.out_free_list.i_crit_edge

lor.lhs.false51.i.i.i.out_free_list.i_crit_edge:  ; preds = %lor.lhs.false51.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

lor.lhs.false54.i.i.i:                            ; preds = %lor.lhs.false51.i.i.i
  %h_u.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %ip_ver.i.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %ip_ver.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ip_ver.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp57.not.i.i.i = icmp eq i8 %61, 1
  br i1 %cmp57.not.i.i.i, label %lor.lhs.false59.i.i.i, label %lor.lhs.false54.i.i.i.out_free_list.i_crit_edge

lor.lhs.false54.i.i.i.out_free_list.i_crit_edge:  ; preds = %lor.lhs.false54.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

lor.lhs.false59.i.i.i:                            ; preds = %lor.lhs.false54.i.i.i
  %62 = ptrtoint ptr %m_u45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %m_u45.i.i.i, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %63, label %lor.lhs.false59.i.i.i.out_free_list.i_crit_edge [
    i32 0, label %land.lhs.true.i.i.i
    i32 -1, label %lor.lhs.false59.i.i.i.lor.lhs.false72.i.i.i_crit_edge
  ]

lor.lhs.false59.i.i.i.lor.lhs.false72.i.i.i_crit_edge: ; preds = %lor.lhs.false59.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false72.i.i.i

lor.lhs.false59.i.i.i.out_free_list.i_crit_edge:  ; preds = %lor.lhs.false59.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false59.i.i.i
  %ip4dst62.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %ip4dst62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ip4dst62.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool63.not.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool63.not.i.i.i, label %land.lhs.true.i.i.i.out_free_list.i_crit_edge, label %land.lhs.true.i.i.i.lor.lhs.false72.i.i.i_crit_edge

land.lhs.true.i.i.i.lor.lhs.false72.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false72.i.i.i

land.lhs.true.i.i.i.out_free_list.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

lor.lhs.false72.i.i.i:                            ; preds = %land.lhs.true.i.i.i.lor.lhs.false72.i.i.i_crit_edge, %lor.lhs.false59.i.i.i.lor.lhs.false72.i.i.i_crit_edge
  %ip4dst73.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %67 = ptrtoint ptr %ip4dst73.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ip4dst73.i.i.i, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %68, label %lor.lhs.false72.i.i.i.out_free_list.i_crit_edge [
    i32 0, label %lor.lhs.false72.i.i.i.sw.epilog.i.i.i_crit_edge
    i32 -1, label %lor.lhs.false72.i.i.i.sw.epilog.i.i.i_crit_edge36
  ]

lor.lhs.false72.i.i.i.sw.epilog.i.i.i_crit_edge36: ; preds = %lor.lhs.false72.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i.i.i

lor.lhs.false72.i.i.i.sw.epilog.i.i.i_crit_edge:  ; preds = %lor.lhs.false72.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i.i.i

lor.lhs.false72.i.i.i.out_free_list.i_crit_edge:  ; preds = %lor.lhs.false72.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

sw.bb82.i.i.i:                                    ; preds = %if.end6.i.i.i
  %m_u84.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_source.i.i.i = getelementptr inbounds %struct.ethhdr, ptr %m_u84.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %h_source.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %h_source.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.ethhdr, ptr %m_u84.i.i.i, i32 0, i32 1, i32 4
  %72 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %73 to i32
  %or.i.i.i.i = or i32 %71, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i1.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i1.i.i.i, label %if.end88.i.i.i, label %sw.bb82.i.i.i.out_free_list.i_crit_edge

sw.bb82.i.i.i.out_free_list.i_crit_edge:          ; preds = %sw.bb82.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

if.end88.i.i.i:                                   ; preds = %sw.bb82.i.i.i
  %74 = ptrtoint ptr %m_u84.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %m_u84.i.i.i, align 2
  %add.ptr1.i2.i.i.i = getelementptr i8, ptr %m_u84.i.i.i, i32 2
  %76 = ptrtoint ptr %add.ptr1.i2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr1.i2.i.i.i, align 2
  %and9.i3.i.i.i = and i16 %77, %75
  %add.ptr3.i4.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %78 = ptrtoint ptr %add.ptr3.i4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr3.i4.i.i.i, align 2
  %and510.i5.i.i.i = and i16 %and9.i3.i.i.i, %79
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i5.i.i.i)
  %cmp.i6.i.i.i = icmp eq i16 %and510.i5.i.i.i, -1
  br i1 %cmp.i6.i.i.i, label %if.end93.i.i.i, label %if.end88.i.i.i.out_free_list.i_crit_edge

if.end88.i.i.i.out_free_list.i_crit_edge:         ; preds = %if.end88.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

if.end93.i.i.i:                                   ; preds = %if.end88.i.i.i
  %h_proto.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %80 = ptrtoint ptr %h_proto.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %h_proto.i.i.i, align 1
  %82 = zext i16 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %81, label %if.end93.i.i.i.out_free_list.i_crit_edge [
    i16 0, label %if.end93.i.i.i.sw.epilog.i.i.i_crit_edge
    i16 -1, label %if.end93.i.i.i.sw.epilog.i.i.i_crit_edge37
  ]

if.end93.i.i.i.sw.epilog.i.i.i_crit_edge37:       ; preds = %if.end93.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i.i.i

if.end93.i.i.i.sw.epilog.i.i.i_crit_edge:         ; preds = %if.end93.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i.i.i

if.end93.i.i.i.out_free_list.i_crit_edge:         ; preds = %if.end93.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

sw.epilog.i.i.i:                                  ; preds = %if.end93.i.i.i.sw.epilog.i.i.i_crit_edge, %if.end93.i.i.i.sw.epilog.i.i.i_crit_edge37, %lor.lhs.false72.i.i.i.sw.epilog.i.i.i_crit_edge, %lor.lhs.false72.i.i.i.sw.epilog.i.i.i_crit_edge36, %lor.lhs.false32.i.i.i.sw.epilog.i.i.i_crit_edge, %lor.lhs.false32.i.i.i.sw.epilog.i.i.i_crit_edge35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %tobool107.not.i.i.i = icmp sgt i32 %32, -1
  br i1 %tobool107.not.i.i.i, label %sw.epilog.i.i.i.if.end.i.i_crit_edge, label %if.then108.i.i.i

sw.epilog.i.i.i.if.end.i.i_crit_edge:             ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

if.then108.i.i.i:                                 ; preds = %sw.epilog.i.i.i
  %vlan_etype.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 2
  %83 = ptrtoint ptr %vlan_etype.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %vlan_etype.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool112.not.i.i.i = icmp eq i16 %84, 0
  br i1 %tobool112.not.i.i.i, label %lor.lhs.false113.i.i.i, label %if.then108.i.i.i.out_free_list.i_crit_edge

if.then108.i.i.i.out_free_list.i_crit_edge:       ; preds = %if.then108.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

lor.lhs.false113.i.i.i:                           ; preds = %if.then108.i.i.i
  %vlan_tci.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %85 = ptrtoint ptr %vlan_tci.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %vlan_tci.i.i.i, align 2
  %trunc.i.i.i = trunc i16 %86 to i12
  %87 = zext i12 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.89)
  switch i12 %trunc.i.i.i, label %lor.lhs.false113.i.i.i.out_free_list.i_crit_edge [
    i12 0, label %lor.lhs.false113.i.i.i.if.end129.i.i.i_crit_edge
    i12 -1, label %lor.lhs.false113.i.i.i.if.end129.i.i.i_crit_edge38
  ]

lor.lhs.false113.i.i.i.if.end129.i.i.i_crit_edge38: ; preds = %lor.lhs.false113.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end129.i.i.i

lor.lhs.false113.i.i.i.if.end129.i.i.i_crit_edge: ; preds = %lor.lhs.false113.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end129.i.i.i

lor.lhs.false113.i.i.i.out_free_list.i_crit_edge: ; preds = %lor.lhs.false113.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

if.end129.i.i.i:                                  ; preds = %lor.lhs.false113.i.i.i.if.end129.i.i.i_crit_edge, %lor.lhs.false113.i.i.i.if.end129.i.i.i_crit_edge38
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool133.not.i.i.i = icmp eq i16 %86, 0
  br i1 %tobool133.not.i.i.i, label %if.end129.i.i.i.if.end.i.i_crit_edge, label %if.then134.i.i.i

if.end129.i.i.i.if.end.i.i_crit_edge:             ; preds = %if.end129.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

if.then134.i.i.i:                                 ; preds = %if.end129.i.i.i
  %vlan_tci136.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %88 = ptrtoint ptr %vlan_tci136.i.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vlan_tci136.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %89)
  %cmp138.i.i.i = icmp ugt i16 %89, 4095
  br i1 %cmp138.i.i.i, label %if.then134.i.i.i.out_free_list.i_crit_edge, label %if.then134.i.i.i.if.end.i.i_crit_edge

if.then134.i.i.i.if.end.i.i_crit_edge:            ; preds = %if.then134.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

if.then134.i.i.i.out_free_list.i_crit_edge:       ; preds = %if.then134.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

if.end.i.i:                                       ; preds = %if.then134.i.i.i.if.end.i.i_crit_edge, %if.end129.i.i.i.if.end.i.i_crit_edge, %sw.epilog.i.i.i.if.end.i.i_crit_edge
  %90 = zext i32 %and9.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %and9.i.i.i, label %if.end.i.i.if.end37.i_crit_edge [
    i32 18, label %sw.bb.i.i
    i32 13, label %sw.bb12.i.i
    i32 1, label %if.end.i.i.mlx4_en_ethtool_to_net_trans_rule.exit.i_crit_edge
    i32 2, label %if.end.i.i.mlx4_en_ethtool_to_net_trans_rule.exit.i_crit_edge39
  ]

if.end.i.i.mlx4_en_ethtool_to_net_trans_rule.exit.i_crit_edge39: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mlx4_en_ethtool_to_net_trans_rule.exit.i

if.end.i.i.mlx4_en_ethtool_to_net_trans_rule.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mlx4_en_ethtool_to_net_trans_rule.exit.i

if.end.i.i.if.end37.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %91 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %91, i32 noundef 3520, i32 noundef 52) #26
  %tobool3.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool3.not.i.i, label %sw.bb.i.i.out_free_list.i_crit_edge, label %if.end5.i.i

sw.bb.i.i.out_free_list.i_crit_edge:              ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

if.end5.i.i:                                      ; preds = %sw.bb.i.i
  %h_u.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %id.i.i.i = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %id.i.i.i, align 8
  %93 = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i.i.i, i32 0, i32 2
  %dst_mac_msk.i.i.i = getelementptr inbounds %struct.mlx4_spec_eth, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %dst_mac_msk.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 6)
  store i48 -1, ptr %dst_mac_msk.i.i.i, align 2
  %95 = call ptr @memcpy(ptr %93, ptr %h_u.i.i, i32 6)
  %96 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %tobool.not.i41.i.i = icmp sgt i32 %97, -1
  br i1 %tobool.not.i41.i.i, label %if.end5.i.i.if.end.i44.i.i_crit_edge, label %land.lhs.true.i43.i.i

if.end5.i.i.if.end.i44.i.i_crit_edge:             ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i44.i.i

land.lhs.true.i43.i.i:                            ; preds = %if.end5.i.i
  %vlan_tci.i42.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %98 = ptrtoint ptr %vlan_tci.i42.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %vlan_tci.i42.i.i, align 2
  %100 = and i16 %99, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool4.not.i.i.i = icmp eq i16 %100, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i43.i.i.if.end.i44.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i43.i.i.if.end.i44.i.i_crit_edge:   ; preds = %land.lhs.true.i43.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i44.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i43.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %vlan_tci6.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %101 = ptrtoint ptr %vlan_tci6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %vlan_tci6.i.i.i, align 2
  %vlan_id.i.i.i = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 3, i32 6
  %103 = ptrtoint ptr %vlan_id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %vlan_id.i.i.i, align 2
  %vlan_id_msk.i.i.i = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 3, i32 4
  %104 = ptrtoint ptr %vlan_id_msk.i.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 4095, ptr %vlan_id_msk.i.i.i, align 8
  br label %if.end.i44.i.i

if.end.i44.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true.i43.i.i.if.end.i44.i.i_crit_edge, %if.end5.i.i.if.end.i44.i.i_crit_edge
  %105 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %106, ptr noundef nonnull %rule.i) #20
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i44.i.i.mlx4_en_ethtool_add_mac_rule.exit.i.i_crit_edge

if.end.i44.i.i.mlx4_en_ethtool_add_mac_rule.exit.i.i_crit_edge: ; preds = %if.end.i44.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mlx4_en_ethtool_add_mac_rule.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i44.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %107 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call7.i.i.i.i, ptr %prev.i.i, align 4
  %108 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %rule.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev3.i.i.i.i.i, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %call7.i.i.i.i, ptr %106, align 4
  br label %mlx4_en_ethtool_add_mac_rule.exit.i.i

mlx4_en_ethtool_add_mac_rule.exit.i.i:            ; preds = %if.end.i.i.i.i.i, %if.end.i44.i.i.mlx4_en_ethtool_add_mac_rule.exit.i.i_crit_edge
  %h_proto.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %111 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %h_proto.i.i, align 1
  %ether_type.i.i = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 3, i32 2
  %113 = ptrtoint ptr %ether_type.i.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %ether_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool9.not.i.i = icmp eq i16 %112, 0
  br i1 %tobool9.not.i.i, label %mlx4_en_ethtool_add_mac_rule.exit.i.i.if.end37.i_crit_edge, label %if.then10.i.i

mlx4_en_ethtool_add_mac_rule.exit.i.i.if.end37.i_crit_edge: ; preds = %mlx4_en_ethtool_add_mac_rule.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37.i

if.then10.i.i:                                    ; preds = %mlx4_en_ethtool_add_mac_rule.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %ether_type_enable.i.i = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 3
  %114 = ptrtoint ptr %ether_type_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %ether_type_enable.i.i, align 4
  br label %if.end37.i

sw.bb12.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %115 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %115, i32 noundef 3520, i32 noundef 52) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %116 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i40.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %116, i32 noundef 3520, i32 noundef 52) #26
  %tobool.not.i45.i.i = icmp eq ptr %call7.i.i40.i.i.i, null
  %tobool2.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  %or.cond.i.i.i = select i1 %tobool.not.i45.i.i, i1 true, i1 %tobool2.not.i.i.i
  br i1 %or.cond.i.i.i, label %free_spec.i.i.i, label %if.end.i51.i.i

if.end.i51.i.i:                                   ; preds = %sw.bb12.i.i
  %m_u.i46.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %ip4dst.i47.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %117 = ptrtoint ptr %ip4dst.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ip4dst.i47.i.i, align 4
  call fastcc void @mlx4_en_ethtool_add_mac_rule_by_ipv4(ptr noundef %add.ptr.i, ptr noundef %cmd, ptr noundef nonnull %rule.i, ptr noundef nonnull %call7.i.i40.i.i.i, i32 noundef %118) #20
  %h_u.i48.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %id.i49.i.i = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %id.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 3, ptr %id.i49.i.i, align 8
  %120 = ptrtoint ptr %h_u.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %h_u.i48.i.i, align 4
  %122 = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %src_ip.i.i.i = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %123 = ptrtoint ptr %src_ip.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %121, ptr %src_ip.i.i.i, align 4
  %124 = ptrtoint ptr %m_u.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %m_u.i46.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool11.not.i50.i.i = icmp eq i32 %125, 0
  br i1 %tobool11.not.i50.i.i, label %if.end.i51.i.i.if.end13.i52.i.i_crit_edge, label %if.then12.i.i.i

if.end.i51.i.i.if.end13.i52.i.i_crit_edge:        ; preds = %if.end.i51.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13.i52.i.i

if.then12.i.i.i:                                  ; preds = %if.end.i51.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %src_ip_msk.i.i.i = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 2, i32 4
  %126 = ptrtoint ptr %src_ip_msk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %src_ip_msk.i.i.i, align 8
  br label %if.end13.i52.i.i

if.end13.i52.i.i:                                 ; preds = %if.then12.i.i.i, %if.end.i51.i.i.if.end13.i52.i.i_crit_edge
  %127 = ptrtoint ptr %ip4dst.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ip4dst.i47.i.i, align 4
  %129 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %122, align 4
  %ip4dst17.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %130 = ptrtoint ptr %ip4dst17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ip4dst17.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool18.not.i.i.i = icmp eq i32 %131, 0
  br i1 %tobool18.not.i.i.i, label %if.end13.i52.i.i.if.end20.i.i.i_crit_edge, label %if.then19.i.i.i

if.end13.i52.i.i.if.end20.i.i.i_crit_edge:        ; preds = %if.end13.i52.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20.i.i.i

if.then19.i.i.i:                                  ; preds = %if.end13.i52.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %dst_ip_msk.i.i.i = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %132 = ptrtoint ptr %dst_ip_msk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %dst_ip_msk.i.i.i, align 8
  br label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %if.then19.i.i.i, %if.end13.i52.i.i.if.end20.i.i.i_crit_edge
  %133 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i54.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %134, ptr noundef nonnull %rule.i) #20
  br i1 %call.i.i.i54.i.i, label %if.end.i.i.i56.i.i, label %if.end20.i.i.i.if.end37.i_crit_edge

if.end20.i.i.i.if.end37.i_crit_edge:              ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37.i

if.end.i.i.i56.i.i:                               ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %135 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call7.i.i.i.i.i, ptr %prev.i.i, align 4
  %136 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %rule.i, ptr %call7.i.i.i.i.i, align 8
  %prev3.i.i.i55.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %137 = ptrtoint ptr %prev3.i.i.i55.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %134, ptr %prev3.i.i.i55.i.i, align 4
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %call7.i.i.i.i.i, ptr %134, align 4
  br label %if.end37.i

free_spec.i.i.i:                                  ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @kfree(ptr noundef %call7.i.i40.i.i.i) #20
  call void @kfree(ptr noundef %call7.i.i.i.i.i) #20
  br label %out_free_list.i

mlx4_en_ethtool_to_net_trans_rule.exit.i:         ; preds = %if.end.i.i.mlx4_en_ethtool_to_net_trans_rule.exit.i_crit_edge, %if.end.i.i.mlx4_en_ethtool_to_net_trans_rule.exit.i_crit_edge39
  %call15.i.i = call fastcc i32 @add_tcp_udp_rule(ptr noundef %add.ptr.i, ptr noundef %cmd, ptr noundef nonnull %rule.i, i32 noundef %and9.i.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool35.not.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool35.not.i, label %mlx4_en_ethtool_to_net_trans_rule.exit.i.if.end37.i_crit_edge, label %mlx4_en_ethtool_to_net_trans_rule.exit.i.out_free_list.i_crit_edge

mlx4_en_ethtool_to_net_trans_rule.exit.i.out_free_list.i_crit_edge: ; preds = %mlx4_en_ethtool_to_net_trans_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

mlx4_en_ethtool_to_net_trans_rule.exit.i.if.end37.i_crit_edge: ; preds = %mlx4_en_ethtool_to_net_trans_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37.i

if.end37.i:                                       ; preds = %mlx4_en_ethtool_to_net_trans_rule.exit.i.if.end37.i_crit_edge, %if.end.i.i.i56.i.i, %if.end20.i.i.i.if.end37.i_crit_edge, %if.then10.i.i, %mlx4_en_ethtool_add_mac_rule.exit.i.i.if.end37.i_crit_edge, %if.end.i.i.if.end37.i_crit_edge
  %139 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %location.i, align 8
  %arrayidx40.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %140
  %id.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %140, i32 2
  %141 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %142)
  %tobool41.not.i = icmp eq i64 %142, 0
  br i1 %tobool41.not.i, label %if.end37.i.if.end54.i_crit_edge, label %if.then42.i

if.end37.i.if.end54.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end54.i

if.then42.i:                                      ; preds = %if.end37.i
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr.i, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 8
  %call45.i = call i32 @mlx4_flow_detach(ptr noundef %146, i64 noundef %142) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end51.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #22
  %147 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %location.i, align 8
  %149 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %id.i, align 8
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.49, i32 noundef %148, i64 noundef %150) #20
  br label %out_free_list.i

if.end51.i:                                       ; preds = %if.then42.i
  %flow_spec.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %140, i32 1
  %151 = call ptr @memset(ptr %flow_spec.i, i32 0, i32 176)
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx40.i) #20
  br i1 %call.i.i.i, label %if.end.i.i132.i, label %if.end51.i.list_del.exit.i_crit_edge

if.end51.i.list_del.exit.i_crit_edge:             ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del.exit.i

if.end.i.i132.i:                                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #22
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx40.i, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i.i, align 4
  %154 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx40.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev1.i.i.i.i, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %155, ptr %153, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i132.i, %if.end51.i.list_del.exit.i_crit_edge
  %158 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx40.i, align 4
  %prev.i133.i = getelementptr inbounds %struct.list_head, ptr %arrayidx40.i, i32 0, i32 1
  %159 = ptrtoint ptr %prev.i133.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i133.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %list_del.exit.i, %if.end37.i.if.end54.i_crit_edge
  %160 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %add.ptr.i, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 8
  %call57.i = call i32 @mlx4_flow_attach(ptr noundef %163, ptr noundef nonnull %rule.i, ptr noundef nonnull %reg_id.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end62.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #22
  %164 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %location.i, align 8
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.50, i32 noundef %165) #20
  br label %out_free_list.i

if.end62.i:                                       ; preds = %if.end54.i
  %166 = ptrtoint ptr %reg_id.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %reg_id.i, align 8
  %168 = ptrtoint ptr %id.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %167, ptr %id.i, align 8
  %flow_spec64.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %140, i32 1
  %169 = call ptr @memcpy(ptr %flow_spec64.i, ptr %fs.i, i32 168)
  %ethtool_list.i = getelementptr i8, ptr %dev, i32 49992
  %prev.i134.i = getelementptr i8, ptr %dev, i32 49996
  %170 = ptrtoint ptr %prev.i134.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %prev.i134.i, align 4
  %call.i.i135.i = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx40.i, ptr noundef %171, ptr noundef %ethtool_list.i) #20
  br i1 %call.i.i135.i, label %if.end.i.i136.i, label %if.end62.i.out_free_list.i_crit_edge

if.end62.i.out_free_list.i_crit_edge:             ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_list.i

if.end.i.i136.i:                                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #22
  %172 = ptrtoint ptr %prev.i134.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %arrayidx40.i, ptr %prev.i134.i, align 4
  %173 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %ethtool_list.i, ptr %arrayidx40.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx40.i, i32 0, i32 1
  %174 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %171, ptr %prev3.i.i.i, align 4
  %175 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %arrayidx40.i, ptr %171, align 4
  br label %out_free_list.i

out_free_list.i:                                  ; preds = %if.end.i.i136.i, %if.end62.i.out_free_list.i_crit_edge, %if.then59.i, %if.then47.i, %mlx4_en_ethtool_to_net_trans_rule.exit.i.out_free_list.i_crit_edge, %free_spec.i.i.i, %sw.bb.i.i.out_free_list.i_crit_edge, %if.then134.i.i.i.out_free_list.i_crit_edge, %lor.lhs.false113.i.i.i.out_free_list.i_crit_edge, %if.then108.i.i.i.out_free_list.i_crit_edge, %if.end93.i.i.i.out_free_list.i_crit_edge, %if.end88.i.i.i.out_free_list.i_crit_edge, %sw.bb82.i.i.i.out_free_list.i_crit_edge, %lor.lhs.false72.i.i.i.out_free_list.i_crit_edge, %land.lhs.true.i.i.i.out_free_list.i_crit_edge, %lor.lhs.false59.i.i.i.out_free_list.i_crit_edge, %lor.lhs.false54.i.i.i.out_free_list.i_crit_edge, %lor.lhs.false51.i.i.i.out_free_list.i_crit_edge, %lor.lhs.false47.i.i.i.out_free_list.i_crit_edge, %sw.bb43.i.i.i.out_free_list.i_crit_edge, %lor.lhs.false32.i.i.i.out_free_list.i_crit_edge, %lor.lhs.false24.i.i.i.out_free_list.i_crit_edge, %lor.lhs.false19.i.i.i.out_free_list.i_crit_edge, %if.end13.i.i.i.out_free_list.i_crit_edge, %sw.bb.i.i.i.out_free_list.i_crit_edge, %if.end6.i.i.i.out_free_list.i_crit_edge, %if.then2.i.i.i.out_free_list.i_crit_edge, %if.end31.i.out_free_list.i_crit_edge
  %err.0.i = phi i32 [ %call15.i.i, %mlx4_en_ethtool_to_net_trans_rule.exit.i.out_free_list.i_crit_edge ], [ %call45.i, %if.then47.i ], [ %call57.i, %if.then59.i ], [ 0, %if.end62.i.out_free_list.i_crit_edge ], [ 0, %if.end.i.i136.i ], [ -22, %lor.lhs.false59.i.i.i.out_free_list.i_crit_edge ], [ -22, %if.then134.i.i.i.out_free_list.i_crit_edge ], [ -22, %if.then108.i.i.i.out_free_list.i_crit_edge ], [ -22, %lor.lhs.false113.i.i.i.out_free_list.i_crit_edge ], [ -22, %if.end6.i.i.i.out_free_list.i_crit_edge ], [ -22, %if.end93.i.i.i.out_free_list.i_crit_edge ], [ -22, %if.end88.i.i.i.out_free_list.i_crit_edge ], [ -22, %sw.bb82.i.i.i.out_free_list.i_crit_edge ], [ -22, %sw.bb43.i.i.i.out_free_list.i_crit_edge ], [ -22, %lor.lhs.false47.i.i.i.out_free_list.i_crit_edge ], [ -22, %lor.lhs.false51.i.i.i.out_free_list.i_crit_edge ], [ -22, %lor.lhs.false54.i.i.i.out_free_list.i_crit_edge ], [ -22, %land.lhs.true.i.i.i.out_free_list.i_crit_edge ], [ -22, %lor.lhs.false72.i.i.i.out_free_list.i_crit_edge ], [ -22, %if.end13.i.i.i.out_free_list.i_crit_edge ], [ -22, %lor.lhs.false19.i.i.i.out_free_list.i_crit_edge ], [ -22, %lor.lhs.false24.i.i.i.out_free_list.i_crit_edge ], [ -22, %lor.lhs.false32.i.i.i.out_free_list.i_crit_edge ], [ -22, %sw.bb.i.i.i.out_free_list.i_crit_edge ], [ -22, %if.then2.i.i.i.out_free_list.i_crit_edge ], [ -22, %if.end31.i.out_free_list.i_crit_edge ], [ -12, %free_spec.i.i.i ], [ -12, %sw.bb.i.i.out_free_list.i_crit_edge ]
  %176 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %rule.i, align 4
  %cmp75.not149.i = icmp eq ptr %177, %rule.i
  br i1 %cmp75.not149.i, label %out_free_list.i.mlx4_en_flow_replace.exit_crit_edge, label %out_free_list.i.for.body.i_crit_edge

out_free_list.i.for.body.i_crit_edge:             ; preds = %out_free_list.i
  br label %for.body.i

out_free_list.i.mlx4_en_flow_replace.exit_crit_edge: ; preds = %out_free_list.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mlx4_en_flow_replace.exit

for.body.i:                                       ; preds = %list_del.exit142.i.for.body.i_crit_edge, %out_free_list.i.for.body.i_crit_edge
  %spec.0150.i = phi ptr [ %tmp_spec.0.i, %list_del.exit142.i.for.body.i_crit_edge ], [ %177, %out_free_list.i.for.body.i_crit_edge ]
  %178 = ptrtoint ptr %spec.0150.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %tmp_spec.0.i = load ptr, ptr %spec.0150.i, align 4
  %call.i.i137.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %spec.0150.i) #20
  br i1 %call.i.i137.i, label %if.end.i.i140.i, label %for.body.i.list_del.exit142.i_crit_edge

for.body.i.list_del.exit142.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del.exit142.i

if.end.i.i140.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %prev.i.i138.i = getelementptr inbounds %struct.list_head, ptr %spec.0150.i, i32 0, i32 1
  %179 = ptrtoint ptr %prev.i.i138.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %prev.i.i138.i, align 4
  %181 = ptrtoint ptr %spec.0150.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %spec.0150.i, align 4
  %prev1.i.i.i139.i = getelementptr inbounds %struct.list_head, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %prev1.i.i.i139.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %180, ptr %prev1.i.i.i139.i, align 4
  %184 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile ptr %182, ptr %180, align 4
  br label %list_del.exit142.i

list_del.exit142.i:                               ; preds = %if.end.i.i140.i, %for.body.i.list_del.exit142.i_crit_edge
  %185 = ptrtoint ptr %spec.0150.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr inttoptr (i32 256 to ptr), ptr %spec.0150.i, align 4
  %prev.i141.i = getelementptr inbounds %struct.list_head, ptr %spec.0150.i, i32 0, i32 1
  %186 = ptrtoint ptr %prev.i141.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i141.i, align 4
  call void @kfree(ptr noundef %spec.0150.i) #20
  %cmp75.not.i = icmp eq ptr %tmp_spec.0.i, %rule.i
  br i1 %cmp75.not.i, label %list_del.exit142.i.mlx4_en_flow_replace.exit_crit_edge, label %list_del.exit142.i.for.body.i_crit_edge

list_del.exit142.i.for.body.i_crit_edge:          ; preds = %list_del.exit142.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

list_del.exit142.i.mlx4_en_flow_replace.exit_crit_edge: ; preds = %list_del.exit142.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mlx4_en_flow_replace.exit

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %if.else13.i.cleanup.sink.split.i_crit_edge
  %.str.48.sink.i = phi ptr [ @.str.47, %if.else13.i.cleanup.sink.split.i_crit_edge ], [ @.str.48, %if.end.i.cleanup.sink.split.i_crit_edge ]
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, ptr noundef nonnull %.str.48.sink.i, i64 noundef %23) #20
  br label %mlx4_en_flow_replace.exit

mlx4_en_flow_replace.exit:                        ; preds = %cleanup.sink.split.i, %list_del.exit142.i.mlx4_en_flow_replace.exit_crit_edge, %out_free_list.i.mlx4_en_flow_replace.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %out_free_list.i.mlx4_en_flow_replace.exit_crit_edge ], [ -22, %cleanup.sink.split.i ], [ %err.0.i, %list_del.exit142.i.mlx4_en_flow_replace.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rule.i) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_id.i) #20
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %location.i18 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %187 = ptrtoint ptr %location.i18 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %location.i18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %188)
  %cmp.i19 = icmp ugt i32 %188, 255
  br i1 %cmp.i19, label %sw.bb5.cleanup_crit_edge, label %if.end.i22

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.i22:                                       ; preds = %sw.bb5
  %arrayidx.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %188
  %id.i20 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %188, i32 2
  %189 = ptrtoint ptr %id.i20 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %id.i20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %190)
  %tobool.not.i21 = icmp eq i64 %190, 0
  br i1 %tobool.not.i21, label %if.end.i22.cleanup_crit_edge, label %if.end4.i

if.end.i22.cleanup_crit_edge:                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i22
  %call7.i = tail call i32 @mlx4_flow_detach(ptr noundef %3, i64 noundef %190) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end13.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #22
  %191 = ptrtoint ptr %location.i18 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %location.i18, align 8
  %193 = ptrtoint ptr %id.i20 to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %id.i20, align 8
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.51, i32 noundef %192, i64 noundef %194) #20
  br label %cleanup

if.end13.i:                                       ; preds = %if.end4.i
  %flow_spec.i23 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %188, i32 1
  %195 = call ptr @memset(ptr %flow_spec.i23, i32 0, i32 176)
  %call.i.i.i24 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx.i) #20
  br i1 %call.i.i.i24, label %if.end.i.i.i27, label %if.end13.i.list_del.exit.i29_crit_edge

if.end13.i.list_del.exit.i29_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del.exit.i29

if.end.i.i.i27:                                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #22
  %prev.i.i.i25 = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %196 = ptrtoint ptr %prev.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %prev.i.i.i25, align 4
  %198 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx.i, align 4
  %prev1.i.i.i.i26 = getelementptr inbounds %struct.list_head, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %prev1.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %197, ptr %prev1.i.i.i.i26, align 4
  %201 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile ptr %199, ptr %197, align 4
  br label %list_del.exit.i29

list_del.exit.i29:                                ; preds = %if.end.i.i.i27, %if.end13.i.list_del.exit.i29_crit_edge
  %202 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx.i, align 4
  %prev.i.i28 = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %203 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i28, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.46, i32 noundef %9) #20
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %list_del.exit.i29, %if.then9.i, %if.end.i22.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %mlx4_en_flow_replace.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i, %mlx4_en_flow_replace.exit ], [ -22, %sw.bb5.cleanup_crit_edge ], [ %call7.i, %if.then9.i ], [ 0, %list_del.exit.i29 ], [ -2, %if.end.i22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_en_get_rxfh_key_size(ptr nocapture noundef readnone %netdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_en_get_rxfh_indir_size(ptr nocapture noundef readonly %dev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring_num = getelementptr i8, ptr %dev, i32 61460
  %0 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_num, align 4
  %2 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #20, !range !171
  %sub.i.i.op.i = xor i32 %2, 31
  %cond15 = shl nuw i32 1, %sub.i.i.op.i
  ret i32 %cond15
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_get_rxfh(ptr nocapture noundef readonly %dev, ptr noundef writeonly %ring_index, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring_num.i = getelementptr i8, ptr %dev, i32 61460
  %0 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_num.i, align 4
  %2 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #20, !range !171
  %sub.i.i.op.i.i = xor i32 %2, 31
  %cond15.i = shl nuw i32 1, %sub.i.i.op.i.i
  %tobool19.not = icmp eq ptr %ring_index, null
  br i1 %tobool19.not, label %entry.for.end_crit_edge, label %if.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %prof = getelementptr i8, ptr %dev, i32 2308
  %3 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prof, align 4
  %rss_rings2 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %rss_rings2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rss_rings2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool.not, i32 %cond15.i, i32 %6
  %7 = tail call i32 @llvm.ctlz.i32(i32 %spec.select, i1 true) #20, !range !171
  %sub.i.i.op.i = xor i32 %7, 31
  %notmask = shl nsw i32 -1, %sub.i.i.op.i
  %8 = xor i32 %notmask, -1
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.lr.ph
  %i.042 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %if.end.if.end_crit_edge ]
  %rem = and i32 %i.042, %8
  %arrayidx = getelementptr i32, ptr %ring_index, i32 %i.042
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %rem, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.042, 1
  %cmp17.not = icmp ult i32 %inc, %cond15.i
  br i1 %cmp17.not, label %if.end.if.end_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %tobool20.not = icmp eq ptr %key, null
  br i1 %tobool20.not, label %for.end.if.end22_crit_edge, label %if.then21

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  %rss_key = getelementptr i8, ptr %dev, i32 68632
  %10 = call ptr @memcpy(ptr %key, ptr %rss_key, i32 40)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.end.if.end22_crit_edge
  %tobool23.not = icmp eq ptr %hfunc, null
  br i1 %tobool23.not, label %if.end22.if.end25_crit_edge, label %if.then24

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  %rss_hash_fn = getelementptr i8, ptr %dev, i32 68672
  %11 = ptrtoint ptr %rss_hash_fn to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rss_hash_fn, align 8
  %13 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %hfunc, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_rxfh(ptr noundef %dev, ptr noundef readonly %ring_index, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_ring_num.i = getelementptr i8, ptr %dev, i32 61460
  %0 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_num.i, align 4
  %2 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #20, !range !171
  %sub.i.i.op.i.i = xor i32 %2, 31
  %cond15.i = shl nuw i32 1, %sub.i.i.op.i.i
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not = icmp eq ptr %ring_index, null
  br i1 %tobool.not, label %entry.for.end.thread_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.thread

for.cond:                                         ; preds = %if.end8
  %inc = add nuw i32 %i.097, 1
  %cmp.not = icmp ult i32 %inc, %cond15.i
  br i1 %cmp.not, label %for.cond.if.end_crit_edge, label %for.end

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end:                                           ; preds = %for.cond.if.end_crit_edge, %entry.if.end_crit_edge
  %rss_rings.099 = phi i32 [ %rss_rings.1, %for.cond.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %i.097 = phi i32 [ %inc, %for.cond.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.097)
  %cmp3 = icmp sgt i32 %i.097, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx = getelementptr i32, ptr %ring_index, i32 %i.097
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rss_rings.099)
  %tobool6.not = icmp eq i32 %rss_rings.099, 0
  %or.cond90 = select i1 %tobool4.not, i1 %tobool6.not, i1 false
  %spec.select92 = select i1 %or.cond90, i32 %i.097, i32 %rss_rings.099
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.end.if.end8_crit_edge
  %rss_rings.1 = phi i32 [ %rss_rings.099, %if.end.if.end8_crit_edge ], [ %spec.select92, %land.lhs.true ]
  %arrayidx9 = getelementptr i32, ptr %ring_index, i32 %i.097
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rss_rings.1)
  %tobool10.not = icmp eq i32 %rss_rings.1, 0
  %spec.select = select i1 %tobool10.not, i32 %cond15.i, i32 %rss_rings.1
  %rem = urem i32 %i.097, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %rem)
  %cmp11.not = icmp eq i32 %8, %rem
  br i1 %cmp11.not, label %for.cond, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rss_rings.1)
  %tobool14.not = icmp eq i32 %rss_rings.1, 0
  br i1 %tobool14.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %9

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %9

9:                                                ; preds = %for.end.thread, %for.end._crit_edge
  %10 = phi i32 [ %cond15.i, %for.end.thread ], [ %rss_rings.1, %for.end._crit_edge ]
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #20, !range !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp1.i = icmp ult i32 %11, 2
  br i1 %cmp1.i, label %if.end19, label %.cleanup_crit_edge

.cleanup_crit_edge:                               ; preds = %9
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end19:                                         ; preds = %9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hfunc)
  %cmp20.not = icmp eq i8 %hfunc, 0
  br i1 %cmp20.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  %12 = zext i8 %hfunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %hfunc, label %if.then22.cleanup_crit_edge [
    i8 1, label %if.then.i
    i8 2, label %if.then11.i
  ]

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then.i:                                        ; preds = %if.then22
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 8
  %flags2.i = getelementptr inbounds %struct.mlx4_dev, ptr %14, i32 0, i32 3, i32 61
  %15 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %flags2.i, align 8
  %and.i = and i64 %16, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %17 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %features.i, align 16
  %and4.i = and i64 %18, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4.i)
  %tobool5.not.i = icmp eq i64 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end.i.if.end27_crit_edge

if.end.i.if.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.then11.i:                                      ; preds = %if.then22
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 8
  %flags215.i = getelementptr inbounds %struct.mlx4_dev, ptr %20, i32 0, i32 3, i32 61
  %21 = ptrtoint ptr %flags215.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %flags215.i, align 8
  %and16.i = and i64 %22, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16.i)
  %tobool17.not.i = icmp eq i64 %and16.i, 0
  br i1 %tobool17.not.i, label %if.then11.i.cleanup_crit_edge, label %if.end19.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end19.i:                                       ; preds = %if.then11.i
  %features20.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %23 = ptrtoint ptr %features20.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %features20.i, align 16
  %and21.i = and i64 %24, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21.i)
  %tobool22.not.i = icmp eq i64 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end19.i.if.end27_crit_edge, label %if.end19.i.cleanup.sink.split.i_crit_edge

if.end19.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.end19.i.if.end27_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

cleanup.sink.split.i:                             ; preds = %if.end19.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %.str.53.sink.i = phi ptr [ @.str.52, %if.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.53, %if.end19.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, ptr noundef nonnull %.str.53.sink.i) #20
  br label %if.end27

if.end27:                                         ; preds = %cleanup.sink.split.i, %if.end19.i.if.end27_crit_edge, %if.end.i.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %4, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #20
  %port_up28 = getelementptr i8, ptr %dev, i32 51648
  %25 = ptrtoint ptr %port_up28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port_up28, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool29.not = icmp eq i8 %26, 0
  br i1 %tobool29.not, label %if.end27.if.end31_crit_edge, label %if.then30

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @mlx4_en_stop_port(ptr noundef %dev, i32 noundef 1) #20
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.if.end31_crit_edge
  br i1 %tobool.not, label %if.end31.if.end35_crit_edge, label %if.then33

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  %prof = getelementptr i8, ptr %dev, i32 2308
  %27 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prof, align 4
  %rss_rings34 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %rss_rings34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %10, ptr %rss_rings34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge
  %tobool36.not = icmp eq ptr %key, null
  br i1 %tobool36.not, label %if.end35.if.end38_crit_edge, label %if.then37

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  %rss_key = getelementptr i8, ptr %dev, i32 68632
  %30 = call ptr @memcpy(ptr %rss_key, ptr %key, i32 40)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35.if.end38_crit_edge
  br i1 %cmp20.not, label %if.end38.if.end43_crit_edge, label %if.then42

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  %rss_hash_fn = getelementptr i8, ptr %dev, i32 68672
  %31 = ptrtoint ptr %rss_hash_fn to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %hfunc, ptr %rss_hash_fn, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end38.if.end43_crit_edge
  br i1 %tobool29.not, label %if.end43.if.end50_crit_edge, label %if.then45

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50

if.then45:                                        ; preds = %if.end43
  %call46 = tail call i32 @mlx4_en_start_port(ptr noundef %dev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then45.if.end50_crit_edge, label %if.then48

if.then45.if.end50_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.28) #20
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.then45.if.end50_crit_edge, %if.end43.if.end50_crit_edge
  %err.1 = phi i32 [ %call46, %if.then48 ], [ 0, %if.then45.if.end50_crit_edge ], [ 0, %if.end43.if.end50_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then11.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %if.end50 ], [ -22, %.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.then11.i.cleanup_crit_edge ], [ -22, %if.then22.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_get_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  %1 = tail call i32 @llvm.smin.i32(i32 %0, i32 128) #20
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 1
  %2 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %max_rx, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %max_num_tx_rings_p_up = getelementptr inbounds %struct.mlx4_en_dev, ptr %4, i32 0, i32 7, i32 5
  %5 = ptrtoint ptr %max_num_tx_rings_p_up to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %max_num_tx_rings_p_up, align 1
  %conv = zext i8 %6 to i32
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 2
  %7 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %max_tx, align 4
  %rx_ring_num = getelementptr i8, ptr %dev, i32 61460
  %8 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_ring_num, align 4
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 5
  %10 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rx_count, align 4
  %tx_ring_num = getelementptr i8, ptr %dev, i32 61452
  %11 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_ring_num, align 4
  %prof = getelementptr i8, ptr %dev, i32 2308
  %13 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prof, align 4
  %num_up = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %num_up to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_up, align 1
  %conv2 = zext i8 %16 to i32
  %div = udiv i32 %12, %conv2
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %17 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div, ptr %tx_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_channels(ptr noundef %dev, ptr nocapture noundef readonly %channel) #0 align 64 {
entry:
  %new_prof = alloca %struct.mlx4_en_port_profile, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %new_prof) #20
  %2 = call ptr @memset(ptr %new_prof, i32 255, i32 52)
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %3 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 5
  %5 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 66376, i32 noundef 3520, i32 noundef 5) #24
  %tobool4.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #20
  %tx_ring_num = getelementptr i8, ptr %dev, i32 61452
  %arrayidx = getelementptr i8, ptr %dev, i32 61456
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.end6.cond.end_crit_edge, label %cond.true

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.true:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  %9 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end6.cond.end_crit_edge
  %cond = phi i32 [ %10, %cond.true ], [ 0, %if.end6.cond.end_crit_edge ]
  %11 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_count, align 4
  %prof = getelementptr i8, ptr %dev, i32 2308
  %13 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prof, align 4
  %num_up = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %num_up to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_up, align 1
  %conv = zext i8 %16 to i32
  %mul = mul i32 %12, %conv
  %add = add i32 %mul, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp = icmp sgt i32 %add, 256
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.54, i32 noundef %add, i32 noundef 256) #20
  br label %out

if.end12:                                         ; preds = %cond.end
  %17 = call ptr @memcpy(ptr %new_prof, ptr %14, i32 52)
  %conv15 = trunc i32 %12 to i8
  %num_tx_rings_p_up = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 5
  %18 = ptrtoint ptr %num_tx_rings_p_up to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv15, ptr %num_tx_rings_p_up, align 4
  %19 = ptrtoint ptr %num_up to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_up, align 1
  %conv19 = zext i8 %20 to i32
  %mul20 = mul i32 %12, %conv19
  %tx_ring_num21 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 1
  %21 = ptrtoint ptr %tx_ring_num21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul20, ptr %tx_ring_num21, align 4
  %arrayidx24 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %arrayidx24, align 4
  %23 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_count, align 4
  %rx_ring_num = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 2
  %25 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rx_ring_num, align 4
  %call26 = call i32 @mlx4_en_try_alloc_resources(ptr noundef %add.ptr.i, ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull %new_prof, i1 noundef zeroext true) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end29:                                         ; preds = %if.end12
  %port_up30 = getelementptr i8, ptr %dev, i32 51648
  %26 = ptrtoint ptr %port_up30 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port_up30, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool31.not = icmp eq i8 %27, 0
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %if.then32

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  call void @mlx4_en_stop_port(ptr noundef %dev, i32 noundef 1) #20
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29.if.end33_crit_edge
  call void @mlx4_en_safe_replace_resources(ptr noundef %add.ptr.i, ptr noundef nonnull %call1.i.i.i) #20
  %rx_ring_num34 = getelementptr i8, ptr %dev, i32 61460
  %28 = ptrtoint ptr %rx_ring_num34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_ring_num34, align 4
  %call35 = call i32 @netif_set_real_num_rx_queues(ptr noundef %dev, i32 noundef %29) #20
  %30 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prof, align 4
  %num_up37 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %num_up37 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_up37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp39 = icmp eq i8 %33, 1
  %spec.select = select i1 %cmp39, i8 0, i8 %33
  %call49 = call i32 @mlx4_en_setup_tc(ptr noundef %dev, i8 noundef zeroext %spec.select) #20
  %34 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_ring_num, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.55, i32 noundef %35) #20
  %36 = ptrtoint ptr %rx_ring_num34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_ring_num34, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.56, i32 noundef %37) #20
  br i1 %tobool31.not, label %if.end33.if.end59_crit_edge, label %if.then54

if.end33.if.end59_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end59

if.then54:                                        ; preds = %if.end33
  %call55 = call i32 @mlx4_en_start_port(ptr noundef %dev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then54.if.end59_crit_edge, label %if.then57

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end59

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.28) #20
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then54.if.end59_crit_edge, %if.end33.if.end59_crit_edge
  %call60 = call i32 @mlx4_en_moderation_update(ptr noundef %add.ptr.i)
  br label %out

out:                                              ; preds = %if.end59, %if.end12.out_crit_edge, %if.then11
  %err.0 = phi i32 [ -22, %if.then11 ], [ %call26, %if.end12.out_crit_edge ], [ %call60, %if.end59 ]
  call void @mutex_unlock(ptr noundef %state_lock) #20
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #20
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %new_prof) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_get_ts_info(ptr noundef %dev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call2 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %dev, ptr noundef %info) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 61
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags2, align 8
  %and = and i64 %5, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %so_timestamping, align 4
  %or = or i32 %7, 69
  store i32 %or, ptr %so_timestamping, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %9 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %rx_filters, align 4
  %ptp_clock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptp_clock, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.then5.cleanup_crit_edge, label %if.then7

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #22
  %call9 = tail call i32 @ptp_clock_index(ptr noundef nonnull %11) #20
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %12 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call9, ptr %phc_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_get_module_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %modinfo) #0 align 64 {
entry:
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #20
  %2 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %data, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %conv = trunc i32 %7 to i8
  %call3 = call i32 @mlx4_get_module_info(ptr noundef %5, i8 noundef zeroext %conv, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef nonnull %data) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp = icmp slt i32 %call3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %9, label %if.end.cleanup_crit_edge [
    i8 12, label %sw.bb
    i8 13, label %sw.bb6
    i8 17, label %sw.bb17
    i8 3, label %sw.bb20
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %type = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %type, align 4
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %if.end
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp9 = icmp ugt i8 %13, 2
  %type12 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %type12, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %type12, align 4
  br label %cleanup.sink.split

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %type18 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %16 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %type18, align 4
  br label %cleanup.sink.split

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %type21 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %17 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %type21, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb20, %sw.bb17, %if.else, %if.then11, %sw.bb
  %.sink = phi i32 [ 256, %sw.bb ], [ 256, %sw.bb17 ], [ 512, %sw.bb20 ], [ 256, %if.else ], [ 256, %if.then11 ]
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %18 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %eeprom_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_get_module_eeprom(ptr noundef %dev, ptr nocapture noundef readonly %ee, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %4 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset2, align 4
  %6 = call ptr @memset(ptr %data, i32 0, i32 %3)
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp557.not = icmp eq i32 %8, 0
  br i1 %cmp557.not, label %if.end.cleanup_crit_edge, label %do.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body.lr.ph:                                    ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %port = getelementptr i8, ptr %dev, i32 51652
  br label %do.body

do.body:                                          ; preds = %if.end23.do.body_crit_edge, %do.body.lr.ph
  %9 = phi i32 [ %8, %do.body.lr.ph ], [ %21, %if.end23.do.body_crit_edge ]
  %i.059 = phi i32 [ 0, %do.body.lr.ph ], [ %add, %if.end23.do.body_crit_edge ]
  %offset.058 = phi i32 [ %5, %do.body.lr.ph ], [ %add24, %if.end23.do.body_crit_edge ]
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 8
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then6

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %sub = sub i32 %9, %i.059
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.57, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.58, i32 noundef %i.059, i32 noundef %offset.058, i32 noundef %sub) #20
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body.do.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %conv = trunc i32 %15 to i8
  %conv10 = trunc i32 %offset.058 to i16
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %sub12 = sub i32 %17, %i.059
  %conv13 = trunc i32 %sub12 to i16
  %add.ptr = getelementptr i8, ptr %data, i32 %i.059
  %call14 = tail call i32 @mlx4_get_module_info(ptr noundef %13, i8 noundef zeroext %conv, i16 noundef zeroext %conv10, i16 noundef zeroext %conv13, ptr noundef %add.ptr) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end.cleanup_crit_edge, label %if.end17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp18 = icmp slt i32 %call14, 0
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %sub22 = sub i32 %19, %i.059
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.59, i32 noundef %i.059, i32 noundef %offset.058, i32 noundef %sub22, i32 noundef %call14) #20
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %add = add i32 %call14, %i.059
  %add24 = add i32 %call14, %offset.058
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %cmp5 = icmp ugt i32 %21, %add
  br i1 %cmp5, label %if.end23.do.body_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end23.do.body_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %if.then20, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then20 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_en_get_tunable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %prof = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prof, align 4
  %inline_thold = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %inline_thold to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inline_thold, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %data, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_en_set_tunable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = add i32 %3, -105
  call void @__sanitizer_cov_trace_const_cmp4(i32 -88, i32 %4)
  %5 = icmp ult i32 %4, -88
  br i1 %5, label %sw.bb.sw.epilog_crit_edge, label %if.else

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %prof = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prof, align 4
  %inline_thold = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %inline_thold to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %inline_thold, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_get_link_ksettings(ptr noundef %dev, ptr noundef %link_ksettings) #0 align 64 {
entry:
  %ptys_reg.i = alloca %struct.mlx4_ptys_reg, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %conv = trunc i32 %3 to i8
  %call1 = tail call i32 @mlx4_en_QUERY_PORT(ptr noundef %1, i8 noundef zeroext %conv) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end_crit_edge, label %if.then3

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %flags = getelementptr i8, ptr %dev, i32 2840
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and4 = and i32 %7, 1
  %and7 = and i32 %7, 2
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.57, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.60, i32 noundef %and4, i32 noundef %and7) #20
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body.do.end_crit_edge
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %11, i32 0, i32 3, i32 61
  %12 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %flags2, align 8
  %and11 = and i64 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %do.end.if.then17_crit_edge, label %if.then13

do.end.if.then17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then17

if.then13:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %ptys_reg.i) #20
  %14 = call ptr @memset(ptr %ptys_reg.i, i32 0, i32 52)
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %conv.i = trunc i32 %16 to i8
  %local_port.i = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg.i, i32 0, i32 1
  %17 = ptrtoint ptr %local_port.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %local_port.i, align 1
  %proto_mask.i = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg.i, i32 0, i32 3
  %18 = ptrtoint ptr %proto_mask.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %proto_mask.i, align 1
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %9, align 8
  %call2.i = call i32 @mlx4_ACCESS_PTYS_REG(ptr noundef %20, i32 noundef 1, ptr noundef nonnull %ptys_reg.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %ethtool_get_ptys_link_ksettings.exit.thread

ethtool_get_ptys_link_ksettings.exit.thread:      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.61, i32 noundef %call2.i) #20
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %ptys_reg.i) #20
  br label %if.then17

do.body.i:                                        ; preds = %if.then13
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i.do.body8.i_crit_edge, label %if.then4.i

do.body.i.do.body8.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body8.i

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %23 = ptrtoint ptr %proto_mask.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %proto_mask.i, align 1
  %conv6.i = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.57, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.62, i32 noundef %conv6.i) #20
  br label %do.body8.i

do.body8.i:                                       ; preds = %if.then4.i, %do.body.i.do.body8.i_crit_edge
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable, align 8
  %and10.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.body8.i.do.body16.i_crit_edge, label %if.then12.i

do.body8.i.do.body16.i_crit_edge:                 ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body16.i

if.then12.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #22
  %eth_proto_cap.i = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg.i, i32 0, i32 5
  %27 = ptrtoint ptr %eth_proto_cap.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %eth_proto_cap.i, align 1
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.57, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.63, i32 noundef %28) #20
  br label %do.body16.i

do.body16.i:                                      ; preds = %if.then12.i, %do.body8.i.do.body16.i_crit_edge
  %29 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable, align 8
  %and18.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %do.body16.i.do.body24.i_crit_edge, label %if.then20.i

do.body16.i.do.body24.i_crit_edge:                ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body24.i

if.then20.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #22
  %eth_proto_admin.i = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg.i, i32 0, i32 9
  %31 = ptrtoint ptr %eth_proto_admin.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %eth_proto_admin.i, align 1
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.57, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.64, i32 noundef %32) #20
  br label %do.body24.i

do.body24.i:                                      ; preds = %if.then20.i, %do.body16.i.do.body24.i_crit_edge
  %33 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_enable, align 8
  %and26.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %do.body24.i.do.body32.i_crit_edge, label %if.then28.i

do.body24.i.do.body32.i_crit_edge:                ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body32.i

if.then28.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #22
  %eth_proto_oper.i = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg.i, i32 0, i32 13
  %35 = ptrtoint ptr %eth_proto_oper.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %eth_proto_oper.i, align 1
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.57, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.65, i32 noundef %36) #20
  br label %do.body32.i

do.body32.i:                                      ; preds = %if.then28.i, %do.body24.i.do.body32.i_crit_edge
  %37 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable, align 8
  %and34.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %do.body32.i.do.end39.i_crit_edge, label %if.then36.i

do.body32.i.do.end39.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end39.i

if.then36.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #22
  %eth_proto_lp_adv.i = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg.i, i32 0, i32 17
  %39 = ptrtoint ptr %eth_proto_lp_adv.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %eth_proto_lp_adv.i, align 1
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.57, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.66, i32 noundef %40) #20
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.then36.i, %do.body32.i.do.end39.i_crit_edge
  %link_modes.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1
  %advertising.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 1
  %eth_proto_cap.i.i = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg.i, i32 0, i32 5
  %41 = call ptr @memset(ptr %link_modes.i, i32 0, i32 24)
  %42 = ptrtoint ptr %eth_proto_cap.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %eth_proto_cap.i.i, align 1
  %and.i.i = and i32 %43, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.end39.i.if.end9.sink.split.i.i_crit_edge

do.end39.i.if.end9.sink.split.i.i_crit_edge:      ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9.sink.split.i.i

if.else.i.i:                                      ; preds = %do.end39.i
  %and1.i.i = and i32 %43, 307265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else4.i.i, label %if.else.i.i.if.end9.sink.split.i.i_crit_edge

if.else.i.i.if.end9.sink.split.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9.sink.split.i.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  %and5.i.i = and i32 %43, 442
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else4.i.i.for.body.i.i.preheader_crit_edge, label %if.else4.i.i.if.end9.sink.split.i.i_crit_edge

if.else4.i.i.if.end9.sink.split.i.i_crit_edge:    ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9.sink.split.i.i

if.else4.i.i.for.body.i.i.preheader_crit_edge:    ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i.preheader

if.end9.sink.split.i.i:                           ; preds = %if.else4.i.i.if.end9.sink.split.i.i_crit_edge, %if.else.i.i.if.end9.sink.split.i.i_crit_edge, %do.end39.i.if.end9.sink.split.i.i_crit_edge
  %.sink16.i.i = phi i32 [ 128, %do.end39.i.if.end9.sink.split.i.i_crit_edge ], [ 1024, %if.else.i.i.if.end9.sink.split.i.i_crit_edge ], [ 65536, %if.else4.i.i.if.end9.sink.split.i.i_crit_edge ]
  %44 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %link_modes.i, align 4
  %or.i14.i.i = or i32 %45, %.sink16.i.i
  store i32 %or.i14.i.i, ptr %link_modes.i, align 4
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.end9.sink.split.i.i, %if.else4.i.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.05.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %shl.i.i = shl nuw i32 1, %i.05.i.i
  %and.i164.i = and i32 %shl.i.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164.i)
  %tobool.not.i165.i = icmp eq i32 %and.i164.i, 0
  br i1 %tobool.not.i165.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i.i = getelementptr [32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 %i.05.i.i
  call void @__bitmap_or(ptr noundef %link_modes.i, ptr noundef %link_modes.i, ptr noundef %arrayidx.i.i, i32 noundef 92) #20
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %ptys2ethtool_update_link_modes.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

ptys2ethtool_update_link_modes.exit.i:            ; preds = %for.inc.i.i
  %eth_proto_admin49.i = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg.i, i32 0, i32 9
  %46 = ptrtoint ptr %eth_proto_admin49.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %eth_proto_admin49.i, align 1
  br label %for.body.i170.i

for.body.i170.i:                                  ; preds = %for.inc.i175.i.for.body.i170.i_crit_edge, %ptys2ethtool_update_link_modes.exit.i
  %i.05.i166.i = phi i32 [ 0, %ptys2ethtool_update_link_modes.exit.i ], [ %inc.i173.i, %for.inc.i175.i.for.body.i170.i_crit_edge ]
  %shl.i167.i = shl nuw i32 1, %i.05.i166.i
  %and.i168.i = and i32 %shl.i167.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i168.i)
  %tobool.not.i169.i = icmp eq i32 %and.i168.i, 0
  br i1 %tobool.not.i169.i, label %for.body.i170.i.for.inc.i175.i_crit_edge, label %if.then.i172.i

for.body.i170.i.for.inc.i175.i_crit_edge:         ; preds = %for.body.i170.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i175.i

if.then.i172.i:                                   ; preds = %for.body.i170.i
  call void @__sanitizer_cov_trace_pc() #22
  %advertised.i.i.i = getelementptr [32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 %i.05.i166.i, i32 1
  call void @__bitmap_or(ptr noundef %advertising.i, ptr noundef %advertising.i, ptr noundef %advertised.i.i.i, i32 noundef 92) #20
  br label %for.inc.i175.i

for.inc.i175.i:                                   ; preds = %if.then.i172.i, %for.body.i170.i.for.inc.i175.i_crit_edge
  %inc.i173.i = add nuw nsw i32 %i.05.i166.i, 1
  %exitcond.not.i174.i = icmp eq i32 %inc.i173.i, 32
  br i1 %exitcond.not.i174.i, label %ptys2ethtool_update_link_modes.exit176.i, label %for.inc.i175.i.for.body.i170.i_crit_edge

for.inc.i175.i.for.body.i170.i_crit_edge:         ; preds = %for.inc.i175.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i170.i

ptys2ethtool_update_link_modes.exit176.i:         ; preds = %for.inc.i175.i
  %48 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %link_modes.i, align 4
  %or.i158.i = or i32 %49, 24576
  store i32 %or.i158.i, ptr %link_modes.i, align 4
  %prof.i = getelementptr i8, ptr %dev, i32 2308
  %50 = ptrtoint ptr %prof.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prof.i, align 4
  %tx_pause.i = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tx_pause.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool59.not.i = icmp eq i8 %53, 0
  br i1 %tobool59.not.i, label %ptys2ethtool_update_link_modes.exit176.i.if.end64.i_crit_edge, label %if.then60.i

ptys2ethtool_update_link_modes.exit176.i.if.end64.i_crit_edge: ; preds = %ptys2ethtool_update_link_modes.exit176.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end64.i

if.then60.i:                                      ; preds = %ptys2ethtool_update_link_modes.exit176.i
  call void @__sanitizer_cov_trace_pc() #22
  %54 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %advertising.i, align 4
  %or.i159.i = or i32 %55, 8192
  store i32 %or.i159.i, ptr %advertising.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then60.i, %ptys2ethtool_update_link_modes.exit176.i.if.end64.i_crit_edge
  %56 = ptrtoint ptr %prof.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prof.i, align 4
  %tx_pause66.i = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %tx_pause66.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tx_pause66.i, align 1
  %rx_pause.i = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %57, i32 0, i32 6
  %60 = ptrtoint ptr %rx_pause.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %rx_pause.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %61)
  %tobool70.not.i = icmp eq i8 %59, %61
  br i1 %tobool70.not.i, label %if.end64.i.if.end75.i_crit_edge, label %if.then71.i

if.end64.i.if.end75.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end75.i

if.then71.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #22
  %62 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %advertising.i, align 4
  %or.i160.i = or i32 %63, 16384
  store i32 %or.i160.i, ptr %advertising.i, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then71.i, %if.end64.i.if.end75.i_crit_edge
  %eth_proto_oper.i.i = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg.i, i32 0, i32 13
  %64 = ptrtoint ptr %eth_proto_oper.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %eth_proto_oper.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i177.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i177.i, label %if.then.i179.i, label %if.end75.i.if.end.i.i_crit_edge

if.end75.i.if.end.i.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

if.then.i179.i:                                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #22
  %66 = ptrtoint ptr %eth_proto_cap.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %eth_proto_cap.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i179.i, %if.end75.i.if.end.i.i_crit_edge
  %eth_proto.0.i.i = phi i32 [ %65, %if.end75.i.if.end.i.i_crit_edge ], [ %67, %if.then.i179.i ]
  %and.i180.i = and i32 %eth_proto.0.i.i, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180.i)
  %tobool1.not.i.i = icmp eq i32 %and.i180.i, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i.i.ptys_get_active_port.exit.i_crit_edge

if.end.i.i.ptys_get_active_port.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ptys_get_active_port.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %and4.i.i = and i32 %eth_proto.0.i.i, 303105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end3.i.i.ptys_get_active_port.exit.i_crit_edge

if.end3.i.i.ptys_get_active_port.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ptys_get_active_port.exit.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %and8.i.i = and i32 %eth_proto.0.i.i, 135232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %if.end7.i.i.ptys_get_active_port.exit.i_crit_edge

if.end7.i.i.ptys_get_active_port.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ptys_get_active_port.exit.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %and12.i.i = and i32 %eth_proto.0.i.i, 442
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  %phi.cast.i = select i1 %tobool13.not.i.i, i8 -1, i8 -17
  br label %ptys_get_active_port.exit.i

ptys_get_active_port.exit.i:                      ; preds = %if.end11.i.i, %if.end7.i.i.ptys_get_active_port.exit.i_crit_edge, %if.end3.i.i.ptys_get_active_port.exit.i_crit_edge, %if.end.i.i.ptys_get_active_port.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %if.end.i.i.ptys_get_active_port.exit.i_crit_edge ], [ 3, %if.end3.i.i.ptys_get_active_port.exit.i_crit_edge ], [ 5, %if.end7.i.i.ptys_get_active_port.exit.i_crit_edge ], [ %phi.cast.i, %if.end11.i.i ]
  %port78.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 3
  %68 = ptrtoint ptr %port78.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %retval.0.i.i, ptr %port78.i, align 1
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %flags2.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %72, i32 0, i32 3, i32 61
  %73 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %flags2.i.i, align 8
  %and.i181.i = and i64 %74, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i181.i)
  %tobool.not.i182.i = icmp eq i64 %and.i181.i, 0
  br i1 %tobool.not.i182.i, label %ptys_get_active_port.exit.i.if.end88.i_crit_edge, label %mlx4_en_autoneg_get.exit.i

ptys_get_active_port.exit.i.if.end88.i_crit_edge: ; preds = %ptys_get_active_port.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end88.i

mlx4_en_autoneg_get.exit.i:                       ; preds = %ptys_get_active_port.exit.i
  %flags.i.i = getelementptr i8, ptr %dev, i32 2840
  %75 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i.i, align 4
  %77 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool80.not.i = icmp eq i32 %77, 0
  br i1 %tobool80.not.i, label %mlx4_en_autoneg_get.exit.i.if.end88.i_crit_edge, label %if.then81.i

mlx4_en_autoneg_get.exit.i.if.end88.i_crit_edge:  ; preds = %mlx4_en_autoneg_get.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end88.i

if.then81.i:                                      ; preds = %mlx4_en_autoneg_get.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %or.i161.i = or i32 %49, 24640
  %78 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or.i161.i, ptr %link_modes.i, align 4
  %79 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %advertising.i, align 4
  %or.i162.i = or i32 %80, 64
  store i32 %or.i162.i, ptr %advertising.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then81.i, %mlx4_en_autoneg_get.exit.i.if.end88.i_crit_edge, %ptys_get_active_port.exit.i.if.end88.i_crit_edge
  %flags.i = getelementptr i8, ptr %dev, i32 2840
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i, align 4
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %autoneg.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %85 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %autoneg.i, align 1
  %eth_proto_lp_adv93.i = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg.i, i32 0, i32 17
  %86 = ptrtoint ptr %eth_proto_lp_adv93.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %eth_proto_lp_adv93.i, align 1
  %lp_advertising.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 2
  %88 = call ptr @memset(ptr %lp_advertising.i, i32 0, i32 12)
  br label %for.body.i188.i

for.body.i188.i:                                  ; preds = %for.inc.i194.i.for.body.i188.i_crit_edge, %if.end88.i
  %i.05.i184.i = phi i32 [ 0, %if.end88.i ], [ %inc.i192.i, %for.inc.i194.i.for.body.i188.i_crit_edge ]
  %shl.i185.i = shl nuw i32 1, %i.05.i184.i
  %and.i186.i = and i32 %shl.i185.i, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186.i)
  %tobool.not.i187.i = icmp eq i32 %and.i186.i, 0
  br i1 %tobool.not.i187.i, label %for.body.i188.i.for.inc.i194.i_crit_edge, label %if.then.i190.i

for.body.i188.i.for.inc.i194.i_crit_edge:         ; preds = %for.body.i188.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i194.i

if.then.i190.i:                                   ; preds = %for.body.i188.i
  call void @__sanitizer_cov_trace_pc() #22
  %advertised.i.i191.i = getelementptr [32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 %i.05.i184.i, i32 1
  call void @__bitmap_or(ptr noundef %lp_advertising.i, ptr noundef %lp_advertising.i, ptr noundef %advertised.i.i191.i, i32 noundef 92) #20
  br label %for.inc.i194.i

for.inc.i194.i:                                   ; preds = %if.then.i190.i, %for.body.i188.i.for.inc.i194.i_crit_edge
  %inc.i192.i = add nuw nsw i32 %i.05.i184.i, 1
  %exitcond.not.i193.i = icmp eq i32 %inc.i192.i, 32
  br i1 %exitcond.not.i193.i, label %ptys2ethtool_update_link_modes.exit195.i, label %for.inc.i194.i.for.body.i188.i_crit_edge

for.inc.i194.i.for.body.i188.i_crit_edge:         ; preds = %for.inc.i194.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i188.i

ptys2ethtool_update_link_modes.exit195.i:         ; preds = %for.inc.i194.i
  %89 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i, align 4
  %and101.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i)
  %tobool102.not.i = icmp eq i32 %and101.i, 0
  br i1 %tobool102.not.i, label %ptys2ethtool_update_link_modes.exit195.i.ethtool_get_ptys_link_ksettings.exit_crit_edge, label %if.then103.i

ptys2ethtool_update_link_modes.exit195.i.ethtool_get_ptys_link_ksettings.exit_crit_edge: ; preds = %ptys2ethtool_update_link_modes.exit195.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ethtool_get_ptys_link_ksettings.exit

if.then103.i:                                     ; preds = %ptys2ethtool_update_link_modes.exit195.i
  call void @__sanitizer_cov_trace_pc() #22
  %91 = ptrtoint ptr %lp_advertising.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %lp_advertising.i, align 4
  %or.i163.i = or i32 %92, 64
  store i32 %or.i163.i, ptr %lp_advertising.i, align 4
  br label %ethtool_get_ptys_link_ksettings.exit

ethtool_get_ptys_link_ksettings.exit:             ; preds = %if.then103.i, %ptys2ethtool_update_link_modes.exit195.i.ethtool_get_ptys_link_ksettings.exit_crit_edge
  %phy_address.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 4
  %93 = ptrtoint ptr %phy_address.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %phy_address.i, align 2
  %mdio_support.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 6
  %94 = ptrtoint ptr %mdio_support.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %mdio_support.i, align 4
  %eth_tp_mdix.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 7
  %95 = ptrtoint ptr %eth_tp_mdix.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %eth_tp_mdix.i, align 1
  %eth_tp_mdix_ctrl.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 8
  %96 = ptrtoint ptr %eth_tp_mdix_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 3, ptr %eth_tp_mdix_ctrl.i, align 2
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %ptys_reg.i) #20
  br label %if.end18

if.then17:                                        ; preds = %ethtool_get_ptys_link_ksettings.exit.thread, %do.end.if.then17_crit_edge
  %autoneg.i44 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %97 = ptrtoint ptr %autoneg.i44 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %autoneg.i44, align 1
  %link_modes.i45 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1
  %98 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 0, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 8)
  store i64 0, ptr %98, align 4
  %100 = ptrtoint ptr %link_modes.i45 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 4096, ptr %link_modes.i45, align 4
  %advertising.i46 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 1
  %101 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 1, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 0, ptr %101, align 4
  %103 = ptrtoint ptr %advertising.i46 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 4096, ptr %advertising.i46, align 4
  %transceiver.i = getelementptr i8, ptr %dev, i32 2836
  %104 = ptrtoint ptr %transceiver.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %transceiver.i, align 4
  %106 = add i32 %105, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %106)
  %107 = icmp ult i32 %106, 12
  br i1 %107, label %if.then.i48, label %if.else.i

if.then.i48:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #22
  %port.i47 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 3
  %108 = ptrtoint ptr %port.i47 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 3, ptr %port.i47, align 1
  %109 = ptrtoint ptr %link_modes.i45 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 5120, ptr %link_modes.i45, align 4
  %110 = ptrtoint ptr %advertising.i46 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 5120, ptr %advertising.i46, align 4
  br label %if.end18

if.else.i:                                        ; preds = %if.then17
  %111 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %105, label %if.else28.i [
    i32 128, label %if.else.i.if.then19.i_crit_edge
    i32 0, label %if.else.i.if.then19.i_crit_edge51
  ]

if.else.i.if.then19.i_crit_edge51:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then19.i

if.else.i.if.then19.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.else.i.if.then19.i_crit_edge, %if.else.i.if.then19.i_crit_edge51
  %port21.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 3
  %112 = ptrtoint ptr %port21.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %port21.i, align 1
  %113 = ptrtoint ptr %link_modes.i45 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 4224, ptr %link_modes.i45, align 4
  %114 = ptrtoint ptr %advertising.i46 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 4224, ptr %advertising.i46, align 4
  br label %if.end18

if.else28.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %port30.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 3
  %115 = ptrtoint ptr %port30.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -1, ptr %port30.i, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.else28.i, %if.then19.i, %if.then.i48, %ethtool_get_ptys_link_ksettings.exit
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %116 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %state.i, align 4
  %118 = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i49 = icmp eq i32 %118, 0
  br i1 %tobool.not.i49, label %if.then20, label %if.end18.cleanup.sink.split_crit_edge

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  %link_speed = getelementptr i8, ptr %dev, i32 2832
  %119 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %link_speed, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then20, %if.end18.cleanup.sink.split_crit_edge
  %.sink50 = phi i32 [ %120, %if.then20 ], [ -1, %if.end18.cleanup.sink.split_crit_edge ]
  %.sink = phi i8 [ 1, %if.then20 ], [ -1, %if.end18.cleanup.sink.split_crit_edge ]
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 1
  %121 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %.sink50, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 2
  %122 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %.sink, ptr %duplex, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_link_ksettings(ptr noundef %dev, ptr noundef %link_ksettings) #0 align 64 {
entry:
  %ptys_reg = alloca %struct.mlx4_ptys_reg, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %ptys_reg) #20
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.02.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %ptys_modes.01.i = phi i32 [ 0, %entry ], [ %ptys_modes.1.i, %for.body.i.for.body.i_crit_edge ]
  %advertised.i.i = getelementptr [32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 %i.02.i, i32 1
  %call.i.i.i = tail call i32 @__bitmap_intersects(ptr noundef %advertised.i.i, ptr noundef %advertising, i32 noundef 92) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  %shl.i = shl nuw i32 1, %i.02.i
  %or.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %ptys_modes.1.i = or i32 %or.i, %ptys_modes.01.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %ethtool2ptys_link_modes.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

ethtool2ptys_link_modes.exit:                     ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %speed2 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 1
  %0 = ptrtoint ptr %speed2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed2, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ethtool2ptys_link_modes.exit.do.end_crit_edge, label %if.then

ethtool2ptys_link_modes.exit.do.end_crit_edge:    ; preds = %ethtool2ptys_link_modes.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %ethtool2ptys_link_modes.exit
  call void @__sanitizer_cov_trace_pc() #22
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %autoneg, align 1
  %conv = zext i8 %5 to i32
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 2
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %duplex, align 4
  %conv8 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.57, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.67, i32 noundef %1, i32 noundef 92, ptr noundef %advertising, i32 noundef %conv, i32 noundef %conv8) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %ethtool2ptys_link_modes.exit.do.end_crit_edge
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %11, i32 0, i32 3, i32 61
  %12 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %flags2, align 8
  %and10 = and i64 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %duplex13 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 2
  %14 = ptrtoint ptr %duplex13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %duplex13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end17

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %16 = call ptr @memset(ptr %ptys_reg, i32 0, i32 52)
  %port = getelementptr i8, ptr %dev, i32 51652
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %conv18 = trunc i32 %18 to i8
  %local_port = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg, i32 0, i32 1
  %19 = ptrtoint ptr %local_port to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv18, ptr %local_port, align 1
  %proto_mask = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg, i32 0, i32 3
  %20 = ptrtoint ptr %proto_mask to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %proto_mask, align 1
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %9, align 8
  %call21 = call i32 @mlx4_ACCESS_PTYS_REG(ptr noundef %22, i32 noundef 1, ptr noundef nonnull %ptys_reg) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.68, i32 noundef %call21) #20
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %23 = ptrtoint ptr %ptys_reg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ptys_reg, align 1
  %and26 = lshr i8 %24, 6
  %and26.lobit = and i8 %and26, 1
  %25 = xor i8 %and26.lobit, 1
  %autoneg30 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %26 = ptrtoint ptr %autoneg30 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %autoneg30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp32 = icmp eq i8 %27, 0
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end24
  %eth_proto_cap = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg, i32 0, i32 5
  %28 = ptrtoint ptr %eth_proto_cap to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %eth_proto_cap, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i142 = icmp eq i32 %1, 0
  br i1 %tobool.not.i142, label %if.then.i, label %if.then34.for.body.i.i_crit_edge

if.then34.for.body.i.i_crit_edge:                 ; preds = %if.then34
  br label %for.body.i.i

if.then.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.41, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.74, i32 noundef %29) #20
  br label %speed_set_ptys_admin.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then34.for.body.i.i_crit_edge
  %ptys_modes.08.i.i = phi i32 [ %ptys_modes.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then34.for.body.i.i_crit_edge ]
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then34.for.body.i.i_crit_edge ]
  %speed1.i.i = getelementptr [32 x %struct.ptys2ethtool_config], ptr @ptys2ethtool_map, i32 0, i32 %i.07.i.i, i32 2
  %30 = ptrtoint ptr %speed1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %1)
  %cmp2.i.i = icmp eq i32 %31, %1
  %shl.i.i = shl nuw i32 1, %i.07.i.i
  %or.i.i = select i1 %cmp2.i.i, i32 %shl.i.i, i32 0
  %ptys_modes.1.i.i = or i32 %or.i.i, %ptys_modes.08.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %speed2ptys_link_modes.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

speed2ptys_link_modes.exit.i:                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %and.i = and i32 %ptys_modes.1.i.i, %29
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.41, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.75, i32 noundef %1) #20
  br label %speed_set_ptys_admin.exit

speed_set_ptys_admin.exit:                        ; preds = %speed2ptys_link_modes.exit.i, %if.then.i
  %proto_admin.0.i = phi i32 [ %and.i, %speed2ptys_link_modes.exit.i ], [ %29, %if.then.i ]
  %and36 = and i32 %proto_admin.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %speed_set_ptys_admin.exit.if.end51_crit_edge, label %land.lhs.true

speed_set_ptys_admin.exit.if.end51_crit_edge:     ; preds = %speed_set_ptys_admin.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end51

land.lhs.true:                                    ; preds = %speed_set_ptys_admin.exit
  %32 = ptrtoint ptr %ptys_reg to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ptys_reg, align 1
  %34 = and i8 %33, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool41.not = icmp eq i8 %34, 0
  br i1 %tobool41.not, label %land.lhs.true.if.end51_crit_edge, label %if.then42

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end51

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %or = or i8 %33, 64
  %35 = ptrtoint ptr %ptys_reg to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %or, ptr %ptys_reg, align 1
  br label %if.end51

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #22
  %36 = and i8 %24, -65
  %37 = ptrtoint ptr %ptys_reg to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %ptys_reg, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then42, %land.lhs.true.if.end51_crit_edge, %speed_set_ptys_admin.exit.if.end51_crit_edge
  %proto_admin.0 = phi i32 [ %proto_admin.0.i, %if.then42 ], [ %proto_admin.0.i, %land.lhs.true.if.end51_crit_edge ], [ %proto_admin.0.i, %speed_set_ptys_admin.exit.if.end51_crit_edge ], [ %ptys_modes.1.i, %if.else ]
  %eth_proto_cap52 = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg, i32 0, i32 5
  %38 = ptrtoint ptr %eth_proto_cap52 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %eth_proto_cap52, align 1
  %and53 = and i32 %39, %proto_admin.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.69) #20
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %eth_proto_admin = getelementptr inbounds %struct.mlx4_ptys_reg, ptr %ptys_reg, i32 0, i32 9
  %40 = ptrtoint ptr %eth_proto_admin to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %eth_proto_admin, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and53, i32 %41)
  %cmp57 = icmp eq i32 %and53, %41
  br i1 %cmp57, label %land.lhs.true59, label %if.end56.do.body73_crit_edge

if.end56.do.body73_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body73

land.lhs.true59:                                  ; preds = %if.end56
  %42 = ptrtoint ptr %ptys_reg to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ptys_reg, align 1
  %44 = and i8 %43, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool63.not = icmp eq i8 %44, 0
  br i1 %tobool63.not, label %land.lhs.true59.do.body73_crit_edge, label %land.lhs.true64

land.lhs.true59.do.body73_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body73

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %45 = ptrtoint ptr %autoneg30 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %autoneg30, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %25)
  %cmp69 = icmp eq i8 %46, %25
  br i1 %cmp69, label %land.lhs.true64.cleanup_crit_edge, label %land.lhs.true64.do.body73_crit_edge

land.lhs.true64.do.body73_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body73

land.lhs.true64.cleanup_crit_edge:                ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body73:                                        ; preds = %land.lhs.true64.do.body73_crit_edge, %land.lhs.true59.do.body73_crit_edge, %if.end56.do.body73_crit_edge
  %47 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable, align 8
  %and75 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body73.do.end80_crit_edge, label %if.then77

do.body73.do.end80_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end80

if.then77:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.57, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.70, i32 noundef %and53) #20
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %do.body73.do.end80_crit_edge
  %49 = ptrtoint ptr %eth_proto_admin to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %and53, ptr %eth_proto_admin, align 1
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %call84 = call i32 @mlx4_ACCESS_PTYS_REG(ptr noundef %53, i32 noundef 2, ptr noundef nonnull %ptys_reg) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end88, label %if.then86

if.then86:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #22
  %54 = ptrtoint ptr %eth_proto_admin to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %eth_proto_admin, align 1
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.71, i32 noundef %55, i32 noundef %call84) #20
  br label %cleanup

if.end88:                                         ; preds = %do.end80
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %57, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #20
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %58 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %port_up, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool90.not = icmp eq i8 %59, 0
  br i1 %tobool90.not, label %if.end88.if.end97_crit_edge, label %if.then91

if.end88.if.end97_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end97

if.then91:                                        ; preds = %if.end88
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.25, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.72) #20
  call void @mlx4_en_stop_port(ptr noundef %dev, i32 noundef 1) #20
  %call92 = call i32 @mlx4_en_start_port(ptr noundef %dev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then91.if.end97_crit_edge, label %if.then94

if.then91.if.end97_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end97

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #22
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.73, i32 noundef %61) #20
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.then91.if.end97_crit_edge, %if.end88.if.end97_crit_edge
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 8
  %state_lock99 = getelementptr inbounds %struct.mlx4_en_dev, ptr %63, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %state_lock99) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then86, %land.lhs.true64.cleanup_crit_edge, %if.then55, %if.then23, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then23 ], [ %call84, %if.then86 ], [ 0, %if.end97 ], [ -22, %if.then55 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %land.lhs.true64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %ptys_reg) #20
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @en_print(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_wol_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_wol_write(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_try_alloc_resources(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_stop_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_safe_replace_resources(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_start_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_PORT_general(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_update_pfc_stats_bitmap(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_ex_selftest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_PORT_BEACON(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_fold_software_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_phv_bit(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_flow_detach(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_flow_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_tcp_udp_rule(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %cmd, ptr noundef %list_h, i32 noundef %proto) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %m_u = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i112 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 52) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i113 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 52) #26
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call7.i.i112, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %tobool5.not = icmp eq ptr %call7.i.i113, null
  %or.cond111 = select i1 %or.cond, i1 true, i1 %tobool5.not
  br i1 %or.cond111, label %free_spec, label %if.end

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i112, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %proto)
  %cmp = icmp eq i32 %proto, 1
  %ip4dst = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %ip4dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ip4dst, align 4
  tail call fastcc void @mlx4_en_ethtool_add_mac_rule_by_ipv4(ptr noundef %priv, ptr noundef %cmd, ptr noundef %list_h, ptr noundef nonnull %call7.i.i, i32 noundef %5)
  %. = select i1 %cmp, i32 4, i32 5
  %.sink121.in = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %6 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %.sink.in = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %7)
  %.sink = load i16, ptr %.sink.in, align 2
  %.sink119.in = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %.sink119.in to i32
  call void @__asan_load2_noabort(i32 %8)
  %.sink119 = load i16, ptr %.sink119.in, align 4
  %9 = ptrtoint ptr %ip4dst to i32
  call void @__asan_load4_noabort(i32 %9)
  %.sink120 = load i32, ptr %ip4dst, align 4
  %10 = ptrtoint ptr %.sink121.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.sink121 = load i32, ptr %.sink121.in, align 4
  %11 = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i113, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %., ptr %11, align 8
  %13 = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i112, i32 0, i32 2, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink121, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i112, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink120, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i113, i32 0, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %.sink119, ptr %17, align 8
  %19 = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i113, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %.sink, ptr %19, align 4
  %21 = ptrtoint ptr %m_u to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %m_u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool48.not = icmp eq i32 %22, 0
  br i1 %tobool48.not, label %if.end.if.end50_crit_edge, label %if.then49

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50

if.then49:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %src_ip_msk = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i112, i32 0, i32 2, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %src_ip_msk to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %src_ip_msk, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end.if.end50_crit_edge
  %ip4dst51 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %ip4dst51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ip4dst51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool52.not = icmp eq i32 %25, 0
  br i1 %tobool52.not, label %if.end50.if.end54_crit_edge, label %if.then53

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  %dst_ip_msk = getelementptr inbounds %struct.mlx4_spec_list, ptr %call7.i.i112, i32 0, i32 2, i32 0, i32 1
  %26 = ptrtoint ptr %dst_ip_msk to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %dst_ip_msk, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50.if.end54_crit_edge
  %psrc55 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %psrc55 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %psrc55, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool56.not = icmp eq i16 %28, 0
  br i1 %tobool56.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #22
  %src_port_msk = getelementptr inbounds %struct.mlx4_spec_tcp_udp, ptr %19, i32 0, i32 3
  %29 = ptrtoint ptr %src_port_msk to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %src_port_msk, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  %pdst59 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u, i32 0, i32 3
  %30 = ptrtoint ptr %pdst59 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pdst59, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool60.not = icmp eq i16 %31, 0
  br i1 %tobool60.not, label %if.end58.if.end62_crit_edge, label %if.then61

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end62

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #22
  %dst_port_msk = getelementptr inbounds %struct.mlx4_spec_tcp_udp, ptr %19, i32 0, i32 1
  %32 = ptrtoint ptr %dst_port_msk to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %dst_port_msk, align 2
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end58.if.end62_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list_h, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i112, ptr noundef %34, ptr noundef %list_h) #20
  br i1 %call.i.i, label %if.end.i.i, label %if.end62.list_add_tail.exit_crit_edge

if.end62.list_add_tail.exit_crit_edge:            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #22
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i112, ptr %prev.i, align 4
  %36 = ptrtoint ptr %call7.i.i112 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list_h, ptr %call7.i.i112, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i112, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i112, ptr %34, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end62.list_add_tail.exit_crit_edge
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i, align 4
  %call.i.i115 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i113, ptr noundef %40, ptr noundef %list_h) #20
  br i1 %call.i.i115, label %if.end.i.i117, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.i.i117:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #22
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i113, ptr %prev.i, align 4
  %42 = ptrtoint ptr %call7.i.i113 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list_h, ptr %call7.i.i113, align 8
  %prev3.i.i116 = getelementptr inbounds %struct.list_head, ptr %call7.i.i113, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i116 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i116, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i113, ptr %40, align 4
  br label %cleanup

free_spec:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef %call7.i.i) #20
  tail call void @kfree(ptr noundef %call7.i.i112) #20
  tail call void @kfree(ptr noundef %call7.i.i113) #20
  br label %cleanup

cleanup:                                          ; preds = %free_spec, %if.end.i.i117, %list_add_tail.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %free_spec ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ 0, %if.end.i.i117 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_en_ethtool_add_mac_rule_by_ipv4(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %cmd, ptr noundef %rule_list_h, ptr noundef %spec_l2, i32 noundef %ipv4_dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %ipv4_dst, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fs, align 8
  %and = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %h_dest = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 1
  %2 = ptrtoint ptr %h_dest to i32
  call void @__asan_load1_noabort(i32 %2)
  %mac.sroa.0.0.copyload = load i8, ptr %h_dest, align 2
  %mac.sroa.7.0.h_dest.sroa_idx = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 1, i32 1
  %3 = ptrtoint ptr %mac.sroa.7.0.h_dest.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %mac.sroa.7.0.copyload = load i8, ptr %mac.sroa.7.0.h_dest.sroa_idx, align 1
  %mac.sroa.9.0.h_dest.sroa_idx = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 1, i32 2
  %4 = ptrtoint ptr %mac.sroa.9.0.h_dest.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %mac.sroa.9.0.copyload = load i8, ptr %mac.sroa.9.0.h_dest.sroa_idx, align 2
  %mac.sroa.11.0.h_dest.sroa_idx = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 1, i32 3
  %5 = ptrtoint ptr %mac.sroa.11.0.h_dest.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %mac.sroa.11.0.copyload = load i8, ptr %mac.sroa.11.0.h_dest.sroa_idx, align 1
  %mac.sroa.13.0.h_dest.sroa_idx = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 1, i32 4
  %6 = ptrtoint ptr %mac.sroa.13.0.h_dest.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %mac.sroa.13.0.copyload = load i8, ptr %mac.sroa.13.0.h_dest.sroa_idx, align 2
  %mac.sroa.15.0.h_dest.sroa_idx = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 1, i32 5
  %7 = ptrtoint ptr %mac.sroa.15.0.h_dest.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %mac.sroa.15.0.copyload = load i8, ptr %mac.sroa.15.0.h_dest.sroa_idx, align 1
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %dev = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %mac.sroa.0.0.copyload1 = load i8, ptr %11, align 1
  %mac.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 1
  %13 = ptrtoint ptr %mac.sroa.7.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %mac.sroa.7.0.copyload3 = load i8, ptr %mac.sroa.7.0..sroa_idx, align 1
  %mac.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 2
  %14 = ptrtoint ptr %mac.sroa.9.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %mac.sroa.9.0.copyload6 = load i8, ptr %mac.sroa.9.0..sroa_idx, align 1
  %mac.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 3
  %15 = ptrtoint ptr %mac.sroa.11.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %mac.sroa.11.0.copyload9 = load i8, ptr %mac.sroa.11.0..sroa_idx, align 1
  %mac.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 4
  %16 = ptrtoint ptr %mac.sroa.13.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %mac.sroa.13.0.copyload12 = load i8, ptr %mac.sroa.13.0..sroa_idx, align 1
  %mac.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 5
  %17 = ptrtoint ptr %mac.sroa.15.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %mac.sroa.15.0.copyload15 = load i8, ptr %mac.sroa.15.0..sroa_idx, align 1
  br label %if.end5

if.else3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %conv.i = trunc i32 %ipv4_dst to i8
  %shr.i = lshr i32 %ipv4_dst, 8
  %conv5.i = trunc i32 %shr.i to i8
  %shr7.i = lshr i32 %ipv4_dst, 16
  %18 = trunc i32 %shr7.i to i8
  %conv9.i = and i8 %18, 127
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.else, %if.then1
  %mac.sroa.15.0 = phi i8 [ %conv.i, %if.else3 ], [ %mac.sroa.15.0.copyload15, %if.else ], [ %mac.sroa.15.0.copyload, %if.then1 ]
  %mac.sroa.13.0 = phi i8 [ %conv5.i, %if.else3 ], [ %mac.sroa.13.0.copyload12, %if.else ], [ %mac.sroa.13.0.copyload, %if.then1 ]
  %mac.sroa.11.0 = phi i8 [ %conv9.i, %if.else3 ], [ %mac.sroa.11.0.copyload9, %if.else ], [ %mac.sroa.11.0.copyload, %if.then1 ]
  %mac.sroa.9.0 = phi i8 [ 94, %if.else3 ], [ %mac.sroa.9.0.copyload6, %if.else ], [ %mac.sroa.9.0.copyload, %if.then1 ]
  %mac.sroa.7.0 = phi i8 [ 0, %if.else3 ], [ %mac.sroa.7.0.copyload3, %if.else ], [ %mac.sroa.7.0.copyload, %if.then1 ]
  %mac.sroa.0.0 = phi i8 [ 1, %if.else3 ], [ %mac.sroa.0.0.copyload1, %if.else ], [ %mac.sroa.0.0.copyload, %if.then1 ]
  %id.i = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_l2, i32 0, i32 1
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %id.i, align 4
  %20 = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_l2, i32 0, i32 2
  %dst_mac_msk.i = getelementptr inbounds %struct.mlx4_spec_eth, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %dst_mac_msk.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 6)
  store i48 -1, ptr %dst_mac_msk.i, align 2
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %mac.sroa.0.0, ptr %20, align 4
  %mac.sroa.7.0..sroa_idx4 = getelementptr inbounds i8, ptr %20, i32 1
  %23 = ptrtoint ptr %mac.sroa.7.0..sroa_idx4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %mac.sroa.7.0, ptr %mac.sroa.7.0..sroa_idx4, align 1
  %mac.sroa.9.0..sroa_idx7 = getelementptr inbounds i8, ptr %20, i32 2
  %24 = ptrtoint ptr %mac.sroa.9.0..sroa_idx7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %mac.sroa.9.0, ptr %mac.sroa.9.0..sroa_idx7, align 2
  %mac.sroa.11.0..sroa_idx10 = getelementptr inbounds i8, ptr %20, i32 3
  %25 = ptrtoint ptr %mac.sroa.11.0..sroa_idx10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %mac.sroa.11.0, ptr %mac.sroa.11.0..sroa_idx10, align 1
  %mac.sroa.13.0..sroa_idx13 = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_l2, i32 0, i32 2, i32 0, i32 1
  %26 = ptrtoint ptr %mac.sroa.13.0..sroa_idx13 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %mac.sroa.13.0, ptr %mac.sroa.13.0..sroa_idx13, align 4
  %mac.sroa.15.0..sroa_idx16 = getelementptr inbounds i8, ptr %20, i32 5
  %27 = ptrtoint ptr %mac.sroa.15.0..sroa_idx16 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %mac.sroa.15.0, ptr %mac.sroa.15.0..sroa_idx16, align 1
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %28 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %tobool.not.i = icmp sgt i32 %29, -1
  br i1 %tobool.not.i, label %if.end5.if.end.i_crit_edge, label %land.lhs.true.i

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end5
  %vlan_tci.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %30 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vlan_tci.i, align 2
  %32 = and i16 %31, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool4.not.i = icmp eq i16 %32, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %vlan_tci6.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %33 = ptrtoint ptr %vlan_tci6.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vlan_tci6.i, align 2
  %vlan_id.i = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_l2, i32 0, i32 2, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %vlan_id.i, align 2
  %vlan_id_msk.i = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_l2, i32 0, i32 2, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %vlan_id_msk.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 4095, ptr %vlan_id_msk.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rule_list_h, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %spec_l2, ptr noundef %38, ptr noundef %rule_list_h) #20
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.mlx4_en_ethtool_add_mac_rule.exit_crit_edge

if.end.i.mlx4_en_ethtool_add_mac_rule.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mlx4_en_ethtool_add_mac_rule.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %spec_l2, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %spec_l2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %rule_list_h, ptr %spec_l2, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %spec_l2, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %spec_l2, ptr %38, align 4
  br label %mlx4_en_ethtool_add_mac_rule.exit

mlx4_en_ethtool_add_mac_rule.exit:                ; preds = %if.end.i.i.i, %if.end.i.mlx4_en_ethtool_add_mac_rule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_setup_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_module_info(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_QUERY_PORT(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ACCESS_PTYS_REG(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nobuiltin }
attributes #26 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = distinct !{null, !1, !"modes", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 668, i32 2}
!2 = distinct !{null, !3, !"modes", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 670, i32 2}
!4 = distinct !{null, !5, !"modes", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 672, i32 2}
!6 = distinct !{null, !7, !"modes", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 674, i32 2}
!8 = distinct !{null, !9, !"modes", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 676, i32 2}
!10 = distinct !{null, !11, !"modes", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 678, i32 2}
!12 = distinct !{null, !13, !"modes", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 680, i32 2}
!14 = distinct !{null, !15, !"modes", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 682, i32 2}
!16 = distinct !{null, !17, !"modes", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 684, i32 2}
!18 = distinct !{null, !19, !"modes", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 686, i32 2}
!20 = distinct !{null, !21, !"modes", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 688, i32 2}
!22 = distinct !{null, !23, !"modes", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 691, i32 2}
!24 = distinct !{null, !25, !"modes", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 693, i32 2}
!26 = distinct !{null, !27, !"modes", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 695, i32 2}
!28 = distinct !{null, !29, !"modes", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 697, i32 2}
!30 = distinct !{null, !31, !"modes", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 699, i32 2}
!32 = distinct !{null, !33, !"modes", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 701, i32 2}
!34 = !{ptr @mlx4_en_ethtool_ops, !35, !"mlx4_en_ethtool_ops", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 2148, i32 26}
!36 = !{ptr @ptys2ethtool_map, !37, !"ptys2ethtool_map", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 664, i32 35}
!38 = !{ptr @.str, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 92, i32 27}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 93, i32 28}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 96, i32 3}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 239, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 291, i32 3}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 305, i32 3}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1041, i32 20}
!53 = !{ptr @__func__.mlx4_en_set_coalesce, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1042, i32 8}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1048, i32 20}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1160, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__func__.mlx4_en_set_ringparam, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1166, i32 3}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1202, i32 4}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1101, i32 3}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 514, i32 5}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 516, i32 5}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 520, i32 5}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 522, i32 5}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 524, i32 5}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 526, i32 5}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 528, i32 5}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 530, i32 5}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 532, i32 5}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 534, i32 5}
!87 = !{ptr @mlx4_en_test_names, !88, !"mlx4_en_test_names", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 211, i32 19}
!89 = !{ptr @main_strings, !90, !"main_strings", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 109, i32 19}
!91 = !{ptr @mlx4_en_priv_flags, !92, !"mlx4_en_priv_flags", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 104, i32 19}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1960, i32 5}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1974, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1986, i32 3}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1810, i32 3}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1639, i32 4}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1645, i32 4}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1659, i32 4}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1670, i32 3}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1705, i32 3}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1248, i32 4}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1254, i32 4}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1860, i32 3}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1889, i32 2}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 1890, i32 2}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 2099, i32 3}
!126 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 2110, i32 4}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 878, i32 2}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 760, i32 3}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 764, i32 2}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 766, i32 2}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 768, i32 2}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 770, i32 2}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 772, i32 2}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 930, i32 2}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 948, i32 3}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 971, i32 3}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 980, i32 2}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 987, i32 3}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 994, i32 3}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 997, i32 4}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 905, i32 3}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c", i32 911, i32 3}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i8 0, i8 2}
!171 = !{i32 0, i32 33}
!172 = !{!"auto-init"}
