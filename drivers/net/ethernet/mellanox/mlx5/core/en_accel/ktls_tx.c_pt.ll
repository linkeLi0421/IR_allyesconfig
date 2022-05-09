; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_tx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.175 }
%struct.atomic_t = type { i32 }
%union.anon.175 = type { i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.177, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.205, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.177 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.178] }
%struct.anon.178 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.179 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.179 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.205 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.213, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.213 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.214 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.214 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.215 }
%struct.anon.215 = type { i8, i8 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.267, %struct.anon.268, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.117, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.111, [0 x i32], %union.anon.112, i16, i16, %union.anon.113, %struct.refcount_struct, [0 x i32], %union.anon.114 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.110 }
%union.anon.110 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { %struct.hlist_node }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.117 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.118 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.119 = type { ptr }
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.267 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.268 = type { i32, i32, i32, i32 }
%struct.mlx5e_ktls_offload_context_tx = type { ptr, %struct.tls12_crypto_info_aes_gcm_128, ptr, i32, i32, i32, i8 }
%struct.tls12_crypto_info_aes_gcm_128 = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%union.tls_crypto_context = type { %union.anon.199 }
%union.anon.199 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_offload_context_tx = type { ptr, %struct.spinlock, %struct.list_head, ptr, ptr, i64, i64, [17 x %struct.scatterlist], ptr, [0 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mlx5e_tls_sw_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.230, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.228, i32, %struct.list_head, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.228 = type { %struct.list_head, ptr, ptr }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.230 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.229, i32, i32 }
%union.anon.229 = type { ptr }
%struct.mlx5e_sq_dma = type { i32, i32, i32 }
%struct.mlx5e_tx_wqe_info = type { ptr, i32, i8, i8, i8, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.173, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.173 = type { %struct.atomic_t }
%struct.mlx5e_sq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [48 x i8], i64, i64, i64, [104 x i8] }
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
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.218 }
%union.anon.218 = type { i32 }
%struct.tx_sync_info = type { i64, i32, i32, [17 x %struct.bio_vec] }
%struct.mlx5e_dump_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_data_seg }
%struct.mlx5_wqe_data_seg = type { i32, i32, i64 }
%struct.tls_record_info = type { %struct.list_head, i32, i32, i32, [17 x %struct.bio_vec] }

@mlx5e_ktls_handle_tx_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_tx.c\00", [37 x i8] zeroinitializer }, align 32
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5e_tx_dma_unmap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mlx5e_tx_dma_unmap unknown DMA type!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.8 = private constant [62 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_tx.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 476, i32 4 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 450, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 304, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 717, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 1160, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mlx5e_ktls_get_stop_room(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %0 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %0)
  %cmp.i.not.i = icmp eq i64 %0, -1
  br i1 %cmp.i.not.i, label %mlx5e_accel_is_ktls_tx.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mlx5e_accel_is_ktls_tx.exit:                      ; preds = %entry
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %1 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %2, i32 36
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %5 = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.i.not, label %mlx5e_accel_is_ktls_tx.exit.cleanup_crit_edge, label %if.end

mlx5e_accel_is_ktls_tx.exit.cleanup_crit_edge:    ; preds = %mlx5e_accel_is_ktls_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mlx5e_accel_is_ktls_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sw_mtu.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %6 = ptrtoint ptr %sw_mtu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sw_mtu.i, align 4
  %hard_mtu.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %8 = ptrtoint ptr %hard_mtu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hard_mtu.i, align 4
  %add.i = add i32 %9, %7
  %sub.i = add i32 %add.i, 16383
  %div.i = udiv i32 %sub.i, %add.i
  %10 = trunc i32 %div.i to i8
  %conv.i = add i8 %10, 17
  %conv11 = zext i8 %conv.i to i16
  %add15 = add nuw nsw i16 %conv11, 6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlx5e_accel_is_ktls_tx.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %add15, %if.end ], [ 0, %mlx5e_accel_is_ktls_tx.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ktls_add_tx(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %sk, ptr noundef %crypto_info, i32 noundef %start_offload_tcp_sn) local_unnamed_addr #2 align 64 {
entry:
  %in.i = alloca [48 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %mdev2 = getelementptr i8, ptr %netdev, i32 11328
  %2 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev2, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_id = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %call7.i.i, i32 0, i32 5
  %call4 = tail call i32 @mlx5_ktls_create_key(ptr noundef %3, ptr noundef %crypto_info, ptr noundef %key_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.err_create_key_crit_edge

if.end.err_create_key_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_create_key

if.end7:                                          ; preds = %if.end
  %tls = getelementptr i8, ptr %netdev, i32 30248
  %5 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tls, align 8
  %sw_stats8 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %sw_stats8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sw_stats8, align 4
  %expected_seq = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %expected_seq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %start_offload_tcp_sn, ptr %expected_seq, align 8
  %crypto_info9 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %call7.i.i, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %crypto_info9, ptr %crypto_info, i32 40)
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv_ctx_tx.i, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call7.i.i, align 8
  %13 = load ptr, ptr %priv_ctx_tx.i, align 4
  %driver_state.i.i = getelementptr inbounds %struct.tls_offload_context_tx, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %driver_state.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %driver_state.i.i, align 4
  %tisn = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %call7.i.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %in.i) #8
  %15 = call ptr @memset(ptr %in.i, i32 0, i32 192)
  %add.ptr.i39 = getelementptr inbounds i8, ptr %in.i, i32 32
  %16 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1073741824, ptr %add.ptr.i39, align 4
  %call.i = call i32 @mlx5e_create_tis(ptr noundef %3, ptr noundef nonnull %in.i, ptr noundef %tisn) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %in.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %err_create_tis

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %ctx_post_pending = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %ctx_post_pending to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %ctx_post_pending, align 4
  %18 = ptrtoint ptr %sw_stats8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw_stats8, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 8) #8
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %19) #8
  br label %cleanup

err_create_tis:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %key_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key_id, align 8
  call void @mlx5_ktls_destroy_key(ptr noundef %3, i32 noundef %21) #8
  br label %err_create_key

