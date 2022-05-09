; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_accel/tls_rxtx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_accel/tls_rxtx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.130 }
%struct.atomic_t = type { i32 }
%union.anon.130 = type { i32 }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.42 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.42 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.160, [48 x i8], %union.anon.161, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.163, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.160 = type { i64 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, ptr }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.165, i32, i32, i32, i16, i16, %union.anon.167, i32, %union.anon.168, %union.anon.169, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.165 = type { i32 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.268, %struct.anon.269, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.154, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.155, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.156, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.150, [0 x i32], %union.anon.151, i16, i16, %union.anon.152, %struct.refcount_struct, [0 x i32], %union.anon.153 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.150 = type { i32 }
%union.anon.151 = type { %struct.hlist_node }
%union.anon.152 = type { i32 }
%union.anon.153 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.154 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.155 = type { ptr }
%union.anon.156 = type { ptr }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.44 }
%union.anon.44 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.268 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.269 = type { i32, i32, i32, i32 }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.tls_crypto_context = type { %union.anon.195 }
%union.anon.195 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.225, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.223, i32, %struct.list_head, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.223 = type { %struct.list_head, ptr, ptr }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.225 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.224, i32, i32 }
%union.anon.224 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.211, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.213, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.211 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.212] }
%struct.anon.212 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.184 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.184 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.213 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5e_tls_offload_context_tx = type { %struct.tls_offload_context_tx, i32, i32 }
%struct.tls_offload_context_tx = type { ptr, %struct.spinlock, %struct.list_head, ptr, ptr, i64, i64, [17 x %struct.scatterlist], ptr, [0 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mlx5e_tls_sw_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.sync_info = type { i64, i32, i32, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.mlx5e_sq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [48 x i8], i64, i64, i64, [104 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.200, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.200 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mlx5e_rq = type { %union.anon.226, %struct.anon.240, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.226 = type { %struct.anon.233 }
%struct.anon.233 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.235 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.206 }
%union.anon.206 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.234, i64, i32, [28 x i8] }
%union.anon.234 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.235 = type { %struct.anon.236 }
%struct.anon.236 = type { %struct.anon.237, [0 x %struct.mlx5_mtt] }
%struct.anon.237 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.240 = type { i16, i32, i8 }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.229, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.232, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.229 = type { %struct.anon.230 }
%struct.anon.230 = type { i8, i8, i16, i32 }
%union.anon.232 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.241, i32 }
%union.anon.241 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.mlx5e_dma_info = type { i32, %union.anon.228 }
%union.anon.228 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.tls_offload_context_rx = type { %struct.tls_sw_context_rx, i32, i8, %union.anon.272, [0 x i8] }
%struct.tls_sw_context_rx = type { ptr, %struct.crypto_wait, %struct.strparser, %struct.sk_buff_head, ptr, ptr, i8, i8, %struct.atomic_t, %struct.spinlock, i8 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.strparser = type { ptr, i8, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, %struct.strp_stats, %struct.strp_callbacks }
%struct.strp_stats = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.strp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.272 = type { %struct.anon.273 }
%struct.anon.273 = type { %struct.atomic64_t }
%struct.tls_record_info = type { %struct.list_head, i32, i32, i32, [17 x %struct.bio_vec] }
%struct.page = type { i32, %union.anon.10, %union.anon.145, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.145 = type { %struct.atomic_t }

@mlx5e_tls_handle_tx_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en_accel/tls_rxtx.c\00", [36 x i8] zeroinitializer }, align 32
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@.str.1 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 49, i64 50]
@___asan_gen_.4 = private constant [63 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/tls_rxtx.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 273, i32 6 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 1160, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_tls_handle_tx_skb(ptr noundef readonly %netdev, ptr noundef %sq, ptr noundef %skb, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %9 = lshr i16 %bf.load.i.i, 10
  %10 = and i16 %9, 60
  %mul.i.i = zext i16 %10 to i32
  %add = add i32 %sub.ptr.sub.i, %mul.i.i
  %sub = sub i32 %1, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %tobool.not = icmp eq i32 %1, %add
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mlx5e_tx_mpwqe_ensure_complete(ptr noundef %sq) #4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %icsk_ulp_data.i, align 8
  %netdev4 = getelementptr inbounds %struct.tls_context, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev4, align 4
  %cmp.not = icmp eq ptr %17, %netdev
  br i1 %cmp.not, label %if.end44.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %.b104 = load i1, ptr @mlx5e_tls_handle_tx_skb.__already_done, align 1
  br i1 %.b104, label %land.rhs.err_out_crit_edge, label %if.then12, !prof !17

land.rhs.err_out_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @mlx5e_tls_handle_tx_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #4
  br label %err_out

if.end44.critedge:                                ; preds = %if.end
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %18 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %18)
  %cmp.i.not.i = icmp eq i64 %18, -1
  br i1 %cmp.i.not.i, label %mlx5e_accel_is_ktls_tx.exit, label %if.end44.critedge.if.end48_crit_edge

if.end44.critedge.if.end48_crit_edge:             ; preds = %if.end44.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

mlx5e_accel_is_ktls_tx.exit:                      ; preds = %if.end44.critedge
  %mdev = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 27
  %19 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev, align 8
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i106 = getelementptr i32, ptr %22, i32 36
  %23 = ptrtoint ptr %add.ptr.i.i106 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i106, align 4
  %25 = and i32 %24, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.i.not = icmp eq i32 %25, 0
  br i1 %tobool.i.i.not, label %mlx5e_accel_is_ktls_tx.exit.if.end48_crit_edge, label %if.then46

mlx5e_accel_is_ktls_tx.exit.if.end48_crit_edge:   ; preds = %mlx5e_accel_is_ktls_tx.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then46:                                        ; preds = %mlx5e_accel_is_ktls_tx.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call47 = tail call zeroext i1 @mlx5e_ktls_handle_tx_skb(ptr noundef %15, ptr noundef %sq, ptr noundef %skb, i32 noundef %sub, ptr noundef %state) #4
  br label %cleanup

if.end48:                                         ; preds = %mlx5e_accel_is_ktls_tx.exit.if.end48_crit_edge, %if.end44.critedge.if.end48_crit_edge
  %26 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i, align 8
  %28 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i109 = zext i16 %29 to i32
  %add.ptr.i.i110 = getelementptr i8, ptr %27, i32 %conv.i.i109
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i110, i32 0, i32 2
  %30 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %seq, align 4
  %priv_ctx_tx.i.i = getelementptr inbounds %struct.tls_context, ptr %15, i32 0, i32 4
  %32 = ptrtoint ptr %priv_ctx_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv_ctx_tx.i.i, align 4
  %expected_seq51 = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %expected_seq51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %expected_seq51, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %31)
  %cmp52.not = icmp eq i32 %35, %31
  br i1 %cmp52.not, label %if.end61, label %if.then59, !prof !17

if.then59:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %tls = getelementptr i8, ptr %netdev, i32 30248
  %36 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tls, align 8
  %call60 = tail call fastcc zeroext i1 @mlx5e_tls_handle_ooo(ptr noundef %33, ptr noundef %sq, ptr noundef %skb, ptr noundef %37)
  br label %cleanup

if.end61:                                         ; preds = %if.end48
  %swid = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, ptr %33, i32 0, i32 2
  %38 = ptrtoint ptr %swid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %swid, align 4
  %call62 = tail call fastcc i32 @mlx5e_tls_add_metadata(ptr noundef %skb, i32 noundef %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end72, label %if.then70, !prof !17

if.then70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %tls71 = getelementptr i8, ptr %netdev, i32 30248
  %40 = ptrtoint ptr %tls71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tls71, align 8
  %tx_tls_drop_metadata = getelementptr inbounds %struct.mlx5e_tls_sw_stats, ptr %41, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_tls_drop_metadata, i32 noundef 8) #4
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %tx_tls_drop_metadata) #4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #4
  br label %cleanup

if.end72:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %add73 = add i32 %31, %sub
  %42 = ptrtoint ptr %expected_seq51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add73, ptr %expected_seq51, align 8
  br label %cleanup

err_out:                                          ; preds = %if.then12, %land.rhs.err_out_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end72, %if.then70, %if.then59, %if.then46, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %err_out ], [ %call47, %if.then46 ], [ %call60, %if.then59 ], [ false, %if.then70 ], [ true, %if.end72 ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tx_mpwqe_ensure_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_ktls_handle_tx_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlx5e_tls_handle_ooo(ptr noundef %context, ptr noundef %sq, ptr noundef %skb, ptr noundef %tls) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.sync_info, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq, align 4
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %info) #4
  %6 = call ptr @memset(ptr %info, i32 255, i32 224)
  %stats = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stats, align 32
  %tls_ooo = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %tls_ooo to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tls_ooo, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %tls_ooo, align 8
  %call1 = call fastcc i32 @mlx5e_tls_get_sync_data(ptr noundef %context, i32 noundef %5, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tx_tls_drop_no_sync_data = getelementptr inbounds %struct.mlx5e_tls_sw_stats, ptr %tls, i32 0, i32 4
  br label %err_out

if.end:                                           ; preds = %entry
  %sync_len = getelementptr inbounds %struct.sync_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %sync_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sync_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then4, label %if.end19, !prof !18

if.then4:                                         ; preds = %if.end
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %15 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i114 = zext i16 %16 to i32
  %add.ptr.i.i115 = getelementptr i8, ptr %14, i32 %conv.i.i114
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i115 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i115, i32 0, i32 4
  %19 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %20 = lshr i16 %bf.load.i.i, 10
  %21 = and i16 %20, 60
  %mul.i.i = zext i16 %21 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %24 = add i32 %23, %sub.ptr.rhs.cast.i
  %25 = add i32 %sub.ptr.lhs.cast.i, %mul.i.i
  %sub = sub i32 %24, %25
  %sub8 = sub i32 0, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub8)
  %cmp9.not = icmp ugt i32 %sub, %sub8
  br i1 %cmp9.not, label %if.end17, label %if.then4.cleanup69_crit_edge, !prof !18

if.then4.cleanup69_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup69

if.end17:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %tx_tls_drop_bypass_required = getelementptr inbounds %struct.mlx5e_tls_sw_stats, ptr %tls, i32 0, i32 5
  br label %err_out

if.end19:                                         ; preds = %if.end
  %swid = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, ptr %context, i32 0, i32 2
  %26 = ptrtoint ptr %swid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %swid, align 4
  %call20 = call fastcc i32 @mlx5e_tls_add_metadata(ptr noundef %skb, i32 noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end30, label %if.then28, !prof !17

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %tx_tls_drop_metadata = getelementptr inbounds %struct.mlx5e_tls_sw_stats, ptr %tls, i32 0, i32 2
  br label %err_out

if.end30:                                         ; preds = %if.end19
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i, align 8
  %30 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i118 = zext i16 %31 to i32
  %add.ptr.i.i119 = getelementptr i8, ptr %29, i32 %conv.i.i118
  %data.i120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %32 = ptrtoint ptr %data.i120 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i120, align 4
  %sub.ptr.lhs.cast.i121 = ptrtoint ptr %add.ptr.i.i119 to i32
  %sub.ptr.rhs.cast.i122 = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i123 = sub i32 %sub.ptr.lhs.cast.i121, %sub.ptr.rhs.cast.i122
  %doff.i.i128 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i119, i32 0, i32 4
  %34 = ptrtoint ptr %doff.i.i128 to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i.i129 = load i16, ptr %doff.i.i128, align 4
  %35 = lshr i16 %bf.load.i.i129, 10
  %36 = and i16 %35, 60
  %mul.i.i130 = zext i16 %36 to i32
  %add33 = add i32 %sub.ptr.sub.i123, %mul.i.i130
  %add34 = add i32 %add33, 8
  %call.i = call ptr @__alloc_skb(i32 noundef %add34, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool37.not = icmp eq ptr %call.i, null
  br i1 %tobool37.not, label %if.then46, label %if.end48, !prof !18

if.then46:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %tx_tls_drop_resync_alloc = getelementptr inbounds %struct.mlx5e_tls_sw_stats, ptr %tls, i32 0, i32 3
  br label %err_out

if.end48:                                         ; preds = %if.end30
  %len49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %37 = ptrtoint ptr %len49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len49, align 4
  %add50 = sub i32 %5, %add33
  %sub51 = add i32 %add50, %38
  %expected_seq = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, ptr %context, i32 0, i32 1
  %39 = ptrtoint ptr %expected_seq to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub51, ptr %expected_seq, align 8
  %call52 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add34) #4
  %nr_frags = getelementptr inbounds %struct.sync_info, ptr %info, i32 0, i32 2
  %40 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp53138 = icmp sgt i32 %41, 0
  br i1 %cmp53138, label %for.body.lr.ph, label %if.end48.for.end_crit_edge

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end48
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0139 = phi i32 [ 0, %for.body.lr.ph ], [ %inc57, %for.body.for.body_crit_edge ]
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %43, i32 0, i32 12, i32 %i.0139
  %arrayidx56 = getelementptr %struct.sync_info, ptr %info, i32 0, i32 3, i32 %i.0139
  %44 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx56, i32 12)
  %inc57 = add nuw nsw i32 %i.0139, 1
  %45 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_frags, align 4
  %cmp53 = icmp slt i32 %inc57, %46
  br i1 %cmp53, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end48.for.end_crit_edge
  %.lcssa = phi i32 [ %41, %if.end48.for.end_crit_edge ], [ %46, %for.body.for.end_crit_edge ]
  %conv = trunc i32 %.lcssa to i8
  %end.i131 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %47 = ptrtoint ptr %end.i131 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i131, align 4
  %nr_frags60 = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %nr_frags60 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv, ptr %nr_frags60, align 2
  %50 = ptrtoint ptr %sync_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sync_len, align 8
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %52 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %data_len, align 8
  %len63 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %53 = ptrtoint ptr %len63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len63, align 4
  %add64 = add i32 %54, %51
  store i32 %add64, ptr %len63, align 4
  %conv66 = zext i32 %add64 to i64
  %55 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %stats, align 32
  %tls_resync_bytes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %56, i32 0, i32 18
  %57 = ptrtoint ptr %tls_resync_bytes to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %tls_resync_bytes, align 16
  %add68 = add i64 %58, %conv66
  store i64 %add68, ptr %tls_resync_bytes, align 16
  %59 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %info, align 8
  %61 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %64 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %64, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %66 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i, align 4
  %head.i.i132 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %68 = ptrtoint ptr %head.i.i132 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head.i.i132, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i133 = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %70 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i.i133, ptr %mac_header.i.i, align 2
  %71 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %73 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i135 = zext i16 %74 to i32
  %add.ptr.i.i.i136 = getelementptr i8, ptr %72, i32 %conv.i.i.i135
  %75 = ptrtoint ptr %data.i120 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i120, align 4
  %sub.ptr.lhs.cast.i64.i = ptrtoint ptr %add.ptr.i.i.i136 to i32
  %sub.ptr.rhs.cast.i65.i = ptrtoint ptr %76 to i32
  %sub.ptr.sub.i66.i = sub i32 %sub.ptr.lhs.cast.i64.i, %sub.ptr.rhs.cast.i65.i
  %network_header.i.i69.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %77 = trunc i32 %sub.ptr.sub.i66.i to i16
  %conv1.i.i = add i16 %77, %conv.i.i133
  %78 = ptrtoint ptr %network_header.i.i69.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv1.i.i, ptr %network_header.i.i69.i, align 4
  %79 = load ptr, ptr %head.i.i, align 8
  %80 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i71.i = zext i16 %81 to i32
  %add.ptr.i.i72.i = getelementptr i8, ptr %79, i32 %conv.i.i71.i
  %82 = load ptr, ptr %data.i120, align 4
  %sub.ptr.lhs.cast.i74.i = ptrtoint ptr %add.ptr.i.i72.i to i32
  %sub.ptr.rhs.cast.i75.i = ptrtoint ptr %82 to i32
  %sub.ptr.sub.i76.i = sub i32 %sub.ptr.lhs.cast.i74.i, %sub.ptr.rhs.cast.i75.i
  %transport_header.i.i83.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %83 = trunc i32 %sub.ptr.sub.i76.i to i16
  %conv1.i84.i = add i16 %83, %conv.i.i133
  %84 = ptrtoint ptr %transport_header.i.i83.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv1.i84.i, ptr %transport_header.i.i83.i, align 2
  %85 = load ptr, ptr %data.i120, align 4
  %86 = call ptr @memcpy(ptr %67, ptr %85, i32 %add33)
  %87 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %87, i32 %add33
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %60, ptr %add.ptr.i, align 1
  %89 = load ptr, ptr %head.i.i132, align 8
  %90 = load i16, ptr %network_header.i.i69.i, align 4
  %conv.i.i87.i = zext i16 %90 to i32
  %add.ptr.i.i88.i = getelementptr i8, ptr %89, i32 %conv.i.i87.i
  %91 = load i32, ptr %len63, align 4
  %92 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i94.i = ptrtoint ptr %add.ptr.i.i88.i to i32
  %sub.ptr.rhs.cast.i95.i = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i96.neg.i = sub i32 %91, %sub.ptr.lhs.cast.i94.i
  %sub.i = add i32 %sub.ptr.sub.i96.neg.i, %sub.ptr.rhs.cast.i95.i
  %conv.i = trunc i32 %sub.i to i16
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i88.i, i32 0, i32 2
  %93 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv.i, ptr %tot_len.i, align 2
  %94 = load ptr, ptr %head.i.i132, align 8
  %95 = load i16, ptr %transport_header.i.i83.i, align 2
  %conv.i.i99.i = zext i16 %95 to i32
  %add.ptr.i.i100.i = getelementptr i8, ptr %94, i32 %conv.i.i99.i
  %96 = load i32, ptr %len63, align 4
  %sub8.i = sub i32 %96, %add33
  %sub9.i = sub i32 %5, %sub8.i
  %seq.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i100.i, i32 0, i32 2
  %97 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %sub9.i, ptr %seq.i, align 4
  %98 = load ptr, ptr %64, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 20
  %99 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mtu.i, align 4
  %101 = load ptr, ptr %head.i.i132, align 8
  %102 = load i16, ptr %network_header.i.i69.i, align 4
  %conv.i.i103.i = zext i16 %102 to i32
  %add.ptr.i.i104.i = getelementptr i8, ptr %101, i32 %conv.i.i103.i
  %103 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i106.i = ptrtoint ptr %add.ptr.i.i104.i to i32
  %sub.ptr.rhs.cast.i107.i = ptrtoint ptr %103 to i32
  %104 = add i32 %add33, %sub.ptr.rhs.cast.i107.i
  %sub11.neg.i = sub i32 %100, %104
  %sub12.i = add i32 %sub11.neg.i, %sub.ptr.lhs.cast.i106.i
  %105 = load ptr, ptr %end.i131, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i, i32 %sub12.i)
  %cmp.i = icmp sgt i32 %sub8.i, %sub12.i
  br i1 %cmp.i, label %if.then.i, label %for.end.mlx5e_tls_complete_sync_skb.exit_crit_edge

for.end.mlx5e_tls_complete_sync_skb.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlx5e_tls_complete_sync_skb.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv15.i = trunc i32 %sub12.i to i16
  %107 = ptrtoint ptr %end.i131 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %end.i131, align 4
  %gso_size17.i = getelementptr inbounds %struct.skb_shared_info, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %gso_size17.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv15.i, ptr %gso_size17.i, align 4
  %add.i = add nsw i32 %sub8.i, -1
  %sub18.i = add i32 %add.i, %sub12.i
  %div.i = sdiv i32 %sub18.i, %sub12.i
  %conv19.i = trunc i32 %div.i to i16
  %110 = load ptr, ptr %end.i131, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv19.i, ptr %gso_segs.i, align 2
  br label %mlx5e_tls_complete_sync_skb.exit

mlx5e_tls_complete_sync_skb.exit:                 ; preds = %if.then.i, %for.end.mlx5e_tls_complete_sync_skb.exit_crit_edge
  %end.i111.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %112 = ptrtoint ptr %end.i111.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %end.i111.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %gso_type.i, align 8
  %116 = ptrtoint ptr %end.i131 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %end.i131, align 4
  %gso_type23.i = getelementptr inbounds %struct.skb_shared_info, ptr %117, i32 0, i32 8
  %118 = ptrtoint ptr %gso_type23.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %115, ptr %gso_type23.i, align 8
  %119 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data.i.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %120, i32 14
  %121 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 33, ptr %add.ptr25.i, align 1
  %conv26.i = trunc i32 %sub9.i to i16
  %first_seq.i = getelementptr i8, ptr %120, i32 18
  %122 = ptrtoint ptr %first_seq.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 2)
  store i16 %conv26.i, ptr %first_seq.i, align 1
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %123 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.set.i = or i16 %bf.load.i, 1536
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %124 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %queue_mapping.i, align 8
  %queue_mapping27.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %126 = ptrtoint ptr %queue_mapping27.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %queue_mapping27.i, align 8
  call void @mlx5e_sq_xmit_simple(ptr noundef %sq, ptr noundef nonnull %call.i, i1 noundef zeroext true) #4
  br label %cleanup69