err_create_key:                                   ; preds = %err_create_tis, %if.end.err_create_key_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.err_create_key_crit_edge ], [ %call.i, %err_create_tis ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_create_key, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_create_key ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ktls_create_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ktls_destroy_key(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ktls_del_tx(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %tls_ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_ctx_tx.i.i.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 4
  %0 = ptrtoint ptr %priv_ctx_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ctx_tx.i.i.i, align 4
  %driver_state.i.i = getelementptr inbounds %struct.tls_offload_context_tx, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_state.i.i, align 4
  %mdev2 = getelementptr i8, ptr %netdev, i32 11328
  %4 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev2, align 64
  %sw_stats = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %sw_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_stats, align 4
  %tx_tls_del = getelementptr inbounds %struct.mlx5e_tls_sw_stats, ptr %7, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_tls_del, i32 noundef 8) #8
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %tx_tls_del) #8
  %tisn = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %tisn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tisn, align 4
  tail call void @mlx5e_destroy_tis(ptr noundef %5, i32 noundef %9) #8
  %key_id = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %key_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_id, align 4
  tail call void @mlx5_ktls_destroy_key(ptr noundef %5, i32 noundef %11) #8
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_destroy_tis(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ktls_tx_handle_resync_dump_comp(ptr nocapture noundef readonly %sq, ptr nocapture noundef readonly %wi, ptr nocapture noundef %dma_fifo_cc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dma_fifo_cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_fifo_cc, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %dma_fifo_cc, align 4
  %db.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14
  %2 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db.i, align 4
  %dma_fifo_mask.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 12
  %4 = ptrtoint ptr %dma_fifo_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_fifo_mask.i, align 4
  %and.i = and i32 %5, %1
  %arrayidx.i = getelementptr %struct.mlx5e_sq_dma, ptr %3, i32 %and.i
  %stats1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %6 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats1, align 32
  %pdev = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 20
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %type.i = getelementptr %struct.mlx5e_sq_dma, ptr %3, i32 %and.i, i32 2
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %land.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %size.i = getelementptr %struct.mlx5e_sq_dma, ptr %3, i32 %and.i, i32 1
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %14, i32 noundef %16, i32 noundef 1, i32 noundef 0) #8
  br label %mlx5e_tx_dma_unmap.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %size3.i = getelementptr %struct.mlx5e_sq_dma, ptr %3, i32 %and.i, i32 1
  %19 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size3.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %18, i32 noundef %20, i32 noundef 1, i32 noundef 0) #8
  br label %mlx5e_tx_dma_unmap.exit

land.end.i:                                       ; preds = %entry
  %.b43.i = load i1, ptr @mlx5e_tx_dma_unmap.__already_done, align 1
  br i1 %.b43.i, label %land.end.i.mlx5e_tx_dma_unmap.exit_crit_edge, label %if.then.i, !prof !22

land.end.i.mlx5e_tx_dma_unmap.exit_crit_edge:     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_tx_dma_unmap.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mlx5e_tx_dma_unmap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 304, i32 noundef 9, ptr noundef nonnull @.str.2) #8
  br label %mlx5e_tx_dma_unmap.exit

mlx5e_tx_dma_unmap.exit:                          ; preds = %if.then.i, %land.end.i.mlx5e_tx_dma_unmap.exit_crit_edge, %sw.bb1.i, %sw.bb.i
  %resync_dump_frag_page = getelementptr inbounds %struct.mlx5e_tx_wqe_info, ptr %wi, i32 0, i32 5
  %21 = ptrtoint ptr %resync_dump_frag_page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resync_dump_frag_page, align 4
  %23 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !22

if.then.i.i:                                      ; preds = %mlx5e_tx_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %mlx5e_tx_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %22 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %26, %if.end.i.i ]
  %27 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !23

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !24
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mlx5e_ktls_tx_handle_resync_dump_comp, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !28

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %27, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %27) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %tls_dump_packets = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %7, i32 0, i32 16
  %31 = ptrtoint ptr %tls_dump_packets to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tls_dump_packets, align 128
  %inc2 = add i64 %32, 1
  store i64 %inc2, ptr %tls_dump_packets, align 128
  %num_bytes = getelementptr inbounds %struct.mlx5e_tx_wqe_info, ptr %wi, i32 0, i32 1
  %33 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_bytes, align 4
  %conv = zext i32 %34 to i64
  %tls_dump_bytes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %7, i32 0, i32 17
  %35 = ptrtoint ptr %tls_dump_bytes to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tls_dump_bytes, align 8
  %add = add i64 %36, %conv
  store i64 %add, ptr %tls_dump_bytes, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_ktls_handle_tx_skb(ptr nocapture noundef readonly %tls_ctx, ptr noundef %sq, ptr noundef %skb, i32 noundef %datalen, ptr nocapture noundef writeonly %state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 32
  %priv_ctx_tx.i.i.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 4
  %2 = ptrtoint ptr %priv_ctx_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_tx.i.i.i, align 4
  %driver_state.i.i = getelementptr inbounds %struct.tls_offload_context_tx, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %driver_state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_state.i.i, align 4
  %ctx_post_pending.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ctx_post_pending.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctx_post_pending.i, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %ctx_post_pending.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ctx_post_pending.i, align 4
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then, !prof !22

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mlx5e_ktls_tx_post_param_wqes(ptr noundef %sq, ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  %seq5 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %seq5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seq5, align 4
  %expected_seq = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %expected_seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %expected_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.not = icmp eq i32 %16, %14
  br i1 %cmp.not, label %if.end.if.end66_crit_edge, label %if.then12, !prof !22

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then12:                                        ; preds = %if.end
  %call13 = tail call fastcc i32 @mlx5e_ktls_tx_handle_ooo(ptr noundef %5, ptr noundef %sq, i32 noundef %datalen, i32 noundef %14)
  %17 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call13, label %if.then12.if.end66_crit_edge [
    i32 1, label %if.then12.err_out_crit_edge
    i32 2, label %sw.bb
  ]

if.then12.err_out_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.then12.if.end66_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

sw.bb:                                            ; preds = %if.then12
  %decrypted = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %18 = ptrtoint ptr %decrypted to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %bf.load = load i32, ptr %decrypted, align 2
  %19 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  br i1 %tobool14.not, label %sw.bb.cleanup74_crit_edge, label %land.end, !prof !22

sw.bb.cleanup74_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

land.end:                                         ; preds = %sw.bb
  %.b96 = load i1, ptr @mlx5e_ktls_handle_tx_skb.__already_done, align 1
  br i1 %.b96, label %land.end.err_out_crit_edge, label %if.then35, !prof !22

land.end.err_out_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.then35:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mlx5e_ktls_handle_tx_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 476, i32 noundef 9, ptr noundef null) #8
  br label %err_out

if.end66:                                         ; preds = %if.then12.if.end66_crit_edge, %if.end.if.end66_crit_edge
  %add = add i32 %14, %datalen
  %20 = ptrtoint ptr %expected_seq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %expected_seq, align 4
  %tisn = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %tisn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tisn, align 4
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %state, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %24 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.i97.not = icmp eq i16 %27, 0
  br i1 %tobool.i97.not, label %if.end66.cond.end_crit_edge, label %cond.true

if.end66.cond.end_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %gso_segs, align 2
  %conv = zext i16 %29 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end66.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 1, %if.end66.cond.end_crit_edge ]
  %30 = zext i32 %cond to i64
  %tls_encrypted_packets = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %tls_encrypted_packets to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tls_encrypted_packets, align 8
  %add71 = add i64 %32, %30
  store i64 %add71, ptr %tls_encrypted_packets, align 8
  %conv72 = sext i32 %datalen to i64
  %tls_encrypted_bytes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %tls_encrypted_bytes to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %tls_encrypted_bytes, align 16
  %add73 = add i64 %34, %conv72
  store i64 %add73, ptr %tls_encrypted_bytes, align 16
  br label %cleanup74