err_out:                                          ; preds = %if.then46, %if.then28, %if.end17, %if.then
  %tx_tls_drop_bypass_required.sink142 = phi ptr [ %tx_tls_drop_bypass_required, %if.end17 ], [ %tx_tls_drop_resync_alloc, %if.then46 ], [ %tx_tls_drop_metadata, %if.then28 ], [ %tx_tls_drop_no_sync_data, %if.then ]
  %call.i.i109 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_tls_drop_bypass_required.sink142, i32 noundef 8) #4
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %tx_tls_drop_bypass_required.sink142) #4
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #4
  br label %cleanup69

cleanup69:                                        ; preds = %err_out, %mlx5e_tls_complete_sync_skb.exit, %if.then4.cleanup69_crit_edge
  %retval.1 = phi i1 [ false, %err_out ], [ true, %mlx5e_tls_complete_sync_skb.exit ], [ true, %if.then4.cleanup69_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %info) #4
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_tls_add_metadata(ptr noundef %skb, i32 noundef %swid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_header_cloned.exit.thread.i, label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #4
  %3 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref1.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i.i)
  %cmp.i1.i = icmp ult i32 %sub.ptr.sub.i.i.i, 8
  br i1 %cmp.i1.i, label %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge, label %if.end.i2.i

skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.thread.i.i