err_out:                                          ; preds = %if.then35, %land.end.err_out_crit_edge, %if.then12.err_out_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup74

cleanup74:                                        ; preds = %err_out, %cond.end, %sw.bb.cleanup74_crit_edge
  %retval.0 = phi i1 [ false, %err_out ], [ true, %cond.end ], [ true, %sw.bb.cleanup74_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_ktls_tx_post_param_wqes(ptr noundef %sq, ptr noundef %priv_tx, i1 noundef zeroext %skip_static_post, i1 noundef zeroext %fence_first_post) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %skip_static_post, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %wq1.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11
  %pc.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 5
  %0 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pc.i.i, align 128
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 1
  %2 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sz_m1.i.i.i, align 4
  %4 = trunc i32 %3 to i16
  %conv1.i.i.i = and i16 %1, %4
  %conv.i.i.i = zext i16 %conv1.i.i.i to i32
  %strides_offset.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 3
  %5 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %6 to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i, %conv.i.i.i.i
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 2
  %7 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv1.i.i.i.i = zext i16 %8 to i32
  %or.i.i.i.i = or i32 %add.i.i.i.i, %conv1.i.i.i.i
  %sub.i.i.i.i = sub nsw i32 %or.i.i.i.i, %conv.i.i.i.i
  %9 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i.i, i32 %3) #8
  %10 = trunc i32 %9 to i16
  %11 = sub i16 1, %conv1.i.i.i
  %conv2.i.i.i = add i16 %11, %10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv2.i.i.i)
  %cmp.i.i = icmp ult i16 %conv2.i.i.i, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.post_static_params.exit_crit_edge, !prof !23

if.then.post_static_params.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %post_static_params.exit

if.then.i.i:                                      ; preds = %if.then
  %conv.i.i = zext i16 %conv2.i.i.i to i32
  %wqe_info.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 2
  %12 = ptrtoint ptr %wqe_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wqe_info.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %13, i32 %conv.i.i.i
  %add.ptr.i.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %arrayidx.i.i, i32 %conv.i.i
  %cmp733.i.i = icmp ult ptr %arrayidx.i.i, %add.ptr.i.i
  br i1 %cmp733.i.i, label %for.body.lr.ph.i.i, label %if.then.i.i.for.end.i.i_crit_edge

if.then.i.i.for.end.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i.i
  %sqn.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 17
  %log_frag_strides.i.i.i34.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 6
  %log_stride.i.i.i41.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %wi.034.i.i = phi ptr [ %arrayidx.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %wi.034.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %wi.034.i.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %wi.034.i.i, i32 4
  %15 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %wi.034.i.i, i32 8
  %16 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %wi.034.i.i, i32 9
  %17 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %wi.034.i.i, i32 10
  %18 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, align 2
  %.compoundliteral.sroa.614.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %wi.034.i.i, i32 12
  %19 = ptrtoint ptr %.compoundliteral.sroa.614.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %.compoundliteral.sroa.614.0..sroa_idx.i.i, align 4
  %20 = ptrtoint ptr %sqn.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sqn.i.i, align 4
  %22 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pc.i.i, align 2
  %24 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sz_m1.i.i.i, align 4
  %26 = trunc i32 %25 to i16
  %conv1.i.i29.i = and i16 %23, %26
  %conv.i.i30.i = zext i16 %conv1.i.i29.i to i32
  %27 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i32.i = zext i16 %28 to i32
  %add.i.i.i33.i = add nuw nsw i32 %conv.i.i30.i, %conv.i.i.i32.i
  %29 = ptrtoint ptr %log_frag_strides.i.i.i34.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %log_frag_strides.i.i.i34.i, align 2
  %conv1.i.i.i35.i = zext i8 %30 to i32
  %shr.i.i.i36.i = lshr i32 %add.i.i.i33.i, %conv1.i.i.i35.i
  %31 = ptrtoint ptr %wq1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wq1.i.i, align 4
  %arrayidx.i.i.i37.i = getelementptr %struct.mlx5_buf_list, ptr %32, i32 %shr.i.i.i36.i
  %33 = ptrtoint ptr %arrayidx.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i37.i, align 4
  %35 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i39.i = zext i16 %36 to i32
  %and.i.i.i40.i = and i32 %add.i.i.i33.i, %conv2.i.i.i39.i
  %37 = ptrtoint ptr %log_stride.i.i.i41.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %log_stride.i.i.i41.i, align 1
  %conv3.i.i.i42.i = zext i8 %38 to i32
  %shl.i.i.i43.i = shl i32 %and.i.i.i40.i, %conv3.i.i.i42.i
  %add.ptr.i.i.i44.i = getelementptr i8, ptr %34, i32 %shl.i.i.i43.i
  %39 = call ptr @memset(ptr %add.ptr.i.i.i44.i, i32 0, i32 16)
  %40 = load i16, ptr %pc.i.i, align 2
  %conv.i45.i = zext i16 %40 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i45.i, 8
  %41 = ptrtoint ptr %add.ptr.i.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shl.i.i, ptr %add.ptr.i.i.i44.i, align 4
  %shl2.i.i = shl i32 %21, 8
  %or3.i.i = or i32 %shl2.i.i, 1
  %qpn_ds.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i44.i, i32 0, i32 1
  %42 = ptrtoint ptr %qpn_ds.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or3.i.i, ptr %qpn_ds.i.i, align 4
  %43 = load i16, ptr %pc.i.i, align 2
  %inc.i.i = add i16 %43, 1
  store i16 %inc.i.i, ptr %pc.i.i, align 2
  %incdec.ptr.i.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %wi.034.i.i, i32 1
  %cmp7.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp7.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.then.i.i.for.end.i.i_crit_edge
  %conv11.i.i = zext i16 %conv2.i.i.i to i64
  %stats.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %44 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stats.i.i, align 32
  %nop.i.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %nop.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %nop.i.i, align 16
  %add.i.i = add i64 %47, %conv11.i.i
  store i64 %add.i.i, ptr %nop.i.i, align 16
  %48 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %pc.i.i, align 128
  %50 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sz_m1.i.i.i, align 4
  %52 = trunc i32 %51 to i16
  %conv1.i32.i.i = and i16 %49, %52
  %.pre.i = zext i16 %conv1.i32.i.i to i32
  br label %post_static_params.exit

post_static_params.exit:                          ; preds = %for.end.i.i, %if.then.post_static_params.exit_crit_edge
  %conv.i.i16.pre-phi.i = phi i32 [ %conv.i.i.i, %if.then.post_static_params.exit_crit_edge ], [ %.pre.i, %for.end.i.i ]
  %53 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i18.i = zext i16 %54 to i32
  %add.i.i.i19.i = add nuw nsw i32 %conv.i.i16.pre-phi.i, %conv.i.i.i18.i
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 6
  %55 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i20.i = zext i8 %56 to i32
  %shr.i.i.i.i = lshr i32 %add.i.i.i19.i, %conv1.i.i.i20.i
  %57 = ptrtoint ptr %wq1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wq1.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %58, i32 %shr.i.i.i.i
  %59 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %61 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i.i = zext i16 %62 to i32
  %and.i.i.i.i = and i32 %add.i.i.i19.i, %conv2.i.i.i.i
  %log_stride.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 5
  %63 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %64 to i32
  %shl.i.i.i.i = shl i32 %and.i.i.i.i, %conv3.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %60, i32 %shl.i.i.i.i
  %65 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 192)
  %66 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %pc.i.i, align 128
  %sqn.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 17
  %68 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sqn.i, align 4
  %crypto_info.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %priv_tx, i32 0, i32 1
  %tisn.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %priv_tx, i32 0, i32 4
  %70 = ptrtoint ptr %tisn.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tisn.i, align 4
  %key_id.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %priv_tx, i32 0, i32 5
  %72 = ptrtoint ptr %key_id.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %key_id.i, align 4
  tail call void @mlx5e_ktls_build_static_params(ptr noundef %add.ptr.i.i.i.i, i16 noundef zeroext %67, i32 noundef %69, ptr noundef %crypto_info.i, i32 noundef %71, i32 noundef %73, i32 noundef 0, i1 noundef zeroext %fence_first_post, i32 noundef 1) #8
  %wqe_info.i22.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 2
  %74 = ptrtoint ptr %wqe_info.i22.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wqe_info.i22.i, align 4
  %arrayidx.i23.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %75, i32 %conv.i.i16.pre-phi.i
  %76 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx.i23.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i24.i = getelementptr inbounds i8, ptr %arrayidx.i23.i, i32 4
  %77 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i24.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i24.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i25.i = getelementptr inbounds i8, ptr %arrayidx.i23.i, i32 8
  %78 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i25.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 3, ptr %.compoundliteral.sroa.3.0..sroa_idx.i25.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i26.i = getelementptr inbounds i8, ptr %arrayidx.i23.i, i32 9
  %79 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i26.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i26.i, align 1
  %.compoundliteral.sroa.5.0..sroa_idx.i27.i = getelementptr inbounds i8, ptr %arrayidx.i23.i, i32 10
  %80 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i27.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx.i27.i, align 2
  %.compoundliteral.sroa.63.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i23.i, i32 12
  %81 = ptrtoint ptr %.compoundliteral.sroa.63.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %.compoundliteral.sroa.63.0..sroa_idx.i.i, align 4
  %82 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %pc.i.i, align 128
  %add.i = add i16 %83, 3
  store i16 %add.i, ptr %pc.i.i, align 128
  br label %if.end

if.end:                                           ; preds = %post_static_params.exit, %entry.if.end_crit_edge
  %lnot = xor i1 %fence_first_post, true
  %spec.select = or i1 %lnot, %skip_static_post
  %pc.i.i11 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 5
  %84 = ptrtoint ptr %pc.i.i11 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %pc.i.i11, align 128
  %sz_m1.i.i.i12 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 1
  %86 = ptrtoint ptr %sz_m1.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sz_m1.i.i.i12, align 4
  %88 = trunc i32 %87 to i16
  %conv1.i.i.i13 = and i16 %85, %88
  %conv.i.i.i14 = zext i16 %conv1.i.i.i13 to i32
  %strides_offset.i.i.i.i15 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 3
  %89 = ptrtoint ptr %strides_offset.i.i.i.i15 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %strides_offset.i.i.i.i15, align 2
  %conv.i.i.i.i16 = zext i16 %90 to i32
  %add.i.i.i.i17 = add nuw nsw i32 %conv.i.i.i14, %conv.i.i.i.i16
  %frag_sz_m1.i.i.i.i18 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 2
  %91 = ptrtoint ptr %frag_sz_m1.i.i.i.i18 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %frag_sz_m1.i.i.i.i18, align 4
  %conv1.i.i.i.i19 = zext i16 %92 to i32
  %wq1.i.i27 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11
  %log_frag_strides.i.i.i.i28 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 6
  %93 = ptrtoint ptr %log_frag_strides.i.i.i.i28 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %log_frag_strides.i.i.i.i28, align 2
  %conv1.i.i.i18.i = zext i8 %94 to i32
  %shr.i.i.i.i29 = lshr i32 %add.i.i.i.i17, %conv1.i.i.i18.i
  %95 = ptrtoint ptr %wq1.i.i27 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wq1.i.i27, align 4
  %arrayidx.i.i.i.i30 = getelementptr %struct.mlx5_buf_list, ptr %96, i32 %shr.i.i.i.i29
  %97 = ptrtoint ptr %arrayidx.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i.i.i30, align 4
  %and.i.i.i.i32 = and i32 %add.i.i.i.i17, %conv1.i.i.i.i19
  %log_stride.i.i.i.i33 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 5
  %99 = ptrtoint ptr %log_stride.i.i.i.i33 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %log_stride.i.i.i.i33, align 1
  %conv3.i.i.i.i34 = zext i8 %100 to i32
  %shl.i.i.i.i35 = shl i32 %and.i.i.i.i32, %conv3.i.i.i.i34
  %add.ptr.i.i.i.i36 = getelementptr i8, ptr %98, i32 %shl.i.i.i.i35
  %101 = call ptr @memset(ptr %add.ptr.i.i.i.i36, i32 0, i32 32)
  %102 = load i16, ptr %pc.i.i11, align 128
  %sqn.i37 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 17
  %103 = ptrtoint ptr %sqn.i37 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sqn.i37, align 4
  %tisn.i38 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %priv_tx, i32 0, i32 4
  %105 = ptrtoint ptr %tisn.i38 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tisn.i38, align 4
  tail call void @mlx5e_ktls_build_progress_params(ptr noundef %add.ptr.i.i.i.i36, i16 noundef zeroext %102, i32 noundef %104, i32 noundef %106, i1 noundef zeroext %spec.select, i32 noundef 0, i32 noundef 1) #8
  %wqe_info.i20.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 2
  %107 = ptrtoint ptr %wqe_info.i20.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wqe_info.i20.i, align 4
  %arrayidx.i21.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %108, i32 %conv.i.i.i14
  %109 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %arrayidx.i21.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i22.i = getelementptr inbounds i8, ptr %arrayidx.i21.i, i32 4
  %110 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i22.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i22.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i23.i = getelementptr inbounds i8, ptr %arrayidx.i21.i, i32 8
  %111 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i23.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i23.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds i8, ptr %arrayidx.i21.i, i32 9
  %112 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i24.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i24.i, align 1
  %.compoundliteral.sroa.5.0..sroa_idx.i25.i = getelementptr inbounds i8, ptr %arrayidx.i21.i, i32 10
  %113 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i25.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx.i25.i, align 2
  %.compoundliteral.sroa.63.0..sroa_idx.i.i39 = getelementptr inbounds i8, ptr %arrayidx.i21.i, i32 12
  %114 = ptrtoint ptr %.compoundliteral.sroa.63.0..sroa_idx.i.i39 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %.compoundliteral.sroa.63.0..sroa_idx.i.i39, align 4
  %115 = ptrtoint ptr %pc.i.i11 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %pc.i.i11, align 128
  %add.i40 = add i16 %116, 1
  store i16 %add.i40, ptr %pc.i.i11, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_ktls_tx_handle_ooo(ptr noundef %priv_tx, ptr noundef %sq, i32 noundef %datalen, i32 noundef %seq) unnamed_addr #2 align 64 {