skb_header_cloned.exit.thread.i:                  ; preds = %entry
  %data.i.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i5.i, align 4
  %head.i.i6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i6.i, align 8
  %sub.ptr.lhs.cast.i.i7.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i8.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i9.i = sub i32 %sub.ptr.lhs.cast.i.i7.i, %sub.ptr.rhs.cast.i.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i9.i)
  %cmp.i110.i = icmp ult i32 %sub.ptr.sub.i.i9.i, 8
  br i1 %cmp.i110.i, label %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.if.end_crit_edge

skb_header_cloned.exit.thread.i.if.end_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge
  %sub.ptr.sub.i.i12.i = phi i32 [ %sub.ptr.sub.i.i9.i, %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge ]
  %phi.bo.i.i = sub nuw nsw i32 135, %sub.ptr.sub.i.i12.i
  %phi.bo11.i.i = and i32 %phi.bo.i.i, -128
  br label %skb_cow_head.exit

if.end.i2.i:                                      ; preds = %skb_header_cloned.exit.i
  %and.i.i = and i32 %4, 65535
  %shr.i.i = ashr i32 %4, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %if.end.i2.i.if.end_crit_edge, label %if.end.i2.i.skb_cow_head.exit_crit_edge

if.end.i2.i.skb_cow_head.exit_crit_edge:          ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_cow_head.exit