entry:
  %rn_be.i = alloca i64, align 8
  %info = alloca %struct.tx_sync_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 32
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %info) #8
  %2 = call ptr @memset(ptr %info, i32 0, i32 224)
  %call = call fastcc i32 @tx_sync_info_get(ptr noundef %priv_tx, i32 noundef %seq, i32 noundef %datalen, ptr noundef nonnull %info)
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call, label %if.end [
    i32 0, label %if.end6
    i32 2, label %if.then4
  ], !prof !30

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tls_skip_no_sync_data = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %tls_skip_no_sync_data to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tls_skip_no_sync_data, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %tls_skip_no_sync_data, align 8
  br label %cleanup48

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tls_drop_no_sync_data = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %tls_drop_no_sync_data to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tls_drop_no_sync_data, align 32
  %inc5 = add i64 %7, 1
  store i64 %inc5, ptr %tls_drop_no_sync_data, align 32
  br label %err_out

if.end6:                                          ; preds = %entry
  %tls_ooo = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %tls_ooo to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tls_ooo, align 8
  %inc7 = add i64 %9, 1
  store i64 %inc7, ptr %tls_ooo, align 8
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rn_be.i) #8
  %12 = ptrtoint ptr %rn_be.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %rn_be.i, align 8
  %rec_seq1.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %priv_tx, i32 0, i32 1, i32 4
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(8) %rec_seq1.i, ptr noundef nonnull dereferenceable(8) %rn_be.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end6.tx_post_resync_params.exit_crit_edge, label %if.then.i

if.end6.tx_post_resync_params.exit_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %tx_post_resync_params.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %rec_seq1.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %11, ptr %rec_seq1.i, align 1
  br label %tx_post_resync_params.exit

tx_post_resync_params.exit:                       ; preds = %if.then.i, %if.end6.tx_post_resync_params.exit_crit_edge
  call fastcc void @mlx5e_ktls_tx_post_param_wqes(ptr noundef %sq, ptr noundef %priv_tx, i1 noundef zeroext %tobool.not.i, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rn_be.i) #8
  %nr_frags = getelementptr inbounds %struct.tx_sync_info, ptr %info, i32 0, i32 2
  %14 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %if.then9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tx_post_resync_params.exit
  %16 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp12135 = icmp sgt i32 %17, 0
  br i1 %cmp12135, label %for.body.lr.ph, label %for.cond.preheader.cleanup48_crit_edge

for.cond.preheader.cleanup48_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup48

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hw_mtu = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 23
  %tisn = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, ptr %priv_tx, i32 0, i32 4
  %wq.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11
  %pc.i85 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 5
  %sz_m1.i.i86 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 1
  %strides_offset.i.i.i.i89 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 3
  %log_frag_strides.i.i.i.i92 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 6
  %frag_sz_m1.i.i.i.i96 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 2
  %log_stride.i.i.i.i99 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 5
  %sqn.i103 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 17
  %pdev.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 20
  %mkey_be.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 21
  %dma_fifo_pc.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 7
  %db.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14
  %dma_fifo_mask.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 12
  %wqe_info.i.i105 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 2
  br label %for.body

if.then9:                                         ; preds = %tx_post_resync_params.exit
  call void @__sanitizer_cov_trace_pc() #10
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
  %wqe_info.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 14, i32 2
  %23 = ptrtoint ptr %wqe_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wqe_info.i.i, align 4
  %idxprom.i.i = zext i16 %conv1.i.i to i32
  %arrayidx.i.i = getelementptr %struct.mlx5e_tx_wqe_info, ptr %24, i32 %idxprom.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx.i.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 4
  %26 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 8
  %27 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 9
  %28 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 10
  %29 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, align 2
  %.compoundliteral.sroa.63.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 12
  %30 = ptrtoint ptr %.compoundliteral.sroa.63.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %.compoundliteral.sroa.63.0..sroa_idx.i.i, align 4
  %sqn.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 17
  %31 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sqn.i, align 4
  %33 = load i16, ptr %pc.i, align 2
  %34 = load i32, ptr %sz_m1.i.i, align 4
  %35 = trunc i32 %34 to i16
  %conv1.i.i.i = and i16 %33, %35
  %conv.i.i.i = zext i16 %conv1.i.i.i to i32
  %strides_offset.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 3
  %36 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %37 to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i, %conv.i.i.i.i
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 6
  %38 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i.i = zext i8 %39 to i32
  %shr.i.i.i.i = lshr i32 %add.i.i.i.i, %conv1.i.i.i.i
  %40 = ptrtoint ptr %wq1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wq1.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %41, i32 %shr.i.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 2
  %44 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i.i = zext i16 %45 to i32
  %and.i.i.i.i = and i32 %add.i.i.i.i, %conv2.i.i.i.i
  %log_stride.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 11, i32 0, i32 5
  %46 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %47 to i32
  %shl.i.i.i.i = shl i32 %and.i.i.i.i, %conv3.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %43, i32 %shl.i.i.i.i
  %48 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 16)
  %49 = load i16, ptr %pc.i, align 2
  %conv.i.i = zext i16 %49 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %50 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shl.i.i, ptr %add.ptr.i.i.i.i, align 4
  %shl2.i.i = shl i32 %32, 8
  %or3.i.i = or i32 %shl2.i.i, 1
  %qpn_ds.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %qpn_ds.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or3.i.i, ptr %qpn_ds.i.i, align 4
  %fm_ce_se.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %fm_ce_se.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 32, ptr %fm_ce_se.i.i, align 1
  %53 = load i16, ptr %pc.i, align 2
  %inc.i.i = add i16 %53, 1
  store i16 %inc.i.i, ptr %pc.i, align 2
  br label %cleanup48

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tx_sync_info, ptr %info, i32 0, i32 3, i32 %i.0136
  %bv_len.i = getelementptr %struct.tx_sync_info, ptr %info, i32 0, i32 3, i32 %i.0136, i32 1
  %54 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0136)
  %tobool14.not = icmp eq i32 %i.0136, 0
  %bv_offset.i.i.i = getelementptr %struct.tx_sync_info, ptr %info, i32 0, i32 3, i32 %i.0136, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %for.body
  %frag_offset.0 = phi i32 [ 0, %for.body ], [ %add, %do.cond.do.body_crit_edge ]
  %n.0 = phi i32 [ 0, %for.body ], [ %inc18, %do.cond.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_offset.0)
  %tobool15 = icmp eq i32 %frag_offset.0, 0
  %spec.select = select i1 %tobool14.not, i1 %tobool15, i1 false
  %56 = ptrtoint ptr %hw_mtu to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_mtu, align 8
  %sub = sub i32 %55, %frag_offset.0
  %58 = call i32 @llvm.umin.i32(i32 %57, i32 %sub)
  %59 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %bv_len.i, align 4
  %60 = ptrtoint ptr %tisn to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tisn, align 4
  %62 = ptrtoint ptr %pc.i85 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %pc.i85, align 128
  %64 = ptrtoint ptr %sz_m1.i.i86 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sz_m1.i.i86, align 4
  %66 = trunc i32 %65 to i16
  %conv1.i.i87 = and i16 %63, %66
  %conv.i.i.i88 = zext i16 %conv1.i.i87 to i32
  %67 = ptrtoint ptr %strides_offset.i.i.i.i89 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %strides_offset.i.i.i.i89, align 2
  %conv.i.i.i.i90 = zext i16 %68 to i32
  %add.i.i.i.i91 = add nuw nsw i32 %conv.i.i.i88, %conv.i.i.i.i90
  %69 = ptrtoint ptr %log_frag_strides.i.i.i.i92 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %log_frag_strides.i.i.i.i92, align 2
  %conv1.i.i.i.i93 = zext i8 %70 to i32
  %shr.i.i.i.i94 = lshr i32 %add.i.i.i.i91, %conv1.i.i.i.i93
  %71 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wq.i, align 4
  %arrayidx.i.i.i.i95 = getelementptr %struct.mlx5_buf_list, ptr %72, i32 %shr.i.i.i.i94
  %73 = ptrtoint ptr %arrayidx.i.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i.i.i.i95, align 4
  %75 = ptrtoint ptr %frag_sz_m1.i.i.i.i96 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %frag_sz_m1.i.i.i.i96, align 4
  %conv2.i.i.i.i97 = zext i16 %76 to i32
  %and.i.i.i.i98 = and i32 %add.i.i.i.i91, %conv2.i.i.i.i97
  %77 = ptrtoint ptr %log_stride.i.i.i.i99 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %log_stride.i.i.i.i99, align 1
  %conv3.i.i.i.i100 = zext i8 %78 to i32
  %shl.i.i.i.i101 = shl i32 %and.i.i.i.i98, %conv3.i.i.i.i100
  %add.ptr.i.i.i.i102 = getelementptr i8, ptr %74, i32 %shl.i.i.i.i101
  %79 = call ptr @memset(ptr %add.ptr.i.i.i.i102, i32 0, i32 32)
  %80 = load i16, ptr %pc.i85, align 128
  %conv.i = zext i16 %80 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or.i = or i32 %shl.i, 35
  %81 = ptrtoint ptr %add.ptr.i.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i, ptr %add.ptr.i.i.i.i102, align 4
  %82 = ptrtoint ptr %sqn.i103 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sqn.i103, align 4
  %shl4.i = shl i32 %83, 8
  %or6.i = or i32 %shl4.i, 2
  %qpn_ds.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i102, i32 0, i32 1
  %84 = ptrtoint ptr %qpn_ds.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or6.i, ptr %qpn_ds.i, align 4
  %shl7.i = shl i32 %61, 8
  %85 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i102, i32 0, i32 5
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %shl7.i, ptr %85, align 4
  %conv9.i = select i1 %spec.select, i8 32, i8 0
  %fm_ce_se.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i102, i32 0, i32 4
  %87 = ptrtoint ptr %fm_ce_se.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv9.i, ptr %fm_ce_se.i, align 1
  %88 = load i32, ptr %bv_len.i, align 4
  %89 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev.i, align 4
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx, align 4
  %93 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = call i32 @dma_map_page_attrs(ptr noundef %90, ptr noundef %92, i32 noundef %94, i32 noundef %88, i32 noundef 1, i32 noundef 0) #8
  %95 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pdev.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %96, i32 noundef %call2.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i.not.i, label %if.then23, label %do.cond, !prof !23

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %98, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #8
  %99 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 %n.0, ptr elementtype(i32) %_refcount.i) #8, !srcloc !31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mlx5e_ktls_tx_handle_ooo, %cleanup31.thread129)) #8
          to label %err_out [label %cleanup31.thread129], !srcloc !28

cleanup31.thread129:                              ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  call void @__page_ref_mod(ptr noundef %98, i32 noundef %n.0) #8
  br label %err_out