if.end.i2.i.if.end_crit_edge:                     ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

skb_cow_head.exit:                                ; preds = %if.end.i2.i.skb_cow_head.exit_crit_edge, %if.end.thread.i.i
  %delta.010.i.i = phi i32 [ %phi.bo11.i.i, %if.end.thread.i.i ], [ 0, %if.end.i2.i.skb_cow_head.exit_crit_edge ]
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i, i32 noundef 0, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow_head.exit.if.end_crit_edge, label %skb_cow_head.exit.cleanup_crit_edge

skb_cow_head.exit.cleanup_crit_edge:              ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %if.end.i2.i.if.end_crit_edge, %skb_header_cloned.exit.thread.i.if.end_crit_edge
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #4
  %mac_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %13 = ptrtoint ptr %mac_header to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mac_header, align 2
  %sub = add i16 %14, -8
  store i16 %sub, ptr %mac_header, align 2
  %add.ptr = getelementptr %struct.ethhdr, ptr %call1, i32 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.ptr4 = getelementptr i8, ptr %16, i32 8
  %17 = call ptr @memmove(ptr %16, ptr %add.ptr4, i32 12)
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %call1, i32 0, i32 2
  %18 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 -29468, ptr %h_proto, align 1
  %or = or i32 %swid, 536870912
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %or, ptr %add.ptr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %skb_cow_head.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %skb_cow_head.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tls_handle_rx_skb_metadata(ptr nocapture noundef readonly %rq, ptr nocapture noundef %skb, ptr nocapture noundef %cqe_bcnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 14
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 48, label %sw.bb
    i8 49, label %sw.bb1
    i8 50, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %decrypted = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %5 = ptrtoint ptr %decrypted to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %bf.load = load i32, ptr %decrypted, align 2
  %bf.set = or i32 %bf.load, 8192
  store i32 %bf.set, ptr %decrypted, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %netdev = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 3
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 8
  %ethertype.i = getelementptr i8, ptr %1, i32 20
  %8 = ptrtoint ptr %ethertype.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %ethertype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %9)
  %cmp.not.i = icmp eq i16 %9, 2048
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb1.tls_update_resync_sn.exit_crit_edge