do.cond:                                          ; preds = %do.body
  %inc18 = add i32 %n.0, 1
  %data.i = getelementptr inbounds %struct.mlx5e_dump_wqe, ptr %add.ptr.i.i.i.i102, i32 0, i32 1
  %conv17.i = zext i32 %call2.i.i to i64
  %addr.i = getelementptr inbounds %struct.mlx5e_dump_wqe, ptr %add.ptr.i.i.i.i102, i32 0, i32 1, i32 2
  %100 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv17.i, ptr %addr.i, align 8
  %101 = ptrtoint ptr %mkey_be.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mkey_be.i, align 16
  %lkey.i = getelementptr inbounds %struct.mlx5e_dump_wqe, ptr %add.ptr.i.i.i.i102, i32 0, i32 1, i32 1
  %103 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %lkey.i, align 4
  %104 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %88, ptr %data.i, align 8
  %105 = ptrtoint ptr %dma_fifo_pc.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dma_fifo_pc.i.i, align 4
  %inc.i.i104 = add i32 %106, 1
  store i32 %inc.i.i104, ptr %dma_fifo_pc.i.i, align 4
  %107 = ptrtoint ptr %db.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %db.i.i.i, align 4
  %109 = ptrtoint ptr %dma_fifo_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dma_fifo_mask.i.i.i, align 4
  %and.i.i.i = and i32 %110, %106
  %arrayidx.i.i.i = getelementptr %struct.mlx5e_sq_dma, ptr %108, i32 %and.i.i.i
  %111 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call2.i.i, ptr %arrayidx.i.i.i, align 4
  %size2.i.i = getelementptr %struct.mlx5e_sq_dma, ptr %108, i32 %and.i.i.i, i32 1
  %112 = ptrtoint ptr %size2.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %88, ptr %size2.i.i, align 4
  %type.i.i = getelementptr %struct.mlx5e_sq_dma, ptr %108, i32 %and.i.i.i, i32 2
  %113 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %type.i.i, align 4
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx, align 4
  %116 = ptrtoint ptr %wqe_info.i.i105 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wqe_info.i.i105, align 4
  %arrayidx.i.i106 = getelementptr %struct.mlx5e_tx_wqe_info, ptr %117, i32 %conv.i.i.i88
  %118 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %arrayidx.i.i106, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i107 = getelementptr inbounds i8, ptr %arrayidx.i.i106, i32 4
  %119 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i107 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %88, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i107, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i108 = getelementptr inbounds i8, ptr %arrayidx.i.i106, i32 8
  %120 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i108 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i108, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i109 = getelementptr inbounds i8, ptr %arrayidx.i.i106, i32 9
  %121 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i109 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i109, align 1
  %.compoundliteral.sroa.5.0..sroa_idx.i.i110 = getelementptr inbounds i8, ptr %arrayidx.i.i106, i32 10
  %122 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i110 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i110, align 2
  %.compoundliteral.sroa.63.0..sroa_idx.i.i111 = getelementptr inbounds i8, ptr %arrayidx.i.i106, i32 12
  %123 = ptrtoint ptr %.compoundliteral.sroa.63.0..sroa_idx.i.i111 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %115, ptr %.compoundliteral.sroa.63.0..sroa_idx.i.i111, align 4
  %124 = ptrtoint ptr %pc.i85 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %pc.i85, align 128
  %add.i = add i16 %125, 1
  store i16 %add.i, ptr %pc.i85, align 128
  %126 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %bv_offset.i.i.i, align 4
  %add.i114 = add i32 %127, %58
  store i32 %add.i114, ptr %bv_offset.i.i.i, align 4
  %add = add i32 %58, %frag_offset.0
  %cmp28 = icmp ult i32 %add, %55
  br i1 %cmp28, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.cond
  %128 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx, align 4
  %_refcount.i115 = getelementptr inbounds %struct.page, ptr %129, i32 0, i32 3
  %call.i.i.i116 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i115, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %_refcount.i115, i32 1, i32 3, i32 1) #8
  %130 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i115, ptr %_refcount.i115, i32 %n.0, ptr elementtype(i32) %_refcount.i115) #8, !srcloc !31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mlx5e_ktls_tx_handle_ooo, %cleanup31.thread)) #8
          to label %for.inc [label %cleanup31.thread], !srcloc !28

cleanup31.thread:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__page_ref_mod(ptr noundef %129, i32 noundef %n.0) #8
  br label %for.inc

for.inc:                                          ; preds = %cleanup31.thread, %do.end
  %inc37 = add nuw nsw i32 %i.0136, 1
  %131 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %nr_frags, align 4
  %cmp12 = icmp slt i32 %inc37, %132
  br i1 %cmp12, label %for.inc.for.body_crit_edge, label %for.inc.cleanup48_crit_edge

for.inc.cleanup48_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup48

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err_out:                                          ; preds = %cleanup31.thread129, %if.then23, %if.end
  %i.1 = phi i32 [ 0, %if.end ], [ %i.0136, %cleanup31.thread129 ], [ %i.0136, %if.then23 ]
  %nr_frags39 = getelementptr inbounds %struct.tx_sync_info, ptr %info, i32 0, i32 2
  %133 = ptrtoint ptr %nr_frags39 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %nr_frags39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %134)
  %cmp40137 = icmp slt i32 %i.1, %134
  br i1 %cmp40137, label %err_out.for.body41_crit_edge, label %err_out.cleanup48_crit_edge

err_out.cleanup48_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup48

err_out.for.body41_crit_edge:                     ; preds = %err_out
  br label %for.body41

for.body41:                                       ; preds = %put_page.exit.for.body41_crit_edge, %err_out.for.body41_crit_edge
  %i.2138 = phi i32 [ %inc46, %put_page.exit.for.body41_crit_edge ], [ %i.1, %err_out.for.body41_crit_edge ]
  %arrayidx43 = getelementptr %struct.tx_sync_info, ptr %info, i32 0, i32 3, i32 %i.2138
  %135 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx43, align 4
  %137 = getelementptr inbounds %struct.page, ptr %136, i32 0, i32 1
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %137, align 4
  %and.i.i = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !22

if.then.i.i:                                      ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %139, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %136 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %140, %if.end.i.i ]
  %141 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %141, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %142 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.i.i.i.i = icmp eq i32 %143, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !23

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %144 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %144, ptr noundef nonnull @.str.3) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !24
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %145 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %145, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mlx5e_ktls_tx_handle_ooo, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !28

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %141, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %141) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc46 = add nuw nsw i32 %i.2138, 1
  %146 = ptrtoint ptr %nr_frags39 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %nr_frags39, align 4
  %cmp40 = icmp slt i32 %inc46, %147
  br i1 %cmp40, label %put_page.exit.for.body41_crit_edge, label %put_page.exit.cleanup48_crit_edge