sw.bb1.tls_update_resync_sn.exit_crit_edge:       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %tls_update_resync_sn.exit

if.end.i:                                         ; preds = %sw.bb1
  %add.ptr.i = getelementptr i8, ptr %1, i32 22
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %add.ptr.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %11 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %11 to i32
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i)
  %cmp6.i = icmp eq i8 %bf.lshr.mask.i, 64
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 127
  %12 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nd_net.i.i, align 4
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %saddr.i = getelementptr i8, ptr %1, i32 34
  %14 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saddr.i, align 4
  %16 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr3.i, align 4
  %daddr.i = getelementptr i8, ptr %1, i32 38
  %18 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %daddr.i, align 4
  %dest.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr3.i, i32 0, i32 1
  %20 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dest.i, align 2
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 17
  %22 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifindex.i, align 4
  %call.i.i18 = tail call ptr @__inet_lookup_established(ptr noundef %13, ptr noundef nonnull @tcp_hashinfo, i32 noundef %15, i16 noundef zeroext %17, i32 noundef %19, i16 noundef zeroext %21, i32 noundef %23, i32 noundef 0) #4
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %saddr11.i = getelementptr i8, ptr %1, i32 30
  %24 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr3.i, align 4
  %daddr13.i = getelementptr i8, ptr %1, i32 46
  %dest14.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr3.i, i32 0, i32 1
  %26 = ptrtoint ptr %dest14.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dest14.i, align 2
  %ifindex15.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 17
  %28 = ptrtoint ptr %ifindex15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ifindex15.i, align 4
  %call16.i = tail call ptr @__inet6_lookup_established(ptr noundef %13, ptr noundef nonnull @tcp_hashinfo, ptr noundef %saddr11.i, i16 noundef zeroext %25, ptr noundef %daddr13.i, i16 noundef zeroext %27, i32 noundef %29, i32 noundef 0) #4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then8.i
  %sk.0.i = phi ptr [ %call.i.i18, %if.then8.i ], [ %call16.i, %if.else.i ]
  %tobool.not.i = icmp eq ptr %sk.0.i, null
  br i1 %tobool.not.i, label %if.end17.i.if.then21.i_crit_edge, label %lor.lhs.false.i

if.end17.i.if.then21.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk.0.i, i32 0, i32 4
  %30 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %31)
  %cmp19.i = icmp eq i8 %31, 6
  br i1 %cmp19.i, label %lor.lhs.false.i.if.then21.i_crit_edge, label %if.end23.i

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false.i.if.then21.i_crit_edge, %if.end17.i.if.then21.i_crit_edge
  %tls.i = getelementptr i8, ptr %7, i32 30248
  %32 = ptrtoint ptr %tls.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tls.i, align 8
  %rx_tls_drop_resync_request.i = getelementptr inbounds %struct.mlx5e_tls_sw_stats, ptr %33, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_tls_drop_resync_request.i, i32 noundef 8) #4
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rx_tls_drop_resync_request.i) #4
  br label %tls_update_resync_sn.exit

if.end23.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sk.0.i, ptr %34, align 4
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @sock_edemux, ptr %destructor.i, align 4
  %sync_seq.i = getelementptr i8, ptr %1, i32 16
  %37 = ptrtoint ptr %sync_seq.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %seq.0.copyload.i = load i32, ptr %sync_seq.i, align 1
  %icsk_ulp_data.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk.0.i, i32 0, i32 13
  %38 = ptrtoint ptr %icsk_ulp_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %icsk_ulp_data.i.i.i, align 8
  %priv_ctx_rx.i.i.i = getelementptr inbounds %struct.tls_context, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %priv_ctx_rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv_ctx_rx.i.i.i, align 4
  %42 = getelementptr inbounds %struct.tls_offload_context_rx, ptr %41, i32 0, i32 3
  %conv.i.i = zext i32 %seq.0.copyload.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %or.i.i = or i64 %shl.i.i, 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %42, i32 noundef 8) #4
  tail call void @generic_atomic64_set(ptr noundef %42, i64 noundef %or.i.i) #4
  br label %tls_update_resync_sn.exit