put_page.exit.cleanup48_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup48

put_page.exit.for.body41_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body41

cleanup48:                                        ; preds = %put_page.exit.cleanup48_crit_edge, %err_out.cleanup48_crit_edge, %for.inc.cleanup48_crit_edge, %if.then9, %for.cond.preheader.cleanup48_crit_edge, %if.then4
  %retval.0 = phi i32 [ 2, %if.then4 ], [ 0, %if.then9 ], [ 1, %err_out.cleanup48_crit_edge ], [ 0, %for.cond.preheader.cleanup48_crit_edge ], [ 1, %put_page.exit.cleanup48_crit_edge ], [ 0, %for.inc.cleanup48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_create_tis(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ktls_build_static_params(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ktls_build_progress_params(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tx_sync_info_get(ptr nocapture noundef readonly %priv_tx, i32 noundef %tcp_seq, i32 noundef %datalen, ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_tx, align 4
  %lock = getelementptr inbounds %struct.tls_offload_context_tx, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call6 = tail call ptr @tls_get_record(ptr noundef %1, i32 noundef %tcp_seq, ptr noundef %info) #8
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !23

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %add = add i32 %datalen, %tcp_seq
  %end_seq.i = getelementptr inbounds %struct.tls_record_info, ptr %call6, i32 0, i32 1
  %2 = ptrtoint ptr %end_seq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end_seq.i, align 4
  %len.i = getelementptr inbounds %struct.tls_record_info, ptr %call6, i32 0, i32 2
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %3, %5
  %6 = xor i32 %sub.i, -1
  %sub.i66 = add i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i66)
  %cmp.i = icmp slt i32 %sub.i66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i68 = icmp eq i32 %5, 0
  br i1 %cmp.i68, label %if.then19, label %if.else, !prof !23

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %cmp.i, i32 2, i32 1
  br label %out

if.else:                                          ; preds = %if.end
  br i1 %cmp.i, label %if.else.out_crit_edge, label %if.end25

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end25:                                         ; preds = %if.else
  %sub27 = sub i32 %tcp_seq, %sub.i
  %sync_len = getelementptr inbounds %struct.tx_sync_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %sync_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub27, ptr %sync_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub27)
  %cmp2976 = icmp sgt i32 %sub27, 0
  br i1 %cmp2976, label %if.end25.while.body_crit_edge, label %if.end25.while.end_crit_edge

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  br label %while.body

while.body:                                       ; preds = %get_page.exit.while.body_crit_edge, %if.end25.while.body_crit_edge
  %i.078 = phi i32 [ %inc, %get_page.exit.while.body_crit_edge ], [ 0, %if.end25.while.body_crit_edge ]
  %remaining.077 = phi i32 [ %sub33, %get_page.exit.while.body_crit_edge ], [ %sub27, %if.end25.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.tls_record_info, ptr %call6, i32 0, i32 4, i32 %i.078
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
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !22

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %15 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %16, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !23

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.4) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !32
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@tx_sync_info_get, %if.then.i.i.i.i)) #8
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !28

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__page_ref_mod(ptr noundef %14, i32 noundef 1) #8
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %bv_len.i = getelementptr %struct.tls_record_info, ptr %call6, i32 0, i32 4, i32 %i.078, i32 1
  %19 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bv_len.i, align 4
  %sub33 = sub i32 %remaining.077, %20
  %inc = add i32 %i.078, 1
  %arrayidx35 = getelementptr %struct.tx_sync_info, ptr %info, i32 0, i32 3, i32 %i.078
  %21 = call ptr @memcpy(ptr %arrayidx35, ptr %arrayidx, i32 12)
  %cmp29 = icmp sgt i32 %sub33, 0
  br i1 %cmp29, label %get_page.exit.while.body_crit_edge, label %get_page.exit.while.end_crit_edge

get_page.exit.while.end_crit_edge:                ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

get_page.exit.while.body_crit_edge:               ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %get_page.exit.while.end_crit_edge, %if.end25.while.end_crit_edge
  %remaining.0.lcssa = phi i32 [ %sub27, %if.end25.while.end_crit_edge ], [ %sub33, %get_page.exit.while.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %if.end25.while.end_crit_edge ], [ %inc, %get_page.exit.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0.lcssa)
  %cmp36 = icmp slt i32 %remaining.0.lcssa, 0
  br i1 %cmp36, label %if.then38, label %while.end.if.end42_crit_edge

while.end.if.end42_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then38:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub40 = add i32 %i.0.lcssa, -1
  %bv_len.i72 = getelementptr %struct.tx_sync_info, ptr %info, i32 0, i32 3, i32 %sub40, i32 1
  %22 = ptrtoint ptr %bv_len.i72 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_len.i72, align 4
  %add.i = add i32 %23, %remaining.0.lcssa
  store i32 %add.i, ptr %bv_len.i72, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %while.end.if.end42_crit_edge
  %nr_frags = getelementptr inbounds %struct.tx_sync_info, ptr %info, i32 0, i32 2
  %24 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.0.lcssa, ptr %nr_frags, align 4
  br label %out

out:                                              ; preds = %if.end42, %if.else.out_crit_edge, %if.then19, %entry.out_crit_edge
  %ret.0 = phi i32 [ %cond, %if.then19 ], [ 0, %if.end42 ], [ 1, %entry.out_crit_edge ], [ 1, %if.else.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tls_get_record(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_tx.c", i32 476, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h", i32 450, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h", i32 304, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/mm.h", i32 717, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2154274316, i64 2154274799, i64 2154274353, i64 2154274409, i64 2154274443, i64 2154274467, i64 2154274508, i64 2154274529, i64 2154274557, i64 2154274591}
!25 = !{i64 2148352262}
!26 = !{i64 2148266995, i64 2148267027, i64 2148267056, i64 2148267090, i64 2148267121, i64 2148267144}
!27 = !{i64 2148352491}
!28 = !{i64 2148745625, i64 2148745630, i64 2148745643, i64 2148745687, i64 2148745721, i64 2148745742}
!29 = !{i8 0, i8 2}
!30 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!31 = !{i64 2148263810, i64 2148263836, i64 2148263865, i64 2148263899, i64 2148263930, i64 2148263953}
!32 = !{i64 2154294228, i64 2154294712, i64 2154294265, i64 2154294321, i64 2154294355, i64 2154294379, i64 2154294420, i64 2154294441, i64 2154294469, i64 2154294503}