tls_update_resync_sn.exit:                        ; preds = %if.end23.i, %if.then21.i, %sw.bb1.tls_update_resync_sn.exit_crit_edge
  %43 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev, align 8
  %tls = getelementptr i8, ptr %44, i32 30248
  %45 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tls, align 8
  %rx_tls_resync_request = getelementptr inbounds %struct.mlx5e_tls_sw_stats, ptr %46, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_tls_resync_request, i32 noundef 8) #4
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rx_tls_resync_request) #4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %netdev5 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 3
  %47 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev5, align 8
  %tls7 = getelementptr i8, ptr %48, i32 30248
  %49 = ptrtoint ptr %tls7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tls7, align 8
  %rx_tls_auth_fail = getelementptr inbounds %struct.mlx5e_tls_sw_stats, ptr %50, i32 0, i32 11
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_tls_auth_fail, i32 noundef 8) #4
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rx_tls_auth_fail) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %tls_update_resync_sn.exit, %sw.bb
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %add.ptr.i21 = getelementptr i8, ptr %52, i32 8
  %53 = call ptr @memmove(ptr %add.ptr.i21, ptr %52, i32 12)
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %54 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %cmp.i.i = icmp ult i32 %55, 8
  br i1 %cmp.i.i, label %sw.epilog.remove_metadata_hdr.exit_crit_edge, label %cond.false.i.i, !prof !18

sw.epilog.remove_metadata_hdr.exit_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %remove_metadata_hdr.exit

cond.false.i.i:                                   ; preds = %sw.epilog
  %sub.i.i.i = add i32 %55, -8
  %56 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub.i.i.i, ptr %len1.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %57 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %58)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %58
  br i1 %cmp.i.i.i, label %do.body4.i.i.i, label %__skb_pull.exit.i.i, !prof !18

do.body4.i.i.i:                                   ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #4, !srcloc !19
  unreachable

__skb_pull.exit.i.i:                              ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %60, i32 8
  store ptr %add.ptr.i.i.i, ptr %data, align 4
  br label %remove_metadata_hdr.exit

remove_metadata_hdr.exit:                         ; preds = %__skb_pull.exit.i.i, %sw.epilog.remove_metadata_hdr.exit_crit_edge
  %61 = ptrtoint ptr %cqe_bcnt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cqe_bcnt, align 4
  %sub = add i32 %62, -8
  store i32 %sub, ptr %cqe_bcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %remove_metadata_hdr.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mlx5e_tls_get_stop_room(ptr noundef %mdev, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %0 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %0)
  %cmp.i.not.i = icmp eq i64 %0, -1
  br i1 %cmp.i.not.i, label %mlx5e_accel_is_tls_device.exit, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

mlx5e_accel_is_tls_device.exit:                   ; preds = %entry
  %call1.i = tail call zeroext i1 @mlx5_accel_is_tls_device(ptr noundef %mdev) #4
  br i1 %call1.i, label %if.end, label %mlx5e_accel_is_tls_device.exit.return_crit_edge

mlx5e_accel_is_tls_device.exit.return_crit_edge:  ; preds = %mlx5e_accel_is_tls_device.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %mlx5e_accel_is_tls_device.exit
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %1 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %cmp.i.not.i8 = icmp eq i64 %1, -1
  br i1 %cmp.i.not.i8, label %land.rhs.i9, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

land.rhs.i9:                                      ; preds = %if.end
  %caps.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %3, i32 36
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 4
  %6 = and i32 %5, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not.i.i = icmp eq i32 %6, 0
  br i1 %.not.i.i, label %land.rhs.i9.return_crit_edge, label %if.end.i.i

land.rhs.i9.return_crit_edge:                     ; preds = %land.rhs.i9
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end.i.i:                                       ; preds = %land.rhs.i9
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 45
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %9 = and i32 %8, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.return_crit_edge, label %mlx5e_accel_is_ktls_device.exit

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

mlx5e_accel_is_ktls_device.exit:                  ; preds = %if.end.i.i
  %arrayidx6.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 17
  %10 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i = icmp slt i32 %13, 0
  br i1 %tobool12.i.i, label %if.then2, label %mlx5e_accel_is_ktls_device.exit.return_crit_edge

mlx5e_accel_is_ktls_device.exit.return_crit_edge: ; preds = %mlx5e_accel_is_ktls_device.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then2:                                         ; preds = %mlx5e_accel_is_ktls_device.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call zeroext i16 @mlx5e_ktls_get_stop_room(ptr noundef %mdev, ptr noundef %params) #4
  br label %return

return:                                           ; preds = %if.then2, %mlx5e_accel_is_ktls_device.exit.return_crit_edge, %if.end.i.i.return_crit_edge, %land.rhs.i9.return_crit_edge, %if.end.return_crit_edge, %mlx5e_accel_is_tls_device.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ %call3, %if.then2 ], [ 0, %mlx5e_accel_is_tls_device.exit.return_crit_edge ], [ 31, %mlx5e_accel_is_ktls_device.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 31, %if.end.return_crit_edge ], [ 31, %if.end.i.i.return_crit_edge ], [ 31, %land.rhs.i9.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlx5e_ktls_get_stop_room(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_tls_get_sync_data(ptr noundef %context, i32 noundef %tcp_seq, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tls_offload_context_tx, ptr %context, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %call6 = tail call ptr @tls_get_record(ptr noundef %context, i32 noundef %tcp_seq, ptr noundef %info) #4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !18

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %end_seq.i = getelementptr inbounds %struct.tls_record_info, ptr %call6, i32 0, i32 1
  %0 = ptrtoint ptr %end_seq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end_seq.i, align 4
  %len.i = getelementptr inbounds %struct.tls_record_info, ptr %call6, i32 0, i32 2
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %sub.i.neg = sub i32 %3, %1
  %sub = add i32 %sub.i.neg, %tcp_seq
  %sync_len = getelementptr inbounds %struct.sync_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %sync_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %sync_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11 = icmp slt i32 %sub, 0
  br i1 %cmp11, label %if.then19, label %while.cond.preheader, !prof !18

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2468.not = icmp eq i32 %sub, 0
  br i1 %cmp2468.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.then19:                                        ; preds = %if.end
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.then19.done_crit_edge, label %if.then19.out_crit_edge

if.then19.out_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then19.done_crit_edge:                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %remaining.070 = phi i32 [ %sub33, %if.end39.while.body_crit_edge ], [ %sub, %while.cond.preheader.while.body_crit_edge ]
  %i.069 = phi i32 [ %inc, %if.end39.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.sync_info, ptr %info, i32 0, i32 3, i32 %i.069
  %arrayidx27 = getelementptr %struct.tls_record_info, ptr %call6, i32 0, i32 4, i32 %i.069
  %7 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx27, i32 12)
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !17

if.then.i.i.i:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i.i = add i32 %12, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %13, %if.end.i.i.i ]
  %14 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, 128
  br i1 %cmp.i.i.i, label %if.then.i1.i.i, label %do.end5.i.i.i, !prof !18

if.then.i1.i.i:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.1) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #4, !srcloc !20
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i9.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #4
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #4, !srcloc !21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mlx5e_tls_get_sync_data, %if.then.i.i.i.i.i)) #4
          to label %__skb_frag_ref.exit [label %if.then.i.i.i.i.i], !srcloc !22

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__page_ref_mod(ptr noundef %14, i32 noundef 1) #4
  br label %__skb_frag_ref.exit

__skb_frag_ref.exit:                              ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i
  %bv_len.i = getelementptr %struct.sync_info, ptr %info, i32 0, i32 3, i32 %i.069, i32 1
  %19 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bv_len.i, align 4
  %sub33 = sub i32 %remaining.070, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33)
  %cmp34 = icmp slt i32 %sub33, 0
  br i1 %cmp34, label %if.end39.thread, label %if.end39

if.end39.thread:                                  ; preds = %__skb_frag_ref.exit
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %remaining.070, ptr %bv_len.i, align 4
  %inc72 = add i32 %i.069, 1
  br label %while.end

if.end39:                                         ; preds = %__skb_frag_ref.exit
  %inc = add i32 %i.069, 1
  %cmp24.not = icmp eq i32 %sub33, 0
  br i1 %cmp24.not, label %if.end39.while.end_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end39.while.end_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end39.while.end_crit_edge, %if.end39.thread, %while.cond.preheader.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc72, %if.end39.thread ], [ %inc, %if.end39.while.end_crit_edge ]
  %nr_frags = getelementptr inbounds %struct.sync_info, ptr %info, i32 0, i32 2
  %22 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.0.lcssa, ptr %nr_frags, align 4
  br label %done

done:                                             ; preds = %while.end, %if.then19.done_crit_edge
  br label %out

out:                                              ; preds = %done, %if.then19.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -22, %entry.out_crit_edge ], [ 0, %done ], [ -22, %if.then19.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_sq_xmit_simple(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tls_get_record(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet6_lookup_established(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_edemux(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet_lookup_established(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_accel_is_tls_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/tls_rxtx.c", i32 273, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h", i32 450, i32 3}
!7 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2155367802, i64 2155368290, i64 2155367839, i64 2155367895, i64 2155367929, i64 2155367953, i64 2155367994, i64 2155368015, i64 2155368043, i64 2155368077}
!20 = !{i64 2154291612, i64 2154292096, i64 2154291649, i64 2154291705, i64 2154291739, i64 2154291763, i64 2154291804, i64 2154291825, i64 2154291853, i64 2154291887}
!21 = !{i64 2148261194, i64 2148261220, i64 2148261249, i64 2148261283, i64 2148261314, i64 2148261337}
!22 = !{i64 2148743009, i64 2148743014, i64 2148743027, i64 2148743071, i64 2148743105, i64 2148743126}
