; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.135 }
%struct.atomic_t = type { i32 }
%union.anon.135 = type { i32 }
%struct.flowc_packed = type { %struct.fw_flowc_wr, [16 x %struct.fw_flowc_mnemval] }
%struct.fw_flowc_wr = type { i32, i32, [0 x %struct.fw_flowc_mnemval] }
%struct.fw_flowc_mnemval = type { i8, [3 x i8], i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.chtls_sock = type { ptr, ptr, ptr, ptr, %struct.sk_buff_head, ptr, ptr, ptr, ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, ptr, %struct.chtls_hws, %struct.synq, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.chtls_hws = type { %struct.sk_buff_head, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, %struct.tls_scmd, %union.anon.194 }
%struct.tls_scmd = type { i32, i32 }
%union.anon.194 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.synq = type { ptr, ptr }
%struct.chtls_dev = type { %struct.tls_toe_device, %struct.list_head, ptr, ptr, [32 x ptr], %struct.spinlock, ptr, ptr, i32, ptr, %struct.idr, %struct.idr, %struct.spinlock, [8 x ptr], [32 x ptr], ptr, %struct.sk_buff_head, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.key_map, i32, [104 x i8] }
%struct.tls_toe_device = type { [32 x i8], %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.key_map = type { ptr, i32, i32, i32, %struct.spinlock }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.200, %struct.anon.201, %struct.anon.202, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.198, %struct.anon.199, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.198 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.199 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.200 = type { i32, i32, i64 }
%struct.anon.201 = type { i32, i32, i64 }
%struct.anon.202 = type { i32, i32 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.150, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.150 = type { %struct.atomic_t }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.208, i32 }
%union.anon.208 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.cpl_close_con_req = type { %struct.work_request_hdr, %union.opcode_tid, i32 }
%struct.work_request_hdr = type { i32, i32, i64 }
%union.opcode_tid = type { i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.153, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.151 }
%union.anon.4 = type { ptr }
%union.anon.151 = type { i64 }
%union.anon.153 = type { ptr }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.anon.144 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.125, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.125 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.cpl_rx_data_ack = type { %struct.work_request_hdr, %union.opcode_tid, i32 }

@send_tx_flowc_wr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@chtls_tcp_push.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@skb_entail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_sendmsg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_sendpage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcp_prot = external dso_local local_unnamed_addr global %struct.proto, align 4
@chtls_recvmsg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@send_flowc_wr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@create_flowc_wr_skb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@send_or_defer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls.h\00", [39 x i8] zeroinitializer }, align 32
@csk_flag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nos_ivs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@make_tlstx_data_wr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_expansion_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tls_copy_ivs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tls_copy_ivs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014MAX IVs in PAGE exceeded %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tls_copy_ivs\00", [19 x i8] zeroinitializer }, align 32
@tls_copy_ivs._entry_ptr = internal global ptr @tls_copy_ivs._entry, section ".printk_index", align 4
@tls_copy_ivs._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s : Page allocation for IVs failed\0A\00", [57 x i8] zeroinitializer }, align 32
@tls_copy_ivs._entry_ptr.7 = internal global ptr @tls_copy_ivs._entry.5, section ".printk_index", align 4
@tls_copy_tx_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tls_tx_data_wr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@make_tx_data_wr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@should_push.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@push_frames_if_head.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@get_record_skb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@peekmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 1684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016TCP(%s:%d), race in MSG_PEEK.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"peekmsg\00", [24 x i8] zeroinitializer }, align 32
@peekmsg._entry_ptr = internal global ptr @peekmsg._entry, section ".printk_index", align 4
@chtls_pt_recvmsg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_cleanup_rbuf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_select_window.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.send_tx_flowc_wr = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 6, i32 9, i32 4, i32 4, i32 5, i32 8, i32 4, i32 7], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 20, i64 21, i64 22, i64 24]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 171, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant [60 x i8] c"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 547, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 235, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 259, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 717, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 230, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 214, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 2789, i32 6 }
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 698, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1160, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [63 x i8] c"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1683, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant [30 x i8] c"switch.table.send_tx_flowc_wr\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @peekmsg._entry, ptr @peekmsg._entry_ptr, ptr @tls_copy_ivs._entry, ptr @tls_copy_ivs._entry.5, ptr @tls_copy_ivs._entry_ptr, ptr @tls_copy_ivs._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @switch.table.send_tx_flowc_wr], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_copy_ivs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_copy_ivs._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peekmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.send_tx_flowc_wr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @send_tx_flowc_wr(ptr noundef %sk, i32 noundef %compl, i32 %snd_nxt, i32 %rcv_nxt) local_unnamed_addr #0 align 64 {
entry:
  %sflowc = alloca %struct.flowc_packed, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %sflowc) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b234 = load i1, ptr @send_tx_flowc_wr.__warned, align 1
  br i1 %.b234, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @send_tx_flowc_wr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 171, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %cdev = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 1
  %4 = call ptr @memset(ptr %sflowc, i32 0, i32 136)
  %5 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cdev, align 4
  %lldi = getelementptr inbounds %struct.chtls_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lldi, align 4
  %pf = getelementptr inbounds %struct.cxgb4_lld_info, ptr %8, i32 0, i32 30
  %9 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pf, align 4
  %shl = shl i32 %10, 8
  %val = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 1, i32 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl, ptr %val, align 4
  %arrayidx18 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 2
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx18, align 4
  %tx_chan = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 23
  %13 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_chan, align 8
  %val22 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 2, i32 1
  %15 = ptrtoint ptr %val22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val22, align 4
  %arrayidx28 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 3
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %arrayidx28, align 4
  %val33 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 3, i32 1
  %17 = ptrtoint ptr %val33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %val33, align 4
  %arrayidx39 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 4
  %18 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %arrayidx39, align 4
  %rss_qid = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 18
  %19 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rss_qid, align 4
  %val43 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 4, i32 1
  %21 = ptrtoint ptr %val43 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val43, align 4
  %arrayidx49 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 5
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %arrayidx49, align 4
  %snd_nxt51 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %23 = ptrtoint ptr %snd_nxt51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %snd_nxt51, align 4
  %val54 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 5, i32 1
  %25 = ptrtoint ptr %val54 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val54, align 4
  %arrayidx60 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 6
  %26 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %arrayidx60, align 4
  %rcv_nxt62 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %27 = ptrtoint ptr %rcv_nxt62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rcv_nxt62, align 8
  %val65 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 6, i32 1
  %29 = ptrtoint ptr %val65 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %val65, align 4
  %arrayidx71 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 7
  %30 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 6, ptr %arrayidx71, align 4
  %sndbuf = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 25
  %31 = ptrtoint ptr %sndbuf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sndbuf, align 8
  %val75 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 7, i32 1
  %33 = ptrtoint ptr %val75 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val75, align 4
  %arrayidx81 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 8
  %34 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 7, ptr %arrayidx81, align 4
  %mss_cache = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %35 = ptrtoint ptr %mss_cache to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mss_cache, align 4
  %val85 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 8, i32 1
  %37 = ptrtoint ptr %val85 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val85, align 4
  %arrayidx91 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 9
  %38 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 9, ptr %arrayidx91, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %39 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load volatile i8, ptr %skc_state, align 2
  %switch.tableidx = add i8 %40, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %41 = icmp ult i8 %switch.tableidx, 8
  br i1 %41, label %switch.lookup, label %do.end7.tcp_state_to_flowc_state.exit_crit_edge

do.end7.tcp_state_to_flowc_state.exit_crit_edge:  ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcp_state_to_flowc_state.exit

switch.lookup:                                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %42 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.send_tx_flowc_wr, i32 0, i32 %42
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %tcp_state_to_flowc_state.exit

tcp_state_to_flowc_state.exit:                    ; preds = %switch.lookup, %do.end7.tcp_state_to_flowc_state.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %do.end7.tcp_state_to_flowc_state.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %val96 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 9, i32 1
  %44 = ptrtoint ptr %val96 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i, ptr %val96, align 4
  %snd_wscale = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 4
  %45 = ptrtoint ptr %snd_wscale to i32
  call void @__asan_loadN_noabort(i32 %45, i32 3)
  %bf.load = load i24, ptr %snd_wscale, align 4
  %46 = and i24 %bf.load, 61440
  %tobool100.not = icmp eq i24 %46, 0
  br i1 %tobool100.not, label %tcp_state_to_flowc_state.exit.if.end119_crit_edge, label %do.body102

tcp_state_to_flowc_state.exit.if.end119_crit_edge: ; preds = %tcp_state_to_flowc_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

do.body102:                                       ; preds = %tcp_state_to_flowc_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx104 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 10
  %47 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 14, ptr %arrayidx104, align 4
  %48 = zext i24 %bf.load to i32
  %49 = lshr i32 %48, 12
  %conv112 = and i32 %49, 15
  %val115 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 10, i32 1
  %50 = ptrtoint ptr %val115 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv112, ptr %val115, align 4
  br label %if.end119

if.end119:                                        ; preds = %do.body102, %tcp_state_to_flowc_state.exit.if.end119_crit_edge
  %paramidx.0 = phi i32 [ 10, %do.body102 ], [ 9, %tcp_state_to_flowc_state.exit.if.end119_crit_edge ]
  %ulp_mode = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 22
  %51 = ptrtoint ptr %ulp_mode to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ulp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %52)
  %cmp = icmp eq i32 %52, 8
  br i1 %cmp, label %do.body122, label %if.end119.if.end132_crit_edge

if.end119.if.end132_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

do.body122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx124 = getelementptr %struct.fw_flowc_wr, ptr %sflowc, i32 0, i32 2, i32 %paramidx.0
  %53 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 15, ptr %arrayidx124, align 4
  %val128 = getelementptr %struct.fw_flowc_wr, ptr %sflowc, i32 0, i32 2, i32 %paramidx.0, i32 2
  %54 = ptrtoint ptr %val128 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8, ptr %val128, align 4
  %inc129 = add nuw nsw i32 %paramidx.0, 1
  br label %if.end132

if.end132:                                        ; preds = %do.body122, %if.end119.if.end132_crit_edge
  %paramidx.1 = phi i32 [ %inc129, %do.body122 ], [ %paramidx.0, %if.end119.if.end132_crit_edge ]
  %fcplenmax = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 37, i32 18
  %55 = ptrtoint ptr %fcplenmax to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fcplenmax, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool133.not = icmp eq i32 %56, 0
  br i1 %tobool133.not, label %if.end132.if.end147_crit_edge, label %do.body135

if.end132.if.end147_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

do.body135:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx137 = getelementptr %struct.fw_flowc_wr, ptr %sflowc, i32 0, i32 2, i32 %paramidx.1
  %57 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 8, ptr %arrayidx137, align 4
  %58 = ptrtoint ptr %fcplenmax to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fcplenmax, align 8
  %val143 = getelementptr %struct.fw_flowc_wr, ptr %sflowc, i32 0, i32 2, i32 %paramidx.1, i32 2
  %60 = ptrtoint ptr %val143 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %val143, align 4
  %inc144 = add nuw nsw i32 %paramidx.1, 1
  br label %if.end147

if.end147:                                        ; preds = %do.body135, %if.end132.if.end147_crit_edge
  %paramidx.2 = phi i32 [ %inc144, %do.body135 ], [ %paramidx.1, %if.end132.if.end147_crit_edge ]
  %61 = shl nuw nsw i32 %paramidx.2, 3
  %div.i237.lhs.trunc = add nuw nsw i32 %61, 23
  %div.i237238241 = lshr i32 %div.i237.lhs.trunc, 4
  %mul.i = and i32 %div.i237.lhs.trunc, -16
  %shl149 = shl i32 %compl, 21
  %or = or i32 %shl149, %paramidx.2
  %or151 = or i32 %or, 167772160
  %62 = ptrtoint ptr %sflowc to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or151, ptr %sflowc, align 4
  %tid = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 19
  %63 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tid, align 8
  %shl153 = shl i32 %64, 8
  %or154 = or i32 %div.i237238241, %shl153
  %flowid_len16 = getelementptr inbounds %struct.fw_flowc_wr, ptr %sflowc, i32 0, i32 1
  %65 = ptrtoint ptr %flowid_len16 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or154, ptr %flowid_len16, align 4
  %66 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end147.do.end7.i_crit_edge

if.end147.do.end7.i_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.end147
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b47.i = load i1, ptr @send_flowc_wr.__warned, align 1
  br i1 %.b47.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @send_flowc_wr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 109, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %if.end147.do.end7.i_crit_edge
  %68 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.end7.i.do.end7.i.i_crit_edge

do.end7.i.do.end7.i.i_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %do.end7.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b15.i.i = load i1, ptr @csk_flag.__warned, align 1
  br i1 %.b15.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @csk_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 483, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %do.end7.i.do.end7.i.i_crit_edge
  %70 = ptrtoint ptr %69 to i32
  %and.i.i = and i32 %70, -4
  %71 = inttoptr i32 %and.i.i to ptr
  %flags.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %flags.i.i.i, align 4
  %74 = and i32 %73, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool.i.not.i.i, label %do.end7.i.i.if.end18.i_crit_edge, label %csk_flag.exit.i

do.end7.i.i.if.end18.i_crit_edge:                 ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

csk_flag.exit.i:                                  ; preds = %do.end7.i.i
  %75 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %flags.i.i.i, align 4
  %77 = and i32 %76, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool12.not.i = icmp eq i32 %77, 0
  br i1 %tobool12.not.i, label %csk_flag.exit.i.if.end18.i_crit_edge, label %if.then13.i

csk_flag.exit.i.if.end18.i_crit_edge:             ; preds = %csk_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then13.i:                                      ; preds = %csk_flag.exit.i
  %call14.i = call fastcc ptr @create_flowc_wr_skb(ptr noundef %sk, ptr noundef nonnull %sflowc, i32 noundef %mul.i) #10
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.then13.i.send_flowc_wr.exit_crit_edge, label %if.end17.i

if.then13.i.send_flowc_wr.exit_crit_edge:         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_flowc_wr.exit

if.end17.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_entail(ptr noundef %sk, ptr noundef nonnull %call14.i, i32 noundef 130) #10
  br label %send_flowc_wr.exit

if.end18.i:                                       ; preds = %csk_flag.exit.i.if.end18.i_crit_edge, %do.end7.i.i.if.end18.i_crit_edge
  %78 = ptrtoint ptr %67 to i32
  %and.i = and i32 %78, -4
  %79 = inttoptr i32 %and.i to ptr
  %egress_dev.i = getelementptr inbounds %struct.chtls_sock, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %egress_dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %egress_dev.i, align 4
  %txq_idx.i = getelementptr inbounds %struct.chtls_sock, ptr %79, i32 0, i32 17
  %82 = ptrtoint ptr %txq_idx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %txq_idx.i, align 8
  %call19.i = call i32 @cxgb4_immdata_send(ptr noundef %81, i32 noundef %83, ptr noundef nonnull %sflowc, i32 noundef %mul.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.send_flowc_wr.exit_crit_edge, label %if.end22.i

if.end18.i.send_flowc_wr.exit_crit_edge:          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_flowc_wr.exit

if.end22.i:                                       ; preds = %if.end18.i
  %call23.i = call fastcc ptr @create_flowc_wr_skb(ptr noundef %sk, ptr noundef nonnull %sflowc, i32 noundef %mul.i) #10
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %if.end22.i.send_flowc_wr.exit_crit_edge, label %if.end26.i

if.end22.i.send_flowc_wr.exit_crit_edge:          ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_flowc_wr.exit

if.end26.i:                                       ; preds = %if.end22.i
  %84 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i49.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool.not.i50.i = icmp eq i32 %call.i49.i, 0
  br i1 %tobool.not.i50.i, label %land.lhs.true.i53.i, label %if.end26.i.send_or_defer.exit.i_crit_edge

if.end26.i.send_or_defer.exit.i_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_or_defer.exit.i

land.lhs.true.i53.i:                              ; preds = %if.end26.i
  %call2.i51.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i51.i)
  %tobool3.not.i52.i = icmp eq i32 %call2.i51.i, 0
  br i1 %tobool3.not.i52.i, label %land.lhs.true.i53.i.send_or_defer.exit.i_crit_edge, label %land.lhs.true4.i54.i

land.lhs.true.i53.i.send_or_defer.exit.i_crit_edge: ; preds = %land.lhs.true.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_or_defer.exit.i

land.lhs.true4.i54.i:                             ; preds = %land.lhs.true.i53.i
  %.b1.i.i = load i1, ptr @send_or_defer.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true4.i54.i.send_or_defer.exit.i_crit_edge, label %if.then.i55.i

land.lhs.true4.i54.i.send_or_defer.exit.i_crit_edge: ; preds = %land.lhs.true4.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_or_defer.exit.i

if.then.i55.i:                                    ; preds = %land.lhs.true4.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @send_or_defer.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 547, ptr noundef nonnull @.str.1) #10
  br label %send_or_defer.exit.i

send_or_defer.exit.i:                             ; preds = %if.then.i55.i, %land.lhs.true4.i54.i.send_or_defer.exit.i_crit_edge, %land.lhs.true.i53.i.send_or_defer.exit.i_crit_edge, %if.end26.i.send_or_defer.exit.i_crit_edge
  %86 = ptrtoint ptr %85 to i32
  %and.i56.i = and i32 %86, -4
  %87 = inttoptr i32 %and.i56.i to ptr
  %egress_dev13.i.i = getelementptr inbounds %struct.chtls_sock, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %egress_dev13.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %egress_dev13.i.i, align 4
  %call14.i.i = call i32 @cxgb4_ofld_send(ptr noundef %89, ptr noundef nonnull %call23.i) #10
  br label %send_flowc_wr.exit

send_flowc_wr.exit:                               ; preds = %send_or_defer.exit.i, %if.end22.i.send_flowc_wr.exit_crit_edge, %if.end18.i.send_flowc_wr.exit_crit_edge, %if.end17.i, %if.then13.i.send_flowc_wr.exit_crit_edge
  %retval.0.i236 = phi i32 [ 0, %if.end17.i ], [ %div.i237238241, %send_or_defer.exit.i ], [ -12, %if.then13.i.send_flowc_wr.exit_crit_edge ], [ %div.i237238241, %if.end18.i.send_flowc_wr.exit_crit_edge ], [ -12, %if.end22.i.send_flowc_wr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %sflowc) #10
  ret i32 %retval.0.i236
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chtls_push_frames(ptr noundef %csk, i32 noundef %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csk, align 8
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup201_crit_edge, !prof !88

entry.cleanup201_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup201

if.end:                                           ; preds = %entry
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 72
  %4 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end7.i_crit_edge

if.end.do.end7.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b15.i = load i1, ptr @csk_flag.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @csk_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 483, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %if.end.do.end7.i_crit_edge
  %6 = ptrtoint ptr %5 to i32
  %and.i300 = and i32 %6, -4
  %7 = inttoptr i32 %and.i300 to ptr
  %flags.i.i = getelementptr inbounds %struct.chtls_sock, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %do.end7.i.while.cond.preheader_crit_edge, label %csk_flag.exit

do.end7.i.while.cond.preheader_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

csk_flag.exit:                                    ; preds = %do.end7.i
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i.i, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %phi.cmp = icmp eq i32 %13, 0
  br i1 %phi.cmp, label %csk_flag.exit.while.cond.preheader_crit_edge, label %csk_flag.exit.cleanup201_crit_edge, !prof !88

csk_flag.exit.cleanup201_crit_edge:               ; preds = %csk_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup201

csk_flag.exit.while.cond.preheader_crit_edge:     ; preds = %csk_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %csk_flag.exit.while.cond.preheader_crit_edge, %do.end7.i.while.cond.preheader_crit_edge
  %wr_credits = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 12
  %14 = ptrtoint ptr %wr_credits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wr_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not379 = icmp eq i32 %15, 0
  br i1 %tobool15.not379, label %while.cond.preheader.while.end_crit_edge, label %land.lhs.true.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.lhs.true.lr.ph:                              ; preds = %while.cond.preheader
  %txq = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 4
  %qlen.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 4, i32 1
  %ulp_mode.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 22
  %flags.i311 = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 10
  %wr_unacked = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 13
  %wr_nondata = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 15
  %txq_idx = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 17
  %ofld94 = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 2
  %txqid = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 1
  %wr_skb_head.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 5
  %wr_skb_tail.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %comp)
  %tobool120.not = icmp eq i32 %comp, 0
  %wr_max_credits = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 14
  %sk_allocation.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 41
  %nonagle.i.i = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 37
  %snd_nxt147 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 10
  %lsndtime = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 19
  %egress_dev = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 3
  %l2t_entry = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 2
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cleanup.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %wr_size.0382 = phi i32 [ 16, %land.lhs.true.lr.ph ], [ %wr_size.2, %cleanup.land.lhs.true_crit_edge ]
  %total_size.0380 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %add183, %cleanup.land.lhs.true_crit_edge ]
  %16 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txq, align 4
  %cmp.i = icmp eq ptr %17, %txq
  %tobool17.not376 = icmp eq ptr %17, null
  %tobool17.not = or i1 %cmp.i, %tobool17.not376
  br i1 %tobool17.not, label %land.lhs.true.while.end_crit_edge, label %land.rhs

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 4
  %20 = and i16 %19, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool18.not = icmp eq i16 %20, 0
  br i1 %tobool18.not, label %land.rhs.while.body_crit_edge, label %lor.rhs

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %21 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp ugt i32 %22, 1
  br i1 %cmp, label %lor.rhs.while.body_crit_edge, label %lor.rhs.while.end_crit_edge

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %peeked.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 12
  %25 = ptrtoint ptr %peeked.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %peeked.i, align 2
  %26 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i301 = icmp ne i8 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 304, i32 %24)
  %cmp.i302 = icmp ugt i32 %24, 304
  %or.cond.i = select i1 %tobool.not.i301, i1 true, i1 %cmp.i302
  br i1 %or.cond.i, label %while.body.if.then27_crit_edge, label %if.end.i

while.body.if.then27_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.end.i:                                         ; preds = %while.body
  %27 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool4.not.i = icmp eq i16 %27, 0
  br i1 %tobool4.not.i, label %if.end.i.if.else_crit_edge, label %if.then7.i, !prof !89

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then7.i:                                       ; preds = %if.end.i
  %28 = ptrtoint ptr %ulp_mode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ulp_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %cmp8.i = icmp eq i32 %29, 8
  br i1 %cmp8.i, label %land.lhs.true.i303, label %if.then7.i.is_ofld_imm.exit_crit_edge

if.then7.i.is_ofld_imm.exit_crit_edge:            ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_ofld_imm.exit

land.lhs.true.i303:                               ; preds = %if.then7.i
  %ofld.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 21
  %30 = ptrtoint ptr %ofld.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ofld.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool13.not.i = icmp eq i8 %31, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i303.is_ofld_imm.exit_crit_edge, label %if.then14.i

land.lhs.true.i303.is_ofld_imm.exit_crit_edge:    ; preds = %land.lhs.true.i303
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_ofld_imm.exit

if.then14.i:                                      ; preds = %land.lhs.true.i303
  call void @__sanitizer_cov_trace_pc() #12
  %call.i304 = tail call fastcc i32 @chtls_wr_size(ptr noundef %csk, ptr noundef nonnull %17, i1 noundef zeroext true) #10
  br label %is_ofld_imm.exit

is_ofld_imm.exit:                                 ; preds = %if.then14.i, %land.lhs.true.i303.is_ofld_imm.exit_crit_edge, %if.then7.i.is_ofld_imm.exit_crit_edge
  %call.pn.i = phi i32 [ %call.i304, %if.then14.i ], [ 16, %land.lhs.true.i303.is_ofld_imm.exit_crit_edge ], [ 16, %if.then7.i.is_ofld_imm.exit_crit_edge ]
  %length.0.i = add i32 %call.pn.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %length.0.i)
  %cmp17.i = icmp ult i32 %length.0.i, 272
  br i1 %cmp17.i, label %is_ofld_imm.exit.if.else_crit_edge, label %is_ofld_imm.exit.if.then27_crit_edge

is_ofld_imm.exit.if.then27_crit_edge:             ; preds = %is_ofld_imm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

is_ofld_imm.exit.if.else_crit_edge:               ; preds = %is_ofld_imm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then27:                                        ; preds = %is_ofld_imm.exit.if.then27_crit_edge, %while.body.if.then27_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15, i32 0, i32 19
  %34 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %35 to i32
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %ofld = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 21
  %38 = ptrtoint ptr %ofld to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ofld, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool31.not = icmp eq i8 %39, 0
  br i1 %tobool31.not, label %if.then27.if.end34_crit_edge, label %if.then32

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call fastcc i32 @chtls_wr_size(ptr noundef %csk, ptr noundef nonnull %17, i1 noundef zeroext false)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then27.if.end34_crit_edge
  %wr_size.1 = phi i32 [ %call33, %if.then32 ], [ %wr_size.0382, %if.then27.if.end34_crit_edge ]
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 17
  %40 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nr_frags.i, align 2
  %conv.i306 = zext i8 %43 to i32
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i, align 8
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i, align 8
  %48 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i309 = zext i16 %49 to i32
  %add.ptr.i.i310 = getelementptr i8, ptr %47, i32 %conv.i.i309
  %cmp.not.i = icmp ne ptr %45, %add.ptr.i.i310
  %inc.i = zext i1 %cmp.not.i to i32
  %div8.i = lshr i32 %sub.ptr.sub.i, 3
  %spec.select.i = add nsw i32 %conv.i306, -1
  %dec.i.i = add nsw i32 %spec.select.i, %inc.i
  %mul.i.i = mul nsw i32 %dec.i.i, 3
  %div4.i.i = lshr i32 %mul.i.i, 1
  %and.i.i = and i32 %dec.i.i, 1
  %add.i.i = add nuw nsw i32 %div8.i, 2
  %add1.i.i = add nuw nsw i32 %add.i.i, %and.i.i
  %add.i = add nuw i32 %add1.i.i, %div4.i.i
  %mul = shl i32 %add.i, 3
  br label %if.end44

if.else:                                          ; preds = %is_ofld_imm.exit.if.else_crit_edge, %if.end.i.if.else_crit_edge
  %ofld39 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 21
  %50 = ptrtoint ptr %ofld39 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ofld39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool40.not = icmp eq i8 %51, 0
  br i1 %tobool40.not, label %if.else.if.end44_crit_edge, label %if.then41

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call fastcc i32 @chtls_wr_size(ptr noundef %csk, ptr noundef nonnull %17, i1 noundef zeroext false)
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.else.if.end44_crit_edge, %if.end34
  %wr_size.2 = phi i32 [ %call42, %if.then41 ], [ %wr_size.0382, %if.else.if.end44_crit_edge ], [ %wr_size.1, %if.end34 ]
  %credit_len.0 = phi i32 [ %24, %if.then41 ], [ %24, %if.else.if.end44_crit_edge ], [ %mul, %if.end34 ]
  %immdlen.0 = phi i32 [ %24, %if.then41 ], [ %24, %if.else.if.end44_crit_edge ], [ %sub.ptr.sub.i, %if.end34 ]
  %tobool19.not.i122.i = phi i1 [ false, %if.then41 ], [ true, %if.else.if.end44_crit_edge ], [ true, %if.end34 ]
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags, align 4
  %54 = and i16 %53, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool50.not = icmp eq i16 %54, 0
  %add = select i1 %tobool50.not, i32 0, i32 %wr_size.2
  %spec.select = add i32 %credit_len.0, 15
  %sub = add i32 %spec.select, %add
  %div297 = lshr i32 %sub, 4
  %55 = ptrtoint ptr %flags.i311 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags.i311, align 4
  %57 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool61.not = icmp eq i32 %57, 0
  br i1 %tobool61.not, label %if.then62, label %if.end44.if.end72_crit_edge

if.end44.if.end72_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then62:                                        ; preds = %if.end44
  %call63 = tail call i32 @send_tx_flowc_wr(ptr noundef %1, i32 noundef 1, i32 undef, i32 undef)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 1
  br i1 %cmp64, label %if.then62.while.end_crit_edge, label %if.end67

if.then62.while.end_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end67:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %wr_credits to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wr_credits, align 4
  %sub69 = sub i32 %59, %call63
  store i32 %sub69, ptr %wr_credits, align 4
  %60 = ptrtoint ptr %wr_unacked to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %wr_unacked, align 8
  %add70 = add i32 %61, %call63
  store i32 %add70, ptr %wr_unacked, align 8
  %62 = ptrtoint ptr %wr_nondata to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wr_nondata, align 8
  %add71 = add i32 %63, %call63
  store i32 %add71, ptr %wr_nondata, align 8
  %64 = ptrtoint ptr %flags.i311 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags.i311, align 4
  %or.i.i = or i32 %65, 128
  store i32 %or.i.i, ptr %flags.i311, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.end67, %if.end44.if.end72_crit_edge
  %66 = ptrtoint ptr %wr_credits to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wr_credits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %div297)
  %cmp74 = icmp ult i32 %67, %div297
  br i1 %cmp74, label %if.then76, label %if.end91

if.then76:                                        ; preds = %if.end72
  %ofld80 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 21
  %68 = ptrtoint ptr %ofld80 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ofld80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool82.not = icmp eq i8 %69, 0
  br i1 %tobool82.not, label %if.then76.while.end_crit_edge, label %land.lhs.true83

if.then76.while.end_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.lhs.true83:                                  ; preds = %if.then76
  %iv = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 22
  %70 = ptrtoint ptr %iv to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %iv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool87.not = icmp eq i8 %71, 0
  br i1 %tobool87.not, label %if.then88, label %land.lhs.true83.while.end_crit_edge

land.lhs.true83.while.end_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then88:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #12
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 17
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %nr_frags, align 2
  %dec = add i8 %75, -1
  store i8 %dec, ptr %nr_frags, align 2
  br label %while.end

if.end91:                                         ; preds = %if.end72
  %76 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %77, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %78 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %17, align 8
  %prev9.i = getelementptr inbounds %struct.anon.46, ptr %17, i32 0, i32 1
  %80 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %17, align 8
  %prev17.i = getelementptr inbounds %struct.anon.46, ptr %79, i32 0, i32 1
  %82 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %81, ptr %prev17.i, align 4
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %79, ptr %81, align 8
  %84 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %txq_idx, align 8
  %.tr = trunc i32 %85 to i16
  %conv93 = shl i16 %.tr, 1
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 10
  %86 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv93, ptr %queue_mapping1.i, align 8
  %87 = ptrtoint ptr %ofld94 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ofld94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool95.not = icmp eq i8 %88, 0
  br i1 %tobool95.not, label %if.end91.if.end99_crit_edge, label %if.then96

if.end91.if.end99_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %conv98 = trunc i32 %85 to i8
  %89 = ptrtoint ptr %txqid to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv98, ptr %txqid, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end91.if.end99_crit_edge
  %90 = ptrtoint ptr %wr_nondata to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %wr_nondata, align 8
  %add101 = add i32 %91, %div297
  %92 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15, i32 0, i32 5
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add101, ptr %92, align 8
  %94 = ptrtoint ptr %wr_credits to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %wr_credits, align 4
  %sub103 = sub i32 %95, %div297
  store i32 %sub103, ptr %wr_credits, align 4
  %96 = ptrtoint ptr %wr_unacked to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wr_unacked, align 8
  %add105 = add i32 %97, %div297
  store i32 %add105, ptr %wr_unacked, align 8
  store i32 0, ptr %wr_nondata, align 8
  %next_wr.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 8
  %98 = ptrtoint ptr %next_wr.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %next_wr.i, align 8
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #10
  %99 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #10, !srcloc !90
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end99.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !89

if.end99.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end99
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %100 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %.not.i.i.i.i.i = icmp sgt i32 %100, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !88

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end99.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end99.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %101 = ptrtoint ptr %wr_skb_head.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %wr_skb_head.i, align 8
  %tobool.not.i316 = icmp eq ptr %102, null
  br i1 %tobool.not.i316, label %skb_get.exit.i.enqueue_wr.exit_crit_edge, label %if.else.i

skb_get.exit.i.enqueue_wr.exit_crit_edge:         ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enqueue_wr.exit

if.else.i:                                        ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %wr_skb_tail.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %wr_skb_tail.i, align 4
  %next_wr4.i = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 3, i32 8
  br label %enqueue_wr.exit

enqueue_wr.exit:                                  ; preds = %if.else.i, %skb_get.exit.i.enqueue_wr.exit_crit_edge
  %next_wr4.sink.i = phi ptr [ %next_wr4.i, %if.else.i ], [ %wr_skb_head.i, %skb_get.exit.i.enqueue_wr.exit_crit_edge ]
  %105 = ptrtoint ptr %next_wr4.sink.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %17, ptr %next_wr4.sink.i, align 8
  %106 = ptrtoint ptr %wr_skb_tail.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %17, ptr %wr_skb_tail.i, align 4
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %flags, align 4
  %109 = and i16 %108, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool112.not = icmp eq i16 %109, 0
  br i1 %tobool112.not, label %if.else158, label %if.then119, !prof !89

if.then119:                                       ; preds = %enqueue_wr.exit
  br i1 %tobool120.not, label %lor.lhs.false, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %if.then119
  %110 = ptrtoint ptr %wr_unacked to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %wr_unacked, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %div297)
  %cmp123 = icmp ne i32 %111, %div297
  %112 = and i16 %108, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool130.not = icmp eq i16 %112, 0
  %or.cond = select i1 %cmp123, i1 %tobool130.not, i1 false
  br i1 %or.cond, label %land.lhs.true121.lor.lhs.false131_crit_edge, label %land.lhs.true121.if.then136_crit_edge

land.lhs.true121.if.then136_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then136

land.lhs.true121.lor.lhs.false131_crit_edge:      ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false131

lor.lhs.false:                                    ; preds = %if.then119
  %.old = and i16 %108, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.old)
  %tobool130.not.old = icmp eq i16 %.old, 0
  br i1 %tobool130.not.old, label %lor.lhs.false.lor.lhs.false131_crit_edge, label %lor.lhs.false.if.then136_crit_edge

lor.lhs.false.if.then136_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then136

lor.lhs.false.lor.lhs.false131_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %lor.lhs.false.lor.lhs.false131_crit_edge, %land.lhs.true121.lor.lhs.false131_crit_edge
  %113 = ptrtoint ptr %wr_unacked to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %wr_unacked, align 8
  %115 = ptrtoint ptr %wr_max_credits to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %wr_max_credits, align 4
  %div133299 = lshr i32 %116, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %div133299)
  %cmp134.not = icmp ult i32 %114, %div133299
  br i1 %cmp134.not, label %lor.lhs.false131.if.end138_crit_edge, label %lor.lhs.false131.if.then136_crit_edge

lor.lhs.false131.if.then136_crit_edge:            ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then136

lor.lhs.false131.if.end138_crit_edge:             ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.then136:                                       ; preds = %lor.lhs.false131.if.then136_crit_edge, %lor.lhs.false.if.then136_crit_edge, %land.lhs.true121.if.then136_crit_edge
  %117 = ptrtoint ptr %wr_unacked to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %wr_unacked, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %lor.lhs.false131.if.end138_crit_edge
  %tobool149.not = phi i1 [ false, %if.then136 ], [ true, %lor.lhs.false131.if.end138_crit_edge ]
  %completion.0 = phi i32 [ 2097152, %if.then136 ], [ 0, %lor.lhs.false131.if.end138_crit_edge ]
  %ofld142 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 21
  %118 = ptrtoint ptr %ofld142 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ofld142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool143.not = icmp eq i8 %119, 0
  %120 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i338 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338)
  %tobool.not.i339 = icmp eq i32 %call.i338, 0
  br i1 %tobool143.not, label %if.else145, label %if.then144

if.then144:                                       ; preds = %if.end138
  br i1 %tobool.not.i339, label %land.lhs.true.i323, label %if.then144.do.end7.i329_crit_edge

if.then144.do.end7.i329_crit_edge:                ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i329

land.lhs.true.i323:                               ; preds = %if.then144
  %call2.i321 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i321)
  %tobool3.not.i322 = icmp eq i32 %call2.i321, 0
  br i1 %tobool3.not.i322, label %land.lhs.true.i323.do.end7.i329_crit_edge, label %land.lhs.true4.i324

land.lhs.true.i323.do.end7.i329_crit_edge:        ; preds = %land.lhs.true.i323
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i329

land.lhs.true4.i324:                              ; preds = %land.lhs.true.i323
  %.b61.i = load i1, ptr @make_tlstx_data_wr.__warned, align 1
  br i1 %.b61.i, label %land.lhs.true4.i324.do.end7.i329_crit_edge, label %if.then.i325

land.lhs.true4.i324.do.end7.i329_crit_edge:       ; preds = %land.lhs.true4.i324
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i329

if.then.i325:                                     ; preds = %land.lhs.true4.i324
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @make_tlstx_data_wr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 488, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i329

do.end7.i329:                                     ; preds = %if.then.i325, %land.lhs.true4.i324.do.end7.i329_crit_edge, %land.lhs.true.i323.do.end7.i329_crit_edge, %if.then144.do.end7.i329_crit_edge
  %122 = ptrtoint ptr %121 to i32
  %and.i326 = and i32 %122, -4
  %123 = inttoptr i32 %and.i326 to ptr
  %mfs.i = getelementptr inbounds %struct.chtls_sock, ptr %123, i32 0, i32 37, i32 15
  %124 = ptrtoint ptr %mfs.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mfs.i, align 4
  %add.i327 = add i32 %24, -1
  %sub.i328 = add i32 %add.i327, %125
  %div.i = udiv i32 %sub.i328, %125
  %126 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.end7.i329.do.end7.i.i_crit_edge

do.end7.i329.do.end7.i.i_crit_edge:               ; preds = %do.end7.i329
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %do.end7.i329
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b55.i.i = load i1, ptr @chtls_expansion_size.__warned, align 1
  br i1 %.b55.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_expansion_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 446, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %do.end7.i329.do.end7.i.i_crit_edge
  %128 = ptrtoint ptr %127 to i32
  %and.i.i330 = and i32 %128, -4
  %129 = inttoptr i32 %and.i.i330 to ptr
  %scmd10.i.i = getelementptr inbounds %struct.chtls_sock, ptr %129, i32 0, i32 37, i32 21
  %130 = ptrtoint ptr %scmd10.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %scmd10.i.i, align 4
  %132 = and i32 %131, 3932160
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %132)
  %cmp.i.i = icmp eq i32 %132, 524288
  br i1 %cmp.i.i, label %if.then12.i.i, label %do.end7.i.i.chtls_expansion_size.exit.i_crit_edge

do.end7.i.i.chtls_expansion_size.exit.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_expansion_size.exit.i

if.then12.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mfs.i.i = getelementptr inbounds %struct.chtls_sock, ptr %129, i32 0, i32 37, i32 15
  %133 = ptrtoint ptr %mfs.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mfs.i.i, align 4
  %.frozen = freeze i32 %24
  %.frozen398 = freeze i32 %134
  %div25.i.i = sdiv i32 %.frozen, %.frozen398
  %mul26.i.i = mul i32 %div25.i.i, 29
  %135 = mul i32 %div25.i.i, %.frozen398
  %rem.i.i.decomposed = sub i32 %.frozen, %135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.decomposed)
  %cmp27.i.i = icmp sgt i32 %rem.i.i.decomposed, 0
  %add30.i.i = add i32 %mul26.i.i, 29
  %spec.select.i.i = select i1 %cmp27.i.i, i32 %add30.i.i, i32 %mul26.i.i
  br label %chtls_expansion_size.exit.i

chtls_expansion_size.exit.i:                      ; preds = %if.then12.i.i, %do.end7.i.i.chtls_expansion_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %do.end7.i.i.chtls_expansion_size.exit.i_crit_edge ], [ %spec.select.i.i, %if.then12.i.i ]
  %compute.i = getelementptr inbounds %struct.chtls_sock, ptr %123, i32 0, i32 37, i32 8
  %136 = ptrtoint ptr %compute.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %compute.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %tobool12.not.i = icmp eq i16 %137, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %chtls_expansion_size.exit.i.if.end27.i_crit_edge

chtls_expansion_size.exit.i.if.end27.i_crit_edge: ; preds = %chtls_expansion_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then13.i:                                      ; preds = %chtls_expansion_size.exit.i
  %fcplenmax.i = getelementptr inbounds %struct.chtls_sock, ptr %123, i32 0, i32 37, i32 18
  %138 = ptrtoint ptr %fcplenmax.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %fcplenmax.i, align 8
  %140 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i63.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %tobool.not.i64.i = icmp eq i32 %call.i63.i, 0
  br i1 %tobool.not.i64.i, label %land.lhs.true.i67.i, label %if.then13.i.do.end7.i75.i_crit_edge

if.then13.i.do.end7.i75.i_crit_edge:              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i75.i

land.lhs.true.i67.i:                              ; preds = %if.then13.i
  %call2.i65.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i65.i)
  %tobool3.not.i66.i = icmp eq i32 %call2.i65.i, 0
  br i1 %tobool3.not.i66.i, label %land.lhs.true.i67.i.do.end7.i75.i_crit_edge, label %land.lhs.true4.i69.i

land.lhs.true.i67.i.do.end7.i75.i_crit_edge:      ; preds = %land.lhs.true.i67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i75.i

land.lhs.true4.i69.i:                             ; preds = %land.lhs.true.i67.i
  %.b55.i68.i = load i1, ptr @chtls_expansion_size.__warned, align 1
  br i1 %.b55.i68.i, label %land.lhs.true4.i69.i.do.end7.i75.i_crit_edge, label %if.then.i70.i

land.lhs.true4.i69.i.do.end7.i75.i_crit_edge:     ; preds = %land.lhs.true4.i69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i75.i

if.then.i70.i:                                    ; preds = %land.lhs.true4.i69.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_expansion_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 446, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i75.i

do.end7.i75.i:                                    ; preds = %if.then.i70.i, %land.lhs.true4.i69.i.do.end7.i75.i_crit_edge, %land.lhs.true.i67.i.do.end7.i75.i_crit_edge, %if.then13.i.do.end7.i75.i_crit_edge
  %142 = ptrtoint ptr %141 to i32
  %and.i71.i = and i32 %142, -4
  %143 = inttoptr i32 %and.i71.i to ptr
  %scmd10.i72.i = getelementptr inbounds %struct.chtls_sock, ptr %143, i32 0, i32 37, i32 21
  %144 = ptrtoint ptr %scmd10.i72.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %scmd10.i72.i, align 4
  %146 = and i32 %145, 3932160
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %146)
  %cmp.i74.i = icmp eq i32 %146, 524288
  br i1 %cmp.i74.i, label %if.then12.i76.i, label %do.end7.i75.i.chtls_expansion_size.exit78.i_crit_edge

do.end7.i75.i.chtls_expansion_size.exit78.i_crit_edge: ; preds = %do.end7.i75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_expansion_size.exit78.i

if.then12.i76.i:                                  ; preds = %do.end7.i75.i
  %mfs.i73.i = getelementptr inbounds %struct.chtls_sock, ptr %143, i32 0, i32 37, i32 15
  %147 = ptrtoint ptr %mfs.i73.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mfs.i73.i, align 4
  %add.i.i331 = add i32 %148, 29
  %div.i.i = sdiv i32 %139, %add.i.i331
  %conv15.i.i = and i32 %div.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv15.i.i)
  %cmp16.i.i = icmp ugt i32 %conv15.i.i, 32
  br i1 %cmp16.i.i, label %if.then12.i76.i.if.end22.sink.split.i.i_crit_edge, label %if.else.i.i

if.then12.i76.i.if.end22.sink.split.i.i_crit_edge: ; preds = %if.then12.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then12.i76.i
  %conv.i.i332 = trunc i32 %div.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i332)
  %tobool19.not.i.i = icmp eq i16 %conv.i.i332, 0
  br i1 %tobool19.not.i.i, label %if.else.i.i.if.end22.sink.split.i.i_crit_edge, label %if.else.i.i.if.end22.i.i_crit_edge

if.else.i.i.if.end22.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

if.else.i.i.if.end22.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.sink.split.i.i

if.end22.sink.split.i.i:                          ; preds = %if.else.i.i.if.end22.sink.split.i.i_crit_edge, %if.then12.i76.i.if.end22.sink.split.i.i_crit_edge
  %.sink.i.i = phi i16 [ 32, %if.then12.i76.i.if.end22.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end22.sink.split.i.i_crit_edge ]
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.end22.sink.split.i.i, %if.else.i.i.if.end22.i.i_crit_edge
  %pdus_per_ulp.0.i = phi i16 [ %.sink.i.i, %if.end22.sink.split.i.i ], [ %conv.i.i332, %if.else.i.i.if.end22.i.i_crit_edge ]
  %mul.i.i333 = mul i16 %pdus_per_ulp.0.i, 29
  br label %chtls_expansion_size.exit78.i

chtls_expansion_size.exit78.i:                    ; preds = %if.end22.i.i, %do.end7.i75.i.chtls_expansion_size.exit78.i_crit_edge
  %pdus_per_ulp.1.i = phi i16 [ %pdus_per_ulp.0.i, %if.end22.i.i ], [ 0, %do.end7.i75.i.chtls_expansion_size.exit78.i_crit_edge ]
  %retval.0.i77.i = phi i16 [ %mul.i.i333, %if.end22.i.i ], [ 0, %do.end7.i75.i.chtls_expansion_size.exit78.i_crit_edge ]
  %expansion.i = getelementptr inbounds %struct.chtls_sock, ptr %123, i32 0, i32 37, i32 9
  %149 = ptrtoint ptr %expansion.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %retval.0.i77.i, ptr %expansion.i, align 2
  %pdus15.i = getelementptr inbounds %struct.chtls_sock, ptr %123, i32 0, i32 37, i32 11
  %150 = ptrtoint ptr %pdus15.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %pdus_per_ulp.1.i, ptr %pdus15.i, align 2
  %div22142.i = udiv i16 %retval.0.i77.i, %pdus_per_ulp.1.i
  %151 = ptrtoint ptr %mfs.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %mfs.i, align 4
  %153 = trunc i32 %152 to i16
  %154 = add i16 %div22142.i, %153
  %conv25.i = mul i16 %154, %pdus_per_ulp.1.i
  %adjustlen.i = getelementptr inbounds %struct.chtls_sock, ptr %123, i32 0, i32 37, i32 12
  %155 = ptrtoint ptr %adjustlen.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv25.i, ptr %adjustlen.i, align 4
  %156 = ptrtoint ptr %compute.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 1, ptr %compute.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %chtls_expansion_size.exit78.i, %chtls_expansion_size.exit.i.if.end27.i_crit_edge
  %157 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i80.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %tobool.not.i81.i = icmp eq i32 %call.i80.i, 0
  br i1 %tobool.not.i81.i, label %land.lhs.true.i84.i, label %if.end27.i.do.end7.i88.i_crit_edge

if.end27.i.do.end7.i88.i_crit_edge:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i88.i

land.lhs.true.i84.i:                              ; preds = %if.end27.i
  %call2.i82.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i82.i)
  %tobool3.not.i83.i = icmp eq i32 %call2.i82.i, 0
  br i1 %tobool3.not.i83.i, label %land.lhs.true.i84.i.do.end7.i88.i_crit_edge, label %land.lhs.true4.i85.i

land.lhs.true.i84.i.do.end7.i88.i_crit_edge:      ; preds = %land.lhs.true.i84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i88.i

land.lhs.true4.i85.i:                             ; preds = %land.lhs.true.i84.i
  %.b89.i.i = load i1, ptr @tls_copy_ivs.__warned, align 1
  br i1 %.b89.i.i, label %land.lhs.true4.i85.i.do.end7.i88.i_crit_edge, label %if.then.i86.i

land.lhs.true4.i85.i.do.end7.i88.i_crit_edge:     ; preds = %land.lhs.true4.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i88.i

if.then.i86.i:                                    ; preds = %land.lhs.true4.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tls_copy_ivs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i88.i

do.end7.i88.i:                                    ; preds = %if.then.i86.i, %land.lhs.true4.i85.i.do.end7.i88.i_crit_edge, %land.lhs.true.i84.i.do.end7.i88.i_crit_edge, %if.end27.i.do.end7.i88.i_crit_edge
  %159 = ptrtoint ptr %158 to i32
  %and.i87.i = and i32 %159, -4
  %160 = inttoptr i32 %and.i87.i to ptr
  %161 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %len, align 4
  %163 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %do.end7.i88.i.nos_ivs.exit.i.i_crit_edge

do.end7.i88.i.nos_ivs.exit.i.i_crit_edge:         ; preds = %do.end7.i88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nos_ivs.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end7.i88.i
  %call2.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.nos_ivs.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.nos_ivs.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nos_ivs.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b13.i.i.i = load i1, ptr @nos_ivs.__warned, align 1
  br i1 %.b13.i.i.i, label %land.lhs.true4.i.i.i.nos_ivs.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.nos_ivs.exit.i.i_crit_edge:  ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nos_ivs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nos_ivs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.1) #10
  br label %nos_ivs.exit.i.i

nos_ivs.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.nos_ivs.exit.i.i_crit_edge, %land.lhs.true.i.i.i.nos_ivs.exit.i.i_crit_edge, %do.end7.i88.i.nos_ivs.exit.i.i_crit_edge
  %165 = ptrtoint ptr %164 to i32
  %and.i.i.i = and i32 %165, -4
  %166 = inttoptr i32 %and.i.i.i to ptr
  %mfs.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %166, i32 0, i32 37, i32 15
  %167 = ptrtoint ptr %mfs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %mfs.i.i.i, align 4
  %add.i.i.i = add i32 %162, -1
  %sub.i.i.i = add i32 %add.i.i.i, %168
  %div.i.i.i = udiv i32 %sub.i.i.i, %168
  %conv11.i.i = and i32 %div.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %conv11.i.i)
  %cmp.i89.i = icmp ugt i32 %conv11.i.i, 256
  br i1 %cmp.i89.i, label %do.end16.i.i, label %if.end20.i.i

do.end16.i.i:                                     ; preds = %nos_ivs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv11.i.i) #13
  br label %if.end146

if.end20.i.i:                                     ; preds = %nos_ivs.exit.i.i
  %169 = shl nuw nsw i32 %conv11.i.i, 4
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %169, i32 noundef 2592) #14
  %tobool23.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool23.not.i.i, label %if.end20.i.i.if.end146_crit_edge, label %if.end25.i.i

if.end20.i.i.if.end146_crit_edge:                 ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.end25.i.i:                                     ; preds = %if.end20.i.i
  tail call void @get_random_bytes(ptr noundef nonnull %call8.i.i.i, i32 noundef %169) #10
  %iv.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 22
  %170 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %iv.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool27.not.i.i = icmp eq i8 %171, 0
  br i1 %tobool27.not.i.i, label %if.else.i91.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.end25.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %172 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data.i.i.i, align 4
  %idx.neg.i.i.i = sub nsw i32 0, %169
  %add.ptr.i.i.i = getelementptr i8, ptr %173, i32 %idx.neg.i.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %174 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %len, align 4
  %add.i91.i.i = add i32 %175, %169
  store i32 %add.i91.i.i, ptr %len, align 4
  %tobool32.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool32.not.i.i, label %if.then28.i.i.if.end36.i.i_crit_edge, label %if.then33.i.i

if.then28.i.i.if.end36.i.i_crit_edge:             ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i.i

if.then33.i.i:                                    ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %176 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %call8.i.i.i, i32 %169)
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then33.i.i, %if.then28.i.i.if.end36.i.i_crit_edge
  %conv39.i.i = trunc i32 %169 to i16
  br label %if.end31.i

if.else.i91.i:                                    ; preds = %if.end25.i.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 17
  %177 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %nr_frags.i.i, align 2
  %dec.i.i334 = add i8 %180, -1
  store i8 %dec.i.i334, ptr %nr_frags.i.i, align 2
  %181 = ptrtoint ptr %sk_allocation.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %sk_allocation.i.i, align 8
  %or.i.i335 = or i32 %182, 262144
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or.i.i335, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %tobool42.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool42.not.i.i, label %tls_copy_ivs.exit.i, label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.else.i91.i
  %call50.i.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i.i) #10
  %183 = call ptr @memcpy(ptr %call50.i.i, ptr %call8.i.i.i, i32 %169)
  %184 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags54.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %185, i32 0, i32 2
  %186 = ptrtoint ptr %nr_frags54.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %nr_frags54.i.i, align 2
  %conv55.i.i = zext i8 %187 to i32
  %arrayidx.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %185, i32 0, i32 12, i32 %conv55.i.i
  %188 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call38.i.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %bv_offset.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %185, i32 0, i32 12, i32 %conv55.i.i, i32 2
  %189 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %bv_offset.i.i.i.i, align 4
  %bv_len.i.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %185, i32 0, i32 12, i32 %conv55.i.i, i32 1
  %190 = ptrtoint ptr %bv_len.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %169, ptr %bv_len.i.i.i.i.i, align 4
  %191 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i.i, i32 0, i32 1
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %191, align 4
  %and.i.i.i.i.i = and i32 %193, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i93.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i93.i.i, label %if.end.i.i.i94.i.i, label %if.then.i.i.i.i.i, !prof !88

if.then.i.i.i.i.i:                                ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i.i.i = add i32 %193, -1
  br label %_compound_head.exit.i.i.i.i

if.end.i.i.i94.i.i:                               ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %194 = ptrtoint ptr %call38.i.i.i.i.i to i32
  br label %_compound_head.exit.i.i.i.i

_compound_head.exit.i.i.i.i:                      ; preds = %if.end.i.i.i94.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %194, %if.end.i.i.i94.i.i ]
  %195 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %196 = getelementptr inbounds %struct.page, ptr %195, i32 0, i32 1
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %199 = ptrtoint ptr %198 to i32
  %and.i8.i.i.i.i = and i32 %199, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i8.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_compound_head.exit.i.i.i.i.skb_fill_page_desc.exit.i.i_crit_edge, label %if.then.i.i95.i.i

_compound_head.exit.i.i.i.i.skb_fill_page_desc.exit.i.i_crit_edge: ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_fill_page_desc.exit.i.i

if.then.i.i95.i.i:                                ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %200 = ptrtoint ptr %peeked.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %bf.load.i.i.i.i = load i8, ptr %peeked.i, align 2
  %bf.set.i.i.i.i = or i8 %bf.load.i.i.i.i, 2
  store i8 %bf.set.i.i.i.i, ptr %peeked.i, align 2
  br label %skb_fill_page_desc.exit.i.i

skb_fill_page_desc.exit.i.i:                      ; preds = %if.then.i.i95.i.i, %_compound_head.exit.i.i.i.i.skb_fill_page_desc.exit.i.i_crit_edge
  %conv.i.i.i = add i8 %187, 1
  %201 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %nr_frags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv.i.i.i, ptr %nr_frags.i.i.i, align 2
  br label %if.end31.i

tls_copy_ivs.exit.i:                              ; preds = %if.else.i91.i
  call void @__sanitizer_cov_trace_pc() #12
  %call48.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %if.end146

if.end31.i:                                       ; preds = %skb_fill_page_desc.exit.i.i, %if.end36.i.i
  %conv39.i.sink.i = phi i16 [ %conv39.i.i, %if.end36.i.i ], [ 0, %skb_fill_page_desc.exit.i.i ]
  %ivsize.i.i = getelementptr inbounds %struct.chtls_sock, ptr %160, i32 0, i32 37, i32 13
  %204 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv39.i.sink.i, ptr %ivsize.i.i, align 2
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  %205 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i94.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %tobool.not.i95.i = icmp eq i32 %call.i94.i, 0
  br i1 %tobool.not.i95.i, label %land.lhs.true.i98.i, label %if.end31.i.do.end7.i105.i_crit_edge

if.end31.i.do.end7.i105.i_crit_edge:              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i105.i

land.lhs.true.i98.i:                              ; preds = %if.end31.i
  %call2.i96.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i96.i)
  %tobool3.not.i97.i = icmp eq i32 %call2.i96.i, 0
  br i1 %tobool3.not.i97.i, label %land.lhs.true.i98.i.do.end7.i105.i_crit_edge, label %land.lhs.true4.i99.i

land.lhs.true.i98.i.do.end7.i105.i_crit_edge:     ; preds = %land.lhs.true.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i105.i

land.lhs.true4.i99.i:                             ; preds = %land.lhs.true.i98.i
  %.b22.i.i = load i1, ptr @tls_copy_tx_key.__warned, align 1
  br i1 %.b22.i.i, label %land.lhs.true4.i99.i.do.end7.i105.i_crit_edge, label %if.then.i100.i

land.lhs.true4.i99.i.do.end7.i105.i_crit_edge:    ; preds = %land.lhs.true4.i99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i105.i

if.then.i100.i:                                   ; preds = %land.lhs.true4.i99.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tls_copy_tx_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 286, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i105.i

do.end7.i105.i:                                   ; preds = %if.then.i100.i, %land.lhs.true4.i99.i.do.end7.i105.i_crit_edge, %land.lhs.true.i98.i.do.end7.i105.i_crit_edge, %if.end31.i.do.end7.i105.i_crit_edge
  %207 = ptrtoint ptr %206 to i32
  %and.i101.i = and i32 %207, -4
  %208 = inttoptr i32 %and.i101.i to ptr
  %cdev10.i.i = getelementptr inbounds %struct.chtls_sock, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %cdev10.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %cdev10.i.i, align 4
  %start.i.i = getelementptr inbounds %struct.chtls_dev, ptr %210, i32 0, i32 24, i32 1
  %211 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %start.i.i, align 4
  %txkey.i.i = getelementptr inbounds %struct.chtls_sock, ptr %208, i32 0, i32 37, i32 16
  %213 = ptrtoint ptr %txkey.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %txkey.i.i, align 8
  %call11.i.i = tail call i32 @keyid_to_addr(i32 noundef %212, i32 noundef %214) #10
  %data.i.i102.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %215 = ptrtoint ptr %data.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %data.i.i102.i, align 4
  %add.ptr.i.i103.i = getelementptr i8, ptr %216, i32 -16
  store ptr %add.ptr.i.i103.i, ptr %data.i.i102.i, align 4
  %217 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %len, align 4
  %add.i.i104.i = add i32 %218, 16
  store i32 %add.i.i104.i, ptr %len, align 4
  %tobool13.not.i.i = icmp eq ptr %add.ptr.i.i103.i, null
  br i1 %tobool13.not.i.i, label %do.end7.i105.i.tls_copy_tx_key.exit.i_crit_edge, label %if.then14.i.i

do.end7.i105.i.tls_copy_tx_key.exit.i_crit_edge:  ; preds = %do.end7.i105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_copy_tx_key.exit.i

if.then14.i.i:                                    ; preds = %do.end7.i105.i
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %add.ptr.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 -2147483648, ptr %add.ptr.i.i103.i, align 4
  %len.i106.i = getelementptr i8, ptr %216, i32 -12
  %220 = ptrtoint ptr %len.i106.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %len.i106.i, align 4
  %add.ptr.i.i336 = getelementptr i8, ptr %216, i32 -8
  %keylen.i.i = getelementptr inbounds %struct.chtls_sock, ptr %208, i32 0, i32 37, i32 10
  %221 = ptrtoint ptr %keylen.i.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %keylen.i.i, align 8
  %223 = lshr i16 %222, 4
  %224 = zext i16 %223 to i32
  %or.i107.i = or i32 %224, -2038431744
  %225 = ptrtoint ptr %add.ptr.i.i336 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %or.i107.i, ptr %add.ptr.i.i336, align 4
  %addr.i.i = getelementptr i8, ptr %216, i32 -4
  %226 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %call11.i.i, ptr %addr.i.i, align 4
  br label %tls_copy_tx_key.exit.i

tls_copy_tx_key.exit.i:                           ; preds = %if.then14.i.i, %do.end7.i105.i.tls_copy_tx_key.exit.i_crit_edge
  %227 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i109.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109.i)
  %tobool.not.i110.i = icmp eq i32 %call.i109.i, 0
  br i1 %tobool.not.i110.i, label %land.lhs.true.i113.i, label %tls_copy_tx_key.exit.i.do.end7.i124.i_crit_edge

tls_copy_tx_key.exit.i.do.end7.i124.i_crit_edge:  ; preds = %tls_copy_tx_key.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i124.i

land.lhs.true.i113.i:                             ; preds = %tls_copy_tx_key.exit.i
  %call2.i111.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i111.i)
  %tobool3.not.i112.i = icmp eq i32 %call2.i111.i, 0
  br i1 %tobool3.not.i112.i, label %land.lhs.true.i113.i.do.end7.i124.i_crit_edge, label %land.lhs.true4.i114.i

land.lhs.true.i113.i.do.end7.i124.i_crit_edge:    ; preds = %land.lhs.true.i113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i124.i

land.lhs.true4.i114.i:                            ; preds = %land.lhs.true.i113.i
  %.b145.i.i = load i1, ptr @tls_tx_data_wr.__warned, align 1
  br i1 %.b145.i.i, label %land.lhs.true4.i114.i.do.end7.i124.i_crit_edge, label %if.then.i115.i

land.lhs.true4.i114.i.do.end7.i124.i_crit_edge:   ; preds = %land.lhs.true4.i114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i124.i

if.then.i115.i:                                   ; preds = %land.lhs.true4.i114.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tls_tx_data_wr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 359, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i124.i

do.end7.i124.i:                                   ; preds = %if.then.i115.i, %land.lhs.true4.i114.i.do.end7.i124.i_crit_edge, %land.lhs.true.i113.i.do.end7.i124.i_crit_edge, %tls_copy_tx_key.exit.i.do.end7.i124.i_crit_edge
  %229 = ptrtoint ptr %228 to i32
  %and.i116.i = and i32 %229, -4
  %230 = inttoptr i32 %and.i116.i to ptr
  %231 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %iv.i.i, align 2
  %egress_dev.i.i = getelementptr inbounds %struct.chtls_sock, ptr %230, i32 0, i32 3
  %233 = ptrtoint ptr %egress_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %egress_dev.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %234, i32 2304
  %235 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %add.ptr.i.i.i.i.i, align 8
  %scmd11.i.i = getelementptr inbounds %struct.chtls_sock, ptr %230, i32 0, i32 37, i32 21
  %mfs.i118.i = getelementptr inbounds %struct.chtls_sock, ptr %230, i32 0, i32 37, i32 15
  %237 = ptrtoint ptr %mfs.i118.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %mfs.i118.i, align 4
  %239 = tail call i32 @llvm.umin.i32(i32 %238, i32 %24) #10
  %tls_pdu_tx.i.i = getelementptr inbounds %struct.adapter, ptr %236, i32 0, i32 73, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tls_pdu_tx.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tls_pdu_tx.i.i, i32 1, i32 3, i32 1) #10
  %240 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tls_pdu_tx.i.i, ptr %tls_pdu_tx.i.i, i32 1, ptr elementtype(i32) %tls_pdu_tx.i.i) #10, !srcloc !91
  %241 = ptrtoint ptr %scmd11.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %scmd11.i.i, align 4
  %and14.i.i = and i32 %242, -128
  %or.i119.i = or i32 %and14.i.i, %div.i
  store i32 %or.i119.i, ptr %scmd11.i.i, align 4
  %243 = ptrtoint ptr %data.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %data.i.i102.i, align 4
  %245 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %len, align 4
  %add.ptr.i147.i.i = getelementptr i8, ptr %244, i32 -64
  store ptr %add.ptr.i147.i.i, ptr %data.i.i102.i, align 4
  %add.i149.i.i = add i32 %246, 64
  store i32 %add.i149.i.i, ptr %len, align 4
  %.op.i.i = or i32 %239, 1746927616
  %or25.i.i = select i1 %tobool19.not.i122.i, i32 1746927616, i32 %.op.i.i
  %247 = ptrtoint ptr %add.ptr.i147.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %or25.i.i, ptr %add.ptr.i147.i.i, align 4
  %tid.i.i = getelementptr inbounds %struct.chtls_sock, ptr %230, i32 0, i32 19
  %248 = ptrtoint ptr %tid.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %tid.i.i, align 8
  %shl26.i.i = shl i32 %249, 8
  %or28.i.i = or i32 %shl26.i.i, %div297
  %flowid_len16.i.i = getelementptr i8, ptr %244, i32 -60
  %250 = ptrtoint ptr %flowid_len16.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %or28.i.i, ptr %flowid_len16.i.i, align 4
  %251 = ptrtoint ptr %peeked.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %bf.load.i.i.i = load i8, ptr %peeked.i, align 2
  %252 = and i8 %bf.load.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool.not.i.i123.i = icmp eq i8 %252, 0
  br i1 %tobool.not.i.i123.i, label %is_sg_request.exit.i.i, label %do.end7.i124.i.if.then30.i.i_crit_edge

do.end7.i124.i.if.then30.i.i_crit_edge:           ; preds = %do.end7.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i.i

is_sg_request.exit.i.i:                           ; preds = %do.end7.i124.i
  %253 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 304, i32 %254)
  %cmp.i.i.i = icmp ugt i32 %254, 304
  br i1 %cmp.i.i.i, label %is_sg_request.exit.i.i.if.then30.i.i_crit_edge, label %is_sg_request.exit.i.i.if.end38.i.i_crit_edge

is_sg_request.exit.i.i.if.end38.i.i_crit_edge:    ; preds = %is_sg_request.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i.i

is_sg_request.exit.i.i.if.then30.i.i_crit_edge:   ; preds = %is_sg_request.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i.i

if.then30.i.i:                                    ; preds = %is_sg_request.exit.i.i.if.then30.i.i_crit_edge, %do.end7.i124.i.if.then30.i.i_crit_edge
  %255 = ptrtoint ptr %nonagle.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %bf.load.i.i = load i16, ptr %nonagle.i.i, align 4
  %256 = and i16 %bf.load.i.i, 16
  %257 = zext i16 %256 to i32
  %258 = shl nuw nsw i32 %257, 25
  %or37.i.i = xor i32 %258, 1610620928
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then30.i.i, %is_sg_request.exit.i.i.if.end38.i.i_crit_edge
  %wr_ulp_mode_force.0.i.i = phi i32 [ %or37.i.i, %if.then30.i.i ], [ 8192, %is_sg_request.exit.i.i.if.end38.i.i_crit_edge ]
  %259 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %flags, align 4
  %261 = and i16 %260, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %261)
  %tobool.i.not.i.i = icmp eq i16 %261, 0
  %262 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i.i125.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125.i)
  %tobool.not.i150.i.i = icmp eq i32 %call.i.i125.i, 0
  br i1 %tobool.not.i150.i.i, label %land.lhs.true.i.i128.i, label %if.end38.i.i.do.end7.i.i.i_crit_edge

if.end38.i.i.do.end7.i.i.i_crit_edge:             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

land.lhs.true.i.i128.i:                           ; preds = %if.end38.i.i
  %call2.i.i126.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i126.i)
  %tobool3.not.i.i127.i = icmp eq i32 %call2.i.i126.i, 0
  br i1 %tobool3.not.i.i127.i, label %land.lhs.true.i.i128.i.do.end7.i.i.i_crit_edge, label %land.lhs.true4.i.i129.i

land.lhs.true.i.i128.i.do.end7.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i128.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

land.lhs.true4.i.i129.i:                          ; preds = %land.lhs.true.i.i128.i
  %.b15.i.i.i = load i1, ptr @csk_flag.__warned, align 1
  br i1 %.b15.i.i.i, label %land.lhs.true4.i.i129.i.do.end7.i.i.i_crit_edge, label %if.then.i.i130.i

land.lhs.true4.i.i129.i.do.end7.i.i.i_crit_edge:  ; preds = %land.lhs.true4.i.i129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

if.then.i.i130.i:                                 ; preds = %land.lhs.true4.i.i129.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @csk_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 483, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %if.then.i.i130.i, %land.lhs.true4.i.i129.i.do.end7.i.i.i_crit_edge, %land.lhs.true.i.i128.i.do.end7.i.i.i_crit_edge, %if.end38.i.i.do.end7.i.i.i_crit_edge
  %264 = ptrtoint ptr %263 to i32
  %and.i.i131.i = and i32 %264, -4
  %265 = inttoptr i32 %and.i.i131.i to ptr
  %flags.i.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %265, i32 0, i32 10
  %266 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %268 = and i32 %267, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool.i.not.i.i.i = icmp eq i32 %268, 0
  br i1 %tobool.i.not.i.i.i, label %do.end7.i.i.i.land.rhs.i.i_crit_edge, label %csk_flag.exit.i.i

do.end7.i.i.i.land.rhs.i.i_crit_edge:             ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

csk_flag.exit.i.i:                                ; preds = %do.end7.i.i.i
  %269 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %271 = and i32 %270, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool46.not.i.i = icmp eq i32 %271, 0
  br i1 %tobool46.not.i.i, label %csk_flag.exit.i.i.land.rhs.i.i_crit_edge, label %csk_flag.exit.i.i.land.end.i.i_crit_edge

csk_flag.exit.i.i.land.end.i.i_crit_edge:         ; preds = %csk_flag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i.i

csk_flag.exit.i.i.land.rhs.i.i_crit_edge:         ; preds = %csk_flag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %csk_flag.exit.i.i.land.rhs.i.i_crit_edge, %do.end7.i.i.i.land.rhs.i.i_crit_edge
  %txq.i.i = getelementptr inbounds %struct.chtls_sock, ptr %230, i32 0, i32 4
  %272 = ptrtoint ptr %txq.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %txq.i.i, align 4
  %cmp.i151.not.i.i = icmp eq ptr %273, %txq.i.i
  %phi.bo.i.i = select i1 %cmp.i151.not.i.i, i32 16384, i32 0
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %csk_flag.exit.i.i.land.end.i.i_crit_edge
  %274 = phi i32 [ 0, %csk_flag.exit.i.i.land.end.i.i_crit_edge ], [ %phi.bo.i.i, %land.rhs.i.i ]
  %or43.i.i = select i1 %tobool.i.not.i.i, i32 1048576, i32 1114112
  %or44.i.i = or i32 %or43.i.i, %wr_ulp_mode_force.0.i.i
  %add.i132.i = add i32 %retval.0.i.i, %24
  %ulp.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 20
  %or50.i.i = or i32 %or44.i.i, %274
  %lsodisable_to_flags.i.i = getelementptr i8, ptr %244, i32 -52
  %275 = ptrtoint ptr %lsodisable_to_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %or50.i.i, ptr %lsodisable_to_flags.i.i, align 4
  %shl51.i.i = shl i32 %div.i, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool55.not.i.i = icmp eq i8 %232, 0
  %shl56.i.i = select i1 %tobool55.not.i.i, i32 536870912, i32 0
  %keylen.i133.i = getelementptr inbounds %struct.chtls_sock, ptr %230, i32 0, i32 37, i32 10
  %276 = ptrtoint ptr %keylen.i133.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %keylen.i133.i, align 8
  %278 = lshr i16 %277, 4
  %279 = zext i16 %278 to i32
  %shl59.i.i = shl i32 %279, 24
  %or53.i.i = or i32 %shl51.i.i, %retval.0.i.i
  %or54.i.i = or i32 %or53.i.i, %shl56.i.i
  %or57.i.i = or i32 %or54.i.i, %shl59.i.i
  %or60.i.i = or i32 %or57.i.i, -2147483648
  %ctxloc_to_exp.i.i = getelementptr i8, ptr %244, i32 -44
  %280 = ptrtoint ptr %ctxloc_to_exp.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %or60.i.i, ptr %ctxloc_to_exp.i.i, align 4
  %plen.i.i = getelementptr i8, ptr %244, i32 -56
  %281 = ptrtoint ptr %plen.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %add.i132.i, ptr %plen.i.i, align 4
  %282 = ptrtoint ptr %mfs.i118.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %mfs.i118.i, align 4
  %conv62.i.i = trunc i32 %283 to i16
  %mfs63.i.i = getelementptr i8, ptr %244, i32 -40
  %284 = ptrtoint ptr %mfs63.i.i to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %conv62.i.i, ptr %mfs63.i.i, align 4
  %adjustlen.i.i = getelementptr inbounds %struct.chtls_sock, ptr %230, i32 0, i32 37, i32 12
  %285 = ptrtoint ptr %adjustlen.i.i to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %adjustlen.i.i, align 4
  %shl65.i.i = shl i16 %286, 1
  %adjustedplen_pkd.i.i = getelementptr i8, ptr %244, i32 -38
  %287 = ptrtoint ptr %adjustedplen_pkd.i.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 %shl65.i.i, ptr %adjustedplen_pkd.i.i, align 2
  %expansion.i.i = getelementptr inbounds %struct.chtls_sock, ptr %230, i32 0, i32 37, i32 9
  %288 = ptrtoint ptr %expansion.i.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %expansion.i.i, align 2
  %shl68.i.i = shl i16 %289, 4
  %expinplenmax_pkd.i.i = getelementptr i8, ptr %244, i32 -36
  %290 = ptrtoint ptr %expinplenmax_pkd.i.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 %shl68.i.i, ptr %expinplenmax_pkd.i.i, align 4
  %pdus70.i.i = getelementptr inbounds %struct.chtls_sock, ptr %230, i32 0, i32 37, i32 11
  %291 = ptrtoint ptr %pdus70.i.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %pdus70.i.i, align 2
  %conv71.i.i = trunc i16 %292 to i8
  %shl72.i.i = shl i8 %conv71.i.i, 2
  %pdusinplenmax_pkd.i.i = getelementptr i8, ptr %244, i32 -34
  %293 = ptrtoint ptr %pdusinplenmax_pkd.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %shl72.i.i, ptr %pdusinplenmax_pkd.i.i, align 2
  %r10.i.i = getelementptr i8, ptr %244, i32 -33
  %294 = ptrtoint ptr %r10.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 0, ptr %r10.i.i, align 1
  %295 = ptrtoint ptr %ulp.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %ulp.i.i, align 4
  %297 = zext i8 %296 to i64
  call void @__sanitizer_cov_trace_switch(i64 %297, ptr @__sancov_gen_cov_switch_values)
  switch i8 %296, label %sw.epilog.i.i.i [
    i8 20, label %land.end.i.i.tls_content_type.exit.thread.i.i_crit_edge
    i8 21, label %sw.bb1.i.i.i
    i8 22, label %sw.bb2.i.i.i
    i8 24, label %298
  ]

land.end.i.i.tls_content_type.exit.thread.i.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_content_type.exit.thread.i.i

sw.bb1.i.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_content_type.exit.thread.i.i

sw.bb2.i.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_content_type.exit.thread.i.i

sw.epilog.i.i.i:                                  ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tls_content_type.exit.thread.i.i

tls_content_type.exit.thread.i.i:                 ; preds = %sw.epilog.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %land.end.i.i.tls_content_type.exit.thread.i.i_crit_edge
  %retval.0.i152.ph.i.i = phi i32 [ 0, %land.end.i.i.tls_content_type.exit.thread.i.i_crit_edge ], [ 1048576, %sw.bb1.i.i.i ], [ 2097152, %sw.bb2.i.i.i ], [ 3145728, %sw.epilog.i.i.i ]
  %or81158.i.i = or i32 %239, %retval.0.i152.ph.i.i
  %or83159.i.i = or i32 %or81158.i.i, -1996357632
  br label %tls_tx_data_wr.exit.i

298:                                              ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or83.i.i = or i32 %239, -1992163328
  br label %tls_tx_data_wr.exit.i

tls_tx_data_wr.exit.i:                            ; preds = %298, %tls_content_type.exit.thread.i.i
  %or83159.sink.i.i = phi i32 [ %or83159.i.i, %tls_content_type.exit.thread.i.i ], [ %or83.i.i, %298 ]
  %299 = phi i32 [ 0, %tls_content_type.exit.thread.i.i ], [ 402653184, %298 ]
  %add.ptr.i.i134.i = getelementptr i8, ptr %244, i32 -32
  %300 = ptrtoint ptr %add.ptr.i.i134.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %or83159.sink.i.i, ptr %add.ptr.i.i134.i, align 8
  %pld_len160.i.i = getelementptr i8, ptr %244, i32 -28
  %301 = ptrtoint ptr %pld_len160.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %24, ptr %pld_len160.i.i, align 4
  %type_protover.i.i = getelementptr i8, ptr %244, i32 -24
  %302 = ptrtoint ptr %type_protover.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %299, ptr %type_protover.i.i, align 8
  %r1_lo.i.i = getelementptr i8, ptr %244, i32 -20
  %303 = ptrtoint ptr %r1_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 0, ptr %r1_lo.i.i, align 4
  %304 = ptrtoint ptr %scmd11.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %scmd11.i.i, align 8
  %seqno_numivs92.i.i = getelementptr i8, ptr %244, i32 -16
  %306 = ptrtoint ptr %seqno_numivs92.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %seqno_numivs92.i.i, align 8
  %ivgen_hdrlen.i.i = getelementptr inbounds %struct.chtls_sock, ptr %230, i32 0, i32 37, i32 21, i32 1
  %307 = ptrtoint ptr %ivgen_hdrlen.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %ivgen_hdrlen.i.i, align 4
  %ivgen_hdrlen94.i.i = getelementptr i8, ptr %244, i32 -12
  %309 = ptrtoint ptr %ivgen_hdrlen94.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %ivgen_hdrlen94.i.i, align 4
  %tx_seq_no.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %230, i32 0, i32 37, i32 20
  %310 = ptrtoint ptr %tx_seq_no.i.i.i to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %tx_seq_no.i.i.i, align 8
  %inc.i.i.i = add i64 %311, 1
  store i64 %inc.i.i.i, ptr %tx_seq_no.i.i.i, align 8
  %scmd1.i.i = getelementptr i8, ptr %244, i32 -8
  %312 = ptrtoint ptr %scmd1.i.i to i32
  call void @__asan_store8_noabort(i32 %312)
  store i64 %311, ptr %scmd1.i.i, align 8
  %sub32.i = add i32 %div.i, -1
  %conv33.i = sext i32 %sub32.i to i64
  %tx_seq_no.i = getelementptr inbounds %struct.chtls_sock, ptr %123, i32 0, i32 37, i32 20
  %313 = ptrtoint ptr %tx_seq_no.i to i32
  call void @__asan_load8_noabort(i32 %313)
  %314 = load i64, ptr %tx_seq_no.i, align 8
  %add34.i = add i64 %314, %conv33.i
  store i64 %add34.i, ptr %tx_seq_no.i, align 8
  br label %if.end146

if.else145:                                       ; preds = %if.end138
  br i1 %tobool.not.i339, label %land.lhs.true.i342, label %if.else145.do.end7.i351_crit_edge

if.else145.do.end7.i351_crit_edge:                ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i351

land.lhs.true.i342:                               ; preds = %if.else145
  %call2.i340 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i340)
  %tobool3.not.i341 = icmp eq i32 %call2.i340, 0
  br i1 %tobool3.not.i341, label %land.lhs.true.i342.do.end7.i351_crit_edge, label %land.lhs.true4.i343

land.lhs.true.i342.do.end7.i351_crit_edge:        ; preds = %land.lhs.true.i342
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i351

land.lhs.true4.i343:                              ; preds = %land.lhs.true.i342
  %.b51.i = load i1, ptr @make_tx_data_wr.__warned, align 1
  br i1 %.b51.i, label %land.lhs.true4.i343.do.end7.i351_crit_edge, label %if.then.i344

land.lhs.true4.i343.do.end7.i351_crit_edge:       ; preds = %land.lhs.true4.i343
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i351

if.then.i344:                                     ; preds = %land.lhs.true4.i343
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @make_tx_data_wr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 517, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i351

do.end7.i351:                                     ; preds = %if.then.i344, %land.lhs.true4.i343.do.end7.i351_crit_edge, %land.lhs.true.i342.do.end7.i351_crit_edge, %if.else145.do.end7.i351_crit_edge
  %315 = ptrtoint ptr %121 to i32
  %and.i345 = and i32 %315, -4
  %316 = inttoptr i32 %and.i345 to ptr
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %317 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i346 = getelementptr i8, ptr %318, i32 -16
  store ptr %add.ptr.i.i346, ptr %data.i.i, align 4
  %319 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %len, align 4
  %add.i.i347 = add i32 %320, 16
  store i32 %add.i.i347, ptr %len, align 4
  %321 = or i32 %immdlen.0, %completion.0
  %or1550.i = or i32 %321, 184549376
  %322 = ptrtoint ptr %add.ptr.i.i346 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %or1550.i, ptr %add.ptr.i.i346, align 4
  %tid.i = getelementptr inbounds %struct.chtls_sock, ptr %316, i32 0, i32 19
  %323 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %tid.i, align 8
  %shl17.i = shl i32 %324, 8
  %or19.i = or i32 %shl17.i, %div297
  %flowid_len16.i = getelementptr i8, ptr %318, i32 -12
  %325 = ptrtoint ptr %flowid_len16.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %or19.i, ptr %flowid_len16.i, align 4
  %ulp_mode.i348 = getelementptr inbounds %struct.chtls_sock, ptr %316, i32 0, i32 22
  %326 = ptrtoint ptr %ulp_mode.i348 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %ulp_mode.i348, align 4
  %shl20.i = shl i32 %327, 10
  %328 = ptrtoint ptr %peeked.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %bf.load.i.i349 = load i8, ptr %peeked.i, align 2
  %329 = and i8 %bf.load.i.i349, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %tobool.not.i.i350 = icmp eq i8 %329, 0
  br i1 %tobool.not.i.i350, label %is_sg_request.exit.i, label %do.end7.i351.if.then22.i_crit_edge

do.end7.i351.if.then22.i_crit_edge:               ; preds = %do.end7.i351
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

is_sg_request.exit.i:                             ; preds = %do.end7.i351
  %330 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 304, i32 %331)
  %cmp.i.i352 = icmp ugt i32 %331, 304
  br i1 %cmp.i.i352, label %is_sg_request.exit.i.if.then22.i_crit_edge, label %is_sg_request.exit.i.if.end29.i_crit_edge

is_sg_request.exit.i.if.end29.i_crit_edge:        ; preds = %is_sg_request.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

is_sg_request.exit.i.if.then22.i_crit_edge:       ; preds = %is_sg_request.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

if.then22.i:                                      ; preds = %is_sg_request.exit.i.if.then22.i_crit_edge, %do.end7.i351.if.then22.i_crit_edge
  %332 = ptrtoint ptr %nonagle.i.i to i32
  call void @__asan_load2_noabort(i32 %332)
  %bf.load.i353 = load i16, ptr %nonagle.i.i, align 4
  %333 = and i16 %bf.load.i353, 16
  %334 = zext i16 %333 to i32
  %335 = shl nuw nsw i32 %334, 25
  %or27.i = xor i32 %335, 1610612736
  %or28.i = or i32 %or27.i, %shl20.i
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then22.i, %is_sg_request.exit.i.if.end29.i_crit_edge
  %wr_ulp_mode_force.0.i = phi i32 [ %or28.i, %if.then22.i ], [ %shl20.i, %is_sg_request.exit.i.if.end29.i_crit_edge ]
  %336 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %336)
  %337 = load i16, ptr %flags, align 4
  %338 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i.i355 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i355)
  %tobool.not.i52.i = icmp eq i32 %call.i.i355, 0
  br i1 %tobool.not.i52.i, label %land.lhs.true.i.i358, label %if.end29.i.do.end7.i.i364_crit_edge

if.end29.i.do.end7.i.i364_crit_edge:              ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i364

land.lhs.true.i.i358:                             ; preds = %if.end29.i
  %call2.i.i356 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i356)
  %tobool3.not.i.i357 = icmp eq i32 %call2.i.i356, 0
  br i1 %tobool3.not.i.i357, label %land.lhs.true.i.i358.do.end7.i.i364_crit_edge, label %land.lhs.true4.i.i359

land.lhs.true.i.i358.do.end7.i.i364_crit_edge:    ; preds = %land.lhs.true.i.i358
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i364

land.lhs.true4.i.i359:                            ; preds = %land.lhs.true.i.i358
  %.b15.i.i = load i1, ptr @csk_flag.__warned, align 1
  br i1 %.b15.i.i, label %land.lhs.true4.i.i359.do.end7.i.i364_crit_edge, label %if.then.i.i360

land.lhs.true4.i.i359.do.end7.i.i364_crit_edge:   ; preds = %land.lhs.true4.i.i359
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i364

if.then.i.i360:                                   ; preds = %land.lhs.true4.i.i359
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @csk_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 483, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i.i364

do.end7.i.i364:                                   ; preds = %if.then.i.i360, %land.lhs.true4.i.i359.do.end7.i.i364_crit_edge, %land.lhs.true.i.i358.do.end7.i.i364_crit_edge, %if.end29.i.do.end7.i.i364_crit_edge
  %340 = ptrtoint ptr %339 to i32
  %and.i.i361 = and i32 %340, -4
  %341 = inttoptr i32 %and.i.i361 to ptr
  %flags.i.i.i362 = getelementptr inbounds %struct.chtls_sock, ptr %341, i32 0, i32 10
  %342 = ptrtoint ptr %flags.i.i.i362 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load volatile i32, ptr %flags.i.i.i362, align 4
  %344 = and i32 %343, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool.i.not.i.i363 = icmp eq i32 %344, 0
  br i1 %tobool.i.not.i.i363, label %do.end7.i.i364.land.rhs.i_crit_edge, label %csk_flag.exit.i

do.end7.i.i364.land.rhs.i_crit_edge:              ; preds = %do.end7.i.i364
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

csk_flag.exit.i:                                  ; preds = %do.end7.i.i364
  %345 = ptrtoint ptr %flags.i.i.i362 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load volatile i32, ptr %flags.i.i.i362, align 4
  %347 = and i32 %346, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %347)
  %tobool35.not.i = icmp eq i32 %347, 0
  br i1 %tobool35.not.i, label %csk_flag.exit.i.land.rhs.i_crit_edge, label %csk_flag.exit.i.make_tx_data_wr.exit_crit_edge

csk_flag.exit.i.make_tx_data_wr.exit_crit_edge:   ; preds = %csk_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %make_tx_data_wr.exit

csk_flag.exit.i.land.rhs.i_crit_edge:             ; preds = %csk_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %csk_flag.exit.i.land.rhs.i_crit_edge, %do.end7.i.i364.land.rhs.i_crit_edge
  %txq.i = getelementptr inbounds %struct.chtls_sock, ptr %316, i32 0, i32 4
  %348 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %txq.i, align 4
  %cmp.i53.not.i = icmp eq ptr %349, %txq.i
  %phi.bo.i = select i1 %cmp.i53.not.i, i32 16384, i32 0
  br label %make_tx_data_wr.exit

make_tx_data_wr.exit:                             ; preds = %land.rhs.i, %csk_flag.exit.i.make_tx_data_wr.exit_crit_edge
  %350 = phi i32 [ 0, %csk_flag.exit.i.make_tx_data_wr.exit_crit_edge ], [ %phi.bo.i, %land.rhs.i ]
  %351 = and i16 %337, 32
  %352 = zext i16 %351 to i32
  %353 = shl nuw nsw i32 %352, 11
  %or33.i = or i32 %353, %wr_ulp_mode_force.0.i
  %or39.i = or i32 %or33.i, %350
  %tunnel_to_proxy.i = getelementptr i8, ptr %318, i32 -4
  %354 = ptrtoint ptr %tunnel_to_proxy.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %or39.i, ptr %tunnel_to_proxy.i, align 4
  %plen.i = getelementptr i8, ptr %318, i32 -8
  %355 = ptrtoint ptr %plen.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %24, ptr %plen.i, align 4
  br label %if.end146

if.end146:                                        ; preds = %make_tx_data_wr.exit, %tls_tx_data_wr.exit.i, %tls_copy_ivs.exit.i, %if.end20.i.i.if.end146_crit_edge, %do.end16.i.i
  %356 = ptrtoint ptr %snd_nxt147 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %snd_nxt147, align 4
  %add148 = add i32 %357, %24
  store i32 %add148, ptr %snd_nxt147, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %358 = load volatile i32, ptr @jiffies, align 128
  %359 = ptrtoint ptr %lsndtime to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %358, ptr %lsndtime, align 8
  br i1 %tobool149.not, label %if.end146.if.end182_crit_edge, label %if.then150

if.end146.if.end182_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182

if.then150:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  %360 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %flags, align 4
  %362 = and i16 %361, -2
  store i16 %362, ptr %flags, align 4
  br label %if.end182

if.else158:                                       ; preds = %enqueue_wr.exit
  %data.i365 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %363 = ptrtoint ptr %data.i365 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %data.i365, align 4
  %ot = getelementptr inbounds %struct.cpl_close_con_req, ptr %364, i32 0, i32 1
  %365 = ptrtoint ptr %ot to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %ot, align 8
  %shr160.mask = and i32 %366, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %shr160.mask)
  %cmp162 = icmp eq i32 %shr160.mask, 134217728
  br i1 %cmp162, label %if.then164, label %if.else158.if.end165_crit_edge

if.else158.if.end165_crit_edge:                   ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.then164:                                       ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #12
  %367 = ptrtoint ptr %flags.i311 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %flags.i311, align 4
  %or.i.i367 = or i32 %368, 64
  store i32 %or.i.i367, ptr %flags.i311, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %if.else158.if.end165_crit_edge
  %369 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %flags, align 4
  %371 = and i16 %370, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %371)
  %tobool171.not = icmp eq i16 %371, 0
  br i1 %tobool171.not, label %if.end165.if.end182_crit_edge, label %land.lhs.true172

if.end165.if.end182_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182

land.lhs.true172:                                 ; preds = %if.end165
  %372 = ptrtoint ptr %wr_unacked to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %wr_unacked, align 8
  %374 = ptrtoint ptr %wr_max_credits to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %wr_max_credits, align 4
  %div175298 = lshr i32 %375, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %373, i32 %div175298)
  %cmp176.not = icmp ult i32 %373, %div175298
  br i1 %cmp176.not, label %land.lhs.true172.if.end182_crit_edge, label %if.then178

land.lhs.true172.if.end182_crit_edge:             ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182

if.then178:                                       ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #12
  %376 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %364, align 8
  %or179 = or i32 %377, 2097152
  store i32 %or179, ptr %364, align 8
  %378 = ptrtoint ptr %wr_unacked to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 0, ptr %wr_unacked, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then178, %land.lhs.true172.if.end182_crit_edge, %if.end165.if.end182_crit_edge, %if.then150, %if.end146.if.end182_crit_edge
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 20
  %379 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %truesize, align 8
  %add183 = add i32 %380, %total_size.0380
  %381 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %flags, align 4
  %383 = and i16 %382, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %383)
  %tobool189.not = icmp eq i16 %383, 0
  br i1 %tobool189.not, label %if.end182.cleanup_crit_edge, label %if.then190

if.end182.cleanup_crit_edge:                      ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then190:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  %384 = ptrtoint ptr %flags.i311 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %flags.i311, align 4
  %or.i.i369 = or i32 %385, 8
  store i32 %or.i.i369, ptr %flags.i311, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then190, %if.end182.cleanup_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3
  %386 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr null, ptr %cb.i, align 8
  %arp_err_handler.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 4
  %387 = ptrtoint ptr %arp_err_handler.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr @arp_failure_discard, ptr %arp_err_handler.i, align 4
  %388 = ptrtoint ptr %egress_dev to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %egress_dev, align 4
  %390 = ptrtoint ptr %l2t_entry to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %l2t_entry, align 8
  %call192 = tail call i32 @cxgb4_l2t_send(ptr noundef %389, ptr noundef nonnull %17, ptr noundef %391) #10
  %392 = ptrtoint ptr %wr_credits to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %wr_credits, align 4
  %tobool15.not = icmp eq i32 %393, 0
  br i1 %tobool15.not, label %cleanup.while.end_crit_edge, label %cleanup.land.lhs.true_crit_edge

cleanup.land.lhs.true_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then88, %land.lhs.true83.while.end_crit_edge, %if.then76.while.end_crit_edge, %if.then62.while.end_crit_edge, %lor.rhs.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %total_size.0378 = phi i32 [ %total_size.0380, %if.then76.while.end_crit_edge ], [ %total_size.0380, %land.lhs.true83.while.end_crit_edge ], [ %total_size.0380, %if.then88 ], [ 0, %while.cond.preheader.while.end_crit_edge ], [ %total_size.0380, %lor.rhs.while.end_crit_edge ], [ %total_size.0380, %land.lhs.true.while.end_crit_edge ], [ %add183, %cleanup.while.end_crit_edge ], [ %total_size.0380, %if.then62.while.end_crit_edge ]
  %sk_wmem_queued = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 22
  %394 = ptrtoint ptr %sk_wmem_queued to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %sk_wmem_queued, align 8
  %sub200 = sub i32 %395, %total_size.0378
  store i32 %sub200, ptr %sk_wmem_queued, align 8
  br label %cleanup201

cleanup201:                                       ; preds = %while.end, %csk_flag.exit.cleanup201_crit_edge, %entry.cleanup201_crit_edge
  %retval.0 = phi i32 [ %total_size.0378, %while.end ], [ 0, %entry.cleanup201_crit_edge ], [ 0, %csk_flag.exit.cleanup201_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chtls_wr_size(ptr nocapture noundef readonly %csk, ptr nocapture noundef %skb, i1 noundef zeroext %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csk, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %sk_user_data.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 72
  %4 = ptrtoint ptr %sk_user_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_user_data.i.i.i, align 4
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %entry.set_ivs_imm.exit.i_crit_edge

entry.set_ivs_imm.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_ivs_imm.exit.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call2.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.set_ivs_imm.exit.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.set_ivs_imm.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_ivs_imm.exit.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b13.i.i.i = load i1, ptr @nos_ivs.__warned, align 1
  br i1 %.b13.i.i.i, label %land.lhs.true4.i.i.i.set_ivs_imm.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.set_ivs_imm.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_ivs_imm.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nos_ivs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.1) #10
  br label %set_ivs_imm.exit.i

set_ivs_imm.exit.i:                               ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.set_ivs_imm.exit.i_crit_edge, %land.lhs.true.i.i.i.set_ivs_imm.exit.i_crit_edge, %entry.set_ivs_imm.exit.i_crit_edge
  %6 = ptrtoint ptr %5 to i32
  %and.i.i.i = and i32 %6, -4
  %7 = inttoptr i32 %and.i.i.i to ptr
  %mfs.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %7, i32 0, i32 37, i32 15
  %8 = ptrtoint ptr %mfs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mfs.i.i.i, align 4
  %add.i.i.i = add i32 %3, -1
  %sub.i.i.i = add i32 %add.i.i.i, %9
  %div.i.i.i = udiv i32 %sub.i.i.i, %9
  %mul.i.i = shl i32 %div.i.i.i, 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i.i.i, align 4
  %nr_frags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %nr_frags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nr_frags.i.i.i, align 2
  %conv.i.i.i = zext i8 %13 to i32
  %dec.i.i.i.i = add nsw i32 %conv.i.i.i, -1
  %mul.i.i.i.i = mul nsw i32 %dec.i.i.i.i, 3
  %div4.i.i.i.i = lshr i32 %mul.i.i.i.i, 1
  %and.i.i.i.i = and i32 %dec.i.i.i.i, 1
  %add.i.i.i.i = or i32 %and.i.i.i.i, 2
  %add1.i.i.i.i = add nuw i32 %add.i.i.i.i, %div4.i.i.i.i
  %mul.i.i.i = shl i32 %add1.i.i.i.i, 3
  %add2.i.i = add i32 %mul.i.i, 80
  %add3.i.i = add i32 %add2.i.i, %mul.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 271, i32 %add3.i.i)
  %cmp.i.i = icmp ult i32 %add3.i.i, 271
  %spec.select.i.i = zext i1 %cmp.i.i to i8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select.i.i, ptr %14, align 2
  br i1 %cmp.i.i, label %cond.true.i, label %set_ivs_imm.exit.i.ivs_size.exit_crit_edge

set_ivs_imm.exit.i.ivs_size.exit_crit_edge:       ; preds = %set_ivs_imm.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ivs_size.exit

cond.true.i:                                      ; preds = %set_ivs_imm.exit.i
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  %18 = ptrtoint ptr %sk_user_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %sk_user_data.i.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %cond.true.i.nos_ivs.exit.i_crit_edge

cond.true.i.nos_ivs.exit.i_crit_edge:             ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nos_ivs.exit.i

land.lhs.true.i.i:                                ; preds = %cond.true.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.nos_ivs.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.nos_ivs.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nos_ivs.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @nos_ivs.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true4.i.i.nos_ivs.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.nos_ivs.exit.i_crit_edge:      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nos_ivs.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nos_ivs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.1) #10
  br label %nos_ivs.exit.i

nos_ivs.exit.i:                                   ; preds = %if.then.i.i, %land.lhs.true4.i.i.nos_ivs.exit.i_crit_edge, %land.lhs.true.i.i.nos_ivs.exit.i_crit_edge, %cond.true.i.nos_ivs.exit.i_crit_edge
  %20 = ptrtoint ptr %19 to i32
  %and.i.i = and i32 %20, -4
  %21 = inttoptr i32 %and.i.i to ptr
  %mfs.i.i = getelementptr inbounds %struct.chtls_sock, ptr %21, i32 0, i32 37, i32 15
  %22 = ptrtoint ptr %mfs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mfs.i.i, align 4
  %add.i.i = add i32 %17, -1
  %sub.i.i = add i32 %add.i.i, %23
  %div.i.i = udiv i32 %sub.i.i, %23
  %mul.i = shl i32 %div.i.i, 4
  %phi.bo = add i32 %mul.i, 80
  br label %ivs_size.exit

ivs_size.exit:                                    ; preds = %nos_ivs.exit.i, %set_ivs_imm.exit.i.ivs_size.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo, %nos_ivs.exit.i ], [ 80, %set_ivs_imm.exit.i.ivs_size.exit_crit_edge ]
  br i1 %size, label %ivs_size.exit.cleanup_crit_edge, label %if.end

ivs_size.exit.cleanup_crit_edge:                  ; preds = %ivs_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ivs_size.exit
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %14, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool2.not = icmp eq i8 %25, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i.i.i.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_frags, align 2
  %inc = add i8 %29, 1
  store i8 %inc, ptr %nr_frags, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %ivs_size.exit.cleanup_crit_edge
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arp_failure_discard(ptr nocapture noundef readnone %handle, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_l2t_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chtls_tcp_push(ptr noundef %sk, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b67 = load i1, ptr @chtls_tcp_push.__warned, align 1
  br i1 %.b67, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_tcp_push.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 767, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %qlen.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %do.end7.cleanup52_crit_edge, label %if.then14, !prof !89

do.end7.cleanup52_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

if.then14:                                        ; preds = %do.end7
  %txq = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %7, %txq
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %7
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then14.mark_urg.exit_crit_edge, label %if.then.i, !prof !88

if.then14.mark_urg.exit_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_urg.exit

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %write_seq.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 80
  %8 = ptrtoint ptr %write_seq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_seq.i, align 4
  %snd_up.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 60
  %10 = ptrtoint ptr %snd_up.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %snd_up.i, align 8
  %flags3.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 39, ptr %flags3.i, align 4
  br label %mark_urg.exit

mark_urg.exit:                                    ; preds = %if.then.i, %if.then14.mark_urg.exit_crit_edge
  %flags18 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %flags18 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags18, align 4
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool20.not = icmp eq i16 %14, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.end30.thread

land.lhs.true21:                                  ; preds = %mark_urg.exit
  %and.i68 = and i32 %flags, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i69 = icmp eq i32 %and.i68, 0
  br i1 %tobool.not.i69, label %corked.exit, label %land.lhs.true21.if.then24_crit_edge

land.lhs.true21.if.then24_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

corked.exit:                                      ; preds = %land.lhs.true21
  %nonagle.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 37
  %15 = ptrtoint ptr %nonagle.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %nonagle.i, align 4
  %16 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool2.i.not = icmp eq i16 %16, 0
  br i1 %tobool2.i.not, label %if.end30, label %corked.exit.if.then24_crit_edge

corked.exit.if.then24_crit_edge:                  ; preds = %corked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.then24:                                        ; preds = %corked.exit.if.then24_crit_edge, %land.lhs.true21.if.then24_crit_edge
  %17 = or i16 %13, 8
  %18 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %flags18, align 4
  br label %cleanup52

if.end30:                                         ; preds = %corked.exit
  %19 = and i16 %13, -9
  %20 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %flags18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %lor.lhs.false.critedge, label %if.end30.cleanup52_crit_edge

if.end30.cleanup52_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

if.end30.thread:                                  ; preds = %mark_urg.exit
  %21 = and i16 %13, -9
  %22 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %flags18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp77 = icmp eq i32 %5, 1
  br i1 %cmp77, label %if.end30.thread.if.then47_crit_edge, label %if.end30.thread.cleanup52_crit_edge

if.end30.thread.cleanup52_crit_edge:              ; preds = %if.end30.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

if.end30.thread.if.then47_crit_edge:              ; preds = %if.end30.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

lor.lhs.false.critedge:                           ; preds = %if.end30
  %23 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i70 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i70, label %land.lhs.true.i, label %lor.lhs.false.critedge.do.end7.i_crit_edge

lor.lhs.false.critedge.do.end7.i_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.critedge
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b22.i = load i1, ptr @should_push.__warned, align 1
  br i1 %.b22.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i71

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i71:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @should_push.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 730, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i71, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %lor.lhs.false.critedge.do.end7.i_crit_edge
  %25 = ptrtoint ptr %24 to i32
  %and.i72 = and i32 %25, -4
  %26 = inttoptr i32 %and.i72 to ptr
  %cdev10.i = getelementptr inbounds %struct.chtls_sock, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %cdev10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cdev10.i, align 4
  %tobool12.not.i = icmp eq ptr %28, null
  br i1 %tobool12.not.i, label %do.end7.i.cleanup52_crit_edge, label %if.end14.i

do.end7.i.cleanup52_crit_edge:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

if.end14.i:                                       ; preds = %do.end7.i
  %wr_credits.i = getelementptr inbounds %struct.chtls_sock, ptr %26, i32 0, i32 12
  %29 = ptrtoint ptr %wr_credits.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wr_credits.i, align 4
  %wr_max_credits.i = getelementptr inbounds %struct.chtls_sock, ptr %26, i32 0, i32 14
  %31 = ptrtoint ptr %wr_max_credits.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wr_max_credits.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.i73 = icmp eq i32 %30, %32
  br i1 %cmp.i73, label %if.end14.i.if.then47_crit_edge, label %should_push.exit

if.end14.i.if.then47_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

should_push.exit:                                 ; preds = %if.end14.i
  %33 = ptrtoint ptr %nonagle.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i75 = load i16, ptr %nonagle.i, align 4
  %34 = and i16 %bf.load.i75, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool16.i.not = icmp eq i16 %34, 0
  br i1 %tobool16.i.not, label %should_push.exit.cleanup52_crit_edge, label %should_push.exit.if.then47_crit_edge

should_push.exit.if.then47_crit_edge:             ; preds = %should_push.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

should_push.exit.cleanup52_crit_edge:             ; preds = %should_push.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

if.then47:                                        ; preds = %should_push.exit.if.then47_crit_edge, %if.end14.i.if.then47_crit_edge, %if.end30.thread.if.then47_crit_edge
  %call48 = tail call i32 @chtls_push_frames(ptr noundef %3, i32 noundef 1)
  br label %cleanup52

cleanup52:                                        ; preds = %if.then47, %should_push.exit.cleanup52_crit_edge, %do.end7.i.cleanup52_crit_edge, %if.end30.thread.cleanup52_crit_edge, %if.end30.cleanup52_crit_edge, %if.then24, %do.end7.cleanup52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @skb_entail(ptr noundef %sk, ptr noundef %skb, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @skb_entail.__warned, align 1
  br i1 %.b37, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @skb_entail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 821, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %write_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 80
  %4 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_seq, align 4
  %seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %6 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %seq, align 8
  %conv = trunc i32 %flags to i16
  %flags13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %7 = ptrtoint ptr %flags13 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %flags13, align 4
  %txq = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %txq, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 1
  %11 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %skb, ptr %9, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %15 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %truesize, align 8
  %sk_wmem_queued = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %17 = ptrtoint ptr %sk_wmem_queued to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_wmem_queued, align 8
  %add = add i32 %18, %16
  store i32 %add, ptr %sk_wmem_queued, align 8
  %sk_frag = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 37
  %19 = ptrtoint ptr %sk_frag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk_frag, align 4
  %tobool14.not = icmp eq ptr %20, null
  br i1 %tobool14.not, label %do.end7.if.end26_crit_edge, label %land.lhs.true15

do.end7.if.end26_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true15:                                  ; preds = %do.end7
  %offset = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 37, i32 1
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool18.not = icmp eq i16 %22, 0
  br i1 %tobool18.not, label %land.lhs.true15.if.end26_crit_edge, label %if.then19

land.lhs.true15.if.end26_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then19:                                        ; preds = %land.lhs.true15
  %23 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !88

if.then.i.i:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %20 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %26, %if.end.i.i ]
  %27 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !89

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.8) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !94
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@skb_entail, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !96

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %27, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %27) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %31 = ptrtoint ptr %sk_frag to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %sk_frag, align 4
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %offset, align 4
  br label %if.end26

if.end26:                                         ; preds = %put_page.exit, %land.lhs.true15.if.end26_crit_edge, %do.end7.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chtls_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %timeo = alloca i32, align 4
  %record_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b500 = load i1, ptr @chtls_sendmsg.__warned, align 1
  br i1 %.b500, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_sendmsg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1009, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %cdev10 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cdev10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #10
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %6 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_flags, align 4
  %and12 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %cond.false.i, label %do.end7.sock_sndtimeo.exit_crit_edge

do.end7.sock_sndtimeo.exit_crit_edge:             ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 31
  %8 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %do.end7.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %9, %cond.false.i ], [ 0, %do.end7.sock_sndtimeo.exit_crit_edge ]
  %10 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i, ptr %timeo, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not = icmp eq i32 %and.i, 0
  br i1 %tobool16.not, label %if.then17, label %sock_sndtimeo.exit.if.end22_crit_edge

sock_sndtimeo.exit.if.end22_crit_edge:            ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then17:                                        ; preds = %sock_sndtimeo.exit
  %call18 = call i32 @sk_stream_wait_connect(ptr noundef %sk, ptr noundef nonnull %timeo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end22_crit_edge, label %if.then17.out_err_crit_edge

if.then17.out_err_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %sock_sndtimeo.exit.if.end22_crit_edge
  %13 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %if.end22.sk_clear_bit.exit_crit_edge, label %if.end.i

if.end22.sk_clear_bit.exit_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_clear_bit.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %17 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %19, i32 0, i32 2
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #10
  br label %sk_clear_bit.exit

sk_clear_bit.exit:                                ; preds = %if.end.i, %if.end22.sk_clear_bit.exit_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %20 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool23.not = icmp eq i32 %21, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %sk_clear_bit.exit.out_err_crit_edge

sk_clear_bit.exit.out_err_crit_edge:              ; preds = %sk_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

lor.lhs.false:                                    ; preds = %sk_clear_bit.exit
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %22 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sk_shutdown, align 2
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool25.not = icmp eq i8 %24, 0
  br i1 %tobool25.not, label %if.end27, label %lor.lhs.false.out_err_crit_edge

lor.lhs.false.out_err_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end27:                                         ; preds = %lor.lhs.false
  %mss28 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 21
  %25 = ptrtoint ptr %mss28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mss28, align 8
  %flags.i505 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 10
  %27 = ptrtoint ptr %flags.i505 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i505, align 4
  %or.i.i = or i32 %28, 4
  store i32 %or.i.i, ptr %flags.i505, align 4
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool30.not769 = icmp eq i32 %30, 0
  br i1 %tobool30.not769, label %out.thread805, label %while.body.lr.ph

out.thread805:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %flags.i505 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i505, align 4
  %and.i.i652807 = and i32 %32, -5
  store i32 %and.i.i652807, ptr %flags.i505, align 4
  br label %cleanup321

while.body.lr.ph:                                 ; preds = %if.end27
  %txq = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 1
  %max_host_sndbuf.i = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 22
  %sk_wmem_queued.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %txkey.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 37, i32 16
  %txleft = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 37, i32 14
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %type = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 37, i32 3
  %nonagle.i.i.i542 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 37
  %and.i4.i.i545 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i545)
  %tobool.not.i5.i.i546 = icmp eq i32 %and.i4.i.i545, 0
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %sk_frag = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 37
  %offset = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 37, i32 1
  %send_page_order = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 21
  %msg_iter200 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %write_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 80
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %size.addr.0774 = phi i32 [ %size, %while.body.lr.ph ], [ %size.addr.1, %while.cond.backedge.while.body_crit_edge ]
  %copied.0771 = phi i32 [ 0, %while.body.lr.ph ], [ %copied.1, %while.cond.backedge.while.body_crit_edge ]
  %recordsz.0770 = phi i32 [ 0, %while.body.lr.ph ], [ %recordsz.4, %while.cond.backedge.while.body_crit_edge ]
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %34, %txq
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %34
  %tobool32.not = icmp eq ptr %spec.store.select.i, null
  br i1 %tobool32.not, label %while.body.if.end34_crit_edge, label %if.then33

while.body.if.end34_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then33:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 6
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %sub = sub i32 %26, %36
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 15
  %37 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %while.body.if.end34_crit_edge
  %copy.0 = phi i32 [ %sub, %if.then33 ], [ 0, %while.body.if.end34_crit_edge ]
  %38 = ptrtoint ptr %max_host_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_host_sndbuf.i, align 16
  %40 = ptrtoint ptr %sk_wmem_queued.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sk_wmem_queued.i, align 8
  %sub.i = sub i32 %39, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i506 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i506, label %if.end37, label %wait_for_sndbuf

if.end37:                                         ; preds = %if.end34
  %42 = ptrtoint ptr %txkey.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %txkey.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i507 = icmp sgt i32 %43, -1
  br i1 %cmp.i507, label %land.lhs.true40, label %if.end37.if.end60_crit_edge

if.end37.if.end60_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

land.lhs.true40:                                  ; preds = %if.end37
  %44 = ptrtoint ptr %txleft to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %txleft, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool41.not = icmp eq i16 %45, 0
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true40.if.end60_crit_edge

land.lhs.true40.if.end60_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then42:                                        ; preds = %land.lhs.true40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %record_type) #10
  %46 = ptrtoint ptr %record_type to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 23, ptr %record_type, align 1
  %47 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool43.not = icmp eq i32 %48, 0
  br i1 %tobool43.not, label %if.then42.cleanup.thread_crit_edge, label %if.then46, !prof !88

if.then42.cleanup.thread_crit_edge:               ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then46:                                        ; preds = %if.then42
  %call47 = call fastcc i32 @chtls_proccess_cmsg(ptr noundef %msg, ptr noundef nonnull %record_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %cleanup302.thread714

if.end50:                                         ; preds = %if.then46
  br i1 %tobool32.not, label %if.end50.cleanup.thread_crit_edge, label %if.then52

if.end50.cleanup.thread_crit_edge:                ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then52:                                        ; preds = %if.end50
  %flags.i508 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 12
  %49 = ptrtoint ptr %flags.i508 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %flags.i508, align 4
  %51 = and i16 %50, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i = icmp eq i16 %51, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then52.tx_skb_finalize.exit_crit_edge

if.then52.tx_skb_finalize.exit_crit_edge:         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_skb_finalize.exit

if.then.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %flags.i508 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %flags.i508, align 4
  br label %tx_skb_finalize.exit

tx_skb_finalize.exit:                             ; preds = %if.then.i, %if.then52.tx_skb_finalize.exit_crit_edge
  %53 = ptrtoint ptr %flags.i508 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %flags.i508, align 4
  %55 = or i16 %54, 2
  store i16 %55, ptr %flags.i508, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %tx_skb_finalize.exit, %if.end50.cleanup.thread_crit_edge, %if.then42.cleanup.thread_crit_edge
  %conv55 = trunc i32 %size.addr.0774 to i16
  %56 = ptrtoint ptr %txleft to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv55, ptr %txleft, align 8
  %57 = ptrtoint ptr %record_type to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %record_type, align 1
  %conv58 = zext i8 %58 to i16
  %59 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv58, ptr %type, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %record_type) #10
  br label %if.end60

cleanup302.thread714:                             ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %record_type) #10
  br label %out_err

if.end60:                                         ; preds = %cleanup.thread, %land.lhs.true40.if.end60_crit_edge, %if.end37.if.end60_crit_edge
  %recordsz.2 = phi i32 [ %recordsz.0770, %land.lhs.true40.if.end60_crit_edge ], [ %recordsz.0770, %if.end37.if.end60_crit_edge ], [ %size.addr.0774, %cleanup.thread ]
  br i1 %tobool32.not, label %if.end60.new_buf_crit_edge, label %lor.lhs.false62

if.end60.new_buf_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_buf

lor.lhs.false62:                                  ; preds = %if.end60
  %flags63 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 12
  %60 = ptrtoint ptr %flags63 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flags63, align 4
  %62 = and i16 %61, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool66.not = icmp ne i16 %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %copy.0)
  %cmp = icmp slt i32 %copy.0, 1
  %or.cond = select i1 %tobool66.not, i1 true, i1 %cmp
  br i1 %or.cond, label %lor.lhs.false62.new_buf_crit_edge, label %lor.lhs.false62.if.end95_crit_edge

lor.lhs.false62.if.end95_crit_edge:               ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

lor.lhs.false62.new_buf_crit_edge:                ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_buf

new_buf:                                          ; preds = %if.end141.new_buf_crit_edge, %lor.lhs.false62.new_buf_crit_edge, %if.end60.new_buf_crit_edge
  %skb.0 = phi ptr [ %skb.2, %if.end141.new_buf_crit_edge ], [ %spec.store.select.i, %lor.lhs.false62.new_buf_crit_edge ], [ %spec.store.select.i, %if.end60.new_buf_crit_edge ]
  %tobool70.not = icmp eq ptr %skb.0, null
  br i1 %tobool70.not, label %new_buf.if.end72_crit_edge, label %if.then71

new_buf.if.end72_crit_edge:                       ; preds = %new_buf
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then71:                                        ; preds = %new_buf
  %flags.i510 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 12
  %63 = ptrtoint ptr %flags.i510 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %flags.i510, align 4
  %65 = and i16 %64, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.not.i511 = icmp eq i16 %65, 0
  br i1 %tobool.not.i511, label %if.then.i512, label %if.then71.tx_skb_finalize.exit514_crit_edge

if.then71.tx_skb_finalize.exit514_crit_edge:      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_skb_finalize.exit514

if.then.i512:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %flags.i510 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %flags.i510, align 4
  br label %tx_skb_finalize.exit514

tx_skb_finalize.exit514:                          ; preds = %if.then.i512, %if.then71.tx_skb_finalize.exit514_crit_edge
  %67 = ptrtoint ptr %flags.i510 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %flags.i510, align 4
  %69 = or i16 %68, 2
  store i16 %69, ptr %flags.i510, align 4
  %70 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i515 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i515, label %land.lhs.true.i, label %tx_skb_finalize.exit514.do.end7.i_crit_edge

tx_skb_finalize.exit514.do.end7.i_crit_edge:      ; preds = %tx_skb_finalize.exit514
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %tx_skb_finalize.exit514
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b15.i = load i1, ptr @push_frames_if_head.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i516

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i516:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @push_frames_if_head.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 879, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i516, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %tx_skb_finalize.exit514.do.end7.i_crit_edge
  %72 = ptrtoint ptr %71 to i32
  %and.i517 = and i32 %72, -4
  %73 = inttoptr i32 %and.i517 to ptr
  %qlen.i.i = getelementptr inbounds %struct.chtls_sock, ptr %73, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i518 = icmp eq i32 %75, 1
  br i1 %cmp.i518, label %if.then11.i, label %do.end7.i.if.end72_crit_edge

do.end7.i.if.end72_crit_edge:                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then11.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i = call i32 @chtls_push_frames(ptr noundef %73, i32 noundef 1) #10
  br label %if.end72

if.end72:                                         ; preds = %if.then11.i, %do.end7.i.if.end72_crit_edge, %new_buf.if.end72_crit_edge
  %76 = ptrtoint ptr %txkey.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %txkey.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp.i520 = icmp sgt i32 %77, -1
  br i1 %cmp.i520, label %if.then74, label %if.else

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 3700, i32 %recordsz.2)
  %cmp.i521 = icmp sgt i32 %recordsz.2, 3700
  br i1 %cmp.i521, label %if.then74.if.end79_crit_edge, label %if.end.i522

if.then74.if.end79_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.end.i522:                                      ; preds = %if.then74
  %78 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i522.do.end7.i.i.i_crit_edge

if.end.i522.do.end7.i.i.i_crit_edge:              ; preds = %if.end.i522
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i522
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b22.i.i.i = load i1, ptr @should_push.__warned, align 1
  br i1 %.b22.i.i.i, label %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge:     ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @should_push.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 730, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge, %if.end.i522.do.end7.i.i.i_crit_edge
  %80 = ptrtoint ptr %79 to i32
  %and.i.i.i = and i32 %80, -4
  %81 = inttoptr i32 %and.i.i.i to ptr
  %cdev10.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %cdev10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cdev10.i.i.i, align 4
  %tobool12.not.i.i.i = icmp eq ptr %83, null
  br i1 %tobool12.not.i.i.i, label %do.end7.i.i.i.if.end79_crit_edge, label %if.end14.i.i.i

do.end7.i.i.i.if.end79_crit_edge:                 ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.end14.i.i.i:                                   ; preds = %do.end7.i.i.i
  %wr_credits.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %81, i32 0, i32 12
  %84 = ptrtoint ptr %wr_credits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %wr_credits.i.i.i, align 4
  %wr_max_credits.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %81, i32 0, i32 14
  %86 = ptrtoint ptr %wr_max_credits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %wr_max_credits.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp.i.i.i = icmp eq i32 %85, %87
  br i1 %cmp.i.i.i, label %land.rhs.i.i, label %should_push.exit.i.i

should_push.exit.i.i:                             ; preds = %if.end14.i.i.i
  %88 = ptrtoint ptr %nonagle.i.i.i542 to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load.i.i.i = load i16, ptr %nonagle.i.i.i542, align 4
  %89 = and i16 %bf.load.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool16.i.not.i.i = icmp ne i16 %89, 0
  %or.cond.i.i = and i1 %tobool.not.i5.i.i546, %tobool16.i.not.i.i
  br i1 %or.cond.i.i, label %should_push.exit.i.i.send_should_push.exit.i_crit_edge, label %should_push.exit.i.i.if.end79_crit_edge

should_push.exit.i.i.if.end79_crit_edge:          ; preds = %should_push.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

should_push.exit.i.i.send_should_push.exit.i_crit_edge: ; preds = %should_push.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_should_push.exit.i

land.rhs.i.i:                                     ; preds = %if.end14.i.i.i
  br i1 %tobool.not.i5.i.i546, label %land.rhs.i.i.send_should_push.exit.i_crit_edge, label %land.rhs.i.i.if.end79_crit_edge

land.rhs.i.i.if.end79_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

land.rhs.i.i.send_should_push.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_should_push.exit.i

send_should_push.exit.i:                          ; preds = %land.rhs.i.i.send_should_push.exit.i_crit_edge, %should_push.exit.i.i.send_should_push.exit.i_crit_edge
  %90 = ptrtoint ptr %nonagle.i.i.i542 to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load.i7.i.i = load i16, ptr %nonagle.i.i.i542, align 4
  %91 = and i16 %bf.load.i7.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool2.i.i.i = icmp eq i16 %91, 0
  %spec.select.i = select i1 %tobool2.i.i.i, i32 %recordsz.2, i32 3700
  br label %if.end79

if.else:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 3748, i32 %size.addr.0774)
  %cmp.i523 = icmp sgt i32 %size.addr.0774, 3748
  br i1 %cmp.i523, label %if.else.select_size.exit558_crit_edge, label %if.end.i527

if.else.select_size.exit558_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %select_size.exit558

if.end.i527:                                      ; preds = %if.else
  %92 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i.i.i525 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i525)
  %tobool.not.i.i.i526 = icmp eq i32 %call.i.i.i525, 0
  br i1 %tobool.not.i.i.i526, label %land.lhs.true.i.i.i530, label %if.end.i527.do.end7.i.i.i537_crit_edge

if.end.i527.do.end7.i.i.i537_crit_edge:           ; preds = %if.end.i527
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i537

land.lhs.true.i.i.i530:                           ; preds = %if.end.i527
  %call2.i.i.i528 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i528)
  %tobool3.not.i.i.i529 = icmp eq i32 %call2.i.i.i528, 0
  br i1 %tobool3.not.i.i.i529, label %land.lhs.true.i.i.i530.do.end7.i.i.i537_crit_edge, label %land.lhs.true4.i.i.i532

land.lhs.true.i.i.i530.do.end7.i.i.i537_crit_edge: ; preds = %land.lhs.true.i.i.i530
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i537

land.lhs.true4.i.i.i532:                          ; preds = %land.lhs.true.i.i.i530
  %.b22.i.i.i531 = load i1, ptr @should_push.__warned, align 1
  br i1 %.b22.i.i.i531, label %land.lhs.true4.i.i.i532.do.end7.i.i.i537_crit_edge, label %if.then.i.i.i533

land.lhs.true4.i.i.i532.do.end7.i.i.i537_crit_edge: ; preds = %land.lhs.true4.i.i.i532
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i537

if.then.i.i.i533:                                 ; preds = %land.lhs.true4.i.i.i532
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @should_push.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 730, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i.i.i537

do.end7.i.i.i537:                                 ; preds = %if.then.i.i.i533, %land.lhs.true4.i.i.i532.do.end7.i.i.i537_crit_edge, %land.lhs.true.i.i.i530.do.end7.i.i.i537_crit_edge, %if.end.i527.do.end7.i.i.i537_crit_edge
  %94 = ptrtoint ptr %93 to i32
  %and.i.i.i534 = and i32 %94, -4
  %95 = inttoptr i32 %and.i.i.i534 to ptr
  %cdev10.i.i.i535 = getelementptr inbounds %struct.chtls_sock, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %cdev10.i.i.i535 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cdev10.i.i.i535, align 4
  %tobool12.not.i.i.i536 = icmp eq ptr %97, null
  br i1 %tobool12.not.i.i.i536, label %do.end7.i.i.i537.select_size.exit558_crit_edge, label %if.end14.i.i.i541

do.end7.i.i.i537.select_size.exit558_crit_edge:   ; preds = %do.end7.i.i.i537
  call void @__sanitizer_cov_trace_pc() #12
  br label %select_size.exit558

if.end14.i.i.i541:                                ; preds = %do.end7.i.i.i537
  %wr_credits.i.i.i538 = getelementptr inbounds %struct.chtls_sock, ptr %95, i32 0, i32 12
  %98 = ptrtoint ptr %wr_credits.i.i.i538 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %wr_credits.i.i.i538, align 4
  %wr_max_credits.i.i.i539 = getelementptr inbounds %struct.chtls_sock, ptr %95, i32 0, i32 14
  %100 = ptrtoint ptr %wr_max_credits.i.i.i539 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %wr_max_credits.i.i.i539, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp.i.i.i540 = icmp eq i32 %99, %101
  br i1 %cmp.i.i.i540, label %land.rhs.i.i551, label %should_push.exit.i.i548

should_push.exit.i.i548:                          ; preds = %if.end14.i.i.i541
  %102 = ptrtoint ptr %nonagle.i.i.i542 to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load.i.i.i543 = load i16, ptr %nonagle.i.i.i542, align 4
  %103 = and i16 %bf.load.i.i.i543, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool16.i.not.i.i544 = icmp ne i16 %103, 0
  %or.cond.i.i547 = and i1 %tobool.not.i5.i.i546, %tobool16.i.not.i.i544
  br i1 %or.cond.i.i547, label %should_push.exit.i.i548.send_should_push.exit.i556_crit_edge, label %should_push.exit.i.i548.select_size.exit558_crit_edge

should_push.exit.i.i548.select_size.exit558_crit_edge: ; preds = %should_push.exit.i.i548
  call void @__sanitizer_cov_trace_pc() #12
  br label %select_size.exit558

should_push.exit.i.i548.send_should_push.exit.i556_crit_edge: ; preds = %should_push.exit.i.i548
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_should_push.exit.i556

land.rhs.i.i551:                                  ; preds = %if.end14.i.i.i541
  br i1 %tobool.not.i5.i.i546, label %land.rhs.i.i551.send_should_push.exit.i556_crit_edge, label %land.rhs.i.i551.select_size.exit558_crit_edge

land.rhs.i.i551.select_size.exit558_crit_edge:    ; preds = %land.rhs.i.i551
  call void @__sanitizer_cov_trace_pc() #12
  br label %select_size.exit558

land.rhs.i.i551.send_should_push.exit.i556_crit_edge: ; preds = %land.rhs.i.i551
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_should_push.exit.i556

send_should_push.exit.i556:                       ; preds = %land.rhs.i.i551.send_should_push.exit.i556_crit_edge, %should_push.exit.i.i548.send_should_push.exit.i556_crit_edge
  %104 = ptrtoint ptr %nonagle.i.i.i542 to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load.i7.i.i553 = load i16, ptr %nonagle.i.i.i542, align 4
  %105 = and i16 %bf.load.i7.i.i553, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool2.i.i.i554 = icmp eq i16 %105, 0
  %spec.select.i555 = select i1 %tobool2.i.i.i554, i32 %size.addr.0774, i32 3748
  br label %select_size.exit558

select_size.exit558:                              ; preds = %send_should_push.exit.i556, %land.rhs.i.i551.select_size.exit558_crit_edge, %should_push.exit.i.i548.select_size.exit558_crit_edge, %do.end7.i.i.i537.select_size.exit558_crit_edge, %if.else.select_size.exit558_crit_edge
  %retval.0.i557 = phi i32 [ 0, %if.else.select_size.exit558_crit_edge ], [ 3748, %should_push.exit.i.i548.select_size.exit558_crit_edge ], [ 3748, %do.end7.i.i.i537.select_size.exit558_crit_edge ], [ 3748, %land.rhs.i.i551.select_size.exit558_crit_edge ], [ %spec.select.i555, %send_should_push.exit.i556 ]
  %add.i = add nsw i32 %retval.0.i557, 92
  %106 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sk_allocation.i, align 8
  %call.i.i = call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef %107, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i559 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i559, label %select_size.exit558.wait_for_memory_crit_edge, label %if.end79.thread663, !prof !89

select_size.exit558.wait_for_memory_crit_edge:    ; preds = %select_size.exit558
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

if.end79.thread663:                               ; preds = %select_size.exit558
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %108 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %109, i32 92
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %110 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %111, i32 92
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  call void @skb_entail(ptr noundef %sk, ptr noundef nonnull %call.i.i, i32 noundef 1) #10
  %112 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %114 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %113 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %115 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %116 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  br label %if.end90

if.end79:                                         ; preds = %send_should_push.exit.i, %land.rhs.i.i.if.end79_crit_edge, %should_push.exit.i.i.if.end79_crit_edge, %do.end7.i.i.i.if.end79_crit_edge, %if.then74.if.end79_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then74.if.end79_crit_edge ], [ 3700, %should_push.exit.i.i.if.end79_crit_edge ], [ 3700, %do.end7.i.i.i.if.end79_crit_edge ], [ 3700, %land.rhs.i.i.if.end79_crit_edge ], [ %spec.select.i, %send_should_push.exit.i ]
  %call76 = call fastcc ptr @get_record_skb(ptr noundef %sk, i32 noundef %retval.0.i, i1 noundef zeroext false)
  %tobool80.not = icmp eq ptr %call76, null
  br i1 %tobool80.not, label %if.end79.wait_for_memory_crit_edge, label %if.end79.if.end90_crit_edge, !prof !89

if.end79.if.end90_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.end79.wait_for_memory_crit_edge:               ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

if.end90:                                         ; preds = %if.end79.if.end90_crit_edge, %if.end79.thread663
  %skb.1666 = phi ptr [ %call.i.i, %if.end79.thread663 ], [ %call76, %if.end79.if.end90_crit_edge ]
  %ip_summed91 = getelementptr inbounds %struct.sk_buff, ptr %skb.1666, i32 0, i32 15
  %117 = ptrtoint ptr %ip_summed91 to i32
  call void @__asan_load2_noabort(i32 %117)
  %bf.load92 = load i16, ptr %ip_summed91, align 8
  %bf.clear93 = and i16 %bf.load92, -1537
  %bf.set94 = or i16 %bf.clear93, 512
  store i16 %bf.set94, ptr %ip_summed91, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.end90, %lor.lhs.false62.if.end95_crit_edge
  %skb.2 = phi ptr [ %skb.1666, %if.end90 ], [ %34, %lor.lhs.false62.if.end95_crit_edge ]
  %copy.1 = phi i32 [ %26, %if.end90 ], [ %copy.0, %lor.lhs.false62.if.end95_crit_edge ]
  %118 = call i32 @llvm.umin.i32(i32 %copy.1, i32 %size.addr.0774)
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 7
  %119 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.i.not.i562 = icmp eq i32 %120, 0
  br i1 %tobool.i.not.i562, label %skb_tailroom.exit, label %if.end95.if.else125_crit_edge

if.end95.if.else125_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else125

skb_tailroom.exit:                                ; preds = %if.end95
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 17
  %121 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 16
  %123 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %122 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %124 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i)
  %cmp101 = icmp sgt i32 %sub.ptr.sub.i, 0
  br i1 %cmp101, label %skb_tailroom.exit574, label %skb_tailroom.exit.if.else125_crit_edge

skb_tailroom.exit.if.else125_crit_edge:           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else125

skb_tailroom.exit574:                             ; preds = %skb_tailroom.exit
  %125 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %end.i, align 4
  %127 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i569 = ptrtoint ptr %126 to i32
  %sub.ptr.rhs.cast.i570 = ptrtoint ptr %128 to i32
  %sub.ptr.sub.i571 = sub i32 %sub.ptr.lhs.cast.i569, %sub.ptr.rhs.cast.i570
  %129 = call i32 @llvm.smin.i32(i32 %118, i32 %sub.ptr.sub.i571)
  %130 = ptrtoint ptr %txkey.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %txkey.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %cmp.i576 = icmp sgt i32 %131, -1
  br i1 %cmp.i576, label %if.then109, label %skb_tailroom.exit574.if.end120_crit_edge

skb_tailroom.exit574.if.end120_crit_edge:         ; preds = %skb_tailroom.exit574
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then109:                                       ; preds = %skb_tailroom.exit574
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %txleft to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %txleft, align 8
  %conv112 = zext i16 %133 to i32
  %134 = call i32 @llvm.smin.i32(i32 %129, i32 %conv112)
  br label %if.end120

if.end120:                                        ; preds = %if.then109, %skb_tailroom.exit574.if.end120_crit_edge
  %copy.3 = phi i32 [ %134, %if.then109 ], [ %129, %skb_tailroom.exit574.if.end120_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 6
  %135 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len.i, align 4
  %call.i577 = call ptr @skb_put(ptr noundef nonnull %skb.2, i32 noundef %copy.3) #10
  %call1.i = call fastcc i32 @skb_do_copy_data_nocache(ptr noundef %sk, ptr noundef nonnull %skb.2, ptr noundef %msg_iter200, ptr noundef %call.i577, i32 noundef %copy.3, i32 noundef %136) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i578 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i578, label %if.end120.if.end247_crit_edge, label %if.then.i579

if.end120.if.end247_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

if.then.i579:                                     ; preds = %if.end120
  %137 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.i.not.i.i.i = icmp eq i32 %138, 0
  br i1 %tobool.i.not.i.i.i, label %if.end21.critedge.i.i.i, label %do.end.i.i.i, !prof !88

do.end.i.i.i:                                     ; preds = %if.then.i579
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2789, i32 noundef 9, ptr noundef null) #10
  br label %do_fault

if.end21.critedge.i.i.i:                          ; preds = %if.then.i579
  call void @__sanitizer_cov_trace_pc() #12
  %len.i.le = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 6
  %139 = ptrtoint ptr %len.i.le to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %136, ptr %len.i.le, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 19
  %140 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %141, i32 %136
  %142 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %add.ptr.i.i.i.i, ptr %tail.i, align 8
  br label %do_fault

if.else125:                                       ; preds = %skb_tailroom.exit.if.else125_crit_edge, %if.end95.if.else125_crit_edge
  %end.i581 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 17
  %143 = ptrtoint ptr %end.i581 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %end.i581, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %nr_frags, align 2
  %conv127 = zext i8 %146 to i32
  %147 = ptrtoint ptr %sk_frag to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %sk_frag, align 4
  %149 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %offset, align 4
  %conv130 = zext i16 %150 to i32
  %tobool131.not = icmp eq ptr %148, null
  br i1 %tobool131.not, label %if.else125.if.end134_crit_edge, label %if.then132

if.else125.if.end134_crit_edge:                   ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then132:                                       ; preds = %if.else125
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %152)
  %cmp.i.not.i.i.i = icmp eq i32 %152, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i582, label %PageHead.exit.i.i, !prof !89

if.then.i.i.i582:                                 ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef nonnull %148, ptr noundef nonnull @.str.12) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #10, !srcloc !97
  unreachable

PageHead.exit.i.i:                                ; preds = %if.then132
  %153 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %148, align 4
  %155 = and i32 %154, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i.i = icmp eq i32 %155, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.page_size.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.page_size.exit_crit_edge:       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %page_size.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %156 = getelementptr %struct.page, ptr %148, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.144, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %compound_order.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %compound_order.i.i, align 1
  %conv.i.i583 = zext i8 %158 to i32
  br label %page_size.exit

page_size.exit:                                   ; preds = %if.end.i.i, %PageHead.exit.i.i.page_size.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i583, %if.end.i.i ], [ 0, %PageHead.exit.i.i.page_size.exit_crit_edge ]
  %shl.i584 = shl i32 4096, %retval.0.i.i
  br label %if.end134

if.end134:                                        ; preds = %page_size.exit, %if.else125.if.end134_crit_edge
  %pg_size.0 = phi i32 [ %shl.i584, %page_size.exit ], [ 4096, %if.else125.if.end134_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pg_size.0, i32 %conv130)
  %cmp135 = icmp sgt i32 %pg_size.0, %conv130
  br i1 %cmp135, label %land.rhs.i.i586, label %if.end134.if.end141_crit_edge

if.end134.if.end141_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

land.rhs.i.i586:                                  ; preds = %if.end134
  %159 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %144, align 8
  %161 = and i8 %160, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool1.not.i.i = icmp eq i8 %161, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i586.skb_zcopy.exit.i_crit_edge, label %cond.true.i.i

land.rhs.i.i586.skb_zcopy.exit.i_crit_edge:       ; preds = %land.rhs.i.i586
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_zcopy.exit.i

cond.true.i.i:                                    ; preds = %land.rhs.i.i586
  call void @__sanitizer_cov_trace_pc() #12
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %144, i32 0, i32 11
  %162 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %destructor_arg.i.i, align 4
  %phi.cmp.i = icmp ne ptr %163, null
  br label %skb_zcopy.exit.i

skb_zcopy.exit.i:                                 ; preds = %cond.true.i.i, %land.rhs.i.i586.skb_zcopy.exit.i_crit_edge
  %cond.i.i = phi i1 [ %phi.cmp.i, %cond.true.i.i ], [ false, %land.rhs.i.i586.skb_zcopy.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool1.not.i = icmp eq i8 %146, 0
  %or.cond.i = or i1 %tobool1.not.i, %cond.i.i
  br i1 %or.cond.i, label %skb_zcopy.exit.i.if.end141_crit_edge, label %if.then2.i

skb_zcopy.exit.i.if.end141_crit_edge:             ; preds = %skb_zcopy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then2.i:                                       ; preds = %skb_zcopy.exit.i
  %sub.i587 = add nsw i32 %conv127, -1
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %144, i32 0, i32 12, i32 %sub.i587
  %164 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i588 = icmp eq ptr %165, %148
  br i1 %cmp.i588, label %skb_can_coalesce.exit, label %if.then2.i.if.end141_crit_edge

if.then2.i.if.end141_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

skb_can_coalesce.exit:                            ; preds = %if.then2.i
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %144, i32 0, i32 12, i32 %sub.i587, i32 2
  %166 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %bv_offset.i.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %144, i32 0, i32 12, i32 %sub.i587, i32 1
  %168 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %bv_len.i.i, align 4
  %add.i589 = add i32 %169, %167
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i589, i32 %conv130)
  %cmp7.i = icmp eq i32 %add.i589, %conv130
  br i1 %cmp7.i, label %skb_can_coalesce.exit.copy180_crit_edge, label %skb_can_coalesce.exit.if.end141_crit_edge

skb_can_coalesce.exit.if.end141_crit_edge:        ; preds = %skb_can_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

skb_can_coalesce.exit.copy180_crit_edge:          ; preds = %skb_can_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy180

if.end141:                                        ; preds = %skb_can_coalesce.exit.if.end141_crit_edge, %if.then2.i.if.end141_crit_edge, %skb_zcopy.exit.i.if.end141_crit_edge, %if.end134.if.end141_crit_edge
  %170 = ptrtoint ptr %txkey.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %txkey.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %171)
  %cmp.i592 = icmp sgt i32 %171, -1
  %cond144 = select i1 %cmp.i592, i32 16, i32 17
  call void @__sanitizer_cov_trace_cmp4(i32 %cond144, i32 %conv127)
  %cmp145 = icmp eq i32 %cond144, %conv127
  br i1 %cmp145, label %if.end141.new_buf_crit_edge, label %if.end148

if.end141.new_buf_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_buf

if.end148:                                        ; preds = %if.end141
  br i1 %tobool131.not, label %if.end148.if.then158_crit_edge, label %land.lhs.true150

if.end148.if.then158_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then158

land.lhs.true150:                                 ; preds = %if.end148
  call void @__sanitizer_cov_trace_cmp4(i32 %pg_size.0, i32 %conv130)
  %cmp151 = icmp eq i32 %pg_size.0, %conv130
  br i1 %cmp151, label %if.then153, label %land.lhs.true150.copy180_crit_edge

land.lhs.true150.copy180_crit_edge:               ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy180

if.then153:                                       ; preds = %land.lhs.true150
  %172 = getelementptr inbounds %struct.page, ptr %148, i32 0, i32 1
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %172, align 4
  %and.i.i = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i593 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i593, label %if.end.i.i594, label %if.then.i.i, !prof !88

if.then.i.i:                                      ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %174, -1
  br label %_compound_head.exit.i

if.end.i.i594:                                    ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  %175 = ptrtoint ptr %148 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i594, %if.then.i.i
  %retval.0.i.i595 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %175, %if.end.i.i594 ]
  %176 = inttoptr i32 %retval.0.i.i595 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %176, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %177 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp.i.i.i.i = icmp eq i32 %178, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !89

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %179 = inttoptr i32 %retval.0.i.i595 to ptr
  call void @dump_page(ptr noundef %179, ptr noundef nonnull @.str.8) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %180 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !94
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %180, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@chtls_sendmsg, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !96

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %176, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %176) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %181 = ptrtoint ptr %sk_frag to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %sk_frag, align 4
  br label %if.then158

if.then158:                                       ; preds = %put_page.exit, %if.end148.if.then158_crit_edge
  %pg_size.1.ph = phi i32 [ %pg_size.0, %if.end148.if.then158_crit_edge ], [ 4096, %put_page.exit ]
  %182 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %sk_allocation.i, align 8
  %184 = ptrtoint ptr %send_page_order to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %send_page_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool159.not = icmp eq i32 %185, 0
  br i1 %tobool159.not, label %if.then158.if.end171_crit_edge, label %if.end167

if.then158.if.end171_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

if.end167:                                        ; preds = %if.then158
  %or162 = or i32 %183, 335872
  %call38.i.i.i = call ptr @__alloc_pages(i32 noundef %or162, i32 noundef %185, i32 noundef 0, ptr noundef null) #10
  %tobool164.not = icmp eq ptr %call38.i.i.i, null
  %shl = select i1 %tobool164.not, i32 0, i32 %185
  %spec.select502 = shl i32 %pg_size.1.ph, %shl
  br i1 %tobool164.not, label %if.end167.if.end171_crit_edge, label %if.end167.copy180_crit_edge

if.end167.copy180_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy180

if.end167.if.end171_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

if.end171:                                        ; preds = %if.end167.if.end171_crit_edge, %if.then158.if.end171_crit_edge
  %call38.i.i.i596 = call ptr @__alloc_pages(i32 noundef %183, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %tobool172.not = icmp eq ptr %call38.i.i.i596, null
  br i1 %tobool172.not, label %if.end171.wait_for_memory_crit_edge, label %if.end171.copy180_crit_edge

if.end171.copy180_crit_edge:                      ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy180

if.end171.wait_for_memory_crit_edge:              ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

copy180:                                          ; preds = %if.end171.copy180_crit_edge, %if.end167.copy180_crit_edge, %land.lhs.true150.copy180_crit_edge, %skb_can_coalesce.exit.copy180_crit_edge
  %page.3 = phi ptr [ %call38.i.i.i596, %if.end171.copy180_crit_edge ], [ %148, %skb_can_coalesce.exit.copy180_crit_edge ], [ %148, %land.lhs.true150.copy180_crit_edge ], [ %call38.i.i.i, %if.end167.copy180_crit_edge ]
  %pg_size.4 = phi i32 [ 4096, %if.end171.copy180_crit_edge ], [ %pg_size.0, %skb_can_coalesce.exit.copy180_crit_edge ], [ %pg_size.0, %land.lhs.true150.copy180_crit_edge ], [ %spec.select502, %if.end167.copy180_crit_edge ]
  %off.1 = phi i32 [ 0, %if.end171.copy180_crit_edge ], [ %conv130, %skb_can_coalesce.exit.copy180_crit_edge ], [ %conv130, %land.lhs.true150.copy180_crit_edge ], [ 0, %if.end167.copy180_crit_edge ]
  %merge.0.off0 = phi i1 [ false, %if.end171.copy180_crit_edge ], [ true, %skb_can_coalesce.exit.copy180_crit_edge ], [ false, %land.lhs.true150.copy180_crit_edge ], [ false, %if.end167.copy180_crit_edge ]
  %sub181 = sub i32 %pg_size.4, %off.1
  %186 = call i32 @llvm.smin.i32(i32 %118, i32 %sub181)
  %187 = ptrtoint ptr %txkey.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %txkey.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %188)
  %cmp.i598 = icmp sgt i32 %188, -1
  br i1 %cmp.i598, label %if.then188, label %copy180.if.end199_crit_edge

copy180.if.end199_crit_edge:                      ; preds = %copy180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.then188:                                       ; preds = %copy180
  call void @__sanitizer_cov_trace_pc() #12
  %189 = ptrtoint ptr %txleft to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %txleft, align 8
  %conv191 = zext i16 %190 to i32
  %191 = call i32 @llvm.smin.i32(i32 %186, i32 %conv191)
  br label %if.end199

if.end199:                                        ; preds = %if.then188, %copy180.if.end199_crit_edge
  %copy.5 = phi i32 [ %191, %if.then188 ], [ %186, %copy180.if.end199_crit_edge ]
  %call.i599 = call ptr @page_address(ptr noundef %page.3) #10
  %add.ptr.i = getelementptr i8, ptr %call.i599, i32 %off.1
  %len.i600 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 6
  %192 = ptrtoint ptr %len.i600 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %len.i600, align 4
  %call1.i601 = call fastcc i32 @skb_do_copy_data_nocache(ptr noundef %sk, ptr noundef nonnull %skb.2, ptr noundef %msg_iter200, ptr noundef %add.ptr.i, i32 noundef %copy.5, i32 noundef %193) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i601)
  %tobool.not.i602 = icmp eq i32 %call1.i601, 0
  br i1 %tobool.not.i602, label %if.end219, label %if.then209

if.then209:                                       ; preds = %if.end199
  %194 = ptrtoint ptr %sk_frag to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %sk_frag, align 4
  %tobool212.not = icmp eq ptr %195, null
  br i1 %tobool212.not, label %if.then213, label %if.then209.do_fault_crit_edge

if.then209.do_fault_crit_edge:                    ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_fault

if.then213:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %sk_frag to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %page.3, ptr %sk_frag, align 4
  %197 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 0, ptr %offset, align 4
  br label %do_fault

if.end219:                                        ; preds = %if.end199
  %198 = ptrtoint ptr %len.i600 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %len.i600, align 4
  %add.i603 = add i32 %199, %copy.5
  store i32 %add.i603, ptr %len.i600, align 4
  %200 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %data_len.i.i, align 8
  %add3.i = add i32 %201, %copy.5
  store i32 %add3.i, ptr %data_len.i.i, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 20
  %202 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %truesize.i, align 8
  %add4.i = add i32 %203, %copy.5
  store i32 %add4.i, ptr %truesize.i, align 8
  %204 = ptrtoint ptr %sk_wmem_queued.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %sk_wmem_queued.i, align 8
  %add5.i = add i32 %205, %copy.5
  store i32 %add5.i, ptr %sk_wmem_queued.i, align 8
  %206 = ptrtoint ptr %end.i581 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %end.i581, align 4
  br i1 %merge.0.off0, label %if.then221, label %if.else225

if.then221:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #12
  %sub223 = add nsw i32 %conv127, -1
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %207, i32 0, i32 12, i32 %sub223, i32 1
  %208 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %bv_len.i, align 4
  %add.i607 = add i32 %209, %copy.5
  store i32 %add.i607, ptr %bv_len.i, align 4
  %.pre = add i32 %copy.5, %off.1
  br label %cleanup240.thread685

if.else225:                                       ; preds = %if.end219
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %207, i32 0, i32 12, i32 %conv127
  %210 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %page.3, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i609 = getelementptr %struct.skb_shared_info, ptr %207, i32 0, i32 12, i32 %conv127, i32 2
  %211 = ptrtoint ptr %bv_offset.i.i609 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %off.1, ptr %bv_offset.i.i609, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %207, i32 0, i32 12, i32 %conv127, i32 1
  %212 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %copy.5, ptr %bv_len.i.i.i, align 4
  %213 = getelementptr inbounds %struct.page, ptr %page.3, i32 0, i32 1
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile i32, ptr %213, align 4
  %and.i.i.i610 = and i32 %215, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i610)
  %tobool.not.i.i.i611 = icmp eq i32 %and.i.i.i610, 0
  br i1 %tobool.not.i.i.i611, label %if.end.i.i.i, label %if.then.i.i.i612, !prof !88

if.then.i.i.i612:                                 ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %215, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #12
  %216 = ptrtoint ptr %page.3 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i612
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i612 ], [ %216, %if.end.i.i.i ]
  %217 = inttoptr i32 %retval.0.i.i.i to ptr
  %218 = getelementptr inbounds %struct.page, ptr %217, i32 0, i32 1
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %218, align 4
  %221 = ptrtoint ptr %220 to i32
  %and.i8.i.i = and i32 %221, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i613

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_fill_page_desc.exit

if.then.i.i613:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 12
  %222 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i613, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %conv.i614 = add i8 %146, 1
  %223 = ptrtoint ptr %end.i581 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %end.i581, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %224, i32 0, i32 2
  %225 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv.i614, ptr %nr_frags.i, align 2
  %add = add i32 %copy.5, %off.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %pg_size.4)
  %cmp226 = icmp slt i32 %add, %pg_size.4
  br i1 %cmp226, label %if.then228, label %if.else231

if.then228:                                       ; preds = %skb_fill_page_desc.exit
  %226 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile i32, ptr %213, align 4
  %and.i.i615 = and i32 %227, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i615)
  %tobool.not.i.i616 = icmp eq i32 %and.i.i615, 0
  br i1 %tobool.not.i.i616, label %if.end.i.i619, label %if.then.i.i618, !prof !88

if.then.i.i618:                                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i617 = add i32 %227, -1
  br label %_compound_head.exit.i621

if.end.i.i619:                                    ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #12
  %228 = ptrtoint ptr %page.3 to i32
  br label %_compound_head.exit.i621

_compound_head.exit.i621:                         ; preds = %if.end.i.i619, %if.then.i.i618
  %retval.0.i.i620 = phi i32 [ %sub.i.i617, %if.then.i.i618 ], [ %228, %if.end.i.i619 ]
  %229 = inttoptr i32 %retval.0.i.i620 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %229, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %230 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %231, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !89

if.then.i1.i:                                     ; preds = %_compound_head.exit.i621
  call void @__sanitizer_cov_trace_pc() #12
  %232 = inttoptr i32 %retval.0.i.i620 to ptr
  call void @dump_page(ptr noundef %232, ptr noundef nonnull @.str.14) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i621
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %233 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@chtls_sendmsg, %if.then.i.i.i.i622)) #10
          to label %get_page.exit [label %if.then.i.i.i.i622], !srcloc !96

if.then.i.i.i.i622:                               ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__page_ref_mod(ptr noundef %229, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i622, %do.end5.i.i
  %234 = ptrtoint ptr %sk_frag to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %page.3, ptr %sk_frag, align 4
  br label %cleanup240.thread685

if.else231:                                       ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %235 = ptrtoint ptr %sk_frag to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr null, ptr %sk_frag, align 4
  br label %cleanup240.thread685

cleanup240.thread685:                             ; preds = %if.else231, %get_page.exit, %if.then221
  %add236.pre-phi = phi i32 [ %.pre, %if.then221 ], [ %add, %if.else231 ], [ %add, %get_page.exit ]
  %conv237 = trunc i32 %add236.pre-phi to i16
  %236 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %conv237, ptr %offset, align 4
  br label %if.end247

if.end247:                                        ; preds = %cleanup240.thread685, %if.end120.if.end247_crit_edge
  %copy.7 = phi i32 [ %copy.3, %if.end120.if.end247_crit_edge ], [ %copy.5, %cleanup240.thread685 ]
  %len248 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 6
  %237 = ptrtoint ptr %len248 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %len248, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %238, i32 %26)
  %cmp249 = icmp eq i32 %238, %26
  br i1 %cmp249, label %if.then257, label %if.end247.if.end258_crit_edge, !prof !89

if.end247.if.end258_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end258

if.then257:                                       ; preds = %if.end247
  %flags.i623 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 12
  %239 = ptrtoint ptr %flags.i623 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %flags.i623, align 4
  %241 = and i16 %240, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %241)
  %tobool.not.i624 = icmp eq i16 %241, 0
  br i1 %tobool.not.i624, label %if.then.i625, label %if.then257.tx_skb_finalize.exit627_crit_edge

if.then257.tx_skb_finalize.exit627_crit_edge:     ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_skb_finalize.exit627

if.then.i625:                                     ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #12
  %242 = ptrtoint ptr %flags.i623 to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 1, ptr %flags.i623, align 4
  br label %tx_skb_finalize.exit627

tx_skb_finalize.exit627:                          ; preds = %if.then.i625, %if.then257.tx_skb_finalize.exit627_crit_edge
  %243 = ptrtoint ptr %flags.i623 to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %flags.i623, align 4
  %245 = or i16 %244, 2
  store i16 %245, ptr %flags.i623, align 4
  br label %if.end258

if.end258:                                        ; preds = %tx_skb_finalize.exit627, %if.end247.if.end258_crit_edge
  %246 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %write_seq, align 4
  %add259 = add i32 %247, %copy.7
  store i32 %add259, ptr %write_seq, align 4
  %add260 = add i32 %copy.7, %copied.0771
  %sub261 = sub i32 %size.addr.0774, %copy.7
  %248 = ptrtoint ptr %txkey.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %txkey.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %249)
  %cmp.i629 = icmp sgt i32 %249, -1
  br i1 %cmp.i629, label %if.then263, label %if.end258.if.end269_crit_edge

if.end258.if.end269_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269

if.then263:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #12
  %250 = ptrtoint ptr %txleft to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %txleft, align 8
  %252 = trunc i32 %copy.7 to i16
  %conv268 = sub i16 %251, %252
  store i16 %conv268, ptr %txleft, align 8
  br label %if.end269

if.end269:                                        ; preds = %if.then263, %if.end258.if.end269_crit_edge
  br i1 %tobool.not.i5.i.i546, label %corked.exit, label %if.end269.land.lhs.true272_crit_edge

if.end269.land.lhs.true272_crit_edge:             ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true272

corked.exit:                                      ; preds = %if.end269
  %253 = ptrtoint ptr %nonagle.i.i.i542 to i32
  call void @__asan_load2_noabort(i32 %253)
  %bf.load.i = load i16, ptr %nonagle.i.i.i542, align 4
  %254 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %254)
  %tobool2.i.not = icmp eq i16 %254, 0
  br i1 %tobool2.i.not, label %corked.exit.if.end284_crit_edge, label %corked.exit.land.lhs.true272_crit_edge

corked.exit.land.lhs.true272_crit_edge:           ; preds = %corked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true272

corked.exit.if.end284_crit_edge:                  ; preds = %corked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end284

land.lhs.true272:                                 ; preds = %corked.exit.land.lhs.true272_crit_edge, %if.end269.land.lhs.true272_crit_edge
  %255 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load volatile i32, ptr %sk_sndbuf.i, align 4
  %257 = ptrtoint ptr %sk_wmem_queued.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load volatile i32, ptr %sk_wmem_queued.i, align 8
  %sub.i633 = sub i32 %256, %258
  %259 = load volatile i32, ptr %sk_wmem_queued.i, align 8
  %shr.i = ashr i32 %259, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i633, i32 %shr.i)
  %cmp275 = icmp slt i32 %sub.i633, %shr.i
  br i1 %cmp275, label %if.then277, label %land.lhs.true272.if.end284_crit_edge

land.lhs.true272.if.end284_crit_edge:             ; preds = %land.lhs.true272
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end284

if.then277:                                       ; preds = %land.lhs.true272
  call void @__sanitizer_cov_trace_pc() #12
  %flags280 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 12
  %260 = ptrtoint ptr %flags280 to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %flags280, align 4
  %262 = or i16 %261, 2
  store i16 %262, ptr %flags280, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.then277, %land.lhs.true272.if.end284_crit_edge, %corked.exit.if.end284_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub261)
  %cmp285 = icmp eq i32 %sub261, 0
  br i1 %cmp285, label %if.end284.out_crit_edge, label %if.end288

if.end284.out_crit_edge:                          ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end288:                                        ; preds = %if.end284
  %flags291 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 12
  %263 = ptrtoint ptr %flags291 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %flags291, align 4
  %265 = and i16 %264, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %265)
  %tobool294.not = icmp eq i16 %265, 0
  br i1 %tobool294.not, label %if.end288.while.cond.backedge_crit_edge, label %if.then295

if.end288.while.cond.backedge_crit_edge:          ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then295:                                       ; preds = %if.end288
  %266 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i636 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i636)
  %tobool.not.i637 = icmp eq i32 %call.i636, 0
  br i1 %tobool.not.i637, label %land.lhs.true.i640, label %if.then295.do.end7.i647_crit_edge

if.then295.do.end7.i647_crit_edge:                ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i647

land.lhs.true.i640:                               ; preds = %if.then295
  %call2.i638 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i638)
  %tobool3.not.i639 = icmp eq i32 %call2.i638, 0
  br i1 %tobool3.not.i639, label %land.lhs.true.i640.do.end7.i647_crit_edge, label %land.lhs.true4.i642

land.lhs.true.i640.do.end7.i647_crit_edge:        ; preds = %land.lhs.true.i640
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i647

land.lhs.true4.i642:                              ; preds = %land.lhs.true.i640
  %.b15.i641 = load i1, ptr @push_frames_if_head.__warned, align 1
  br i1 %.b15.i641, label %land.lhs.true4.i642.do.end7.i647_crit_edge, label %if.then.i643

land.lhs.true4.i642.do.end7.i647_crit_edge:       ; preds = %land.lhs.true4.i642
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i647

if.then.i643:                                     ; preds = %land.lhs.true4.i642
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @push_frames_if_head.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 879, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i647

do.end7.i647:                                     ; preds = %if.then.i643, %land.lhs.true4.i642.do.end7.i647_crit_edge, %land.lhs.true.i640.do.end7.i647_crit_edge, %if.then295.do.end7.i647_crit_edge
  %268 = ptrtoint ptr %267 to i32
  %and.i644 = and i32 %268, -4
  %269 = inttoptr i32 %and.i644 to ptr
  %qlen.i.i645 = getelementptr inbounds %struct.chtls_sock, ptr %269, i32 0, i32 4, i32 1
  %270 = ptrtoint ptr %qlen.i.i645 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %qlen.i.i645, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %271)
  %cmp.i646 = icmp eq i32 %271, 1
  br i1 %cmp.i646, label %if.then11.i649, label %do.end7.i647.while.cond.backedge_crit_edge

do.end7.i647.while.cond.backedge_crit_edge:       ; preds = %do.end7.i647
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then11.i649:                                   ; preds = %do.end7.i647
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i648 = call i32 @chtls_push_frames(ptr noundef %269, i32 noundef 1) #10
  br label %while.cond.backedge

wait_for_sndbuf:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %272 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %sk_socket, align 8
  %flags297 = getelementptr inbounds %struct.socket, ptr %273, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags297) #10
  br label %wait_for_memory

wait_for_memory:                                  ; preds = %wait_for_sndbuf, %if.end171.wait_for_memory_crit_edge, %if.end79.wait_for_memory_crit_edge, %select_size.exit558.wait_for_memory_crit_edge
  %recordsz.3 = phi i32 [ %recordsz.2, %if.end79.wait_for_memory_crit_edge ], [ %recordsz.0770, %wait_for_sndbuf ], [ %recordsz.2, %select_size.exit558.wait_for_memory_crit_edge ], [ %recordsz.2, %if.end171.wait_for_memory_crit_edge ]
  %call298 = call fastcc i32 @csk_wait_memory(ptr noundef %5, ptr noundef %sk, ptr noundef nonnull %timeo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call298)
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %wait_for_memory.while.cond.backedge_crit_edge, label %wait_for_memory.do_error_crit_edge

wait_for_memory.do_error_crit_edge:               ; preds = %wait_for_memory
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_error

wait_for_memory.while.cond.backedge_crit_edge:    ; preds = %wait_for_memory
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %wait_for_memory.while.cond.backedge_crit_edge, %if.then11.i649, %do.end7.i647.while.cond.backedge_crit_edge, %if.end288.while.cond.backedge_crit_edge
  %recordsz.4 = phi i32 [ %recordsz.2, %if.end288.while.cond.backedge_crit_edge ], [ %recordsz.2, %do.end7.i647.while.cond.backedge_crit_edge ], [ %recordsz.2, %if.then11.i649 ], [ %recordsz.3, %wait_for_memory.while.cond.backedge_crit_edge ]
  %copied.1 = phi i32 [ %add260, %if.end288.while.cond.backedge_crit_edge ], [ %add260, %do.end7.i647.while.cond.backedge_crit_edge ], [ %add260, %if.then11.i649 ], [ %copied.0771, %wait_for_memory.while.cond.backedge_crit_edge ]
  %size.addr.1 = phi i32 [ %sub261, %if.end288.while.cond.backedge_crit_edge ], [ %sub261, %do.end7.i647.while.cond.backedge_crit_edge ], [ %sub261, %if.then11.i649 ], [ %size.addr.0774, %wait_for_memory.while.cond.backedge_crit_edge ]
  %274 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %count.i.i, align 8
  %tobool30.not = icmp eq i32 %275, 0
  br i1 %tobool30.not, label %while.cond.backedge.out_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.out_crit_edge:                ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %while.cond.backedge.out_crit_edge, %if.end284.out_crit_edge
  %copied.2 = phi i32 [ %copied.1, %while.cond.backedge.out_crit_edge ], [ %add260, %if.end284.out_crit_edge ]
  %276 = ptrtoint ptr %flags.i505 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %flags.i505, align 4
  %and.i.i652 = and i32 %277, -5
  store i32 %and.i.i652, ptr %flags.i505, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.2)
  %tobool305.not = icmp eq i32 %copied.2, 0
  br i1 %tobool305.not, label %out.cleanup321_crit_edge, label %out.if.then306_crit_edge

out.if.then306_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then306

out.cleanup321_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup321

if.then306:                                       ; preds = %out.thread, %out.if.then306_crit_edge
  %copied.2724 = phi i32 [ %copied.0771, %out.thread ], [ %copied.2, %out.if.then306_crit_edge ]
  call void @chtls_tcp_push(ptr noundef %sk, i32 noundef %7)
  br label %cleanup321

do_fault:                                         ; preds = %if.then213, %if.then209.do_fault_crit_edge, %if.end21.critedge.i.i.i, %do.end.i.i.i
  %err.8697 = phi i32 [ %call1.i, %do.end.i.i.i ], [ %call1.i, %if.end21.critedge.i.i.i ], [ %call1.i601, %if.then213 ], [ %call1.i601, %if.then209.do_fault_crit_edge ]
  %len308 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 6
  %278 = ptrtoint ptr %len308 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %len308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool309.not = icmp eq i32 %279, 0
  br i1 %tobool309.not, label %if.then310, label %do_fault.do_error_crit_edge

do_fault.do_error_crit_edge:                      ; preds = %do_fault
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_error

if.then310:                                       ; preds = %do_fault
  call void @__sanitizer_cov_trace_pc() #12
  %qlen.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4, i32 1
  %280 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %qlen.i, align 4
  %sub.i653 = add i32 %281, -1
  store volatile i32 %sub.i653, ptr %qlen.i, align 4
  %282 = ptrtoint ptr %skb.2 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %skb.2, align 8
  %prev9.i = getelementptr inbounds %struct.anon.46, ptr %skb.2, i32 0, i32 1
  %284 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.2, align 8
  %prev17.i = getelementptr inbounds %struct.anon.46, ptr %283, i32 0, i32 1
  %286 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store volatile ptr %285, ptr %prev17.i, align 4
  %287 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %287)
  store volatile ptr %283, ptr %285, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 20
  %288 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %truesize, align 8
  %290 = ptrtoint ptr %sk_wmem_queued.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %sk_wmem_queued.i, align 8
  %sub312 = sub i32 %291, %289
  store i32 %sub312, ptr %sk_wmem_queued.i, align 8
  call void @__kfree_skb(ptr noundef nonnull %skb.2) #10
  br label %do_error

do_error:                                         ; preds = %if.then310, %do_fault.do_error_crit_edge, %wait_for_memory.do_error_crit_edge
  %err.8696 = phi i32 [ %err.8697, %do_fault.do_error_crit_edge ], [ %err.8697, %if.then310 ], [ %call298, %wait_for_memory.do_error_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0771)
  %tobool314.not = icmp eq i32 %copied.0771, 0
  br i1 %tobool314.not, label %do_error.out_err_crit_edge, label %out.thread

do_error.out_err_crit_edge:                       ; preds = %do_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

out.thread:                                       ; preds = %do_error
  call void @__sanitizer_cov_trace_pc() #12
  %292 = ptrtoint ptr %flags.i505 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %flags.i505, align 4
  %and.i.i652722 = and i32 %293, -5
  store i32 %and.i.i652722, ptr %flags.i505, align 4
  br label %if.then306

out_err:                                          ; preds = %do_error.out_err_crit_edge, %cleanup302.thread714, %lor.lhs.false.out_err_crit_edge, %sk_clear_bit.exit.out_err_crit_edge, %if.then17.out_err_crit_edge
  %err.9 = phi i32 [ -32, %sk_clear_bit.exit.out_err_crit_edge ], [ -32, %lor.lhs.false.out_err_crit_edge ], [ %err.8696, %do_error.out_err_crit_edge ], [ %call18, %if.then17.out_err_crit_edge ], [ %call47, %cleanup302.thread714 ]
  %flags.i654 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 10
  %294 = ptrtoint ptr %flags.i654 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load volatile i32, ptr %flags.i654, align 4
  %296 = and i32 %295, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %tobool.i.not = icmp eq i32 %296, 0
  br i1 %tobool.i.not, label %out_err.if.end319_crit_edge, label %if.then318

out_err.if.end319_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end319

if.then318:                                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i656 = and i32 %295, -5
  %297 = ptrtoint ptr %flags.i654 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %and.i.i656, ptr %flags.i654, align 4
  br label %if.end319

if.end319:                                        ; preds = %if.then318, %out_err.if.end319_crit_edge
  %call320 = call i32 @sk_stream_error(ptr noundef %sk, i32 noundef %7, i32 noundef %err.9) #10
  br label %cleanup321

cleanup321:                                       ; preds = %if.end319, %if.then306, %out.cleanup321_crit_edge, %out.thread805
  %copied.3 = phi i32 [ %call320, %if.end319 ], [ %copied.2724, %if.then306 ], [ 0, %out.cleanup321_crit_edge ], [ 0, %out.thread805 ]
  call void @release_sock(ptr noundef %sk) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #10
  ret i32 %copied.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_wait_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chtls_proccess_cmsg(ptr nocapture noundef readonly %msg, ptr nocapture noundef writeonly %record_type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %0 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ugt i32 %1, 11
  br i1 %cmp, label %cond.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %entry
  %2 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %tobool.not1 = icmp eq ptr %4, null
  br i1 %tobool.not1, label %cond.end.cleanup_crit_edge, label %for.body.lr.ph

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %cond.end
  %5 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rc.03 = phi i32 [ -22, %for.body.lr.ph ], [ %rc.1, %for.inc.for.body_crit_edge ]
  %cmsg.02 = phi ptr [ %4, %for.body.lr.ph ], [ %add.ptr.i.i, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %cmsg.02 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmsg.02, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp1 = icmp ugt i32 %7, 11
  br i1 %cmp1, label %land.lhs.true, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_controllen, align 8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %cmsg.02 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub.neg = sub i32 %9, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp4.not = icmp ugt i32 %7, %sub
  br i1 %cmp4.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.02, i32 0, i32 1
  %12 = ptrtoint ptr %cmsg_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmsg_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 282, i32 %13)
  %cmp5.not = icmp eq i32 %13, 282
  br i1 %cmp5.not, label %if.end7, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end7:                                          ; preds = %if.end
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, ptr %cmsg.02, i32 0, i32 2
  %14 = ptrtoint ptr %cmsg_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmsg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cond16 = icmp ne i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %7)
  %cmp9 = icmp ult i32 %7, 13
  %or.cond = select i1 %cond16, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %16 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_flags, align 4
  %and = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %cmsg.02, i32 12
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr, align 1
  %20 = ptrtoint ptr %record_type to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %record_type, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %if.end.for.inc_crit_edge
  %rc.1 = phi i32 [ %rc.03, %if.end.for.inc_crit_edge ], [ 0, %if.end14 ]
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 8
  %23 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_controllen, align 8
  %25 = ptrtoint ptr %cmsg.02 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmsg.02, align 4
  %sub.i.i = add i32 %26, 3
  %and.i.i = and i32 %sub.i.i, -4
  %add.ptr.i.i = getelementptr i8, ptr %cmsg.02, i32 %and.i.i
  %add.ptr1.i.i = getelementptr %struct.cmsghdr, ptr %add.ptr.i.i, i32 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %24)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub.i.i, %24
  %tobool.not11 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not11
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %cond.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %rc.1, %for.inc.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @push_frames_if_head(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @push_frames_if_head.__warned, align 1
  br i1 %.b15, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @push_frames_if_head.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 879, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %qlen.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then11, label %do.end7.if.end13_crit_edge

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 @chtls_push_frames(ptr noundef %3, i32 noundef 1)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end7.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_record_skb(ptr noundef %sk, i32 noundef %size, i1 noundef zeroext %zcopy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b39 = load i1, ptr @get_record_skb.__warned, align 1
  br i1 %.b39, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @get_record_skb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 851, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %phi.bo38 = add i32 %size, 156
  %spec.select = select i1 %zcopy, i32 156, i32 %phi.bo38
  %4 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.end7.max_ivs_size.exit_crit_edge

do.end7.max_ivs_size.exit_crit_edge:              ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %max_ivs_size.exit

land.lhs.true.i.i:                                ; preds = %do.end7
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.max_ivs_size.exit_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.max_ivs_size.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max_ivs_size.exit

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @nos_ivs.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true4.i.i.max_ivs_size.exit_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.max_ivs_size.exit_crit_edge:   ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max_ivs_size.exit

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nos_ivs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.1) #10
  br label %max_ivs_size.exit

max_ivs_size.exit:                                ; preds = %if.then.i.i, %land.lhs.true4.i.i.max_ivs_size.exit_crit_edge, %land.lhs.true.i.i.max_ivs_size.exit_crit_edge, %do.end7.max_ivs_size.exit_crit_edge
  %6 = ptrtoint ptr %5 to i32
  %and.i.i = and i32 %6, -4
  %7 = inttoptr i32 %and.i.i to ptr
  %mfs.i.i = getelementptr inbounds %struct.chtls_sock, ptr %7, i32 0, i32 37, i32 15
  %8 = ptrtoint ptr %mfs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mfs.i.i, align 4
  %add.i.i = add i32 %size, -1
  %sub.i.i = add i32 %9, %add.i.i
  %div.i.i = udiv i32 %sub.i.i, %9
  %mul.i = shl i32 %div.i.i, 4
  %add13 = add i32 %mul.i, %spec.select
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %10 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_allocation, align 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add13, i32 noundef %11, i32 noundef 0, i32 noundef -1) #10
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %max_ivs_size.exit.if.end25_crit_edge, label %if.then18, !prof !89

max_ivs_size.exit.if.end25_crit_edge:             ; preds = %max_ivs_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then18:                                        ; preds = %max_ivs_size.exit
  %12 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i.i41 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %tobool.not.i.i42 = icmp eq i32 %call.i.i41, 0
  br i1 %tobool.not.i.i42, label %land.lhs.true.i.i45, label %if.then18.max_ivs_size.exit55_crit_edge

if.then18.max_ivs_size.exit55_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %max_ivs_size.exit55

land.lhs.true.i.i45:                              ; preds = %if.then18
  %call2.i.i43 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i43)
  %tobool3.not.i.i44 = icmp eq i32 %call2.i.i43, 0
  br i1 %tobool3.not.i.i44, label %land.lhs.true.i.i45.max_ivs_size.exit55_crit_edge, label %land.lhs.true4.i.i47

land.lhs.true.i.i45.max_ivs_size.exit55_crit_edge: ; preds = %land.lhs.true.i.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %max_ivs_size.exit55

land.lhs.true4.i.i47:                             ; preds = %land.lhs.true.i.i45
  %.b13.i.i46 = load i1, ptr @nos_ivs.__warned, align 1
  br i1 %.b13.i.i46, label %land.lhs.true4.i.i47.max_ivs_size.exit55_crit_edge, label %if.then.i.i48

land.lhs.true4.i.i47.max_ivs_size.exit55_crit_edge: ; preds = %land.lhs.true4.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %max_ivs_size.exit55

if.then.i.i48:                                    ; preds = %land.lhs.true4.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nos_ivs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.1) #10
  br label %max_ivs_size.exit55

max_ivs_size.exit55:                              ; preds = %if.then.i.i48, %land.lhs.true4.i.i47.max_ivs_size.exit55_crit_edge, %land.lhs.true.i.i45.max_ivs_size.exit55_crit_edge, %if.then18.max_ivs_size.exit55_crit_edge
  %14 = ptrtoint ptr %13 to i32
  %and.i.i49 = and i32 %14, -4
  %15 = inttoptr i32 %and.i.i49 to ptr
  %mfs.i.i50 = getelementptr inbounds %struct.chtls_sock, ptr %15, i32 0, i32 37, i32 15
  %16 = ptrtoint ptr %mfs.i.i50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mfs.i.i50, align 4
  %sub.i.i52 = add i32 %17, %add.i.i
  %div.i.i53 = udiv i32 %sub.i.i52, %17
  %mul.i54 = shl i32 %div.i.i53, 4
  %add20 = add i32 %mul.i54, 156
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add20
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %21, i32 %add20
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  tail call void @skb_entail(ptr noundef %sk, ptr noundef nonnull %call.i, i32 noundef 1)
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %26 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %ulp = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 20
  %ofld = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 21
  %27 = ptrtoint ptr %ofld to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %ofld, align 1
  %type = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 37, i32 3
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %type, align 2
  %conv = trunc i16 %29 to i8
  %30 = ptrtoint ptr %ulp to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %ulp, align 4
  br label %if.end25

if.end25:                                         ; preds = %max_ivs_size.exit55, %max_ivs_size.exit.if.end25_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csk_wait_memory(ptr nocapture noundef readonly %cdev, ptr noundef %sk, ptr nocapture noundef %timeo_p) unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @woken_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %13 = ptrtoint ptr %timeo_p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timeo_p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %max_host_sndbuf.i = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 22
  %15 = ptrtoint ptr %max_host_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_host_sndbuf.i, align 16
  %sk_wmem_queued.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %17 = ptrtoint ptr %sk_wmem_queued.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_wmem_queued.i, align 8
  %sub.i = sub i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = call i32 @prandom_u32() #10
  %rem = urem i32 %call6, 20
  %add = add nuw nsw i32 %rem, 2
  %call7 = call i32 @prandom_u32() #10
  %rem8 = urem i32 %call7, 20
  %add9 = add nuw nsw i32 %rem8, 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %current_timeo.0 = phi i32 [ %add, %if.then ], [ %14, %entry.if.end_crit_edge ]
  %vm_wait.0 = phi i32 [ %add9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %19 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %19, align 8
  call void @add_wait_queue(ptr noundef %21, ptr noundef nonnull %wait) #10
  %22 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %sk_socket33 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %sk_write_pending = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 28
  br label %while.cond

while.cond:                                       ; preds = %if.end78, %if.end
  %current_timeo.1 = phi i32 [ %current_timeo.0, %if.end ], [ %current_timeo.4, %if.end78 ]
  %vm_wait.1 = phi i32 [ %vm_wait.0, %if.end ], [ 0, %if.end78 ]
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %25 = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i, label %while.cond.sk_set_bit.exit_crit_edge, label %if.end.i

while.cond.sk_set_bit.exit_crit_edge:             ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_set_bit.exit

if.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %19, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %27, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #10
  br label %sk_set_bit.exit

sk_set_bit.exit:                                  ; preds = %if.end.i, %while.cond.sk_set_bit.exit_crit_edge
  %28 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool11.not = icmp eq i32 %29, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %sk_set_bit.exit.do_rm_wq_crit_edge

sk_set_bit.exit.do_rm_wq_crit_edge:               ; preds = %sk_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_rm_wq

lor.lhs.false:                                    ; preds = %sk_set_bit.exit
  %30 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sk_shutdown, align 2
  %32 = and i8 %31, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool12.not = icmp eq i8 %32, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false.do_rm_wq_crit_edge

lor.lhs.false.do_rm_wq_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_rm_wq

if.end14:                                         ; preds = %lor.lhs.false
  %33 = ptrtoint ptr %timeo_p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timeo_p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool15.not = icmp eq i32 %34, 0
  br i1 %tobool15.not, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end14
  br i1 %tobool.not, label %if.then18, label %if.then16.do_rm_wq_crit_edge

if.then16.do_rm_wq_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_rm_wq

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %sk_socket33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk_socket33, align 8
  %flags19 = getelementptr inbounds %struct.socket, ptr %36, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags19) #10
  br label %do_rm_wq

if.end21:                                         ; preds = %if.end14
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stack.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end21.do_interrupted_crit_edge, !prof !88

if.end21.do_interrupted_crit_edge:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_interrupted

signal_pending.exit:                              ; preds = %if.end21
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %40, align 4
  %and1.i.i.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool25.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool25.not, label %if.end27, label %signal_pending.exit.do_interrupted_crit_edge

signal_pending.exit.do_interrupted_crit_edge:     ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_interrupted

if.end27:                                         ; preds = %signal_pending.exit
  %46 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %22, align 4
  %48 = and i32 %47, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i121 = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i121, label %if.end27.sk_clear_bit.exit_crit_edge, label %if.end.i123

if.end27.sk_clear_bit.exit_crit_edge:             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_clear_bit.exit

if.end.i123:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %19, align 8
  %flags.i122 = getelementptr inbounds %struct.socket_wq, ptr %50, i32 0, i32 2
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i122) #10
  br label %sk_clear_bit.exit

sk_clear_bit.exit:                                ; preds = %if.end.i123, %if.end27.sk_clear_bit.exit_crit_edge
  %51 = ptrtoint ptr %max_host_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_host_sndbuf.i, align 16
  %53 = ptrtoint ptr %sk_wmem_queued.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sk_wmem_queued.i, align 8
  %sub.i126 = sub i32 %52, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i126)
  %cmp.i127 = icmp sgt i32 %sub.i126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vm_wait.1)
  %tobool30.not = icmp eq i32 %vm_wait.1, 0
  %or.cond = select i1 %cmp.i127, i1 %tobool30.not, i1 false
  br i1 %or.cond, label %sk_clear_bit.exit.do_rm_wq_crit_edge, label %if.end32

sk_clear_bit.exit.do_rm_wq_crit_edge:             ; preds = %sk_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_rm_wq

if.end32:                                         ; preds = %sk_clear_bit.exit
  %55 = ptrtoint ptr %sk_socket33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sk_socket33, align 8
  %flags34 = getelementptr inbounds %struct.socket, ptr %56, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags34) #10
  %57 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sk_write_pending, align 4
  %inc = add i32 %58, 1
  store i32 %inc, ptr %sk_write_pending, align 4
  call void @release_sock(ptr noundef %sk) #10
  %59 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool36.not = icmp eq i32 %60, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %if.end32.if.end48_crit_edge

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

lor.lhs.false37:                                  ; preds = %if.end32
  %61 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sk_shutdown, align 2
  %63 = and i8 %62, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool41.not = icmp eq i8 %63, 0
  br i1 %tobool41.not, label %lor.rhs, label %lor.lhs.false37.if.end48_crit_edge

lor.lhs.false37.if.end48_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

lor.rhs:                                          ; preds = %lor.lhs.false37
  %64 = ptrtoint ptr %max_host_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_host_sndbuf.i, align 16
  %66 = ptrtoint ptr %sk_wmem_queued.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sk_wmem_queued.i, align 8
  %sub.i130 = sub i32 %65, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i130)
  %cmp.i131 = icmp sgt i32 %sub.i130, 0
  %spec.select = select i1 %cmp.i131, i1 %tobool30.not, i1 false
  br i1 %spec.select, label %lor.rhs.if.end48_crit_edge, label %if.then46

lor.rhs.if.end48_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then46:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %current_timeo.1) #10
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %lor.rhs.if.end48_crit_edge, %lor.lhs.false37.if.end48_crit_edge, %if.end32.if.end48_crit_edge
  %current_timeo.2 = phi i32 [ %current_timeo.1, %lor.rhs.if.end48_crit_edge ], [ %call47, %if.then46 ], [ %current_timeo.1, %lor.lhs.false37.if.end48_crit_edge ], [ %current_timeo.1, %if.end32.if.end48_crit_edge ]
  %68 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 212
  %70 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %71 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sk_write_pending, align 4
  %dec = add i32 %72, -1
  store i32 %dec, ptr %sk_write_pending, align 4
  br i1 %tobool30.not, label %if.end48.if.end78_crit_edge, label %if.then69

if.end48.if.end78_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then69:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %timeo_p to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %timeo_p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %74)
  %cmp.not = icmp eq i32 %74, 2147483647
  %sub.neg = sub i32 %current_timeo.2, %vm_wait.1
  %sub72 = add i32 %sub.neg, %74
  %75 = call i32 @llvm.smax.i32(i32 %sub72, i32 0)
  %current_timeo.3 = select i1 %cmp.not, i32 2147483647, i32 %75
  br label %if.end78

if.end78:                                         ; preds = %if.then69, %if.end48.if.end78_crit_edge
  %current_timeo.4 = phi i32 [ %current_timeo.3, %if.then69 ], [ %current_timeo.2, %if.end48.if.end78_crit_edge ]
  %76 = ptrtoint ptr %timeo_p to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %current_timeo.4, ptr %timeo_p, align 4
  br label %while.cond

do_rm_wq:                                         ; preds = %do_interrupted, %sk_clear_bit.exit.do_rm_wq_crit_edge, %if.then18, %if.then16.do_rm_wq_crit_edge, %lor.lhs.false.do_rm_wq_crit_edge, %sk_set_bit.exit.do_rm_wq_crit_edge
  %err.0 = phi i32 [ %cond.i, %do_interrupted ], [ -11, %if.then16.do_rm_wq_crit_edge ], [ -11, %if.then18 ], [ -32, %lor.lhs.false.do_rm_wq_crit_edge ], [ -32, %sk_set_bit.exit.do_rm_wq_crit_edge ], [ 0, %sk_clear_bit.exit.do_rm_wq_crit_edge ]
  %77 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %19, align 8
  call void @remove_wait_queue(ptr noundef %78, ptr noundef nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  ret i32 %err.0

do_interrupted:                                   ; preds = %signal_pending.exit.do_interrupted_crit_edge, %if.end21.do_interrupted_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %34)
  %cmp.i136 = icmp eq i32 %34, 2147483647
  %cond.i = select i1 %cmp.i136, i32 -512, i32 -4
  br label %do_rm_wq
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chtls_sendpage(ptr noundef %sk, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b203 = load i1, ptr @chtls_sendpage.__warned, align 1
  br i1 %.b203, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_sendpage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1241, ptr noundef nonnull @.str.1) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %cdev11 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cdev11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev11, align 4
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %and12 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %cond.false.i, label %do.end8.sock_sndtimeo.exit_crit_edge

do.end8.sock_sndtimeo.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 31
  %6 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %do.end8.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %7, %cond.false.i ], [ 0, %do.end8.sock_sndtimeo.exit_crit_edge ]
  %8 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %timeo, align 4
  %call15 = call i32 @sk_stream_wait_connect(ptr noundef %sk, ptr noundef nonnull %timeo) #10
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp.not = icmp eq i32 %call15, 0
  %or.cond = select i1 %tobool17.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end20, label %sock_sndtimeo.exit.out_err_crit_edge

sock_sndtimeo.exit.out_err_crit_edge:             ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end20:                                         ; preds = %sock_sndtimeo.exit
  %mss21 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 21
  %11 = ptrtoint ptr %mss21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mss21, align 8
  %flags.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %14, 4
  store i32 %or.i.i, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp22.not271 = icmp eq i32 %size, 0
  br i1 %cmp22.not271, label %out.thread283, label %while.body.lr.ph

out.thread283:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i.i241285 = and i32 %16, -5
  store i32 %and.i.i241285, ptr %flags.i, align 4
  br label %cleanup120

while.body.lr.ph:                                 ; preds = %if.end20
  %txq = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 1
  %max_host_sndbuf.i = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 22
  %sk_wmem_queued.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %txkey.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 37, i32 16
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %nonagle.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 37
  %and.i4.i.i = and i32 %flags, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %and.i4.i.i, 0
  %17 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %18 = ptrtoint ptr %page to i32
  %write_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 80
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offset.addr.0278 = phi i32 [ %offset, %while.body.lr.ph ], [ %offset.addr.1, %cleanup.while.body_crit_edge ]
  %size.addr.0275 = phi i32 [ %size, %while.body.lr.ph ], [ %size.addr.1, %cleanup.while.body_crit_edge ]
  %copied.0273 = phi i32 [ 0, %while.body.lr.ph ], [ %copied.1, %cleanup.while.body_crit_edge ]
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %20, %txq
  %tobool24.not268 = icmp eq ptr %20, null
  %tobool24.not = or i1 %cmp.i, %tobool24.not268
  br i1 %tobool24.not, label %while.body.new_buf_crit_edge, label %lor.lhs.false

while.body.new_buf_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_buf

lor.lhs.false:                                    ; preds = %while.body
  %flags25 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 12
  %21 = ptrtoint ptr %flags25 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags25, align 4
  %23 = and i16 %22, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool27.not = icmp eq i16 %23, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false.new_buf_crit_edge

lor.lhs.false.new_buf_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_buf

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %len = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %sub = sub i32 %12, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp29 = icmp slt i32 %sub, 1
  br i1 %cmp29, label %lor.lhs.false28.new_buf_crit_edge, label %lor.lhs.false28.land.rhs.i.i208_crit_edge

lor.lhs.false28.land.rhs.i.i208_crit_edge:        ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i208

lor.lhs.false28.new_buf_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_buf

new_buf:                                          ; preds = %if.then11.i, %do.end7.i.new_buf_crit_edge, %lor.lhs.false28.new_buf_crit_edge, %lor.lhs.false.new_buf_crit_edge, %while.body.new_buf_crit_edge
  %26 = ptrtoint ptr %max_host_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_host_sndbuf.i, align 16
  %28 = ptrtoint ptr %sk_wmem_queued.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sk_wmem_queued.i, align 8
  %sub.i = sub i32 %27, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i204 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i204, label %if.end34, label %wait_for_sndbuf

if.end34:                                         ; preds = %new_buf
  %30 = ptrtoint ptr %txkey.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %txkey.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i205 = icmp sgt i32 %31, -1
  br i1 %cmp.i205, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 3700, i32 %size.addr.0275)
  %cmp.i206 = icmp sgt i32 %size.addr.0275, 3700
  br i1 %cmp.i206, label %if.then36.if.end40_crit_edge, label %if.end.i

if.then36.if.end40_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end.i:                                         ; preds = %if.then36
  %32 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i.do.end7.i.i.i_crit_edge

if.end.i.do.end7.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b22.i.i.i = load i1, ptr @should_push.__warned, align 1
  br i1 %.b22.i.i.i, label %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge:     ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @should_push.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 730, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge, %if.end.i.do.end7.i.i.i_crit_edge
  %34 = ptrtoint ptr %33 to i32
  %and.i.i.i = and i32 %34, -4
  %35 = inttoptr i32 %and.i.i.i to ptr
  %cdev10.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %cdev10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cdev10.i.i.i, align 4
  %tobool12.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool12.not.i.i.i, label %do.end7.i.i.i.if.end40_crit_edge, label %if.end14.i.i.i

do.end7.i.i.i.if.end40_crit_edge:                 ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end14.i.i.i:                                   ; preds = %do.end7.i.i.i
  %wr_credits.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %35, i32 0, i32 12
  %38 = ptrtoint ptr %wr_credits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wr_credits.i.i.i, align 4
  %wr_max_credits.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %35, i32 0, i32 14
  %40 = ptrtoint ptr %wr_max_credits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wr_max_credits.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.i.i.i = icmp eq i32 %39, %41
  br i1 %cmp.i.i.i, label %land.rhs.i.i, label %should_push.exit.i.i

should_push.exit.i.i:                             ; preds = %if.end14.i.i.i
  %42 = ptrtoint ptr %nonagle.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i.i.i = load i16, ptr %nonagle.i.i.i, align 4
  %43 = and i16 %bf.load.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool16.i.not.i.i = icmp ne i16 %43, 0
  %or.cond.i.i = and i1 %tobool.not.i5.i.i, %tobool16.i.not.i.i
  br i1 %or.cond.i.i, label %should_push.exit.i.i.send_should_push.exit.i_crit_edge, label %should_push.exit.i.i.if.end40_crit_edge

should_push.exit.i.i.if.end40_crit_edge:          ; preds = %should_push.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

should_push.exit.i.i.send_should_push.exit.i_crit_edge: ; preds = %should_push.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_should_push.exit.i

land.rhs.i.i:                                     ; preds = %if.end14.i.i.i
  br i1 %tobool.not.i5.i.i, label %land.rhs.i.i.send_should_push.exit.i_crit_edge, label %land.rhs.i.i.if.end40_crit_edge

land.rhs.i.i.if.end40_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

land.rhs.i.i.send_should_push.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_should_push.exit.i

send_should_push.exit.i:                          ; preds = %land.rhs.i.i.send_should_push.exit.i_crit_edge, %should_push.exit.i.i.send_should_push.exit.i_crit_edge
  %44 = ptrtoint ptr %nonagle.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i7.i.i = load i16, ptr %nonagle.i.i.i, align 4
  %45 = and i16 %bf.load.i7.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool2.i.i.i = icmp eq i16 %45, 0
  %spec.select.i = select i1 %tobool2.i.i.i, i32 %size.addr.0275, i32 3700
  br label %if.end40

if.else:                                          ; preds = %if.end34
  %46 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sk_allocation.i, align 8
  %call.i.i = call ptr @__alloc_skb(i32 noundef 92, i32 noundef %47, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.else.wait_for_memory_crit_edge, label %if.end40.thread247, !prof !89

if.else.wait_for_memory_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

if.end40.thread247:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %48 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 92
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %50 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %51, i32 92
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  call void @skb_entail(ptr noundef %sk, ptr noundef nonnull %call.i.i, i32 noundef 1) #10
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %54 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %56 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  br label %land.rhs.i.i208

if.end40:                                         ; preds = %send_should_push.exit.i, %land.rhs.i.i.if.end40_crit_edge, %should_push.exit.i.i.if.end40_crit_edge, %do.end7.i.i.i.if.end40_crit_edge, %if.then36.if.end40_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then36.if.end40_crit_edge ], [ 3700, %should_push.exit.i.i.if.end40_crit_edge ], [ 3700, %do.end7.i.i.i.if.end40_crit_edge ], [ 3700, %land.rhs.i.i.if.end40_crit_edge ], [ %spec.select.i, %send_should_push.exit.i ]
  %call38 = call fastcc ptr @get_record_skb(ptr noundef %sk, i32 noundef %retval.0.i, i1 noundef zeroext true)
  %tobool41.not = icmp eq ptr %call38, null
  br i1 %tobool41.not, label %if.end40.wait_for_memory_crit_edge, label %if.end40.land.rhs.i.i208_crit_edge

if.end40.land.rhs.i.i208_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i208

if.end40.wait_for_memory_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

land.rhs.i.i208:                                  ; preds = %if.end40.land.rhs.i.i208_crit_edge, %if.end40.thread247, %lor.lhs.false28.land.rhs.i.i208_crit_edge
  %skb.1 = phi ptr [ %20, %lor.lhs.false28.land.rhs.i.i208_crit_edge ], [ %call38, %if.end40.land.rhs.i.i208_crit_edge ], [ %call.i.i, %if.end40.thread247 ]
  %copy.0 = phi i32 [ %sub, %lor.lhs.false28.land.rhs.i.i208_crit_edge ], [ %12, %if.end40.land.rhs.i.i208_crit_edge ], [ %12, %if.end40.thread247 ]
  %57 = call i32 @llvm.umin.i32(i32 %copy.0, i32 %size.addr.0275)
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 17
  %58 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %nr_frags, align 2
  %conv50 = zext i8 %61 to i32
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %59, align 8
  %64 = and i8 %63, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool1.not.i.i = icmp eq i8 %64, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i208.skb_zcopy.exit.i_crit_edge, label %cond.true.i.i

land.rhs.i.i208.skb_zcopy.exit.i_crit_edge:       ; preds = %land.rhs.i.i208
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_zcopy.exit.i

cond.true.i.i:                                    ; preds = %land.rhs.i.i208
  call void @__sanitizer_cov_trace_pc() #12
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 11
  %65 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %destructor_arg.i.i, align 4
  %phi.cmp.i = icmp ne ptr %66, null
  br label %skb_zcopy.exit.i

skb_zcopy.exit.i:                                 ; preds = %cond.true.i.i, %land.rhs.i.i208.skb_zcopy.exit.i_crit_edge
  %cond.i.i = phi i1 [ %phi.cmp.i, %cond.true.i.i ], [ false, %land.rhs.i.i208.skb_zcopy.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool1.not.i = icmp eq i8 %61, 0
  %or.cond.i = or i1 %tobool1.not.i, %cond.i.i
  br i1 %or.cond.i, label %skb_zcopy.exit.i.if.else56_crit_edge, label %if.then2.i

skb_zcopy.exit.i.if.else56_crit_edge:             ; preds = %skb_zcopy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else56

if.then2.i:                                       ; preds = %skb_zcopy.exit.i
  %sub.i209 = add nsw i32 %conv50, -1
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %59, i32 0, i32 12, i32 %sub.i209
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i210 = icmp eq ptr %68, %page
  br i1 %cmp.i210, label %skb_can_coalesce.exit, label %if.then2.i.if.else56_crit_edge

if.then2.i.if.else56_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else56

skb_can_coalesce.exit:                            ; preds = %if.then2.i
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %59, i32 0, i32 12, i32 %sub.i209, i32 2
  %69 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bv_offset.i.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %59, i32 0, i32 12, i32 %sub.i209, i32 1
  %71 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bv_len.i.i, align 4
  %add.i = add i32 %72, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset.addr.0278)
  %cmp7.i = icmp eq i32 %add.i, %offset.addr.0278
  br i1 %cmp7.i, label %if.then52, label %skb_can_coalesce.exit.if.else56_crit_edge

skb_can_coalesce.exit.if.else56_crit_edge:        ; preds = %skb_can_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else56

if.then52:                                        ; preds = %skb_can_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bv_len.i.i, align 4
  %add.i213 = add i32 %74, %57
  store i32 %add.i213, ptr %bv_len.i.i, align 4
  br label %if.end62

if.else56:                                        ; preds = %skb_can_coalesce.exit.if.else56_crit_edge, %if.then2.i.if.else56_crit_edge, %skb_zcopy.exit.i.if.else56_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %61)
  %cmp57 = icmp ult i8 %61, 17
  br i1 %cmp57, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.else56
  %75 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %17, align 4
  %and.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i214 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i214, label %if.then59._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !88

if.then59._compound_head.exit.i_crit_edge:        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %76, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.then59._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.then59._compound_head.exit.i_crit_edge ]
  %77 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %77, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %78 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %79, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !89

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %80, ptr noundef nonnull @.str.14) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %81 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@chtls_sendpage, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !96

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__page_ref_mod(ptr noundef %77, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %82 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end.i, align 4
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %83, i32 0, i32 12, i32 %conv50
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %page, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i216 = getelementptr %struct.skb_shared_info, ptr %83, i32 0, i32 12, i32 %conv50, i32 2
  %85 = ptrtoint ptr %bv_offset.i.i216 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %offset.addr.0278, ptr %bv_offset.i.i216, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %83, i32 0, i32 12, i32 %conv50, i32 1
  %86 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %57, ptr %bv_len.i.i.i, align 4
  %87 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %17, align 4
  %and.i.i.i217 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i217)
  %tobool.not.i.i.i218 = icmp eq i32 %and.i.i.i217, 0
  br i1 %tobool.not.i.i.i218, label %get_page.exit._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i219, !prof !88

get_page.exit._compound_head.exit.i.i_crit_edge:  ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i.i

if.then.i.i.i219:                                 ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %88, -1
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i219, %get_page.exit._compound_head.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i219 ], [ %18, %get_page.exit._compound_head.exit.i.i_crit_edge ]
  %89 = inttoptr i32 %retval.0.i.i.i to ptr
  %90 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %93 = ptrtoint ptr %92 to i32
  %and.i8.i.i = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i220

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_fill_page_desc.exit

if.then.i.i220:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 12
  %94 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i220, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %conv.i221 = add nuw nsw i8 %61, 1
  %95 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %end.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv.i221, ptr %nr_frags.i, align 2
  br label %if.end62

if.else60:                                        ; preds = %if.else56
  %flags.i222 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 3, i32 12
  %98 = ptrtoint ptr %flags.i222 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %flags.i222, align 4
  %100 = and i16 %99, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool.not.i223 = icmp eq i16 %100, 0
  br i1 %tobool.not.i223, label %if.then.i224, label %if.else60.tx_skb_finalize.exit_crit_edge

if.else60.tx_skb_finalize.exit_crit_edge:         ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_skb_finalize.exit

if.then.i224:                                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %flags.i222 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 1, ptr %flags.i222, align 4
  br label %tx_skb_finalize.exit

tx_skb_finalize.exit:                             ; preds = %if.then.i224, %if.else60.tx_skb_finalize.exit_crit_edge
  %102 = ptrtoint ptr %flags.i222 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %flags.i222, align 4
  %104 = or i16 %103, 2
  store i16 %104, ptr %flags.i222, align 4
  %105 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i226 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i226, label %land.lhs.true.i, label %tx_skb_finalize.exit.do.end7.i_crit_edge

tx_skb_finalize.exit.do.end7.i_crit_edge:         ; preds = %tx_skb_finalize.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %tx_skb_finalize.exit
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b15.i = load i1, ptr @push_frames_if_head.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i227

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i227:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @push_frames_if_head.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 879, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i227, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %tx_skb_finalize.exit.do.end7.i_crit_edge
  %107 = ptrtoint ptr %106 to i32
  %and.i228 = and i32 %107, -4
  %108 = inttoptr i32 %and.i228 to ptr
  %qlen.i.i = getelementptr inbounds %struct.chtls_sock, ptr %108, i32 0, i32 4, i32 1
  %109 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp.i229 = icmp eq i32 %110, 1
  br i1 %cmp.i229, label %if.then11.i, label %do.end7.i.new_buf_crit_edge

do.end7.i.new_buf_crit_edge:                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_buf

if.then11.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i = call i32 @chtls_push_frames(ptr noundef %108, i32 noundef 1) #10
  br label %new_buf

if.end62:                                         ; preds = %skb_fill_page_desc.exit, %if.then52
  %len63 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 6
  %111 = ptrtoint ptr %len63 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len63, align 4
  %add = add i32 %112, %57
  store i32 %add, ptr %len63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %12)
  %cmp65 = icmp eq i32 %add, %12
  br i1 %cmp65, label %if.then67, label %if.end62.if.end68_crit_edge

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then67:                                        ; preds = %if.end62
  %flags.i230 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 3, i32 12
  %113 = ptrtoint ptr %flags.i230 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %flags.i230, align 4
  %115 = and i16 %114, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool.not.i231 = icmp eq i16 %115, 0
  br i1 %tobool.not.i231, label %if.then.i232, label %if.then67.tx_skb_finalize.exit234_crit_edge

if.then67.tx_skb_finalize.exit234_crit_edge:      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_skb_finalize.exit234

if.then.i232:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %flags.i230 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %flags.i230, align 4
  br label %tx_skb_finalize.exit234

tx_skb_finalize.exit234:                          ; preds = %if.then.i232, %if.then67.tx_skb_finalize.exit234_crit_edge
  %117 = ptrtoint ptr %flags.i230 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %flags.i230, align 4
  %119 = or i16 %118, 2
  store i16 %119, ptr %flags.i230, align 4
  br label %if.end68

if.end68:                                         ; preds = %tx_skb_finalize.exit234, %if.end62.if.end68_crit_edge
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 7
  %120 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %data_len, align 8
  %add69 = add i32 %121, %57
  store i32 %add69, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 20
  %122 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %truesize, align 8
  %add70 = add i32 %123, %57
  store i32 %add70, ptr %truesize, align 8
  %124 = ptrtoint ptr %sk_wmem_queued.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sk_wmem_queued.i, align 8
  %add71 = add i32 %125, %57
  store i32 %add71, ptr %sk_wmem_queued.i, align 8
  %126 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %write_seq, align 4
  %add72 = add i32 %127, %57
  store i32 %add72, ptr %write_seq, align 4
  %add73 = add i32 %57, %copied.0273
  %add74 = add i32 %57, %offset.addr.0278
  %sub75 = sub i32 %size.addr.0275, %57
  br i1 %tobool.not.i5.i.i, label %corked.exit, label %if.end68.land.lhs.true78_crit_edge

if.end68.land.lhs.true78_crit_edge:               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true78

corked.exit:                                      ; preds = %if.end68
  %128 = ptrtoint ptr %nonagle.i.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load.i = load i16, ptr %nonagle.i.i.i, align 4
  %129 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool2.i.not = icmp eq i16 %129, 0
  br i1 %tobool2.i.not, label %corked.exit.if.end89_crit_edge, label %corked.exit.land.lhs.true78_crit_edge

corked.exit.land.lhs.true78_crit_edge:            ; preds = %corked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true78

corked.exit.if.end89_crit_edge:                   ; preds = %corked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

land.lhs.true78:                                  ; preds = %corked.exit.land.lhs.true78_crit_edge, %if.end68.land.lhs.true78_crit_edge
  %130 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %sk_sndbuf.i, align 4
  %132 = ptrtoint ptr %sk_wmem_queued.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %sk_wmem_queued.i, align 8
  %sub.i238 = sub i32 %131, %133
  %134 = load volatile i32, ptr %sk_wmem_queued.i, align 8
  %shr.i = ashr i32 %134, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i238, i32 %shr.i)
  %cmp81 = icmp slt i32 %sub.i238, %shr.i
  br i1 %cmp81, label %if.then83, label %land.lhs.true78.if.end89_crit_edge

land.lhs.true78.if.end89_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then83:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  %flags86 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 3, i32 12
  %135 = ptrtoint ptr %flags86 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %flags86, align 4
  %137 = or i16 %136, 2
  store i16 %137, ptr %flags86, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then83, %land.lhs.true78.if.end89_crit_edge, %corked.exit.if.end89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub75)
  %tobool90.not = icmp eq i32 %sub75, 0
  br i1 %tobool90.not, label %if.end89.out_crit_edge, label %if.end92

if.end89.out_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end92:                                         ; preds = %if.end89
  %flags95 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 3, i32 12
  %138 = ptrtoint ptr %flags95 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %flags95, align 4
  %140 = and i16 %139, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %tobool98.not = icmp eq i16 %140, 0
  br i1 %tobool98.not, label %if.end92.cleanup_crit_edge, label %if.then101, !prof !88

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then101:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @push_frames_if_head(ptr noundef %sk)
  br label %cleanup

wait_for_sndbuf:                                  ; preds = %new_buf
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sk_socket, align 8
  %flags103 = getelementptr inbounds %struct.socket, ptr %142, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags103) #10
  br label %wait_for_memory

wait_for_memory:                                  ; preds = %wait_for_sndbuf, %if.end40.wait_for_memory_crit_edge, %if.else.wait_for_memory_crit_edge
  %call104 = call fastcc i32 @csk_wait_memory(ptr noundef %5, ptr noundef %sk, ptr noundef nonnull %timeo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %wait_for_memory.cleanup_crit_edge, label %do_error

wait_for_memory.cleanup_crit_edge:                ; preds = %wait_for_memory
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %wait_for_memory.cleanup_crit_edge, %if.then101, %if.end92.cleanup_crit_edge
  %copied.1 = phi i32 [ %add73, %if.then101 ], [ %add73, %if.end92.cleanup_crit_edge ], [ %copied.0273, %wait_for_memory.cleanup_crit_edge ]
  %size.addr.1 = phi i32 [ %sub75, %if.then101 ], [ %sub75, %if.end92.cleanup_crit_edge ], [ %size.addr.0275, %wait_for_memory.cleanup_crit_edge ]
  %offset.addr.1 = phi i32 [ %add74, %if.then101 ], [ %add74, %if.end92.cleanup_crit_edge ], [ %offset.addr.0278, %wait_for_memory.cleanup_crit_edge ]
  %cmp22.not = icmp eq i32 %size.addr.1, 0
  br i1 %cmp22.not, label %cleanup.out_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %if.end89.out_crit_edge
  %copied.2 = phi i32 [ %copied.1, %cleanup.out_crit_edge ], [ %add73, %if.end89.out_crit_edge ]
  %143 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %flags.i, align 4
  %and.i.i241 = and i32 %144, -5
  store i32 %and.i.i241, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.2)
  %tobool110.not = icmp eq i32 %copied.2, 0
  br i1 %tobool110.not, label %out.cleanup120_crit_edge, label %out.if.then111_crit_edge

out.if.then111_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then111

out.cleanup120_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup120

if.then111:                                       ; preds = %out.thread, %out.if.then111_crit_edge
  %copied.2267 = phi i32 [ %copied.0273, %out.thread ], [ %copied.2, %out.if.then111_crit_edge ]
  call void @chtls_tcp_push(ptr noundef %sk, i32 noundef %flags)
  br label %cleanup120

do_error:                                         ; preds = %wait_for_memory
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0273)
  %tobool113.not = icmp eq i32 %copied.0273, 0
  br i1 %tobool113.not, label %do_error.out_err_crit_edge, label %out.thread

do_error.out_err_crit_edge:                       ; preds = %do_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

out.thread:                                       ; preds = %do_error
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %flags.i, align 4
  %and.i.i241265 = and i32 %146, -5
  store i32 %and.i.i241265, ptr %flags.i, align 4
  br label %if.then111

out_err:                                          ; preds = %do_error.out_err_crit_edge, %sock_sndtimeo.exit.out_err_crit_edge
  %err.2 = phi i32 [ %call104, %do_error.out_err_crit_edge ], [ %call15, %sock_sndtimeo.exit.out_err_crit_edge ]
  %flags.i242 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 10
  %147 = ptrtoint ptr %flags.i242 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %flags.i242, align 4
  %149 = and i32 %148, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.i.not = icmp eq i32 %149, 0
  br i1 %tobool.i.not, label %out_err.if.end118_crit_edge, label %if.then117

out_err.if.end118_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then117:                                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i244 = and i32 %148, -5
  %150 = ptrtoint ptr %flags.i242 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %and.i.i244, ptr %flags.i242, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %out_err.if.end118_crit_edge
  %call119 = call i32 @sk_stream_error(ptr noundef %sk, i32 noundef %flags, i32 noundef %err.2) #10
  br label %cleanup120

cleanup120:                                       ; preds = %if.end118, %if.then111, %out.cleanup120_crit_edge, %out.thread283
  %copied.3 = phi i32 [ %copied.2267, %if.then111 ], [ 0, %out.cleanup120_crit_edge ], [ %call119, %if.end118 ], [ 0, %out.thread283 ]
  call void @release_sock(ptr noundef %sk) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #10
  ret i32 %copied.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chtls_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr noundef %addr_len) local_unnamed_addr #0 align 64 {
entry:
  %timeo.i = alloca i32, align 4
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #10
  %0 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %timeo, align 4, !annotation !99
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 13) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 13), align 4
  %call3 = tail call i32 %1(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr noundef %addr_len) #10
  br label %cleanup277

if.end:                                           ; preds = %entry
  %and4 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end14, label %if.then12, !prof !88

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call fastcc i32 @peekmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags)
  br label %cleanup277

if.end14:                                         ; preds = %if.end
  %sk_ll_usec.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 13
  %2 = ptrtoint ptr %sk_ll_usec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sk_ll_usec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end14.if.end20_crit_edge, label %land.rhs.i

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.rhs.i:                                       ; preds = %if.end14
  %4 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %sk_can_busy_loop.exit, label %land.rhs.i.if.end20_crit_edge, !prof !88

land.rhs.i.if.end20_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

sk_can_busy_loop.exit:                            ; preds = %land.rhs.i
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %9, align 4
  %and1.i.i.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %phi.cmp.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %phi.cmp.i, label %land.lhs.true, label %sk_can_busy_loop.exit.if.end20_crit_edge

sk_can_busy_loop.exit.if.end20_crit_edge:         ; preds = %sk_can_busy_loop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %sk_can_busy_loop.exit
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %15 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %16, %sk_receive_queue
  br i1 %cmp.i, label %land.lhs.true17, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true17:                                  ; preds = %land.lhs.true
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp = icmp eq i8 %18, 1
  br i1 %cmp, label %if.then19, label %land.lhs.true17.if.end20_crit_edge

land.lhs.true17.if.end20_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %land.lhs.true17
  %sk_napi_id.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 14
  %19 = ptrtoint ptr %sk_napi_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %sk_napi_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp.i400 = icmp ugt i32 %20, 4
  br i1 %cmp.i400, label %if.then.i, label %if.then19.if.end20_crit_edge

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool.not.i401 = icmp eq i32 %nonblock, 0
  %cond.i = select i1 %tobool.not.i401, ptr @sk_busy_loop_end, ptr null
  %sk_prefer_busy_poll.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 56
  %21 = ptrtoint ptr %sk_prefer_busy_poll.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %sk_prefer_busy_poll.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.i = icmp ne i8 %22, 0
  %sk_busy_poll_budget.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 57
  %23 = ptrtoint ptr %sk_busy_poll_budget.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load volatile i16, ptr %sk_busy_poll_budget.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool10.not.i = icmp eq i16 %24, 0
  %narrow.i = select i1 %tobool10.not.i, i16 8, i16 %24
  tail call void @napi_busy_loop(i32 noundef %20, ptr noundef %cond.i, ptr noundef %sk, i1 noundef zeroext %tobool5.i, i16 noundef zeroext %narrow.i) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then.i, %if.then19.if.end20_crit_edge, %land.lhs.true17.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %sk_can_busy_loop.exit.if.end20_crit_edge, %land.rhs.i.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %25 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %sk_user_data, align 4
  %call22 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %if.end20.do.end32_crit_edge

if.end20.do.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

land.lhs.true24:                                  ; preds = %if.end20
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b398 = load i1, ptr @chtls_recvmsg.__warned, align 1
  br i1 %.b398, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_recvmsg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1765, ptr noundef nonnull @.str.1) #10
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %if.end20.do.end32_crit_edge
  %27 = ptrtoint ptr %26 to i32
  %and35 = and i32 %27, -4
  %28 = inttoptr i32 %and35 to ptr
  %rxkey.i = getelementptr inbounds %struct.chtls_sock, ptr %28, i32 0, i32 37, i32 17
  %29 = ptrtoint ptr %rxkey.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rxkey.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.i402 = icmp sgt i32 %30, -1
  br i1 %cmp.i402, label %if.then37, label %if.end39

if.then37:                                        ; preds = %do.end32
  %31 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i403 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i403, label %land.lhs.true.i, label %if.then37.do.end7.i_crit_edge

if.then37.do.end7.i_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.then37
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @chtls_pt_recvmsg.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i404

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i404:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_pt_recvmsg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1431, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i404, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %if.then37.do.end7.i_crit_edge
  %33 = ptrtoint ptr %32 to i32
  %and.i = and i32 %33, -4
  %34 = inttoptr i32 %and.i to ptr
  %egress_dev.i = getelementptr inbounds %struct.chtls_sock, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %egress_dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %egress_dev.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %36, i32 2304
  %37 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool12.not.i = icmp eq i32 %nonblock, 0
  br i1 %tobool12.not.i, label %cond.false.i.i, label %do.end7.i.sock_rcvtimeo.exit.i_crit_edge

do.end7.i.sock_rcvtimeo.exit.i_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rcvtimeo.exit.i

cond.false.i.i:                                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk_rcvtimeo.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 62
  %39 = ptrtoint ptr %sk_rcvtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sk_rcvtimeo.i.i, align 4
  br label %sock_rcvtimeo.exit.i

sock_rcvtimeo.exit.i:                             ; preds = %cond.false.i.i, %do.end7.i.sock_rcvtimeo.exit.i_crit_edge
  %cond.i.i = phi i32 [ %40, %cond.false.i.i ], [ 0, %do.end7.i.sock_rcvtimeo.exit.i_crit_edge ]
  %41 = ptrtoint ptr %timeo.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond.i.i, ptr %timeo.i, align 4
  %and14.i = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool.not.i.i405 = icmp eq i32 %and14.i, 0
  br i1 %tobool.not.i.i405, label %cond.false.i5.i, label %sock_rcvtimeo.exit.i.sock_rcvlowat.exit.i_crit_edge

sock_rcvtimeo.exit.i.sock_rcvlowat.exit.i_crit_edge: ; preds = %sock_rcvtimeo.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rcvlowat.exit.i

cond.false.i5.i:                                  ; preds = %sock_rcvtimeo.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk_rcvlowat.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 6
  %42 = ptrtoint ptr %sk_rcvlowat.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %sk_rcvlowat.i.i, align 8
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %len) #10
  br label %sock_rcvlowat.exit.i

sock_rcvlowat.exit.i:                             ; preds = %cond.false.i5.i, %sock_rcvtimeo.exit.i.sock_rcvlowat.exit.i_crit_edge
  %cond5.i.i = phi i32 [ %44, %cond.false.i5.i ], [ %len, %sock_rcvtimeo.exit.i.sock_rcvlowat.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond5.i.i)
  %tobool6.not.i.i = icmp eq i32 %cond5.i.i, 0
  %..i.i = select i1 %tobool6.not.i.i, i32 1, i32 %cond5.i.i
  %45 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i6.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i.i, label %sock_rcvlowat.exit.i.do.end7.i.i_crit_edge

sock_rcvlowat.exit.i.do.end7.i.i_crit_edge:       ; preds = %sock_rcvlowat.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %sock_rcvlowat.exit.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b15.i.i = load i1, ptr @csk_flag.__warned, align 1
  br i1 %.b15.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @csk_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 483, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %sock_rcvlowat.exit.i.do.end7.i.i_crit_edge
  %47 = ptrtoint ptr %46 to i32
  %and.i.i406 = and i32 %47, -4
  %48 = inttoptr i32 %and.i.i406 to ptr
  %flags.i.i.i = getelementptr inbounds %struct.chtls_sock, ptr %48, i32 0, i32 10
  %49 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags.i.i.i, align 4
  %51 = and i32 %50, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool.i.not.i.i, label %do.end7.i.i.if.end21.i_crit_edge, label %csk_flag.exit.i

do.end7.i.i.if.end21.i_crit_edge:                 ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

csk_flag.exit.i:                                  ; preds = %do.end7.i.i
  %52 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i.i.i, align 4
  %54 = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool17.not.i = icmp eq i32 %54, 0
  br i1 %tobool17.not.i, label %csk_flag.exit.i.if.end21.i_crit_edge, label %if.then20.i, !prof !88

csk_flag.exit.i.if.end21.i_crit_edge:             ; preds = %csk_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then20.i:                                      ; preds = %csk_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_cleanup_rbuf(ptr noundef %sk) #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %csk_flag.exit.i.if.end21.i_crit_edge, %do.end7.i.i.if.end21.i_crit_edge
  %urg_data.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 55
  %urg_seq.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 103
  %copied_seq.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 8
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %copied_seq149.i = getelementptr inbounds %struct.chtls_sock, ptr %34, i32 0, i32 37, i32 19
  %55 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %msg_iter.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %rcvpld.i = getelementptr inbounds %struct.chtls_sock, ptr %34, i32 0, i32 37, i32 7
  %tls_pdu_rx.i = getelementptr inbounds %struct.adapter, ptr %38, i32 0, i32 73, i32 7
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  %wr_credits.i = getelementptr inbounds %struct.chtls_sock, ptr %34, i32 0, i32 12
  %qlen.i.i = getelementptr inbounds %struct.chtls_sock, ptr %34, i32 0, i32 4, i32 1
  %wr_max_credits.i = getelementptr inbounds %struct.chtls_sock, ptr %34, i32 0, i32 14
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %tail.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9, i32 3
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  br label %do.body22.i

do.body22.i:                                      ; preds = %cleanup266.i.do.body22.i_crit_edge, %if.end21.i
  %buffers_freed.0.i = phi i32 [ 0, %if.end21.i ], [ %buffers_freed.2.i, %cleanup266.i.do.body22.i_crit_edge ]
  %copied.0.i = phi i32 [ 0, %if.end21.i ], [ %copied.3.i, %cleanup266.i.do.body22.i_crit_edge ]
  %len.addr.0.i = phi i32 [ %len, %if.end21.i ], [ %len.addr.2.i, %cleanup266.i.do.body22.i_crit_edge ]
  %56 = ptrtoint ptr %urg_data.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %urg_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool23.not.i = icmp eq i16 %57, 0
  br i1 %tobool23.not.i, label %do.body22.i.if.end42.i_crit_edge, label %land.rhs.i408

do.body22.i.if.end42.i_crit_edge:                 ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.rhs.i408:                                    ; preds = %do.body22.i
  %58 = ptrtoint ptr %urg_seq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %urg_seq.i, align 4
  %60 = ptrtoint ptr %copied_seq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %copied_seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp.i407 = icmp eq i32 %59, %61
  br i1 %cmp.i407, label %if.then31.i, label %land.rhs.i408.if.end42.i_crit_edge, !prof !89

land.rhs.i408.if.end42.i_crit_edge:               ; preds = %land.rhs.i408
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then31.i:                                      ; preds = %land.rhs.i408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0.i)
  %tobool32.not.i = icmp eq i32 %copied.0.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.then31.i.do.end273.i_crit_edge

if.then31.i.do.end273.i_crit_edge:                ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

if.end34.i:                                       ; preds = %if.then31.i
  %62 = call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i7.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i7.i to ptr
  %task.i409 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task.i409 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task.i409, align 8
  %stack.i.i.i410 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %stack.i.i.i410 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %stack.i.i.i410, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  %70 = and i32 %69, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i8.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i8.i, label %signal_pending.exit.i, label %if.end34.i.if.then38.i_crit_edge, !prof !88

if.end34.i.if.then38.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

signal_pending.exit.i:                            ; preds = %if.end34.i
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %67, align 4
  %and1.i.i.i.i.i.i411 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i411)
  %tobool37.not.i = icmp eq i32 %and1.i.i.i.i.i.i411, 0
  br i1 %tobool37.not.i, label %signal_pending.exit.i.if.end42.i_crit_edge, label %signal_pending.exit.i.if.then38.i_crit_edge

signal_pending.exit.i.if.then38.i_crit_edge:      ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

signal_pending.exit.i.if.end42.i_crit_edge:       ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then38.i:                                      ; preds = %signal_pending.exit.i.if.then38.i_crit_edge, %if.end34.i.if.then38.i_crit_edge
  %73 = ptrtoint ptr %timeo.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %timeo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool39.not.i = icmp eq i32 %74, 0
  br i1 %tobool39.not.i, label %if.then38.i.do.end273.i_crit_edge, label %cond.true.i

if.then38.i.do.end273.i_crit_edge:                ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

cond.true.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %74)
  %cmp.i.i = icmp eq i32 %74, 2147483647
  %cond.i10.i = select i1 %cmp.i.i, i32 -512, i32 -4
  br label %do.end273.i

if.end42.i:                                       ; preds = %signal_pending.exit.i.if.end42.i_crit_edge, %land.rhs.i408.if.end42.i_crit_edge, %do.body22.i.if.end42.i_crit_edge
  %75 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i11.i = icmp eq ptr %76, %sk_receive_queue.i
  %tobool44.not66.i = icmp eq ptr %76, null
  %tobool44.not.i = or i1 %cmp.i11.i, %tobool44.not66.i
  br i1 %tobool44.not.i, label %if.end46.i, label %found_ok_skb.i

if.end46.i:                                       ; preds = %if.end42.i
  %77 = ptrtoint ptr %wr_credits.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %wr_credits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool47.not.i = icmp eq i32 %78, 0
  br i1 %tobool47.not.i, label %if.end46.i.if.end58.i_crit_edge, label %land.lhs.true48.i

if.end46.i.if.end58.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

land.lhs.true48.i:                                ; preds = %if.end46.i
  %79 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool50.not.i = icmp eq i32 %80, 0
  br i1 %tobool50.not.i, label %land.lhs.true48.i.if.end58.i_crit_edge, label %land.lhs.true51.i

land.lhs.true48.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

land.lhs.true51.i:                                ; preds = %land.lhs.true48.i
  %81 = ptrtoint ptr %wr_max_credits.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %wr_max_credits.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %82)
  %cmp53.i = icmp eq i32 %78, %82
  %conv54.i = zext i1 %cmp53.i to i32
  %call55.i = call i32 @chtls_push_frames(ptr noundef %34, i32 noundef %conv54.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %land.lhs.true51.i.if.end58.i_crit_edge, label %if.then57.i

land.lhs.true51.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then57.i:                                      ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sk_write_space.i, align 4
  call void %84(ptr noundef %sk) #10
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then57.i, %land.lhs.true51.i.if.end58.i_crit_edge, %land.lhs.true48.i.if.end58.i_crit_edge, %if.end46.i.if.end58.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.0.i, i32 %..i.i)
  %cmp59.not.i = icmp slt i32 %copied.0.i, %..i.i
  br i1 %cmp59.not.i, label %if.end58.i.if.end68.i_crit_edge, label %do.end64.i

if.end58.i.if.end68.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i

do.end64.i:                                       ; preds = %if.end58.i
  %85 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %tail.i, align 4
  %tobool66.not.i = icmp eq ptr %86, null
  br i1 %tobool66.not.i, label %do.end64.i.do.end273.i_crit_edge, label %do.end64.i.if.end68.i_crit_edge

do.end64.i.if.end68.i_crit_edge:                  ; preds = %do.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i

do.end64.i.do.end273.i_crit_edge:                 ; preds = %do.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

if.end68.i:                                       ; preds = %do.end64.i.if.end68.i_crit_edge, %if.end58.i.if.end68.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0.i)
  %tobool69.not.i = icmp eq i32 %copied.0.i, 0
  br i1 %tobool69.not.i, label %if.else.i, label %if.then70.i

if.then70.i:                                      ; preds = %if.end68.i
  %87 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool71.not.i = icmp eq i32 %88, 0
  br i1 %tobool71.not.i, label %lor.lhs.false.i, label %if.then70.i.do.end273.i_crit_edge

if.then70.i.do.end273.i_crit_edge:                ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

lor.lhs.false.i:                                  ; preds = %if.then70.i
  %89 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %90)
  %cmp73.i = icmp eq i8 %90, 7
  br i1 %cmp73.i, label %lor.lhs.false.i.do.end273.i_crit_edge, label %lor.lhs.false75.i

lor.lhs.false.i.do.end273.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

lor.lhs.false75.i:                                ; preds = %lor.lhs.false.i
  %91 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %sk_shutdown.i, align 2
  %93 = and i8 %92, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool78.not.i = icmp eq i8 %93, 0
  br i1 %tobool78.not.i, label %lor.lhs.false79.i, label %lor.lhs.false75.i.do.end273.i_crit_edge

lor.lhs.false75.i.do.end273.i_crit_edge:          ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

lor.lhs.false79.i:                                ; preds = %lor.lhs.false75.i
  %94 = call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i12.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i12.i to ptr
  %task81.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task81.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task81.i, align 8
  %stack.i.i13.i = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %stack.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %stack.i.i13.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %99, align 4
  %102 = and i32 %101, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i14.i = icmp eq i32 %102, 0
  br i1 %tobool.not.i14.i, label %signal_pending.exit18.i, label %lor.lhs.false79.i.do.end273.i_crit_edge, !prof !88

lor.lhs.false79.i.do.end273.i_crit_edge:          ; preds = %lor.lhs.false79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

signal_pending.exit18.i:                          ; preds = %lor.lhs.false79.i
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %99, align 4
  %and1.i.i.i.i.i15.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i15.i)
  %tobool83.not.i = icmp eq i32 %and1.i.i.i.i.i15.i, 0
  br i1 %tobool83.not.i, label %if.end85.i, label %signal_pending.exit18.i.do.end273.i_crit_edge

signal_pending.exit18.i.do.end273.i_crit_edge:    ; preds = %signal_pending.exit18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

if.end85.i:                                       ; preds = %signal_pending.exit18.i
  %105 = ptrtoint ptr %timeo.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %timeo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool86.not.i = icmp eq i32 %106, 0
  br i1 %tobool86.not.i, label %if.end85.i.do.end273.i_crit_edge, label %if.end85.i.do.end123.i_crit_edge

if.end85.i.do.end123.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end123.i

if.end85.i.do.end273.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

if.else.i:                                        ; preds = %if.end68.i
  %107 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %55, align 4
  %109 = and i32 %108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.i.not.i = icmp eq i32 %109, 0
  br i1 %tobool.i.not.i, label %if.end91.i, label %if.else.i.do.end273.i_crit_edge

if.else.i.do.end273.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

if.end91.i:                                       ; preds = %if.else.i
  %110 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool93.not.i = icmp eq i32 %111, 0
  br i1 %tobool93.not.i, label %if.end96.i, label %sock_error.exit.i

sock_error.exit.i:                                ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i20.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #10
  %112 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #10, !srcloc !101
  %asmresult.i.i.i = extractvalue { i32, i32 } %112, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  %sub.i.i = sub i32 0, %asmresult.i.i.i
  br label %do.end273.i

if.end96.i:                                       ; preds = %if.end91.i
  %113 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %sk_shutdown.i, align 2
  %115 = and i8 %114, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool100.not.i = icmp eq i8 %115, 0
  br i1 %tobool100.not.i, label %if.end102.i, label %if.end96.i.do.end273.i_crit_edge

if.end96.i.do.end273.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

if.end102.i:                                      ; preds = %if.end96.i
  %116 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %117)
  %cmp106.i = icmp eq i8 %117, 7
  br i1 %cmp106.i, label %if.end102.i.do.end273.i_crit_edge, label %if.end109.i

if.end102.i.do.end273.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

if.end109.i:                                      ; preds = %if.end102.i
  %118 = ptrtoint ptr %timeo.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %timeo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool110.not.i = icmp eq i32 %119, 0
  br i1 %tobool110.not.i, label %if.end109.i.do.end273.i_crit_edge, label %if.end112.i

if.end109.i.do.end273.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

if.end112.i:                                      ; preds = %if.end109.i
  %120 = call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i23.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i23.i to ptr
  %task114.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task114.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task114.i, align 8
  %stack.i.i24.i = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %stack.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %stack.i.i24.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %125, align 4
  %128 = and i32 %127, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i25.i = icmp eq i32 %128, 0
  br i1 %tobool.not.i25.i, label %signal_pending.exit29.i, label %if.end112.i.if.then117.i_crit_edge, !prof !88

if.end112.i.if.then117.i_crit_edge:               ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then117.i

signal_pending.exit29.i:                          ; preds = %if.end112.i
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %125, align 4
  %and1.i.i.i.i.i26.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i26.i)
  %tobool116.not.i = icmp eq i32 %and1.i.i.i.i.i26.i, 0
  br i1 %tobool116.not.i, label %signal_pending.exit29.i.do.end123.i_crit_edge, label %signal_pending.exit29.i.if.then117.i_crit_edge

signal_pending.exit29.i.if.then117.i_crit_edge:   ; preds = %signal_pending.exit29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then117.i

signal_pending.exit29.i.do.end123.i_crit_edge:    ; preds = %signal_pending.exit29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end123.i

if.then117.i:                                     ; preds = %signal_pending.exit29.i.if.then117.i_crit_edge, %if.end112.i.if.then117.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %119)
  %cmp.i30.i = icmp eq i32 %119, 2147483647
  %cond.i31.i = select i1 %cmp.i30.i, i32 -512, i32 -4
  br label %do.end273.i

do.end123.i:                                      ; preds = %signal_pending.exit29.i.do.end123.i_crit_edge, %if.end85.i.do.end123.i_crit_edge
  %131 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %tail.i, align 4
  %tobool127.not.i = icmp eq ptr %132, null
  br i1 %tobool127.not.i, label %if.end129.i, label %if.then128.i

if.then128.i:                                     ; preds = %do.end123.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @release_sock(ptr noundef %sk) #10
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  call fastcc void @chtls_cleanup_rbuf(ptr noundef %sk) #10
  br label %cleanup266.i

if.end129.i:                                      ; preds = %do.end123.i
  br i1 %cmp59.not.i, label %if.end133.i, label %if.end129.i.do.end273.i_crit_edge

if.end129.i.do.end273.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

if.end133.i:                                      ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @chtls_cleanup_rbuf(ptr noundef %sk) #10
  %call134.i = call i32 @sk_wait_data(ptr noundef %sk, ptr noundef nonnull %timeo.i, ptr noundef null) #10
  br label %cleanup266.i

found_ok_skb.i:                                   ; preds = %if.end42.i
  %len135.i = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 6
  %133 = ptrtoint ptr %len135.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len135.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool136.not.i = icmp eq i32 %134, 0
  br i1 %tobool136.not.i, label %if.then137.i, label %if.end148.i

if.then137.i:                                     ; preds = %found_ok_skb.i
  %135 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %135, align 8
  %137 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i33.i = add i32 %138, -1
  store volatile i32 %sub.i33.i, ptr %qlen.i.i.i, align 4
  %139 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %76, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.46, ptr %76, i32 0, i32 1
  %141 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %76, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.46, ptr %140, i32 0, i32 1
  %143 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %142, ptr %prev17.i.i, align 4
  %144 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %140, ptr %142, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %76, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0.i)
  %tobool139.not.i = icmp eq i32 %copied.0.i, 0
  br i1 %tobool139.not.i, label %land.lhs.true140.i, label %if.then137.i.if.end143.i_crit_edge

if.then137.i.if.end143.i_crit_edge:               ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143.i

land.lhs.true140.i:                               ; preds = %if.then137.i
  %145 = ptrtoint ptr %timeo.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %timeo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool141.not.i = icmp eq i32 %146, 0
  br i1 %tobool141.not.i, label %land.lhs.true140.i.do.end273.i_crit_edge, label %land.lhs.true140.i.if.end143.i_crit_edge

land.lhs.true140.i.if.end143.i_crit_edge:         ; preds = %land.lhs.true140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143.i

land.lhs.true140.i.do.end273.i_crit_edge:         ; preds = %land.lhs.true140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

if.end143.i:                                      ; preds = %land.lhs.true140.i.if.end143.i_crit_edge, %if.then137.i.if.end143.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.0.i, i32 %..i.i)
  %cmp144.i = icmp slt i32 %copied.0.i, %..i.i
  br i1 %cmp144.i, label %if.then146.i, label %if.end143.i.do.end273.i_crit_edge

if.end143.i.do.end273.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

if.then146.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @release_sock(ptr noundef %sk) #10
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  br label %cleanup266.i

if.end148.i:                                      ; preds = %found_ok_skb.i
  %147 = ptrtoint ptr %copied_seq149.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %copied_seq149.i, align 4
  %sub.i = sub i32 %134, %148
  %149 = call i32 @llvm.umin.i32(i32 %len.addr.0.i, i32 %sub.i) #10
  br i1 %tobool23.not.i, label %if.end148.i.if.end183.i_crit_edge, label %if.then163.i, !prof !88

if.end148.i.if.end183.i_crit_edge:                ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183.i

if.then163.i:                                     ; preds = %if.end148.i
  %150 = ptrtoint ptr %urg_seq.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %urg_seq.i, align 4
  %152 = ptrtoint ptr %copied_seq.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %copied_seq.i, align 4
  %sub166.i = sub i32 %151, %153
  call void @__sanitizer_cov_trace_cmp4(i32 %sub166.i, i32 %149)
  %cmp167.i = icmp ult i32 %sub166.i, %149
  br i1 %cmp167.i, label %if.then169.i, label %if.then163.i.if.end183.i_crit_edge

if.then163.i.if.end183.i_crit_edge:               ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183.i

if.then169.i:                                     ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub166.i)
  %tobool170.not.i = icmp eq i32 %sub166.i, 0
  br i1 %tobool170.not.i, label %if.else172.i, label %if.then169.i.if.end183.i_crit_edge

if.then169.i.if.end183.i_crit_edge:               ; preds = %if.then169.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183.i

if.else172.i:                                     ; preds = %if.then169.i
  %154 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %55, align 4
  %156 = and i32 %155, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.i34.not.i = icmp eq i32 %156, 0
  br i1 %tobool.i34.not.i, label %if.then174.i, label %if.else172.i.if.end183.i_crit_edge

if.else172.i.if.end183.i_crit_edge:               ; preds = %if.else172.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183.i

if.then174.i:                                     ; preds = %if.else172.i
  %inc.i = add i32 %153, 1
  %157 = ptrtoint ptr %copied_seq.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %inc.i, ptr %copied_seq.i, align 4
  %inc176.i = add i32 %148, 1
  %dec.i = add i32 %149, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool177.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool177.not.i, label %if.then174.i.skip_copy.i_crit_edge, label %if.then174.i.if.end183.i_crit_edge

if.then174.i.if.end183.i_crit_edge:               ; preds = %if.then174.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183.i

if.then174.i.skip_copy.i_crit_edge:               ; preds = %if.then174.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_copy.i

if.end183.i:                                      ; preds = %if.then174.i.if.end183.i_crit_edge, %if.else172.i.if.end183.i_crit_edge, %if.then169.i.if.end183.i_crit_edge, %if.then163.i.if.end183.i_crit_edge, %if.end148.i.if.end183.i_crit_edge
  %avail.3.i = phi i32 [ %149, %if.end148.i.if.end183.i_crit_edge ], [ %149, %if.else172.i.if.end183.i_crit_edge ], [ %dec.i, %if.then174.i.if.end183.i_crit_edge ], [ %149, %if.then163.i.if.end183.i_crit_edge ], [ %sub166.i, %if.then169.i.if.end183.i_crit_edge ]
  %offset.2.i = phi i32 [ %148, %if.end148.i.if.end183.i_crit_edge ], [ %148, %if.else172.i.if.end183.i_crit_edge ], [ %inc176.i, %if.then174.i.if.end183.i_crit_edge ], [ %148, %if.then163.i.if.end183.i_crit_edge ], [ %148, %if.then169.i.if.end183.i_crit_edge ]
  %flags184.i = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 3, i32 12
  %158 = ptrtoint ptr %flags184.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %flags184.i, align 4
  %160 = and i16 %159, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool187.not.i = icmp eq i16 %160, 0
  br i1 %tobool187.not.i, label %if.end200.i, label %if.then188.i

if.then188.i:                                     ; preds = %if.end183.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 19
  %161 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %data.i, align 4
  %call189.i = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 282, i32 noundef 2, i32 noundef 1, ptr noundef %162) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189.i)
  %tobool190.not.i = icmp eq i32 %call189.i, 0
  br i1 %tobool190.not.i, label %if.then188.i.skip_copy.i_crit_edge, label %land.lhs.true191.i

if.then188.i.skip_copy.i_crit_edge:               ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_copy.i

land.lhs.true191.i:                               ; preds = %if.then188.i
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %162, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %164)
  %cmp194.not.i = icmp eq i8 %164, 23
  br i1 %cmp194.not.i, label %land.lhs.true191.i.skip_copy.i_crit_edge, label %land.lhs.true191.i.do.end273.i_crit_edge

land.lhs.true191.i.do.end273.i_crit_edge:         ; preds = %land.lhs.true191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

land.lhs.true191.i.skip_copy.i_crit_edge:         ; preds = %land.lhs.true191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_copy.i

if.end200.i:                                      ; preds = %if.end183.i
  %call.i35.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %76, i32 noundef %offset.2.i, ptr noundef %msg_iter.i.i, i32 noundef %avail.3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %tobool202.not.i = icmp ne i32 %call.i35.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0.i)
  %tobool204.not.i = icmp eq i32 %copied.0.i, 0
  %or.cond.i = select i1 %tobool202.not.i, i1 %tobool204.not.i, i1 false
  br i1 %or.cond.i, label %if.end200.i.do.end273.i_crit_edge, label %if.end207.i

if.end200.i.do.end273.i_crit_edge:                ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

if.end207.i:                                      ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %avail.3.i, %copied.0.i
  %sub208.i = sub i32 %len.addr.0.i, %avail.3.i
  %165 = ptrtoint ptr %copied_seq149.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %copied_seq149.i, align 4
  %add210.i = add i32 %166, %avail.3.i
  store i32 %add210.i, ptr %copied_seq149.i, align 4
  br label %skip_copy.i

skip_copy.i:                                      ; preds = %if.end207.i, %land.lhs.true191.i.skip_copy.i_crit_edge, %if.then188.i.skip_copy.i_crit_edge, %if.then174.i.skip_copy.i_crit_edge
  %avail.4.i = phi i32 [ %avail.3.i, %if.end207.i ], [ 0, %if.then174.i.skip_copy.i_crit_edge ], [ %avail.3.i, %if.then188.i.skip_copy.i_crit_edge ], [ %avail.3.i, %land.lhs.true191.i.skip_copy.i_crit_edge ]
  %copied.2.i = phi i32 [ %add.i, %if.end207.i ], [ %copied.0.i, %if.then174.i.skip_copy.i_crit_edge ], [ %copied.0.i, %if.then188.i.skip_copy.i_crit_edge ], [ %copied.0.i, %land.lhs.true191.i.skip_copy.i_crit_edge ]
  %offset.3.i = phi i32 [ %offset.2.i, %if.end207.i ], [ %inc176.i, %if.then174.i.skip_copy.i_crit_edge ], [ %offset.2.i, %if.then188.i.skip_copy.i_crit_edge ], [ %offset.2.i, %land.lhs.true191.i.skip_copy.i_crit_edge ]
  %len.addr.1.i = phi i32 [ %sub208.i, %if.end207.i ], [ %len.addr.0.i, %if.then174.i.skip_copy.i_crit_edge ], [ %len.addr.0.i, %if.then188.i.skip_copy.i_crit_edge ], [ %len.addr.0.i, %land.lhs.true191.i.skip_copy.i_crit_edge ]
  %167 = ptrtoint ptr %urg_data.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %urg_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %168)
  %tobool214.not.i = icmp eq i16 %168, 0
  br i1 %tobool214.not.i, label %skip_copy.i.if.end222.i_crit_edge, label %land.lhs.true215.i

skip_copy.i.if.end222.i_crit_edge:                ; preds = %skip_copy.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end222.i

land.lhs.true215.i:                               ; preds = %skip_copy.i
  %169 = ptrtoint ptr %urg_seq.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %urg_seq.i, align 4
  %171 = ptrtoint ptr %copied_seq.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %copied_seq.i, align 4
  %sub.i36.i = sub i32 %170, %172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i36.i)
  %cmp.i37.i = icmp slt i32 %sub.i36.i, 0
  br i1 %cmp.i37.i, label %if.then220.i, label %land.lhs.true215.i.if.end222.i_crit_edge

land.lhs.true215.i.if.end222.i_crit_edge:         ; preds = %land.lhs.true215.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end222.i

if.then220.i:                                     ; preds = %land.lhs.true215.i
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %urg_data.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 0, ptr %urg_data.i, align 4
  br label %if.end222.i

if.end222.i:                                      ; preds = %if.then220.i, %land.lhs.true215.i.if.end222.i_crit_edge, %skip_copy.i.if.end222.i_crit_edge
  %add223.i = add i32 %offset.3.i, %avail.4.i
  %174 = ptrtoint ptr %len135.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %len135.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add223.i, i32 %175)
  %cmp225.not.i = icmp ult i32 %add223.i, %175
  br i1 %cmp225.not.i, label %if.end222.i.cleanup266.i_crit_edge, label %if.then227.i

if.end222.i.cleanup266.i_crit_edge:               ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup266.i

if.then227.i:                                     ; preds = %if.end222.i
  %flags230.i = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 3, i32 12
  %176 = ptrtoint ptr %flags230.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %flags230.i, align 4
  %178 = and i16 %177, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %178)
  %tobool233.not.i = icmp eq i16 %178, 0
  br i1 %tobool233.not.i, label %if.else238.i, label %if.then234.i

if.then234.i:                                     ; preds = %if.then227.i
  call void @__sanitizer_cov_trace_pc() #12
  %179 = ptrtoint ptr %copied_seq.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %copied_seq.i, align 4
  %add237.i = add i32 %180, %175
  store i32 %add237.i, ptr %copied_seq.i, align 4
  %hdr_len.i = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 9
  %181 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %hdr_len.i, align 2
  %183 = ptrtoint ptr %rcvpld.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %182, ptr %rcvpld.i, align 2
  br label %if.end243.i

if.else238.i:                                     ; preds = %if.then227.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tls_pdu_rx.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %tls_pdu_rx.i, i32 1, i32 3, i32 1) #10
  %184 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tls_pdu_rx.i, ptr %tls_pdu_rx.i, i32 1, ptr elementtype(i32) %tls_pdu_rx.i) #10, !srcloc !91
  %185 = ptrtoint ptr %rcvpld.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %rcvpld.i, align 2
  %conv240.i = zext i16 %186 to i32
  %187 = ptrtoint ptr %copied_seq.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %copied_seq.i, align 4
  %add242.i = add i32 %188, %conv240.i
  store i32 %add242.i, ptr %copied_seq.i, align 4
  br label %if.end243.i

if.end243.i:                                      ; preds = %if.else238.i, %if.then234.i
  %189 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %189, align 8
  %191 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %192, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %193 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %76, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.46, ptr %76, i32 0, i32 1
  %195 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %76, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.46, ptr %194, i32 0, i32 1
  %197 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile ptr %196, ptr %prev17.i.i.i, align 4
  %198 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile ptr %194, ptr %196, align 8
  call void @__kfree_skb(ptr noundef nonnull %76) #10
  %inc244.i = add i32 %buffers_freed.0.i, 1
  %199 = ptrtoint ptr %copied_seq149.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %copied_seq149.i, align 4
  %200 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i38.i = icmp eq ptr %201, %sk_receive_queue.i
  %spec.store.select.i39.i = select i1 %cmp.i38.i, ptr null, ptr %201
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.2.i, i32 %..i.i)
  %cmp248.not.i = icmp sge i32 %copied.2.i, %..i.i
  %tobool251.not.i = icmp eq ptr %spec.store.select.i39.i, null
  %or.cond2.i = select i1 %cmp248.not.i, i1 %tobool251.not.i, i1 false
  br i1 %or.cond2.i, label %if.end243.i.do.end273.i_crit_edge, label %cleanup262.i

if.end243.i.do.end273.i_crit_edge:                ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

cleanup262.i:                                     ; preds = %if.end243.i
  %flags256.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i39.i, i32 0, i32 3, i32 12
  %202 = ptrtoint ptr %flags256.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %flags256.i, align 4
  %204 = and i16 %203, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %204)
  %tobool259.not.i = icmp eq i16 %204, 0
  br i1 %tobool259.not.i, label %cleanup262.i.cleanup266.i_crit_edge, label %cleanup262.i.do.end273.i_crit_edge

cleanup262.i.do.end273.i_crit_edge:               ; preds = %cleanup262.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

cleanup262.i.cleanup266.i_crit_edge:              ; preds = %cleanup262.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup266.i

cleanup266.i:                                     ; preds = %cleanup262.i.cleanup266.i_crit_edge, %if.end222.i.cleanup266.i_crit_edge, %if.then146.i, %if.end133.i, %if.then128.i
  %buffers_freed.2.i = phi i32 [ %buffers_freed.0.i, %if.then146.i ], [ %buffers_freed.0.i, %if.then128.i ], [ %buffers_freed.0.i, %if.end133.i ], [ %inc244.i, %cleanup262.i.cleanup266.i_crit_edge ], [ %buffers_freed.0.i, %if.end222.i.cleanup266.i_crit_edge ]
  %copied.3.i = phi i32 [ %copied.0.i, %if.then146.i ], [ %copied.0.i, %if.then128.i ], [ %copied.0.i, %if.end133.i ], [ %copied.2.i, %cleanup262.i.cleanup266.i_crit_edge ], [ %copied.2.i, %if.end222.i.cleanup266.i_crit_edge ]
  %len.addr.2.i = phi i32 [ %len.addr.0.i, %if.then146.i ], [ %len.addr.0.i, %if.then128.i ], [ %len.addr.0.i, %if.end133.i ], [ %len.addr.1.i, %cleanup262.i.cleanup266.i_crit_edge ], [ %len.addr.1.i, %if.end222.i.cleanup266.i_crit_edge ]
  %cmp271.not.i = icmp eq i32 %len.addr.2.i, 0
  br i1 %cmp271.not.i, label %cleanup266.i.do.end273.i_crit_edge, label %cleanup266.i.do.body22.i_crit_edge

cleanup266.i.do.body22.i_crit_edge:               ; preds = %cleanup266.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22.i

cleanup266.i.do.end273.i_crit_edge:               ; preds = %cleanup266.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273.i

do.end273.i:                                      ; preds = %cleanup266.i.do.end273.i_crit_edge, %cleanup262.i.do.end273.i_crit_edge, %if.end243.i.do.end273.i_crit_edge, %if.end200.i.do.end273.i_crit_edge, %land.lhs.true191.i.do.end273.i_crit_edge, %if.end143.i.do.end273.i_crit_edge, %land.lhs.true140.i.do.end273.i_crit_edge, %if.end129.i.do.end273.i_crit_edge, %if.then117.i, %if.end109.i.do.end273.i_crit_edge, %if.end102.i.do.end273.i_crit_edge, %if.end96.i.do.end273.i_crit_edge, %sock_error.exit.i, %if.else.i.do.end273.i_crit_edge, %if.end85.i.do.end273.i_crit_edge, %signal_pending.exit18.i.do.end273.i_crit_edge, %lor.lhs.false79.i.do.end273.i_crit_edge, %lor.lhs.false75.i.do.end273.i_crit_edge, %lor.lhs.false.i.do.end273.i_crit_edge, %if.then70.i.do.end273.i_crit_edge, %do.end64.i.do.end273.i_crit_edge, %cond.true.i, %if.then38.i.do.end273.i_crit_edge, %if.then31.i.do.end273.i_crit_edge
  %copied.365.i = phi i32 [ -11, %if.then38.i.do.end273.i_crit_edge ], [ %cond.i10.i, %cond.true.i ], [ %cond.i31.i, %if.then117.i ], [ %sub.i.i, %sock_error.exit.i ], [ %copied.3.i, %cleanup266.i.do.end273.i_crit_edge ], [ -5, %land.lhs.true191.i.do.end273.i_crit_edge ], [ -14, %if.end200.i.do.end273.i_crit_edge ], [ %copied.0.i, %if.end143.i.do.end273.i_crit_edge ], [ -11, %land.lhs.true140.i.do.end273.i_crit_edge ], [ %copied.0.i, %if.end129.i.do.end273.i_crit_edge ], [ -11, %if.end109.i.do.end273.i_crit_edge ], [ -107, %if.end102.i.do.end273.i_crit_edge ], [ 0, %if.end96.i.do.end273.i_crit_edge ], [ 0, %if.else.i.do.end273.i_crit_edge ], [ %copied.0.i, %if.end85.i.do.end273.i_crit_edge ], [ %copied.0.i, %if.then70.i.do.end273.i_crit_edge ], [ %copied.0.i, %lor.lhs.false.i.do.end273.i_crit_edge ], [ %copied.0.i, %lor.lhs.false75.i.do.end273.i_crit_edge ], [ %copied.0.i, %signal_pending.exit18.i.do.end273.i_crit_edge ], [ %copied.0.i, %do.end64.i.do.end273.i_crit_edge ], [ %copied.0.i, %if.then31.i.do.end273.i_crit_edge ], [ %copied.0.i, %lor.lhs.false79.i.do.end273.i_crit_edge ], [ %copied.2.i, %if.end243.i.do.end273.i_crit_edge ], [ %copied.2.i, %cleanup262.i.do.end273.i_crit_edge ]
  %buffers_freed.264.i = phi i32 [ %buffers_freed.0.i, %if.then38.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %cond.true.i ], [ %buffers_freed.0.i, %if.then117.i ], [ %buffers_freed.0.i, %sock_error.exit.i ], [ %buffers_freed.2.i, %cleanup266.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %land.lhs.true191.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %if.end200.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %if.end143.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %land.lhs.true140.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %if.end129.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %if.end109.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %if.end102.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %if.end96.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %if.else.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %if.end85.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %if.then70.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %lor.lhs.false.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %lor.lhs.false75.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %signal_pending.exit18.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %do.end64.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %if.then31.i.do.end273.i_crit_edge ], [ %buffers_freed.0.i, %lor.lhs.false79.i.do.end273.i_crit_edge ], [ %inc244.i, %if.end243.i.do.end273.i_crit_edge ], [ %inc244.i, %cleanup262.i.do.end273.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffers_freed.264.i)
  %tobool274.not.i = icmp eq i32 %buffers_freed.264.i, 0
  br i1 %tobool274.not.i, label %do.end273.i.chtls_pt_recvmsg.exit_crit_edge, label %if.then275.i

do.end273.i.chtls_pt_recvmsg.exit_crit_edge:      ; preds = %do.end273.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_pt_recvmsg.exit

if.then275.i:                                     ; preds = %do.end273.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @chtls_cleanup_rbuf(ptr noundef %sk) #10
  br label %chtls_pt_recvmsg.exit

chtls_pt_recvmsg.exit:                            ; preds = %if.then275.i, %do.end273.i.chtls_pt_recvmsg.exit_crit_edge
  call void @release_sock(ptr noundef %sk) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo.i) #10
  br label %cleanup277

if.end39:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool40.not = icmp eq i32 %nonblock, 0
  br i1 %tobool40.not, label %cond.false.i, label %if.end39.sock_rcvtimeo.exit_crit_edge

if.end39.sock_rcvtimeo.exit_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 62
  %205 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %if.end39.sock_rcvtimeo.exit_crit_edge
  %cond.i412 = phi i32 [ %206, %cond.false.i ], [ 0, %if.end39.sock_rcvtimeo.exit_crit_edge ]
  %207 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %cond.i412, ptr %timeo, align 4
  %and42 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool.not.i413 = icmp eq i32 %and42, 0
  br i1 %tobool.not.i413, label %cond.false.i414, label %sock_rcvtimeo.exit.sock_rcvlowat.exit_crit_edge

sock_rcvtimeo.exit.sock_rcvlowat.exit_crit_edge:  ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rcvlowat.exit

cond.false.i414:                                  ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sk_rcvlowat.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 6
  %208 = ptrtoint ptr %sk_rcvlowat.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %sk_rcvlowat.i, align 8
  %210 = tail call i32 @llvm.smin.i32(i32 %209, i32 %len) #10
  br label %sock_rcvlowat.exit

sock_rcvlowat.exit:                               ; preds = %cond.false.i414, %sock_rcvtimeo.exit.sock_rcvlowat.exit_crit_edge
  %cond5.i = phi i32 [ %210, %cond.false.i414 ], [ %len, %sock_rcvtimeo.exit.sock_rcvlowat.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond5.i)
  %tobool6.not.i = icmp eq i32 %cond5.i, 0
  %..i = select i1 %tobool6.not.i, i32 1, i32 %cond5.i
  %211 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i416 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i416)
  %tobool.not.i417 = icmp eq i32 %call.i416, 0
  br i1 %tobool.not.i417, label %land.lhs.true.i420, label %sock_rcvlowat.exit.do.end7.i425_crit_edge

sock_rcvlowat.exit.do.end7.i425_crit_edge:        ; preds = %sock_rcvlowat.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i425

land.lhs.true.i420:                               ; preds = %sock_rcvlowat.exit
  %call2.i418 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i418)
  %tobool3.not.i419 = icmp eq i32 %call2.i418, 0
  br i1 %tobool3.not.i419, label %land.lhs.true.i420.do.end7.i425_crit_edge, label %land.lhs.true4.i421

land.lhs.true.i420.do.end7.i425_crit_edge:        ; preds = %land.lhs.true.i420
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i425

land.lhs.true4.i421:                              ; preds = %land.lhs.true.i420
  %.b15.i = load i1, ptr @csk_flag.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true4.i421.do.end7.i425_crit_edge, label %if.then.i422

land.lhs.true4.i421.do.end7.i425_crit_edge:       ; preds = %land.lhs.true4.i421
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i425

if.then.i422:                                     ; preds = %land.lhs.true4.i421
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @csk_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 483, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i425

do.end7.i425:                                     ; preds = %if.then.i422, %land.lhs.true4.i421.do.end7.i425_crit_edge, %land.lhs.true.i420.do.end7.i425_crit_edge, %sock_rcvlowat.exit.do.end7.i425_crit_edge
  %213 = ptrtoint ptr %212 to i32
  %and.i423 = and i32 %213, -4
  %214 = inttoptr i32 %and.i423 to ptr
  %flags.i.i = getelementptr inbounds %struct.chtls_sock, ptr %214, i32 0, i32 10
  %215 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %flags.i.i, align 4
  %217 = and i32 %216, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.i.not.i424 = icmp eq i32 %217, 0
  br i1 %tobool.i.not.i424, label %do.end7.i425.if.end53_crit_edge, label %csk_flag.exit

do.end7.i425.if.end53_crit_edge:                  ; preds = %do.end7.i425
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

csk_flag.exit:                                    ; preds = %do.end7.i425
  %218 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile i32, ptr %flags.i.i, align 4
  %220 = and i32 %219, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool45.not = icmp eq i32 %220, 0
  br i1 %tobool45.not, label %csk_flag.exit.if.end53_crit_edge, label %if.then52, !prof !88

csk_flag.exit.if.end53_crit_edge:                 ; preds = %csk_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then52:                                        ; preds = %csk_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @chtls_cleanup_rbuf(ptr noundef %sk)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %csk_flag.exit.if.end53_crit_edge, %do.end7.i425.if.end53_crit_edge
  %urg_data = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 55
  %urg_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 103
  %copied_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 8
  %sk_receive_queue77 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %221 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %and218 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %qlen.i.i462 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  %wr_credits = getelementptr inbounds %struct.chtls_sock, ptr %28, i32 0, i32 12
  %qlen.i = getelementptr inbounds %struct.chtls_sock, ptr %28, i32 0, i32 4, i32 1
  %wr_max_credits = getelementptr inbounds %struct.chtls_sock, ptr %28, i32 0, i32 14
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %tail = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9, i32 3
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %skc_state108 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  br label %do.body54

do.body54:                                        ; preds = %cleanup266.do.body54_crit_edge, %if.end53
  %buffers_freed.0 = phi i32 [ 0, %if.end53 ], [ %buffers_freed.2, %cleanup266.do.body54_crit_edge ]
  %copied.0 = phi i32 [ 0, %if.end53 ], [ %copied.2, %cleanup266.do.body54_crit_edge ]
  %len.addr.0 = phi i32 [ %len, %if.end53 ], [ %len.addr.2, %cleanup266.do.body54_crit_edge ]
  %222 = ptrtoint ptr %urg_data to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %urg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %223)
  %tobool56.not = icmp eq i16 %223, 0
  br i1 %tobool56.not, label %do.body54.if.end76_crit_edge, label %land.rhs

do.body54.if.end76_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

land.rhs:                                         ; preds = %do.body54
  %224 = ptrtoint ptr %urg_seq to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %urg_seq, align 4
  %226 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %copied_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %227)
  %cmp57 = icmp eq i32 %225, %227
  br i1 %cmp57, label %if.then65, label %land.rhs.if.end76_crit_edge, !prof !89

land.rhs.if.end76_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then65:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool66.not = icmp eq i32 %copied.0, 0
  br i1 %tobool66.not, label %if.end68, label %if.then65.do.end273_crit_edge

if.then65.do.end273_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

if.end68:                                         ; preds = %if.then65
  %228 = call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i426 = and i32 %228, -16384
  %229 = inttoptr i32 %and.i426 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %stack.i.i, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %233, align 4
  %236 = and i32 %235, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool.not.i427 = icmp eq i32 %236, 0
  br i1 %tobool.not.i427, label %signal_pending.exit, label %if.end68.if.then72_crit_edge, !prof !88

if.end68.if.then72_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

signal_pending.exit:                              ; preds = %if.end68
  %237 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load volatile i32, ptr %233, align 4
  %and1.i.i.i.i.i = and i32 %238, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool71.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool71.not, label %signal_pending.exit.if.end76_crit_edge, label %signal_pending.exit.if.then72_crit_edge

signal_pending.exit.if.then72_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

signal_pending.exit.if.end76_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then72:                                        ; preds = %signal_pending.exit.if.then72_crit_edge, %if.end68.if.then72_crit_edge
  %239 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool73.not = icmp eq i32 %240, 0
  br i1 %tobool73.not, label %if.then72.do.end273_crit_edge, label %cond.true

if.then72.do.end273_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

cond.true:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %240)
  %cmp.i429 = icmp eq i32 %240, 2147483647
  %cond.i430 = select i1 %cmp.i429, i32 -512, i32 -4
  br label %do.end273

if.end76:                                         ; preds = %signal_pending.exit.if.end76_crit_edge, %land.rhs.if.end76_crit_edge, %do.body54.if.end76_crit_edge
  %241 = ptrtoint ptr %sk_receive_queue77 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %sk_receive_queue77, align 4
  %cmp.i431 = icmp eq ptr %242, %sk_receive_queue77
  %tobool79.not489 = icmp eq ptr %242, null
  %tobool79.not = or i1 %cmp.i431, %tobool79.not489
  br i1 %tobool79.not, label %if.end81, label %found_ok_skb

if.end81:                                         ; preds = %if.end76
  %243 = ptrtoint ptr %wr_credits to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %wr_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool82.not = icmp eq i32 %244, 0
  br i1 %tobool82.not, label %if.end81.if.end93_crit_edge, label %land.lhs.true83

if.end81.if.end93_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

land.lhs.true83:                                  ; preds = %if.end81
  %245 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool85.not = icmp eq i32 %246, 0
  br i1 %tobool85.not, label %land.lhs.true83.if.end93_crit_edge, label %land.lhs.true86

land.lhs.true83.if.end93_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

land.lhs.true86:                                  ; preds = %land.lhs.true83
  %247 = ptrtoint ptr %wr_max_credits to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %wr_max_credits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %248)
  %cmp88 = icmp eq i32 %244, %248
  %conv89 = zext i1 %cmp88 to i32
  %call90 = call i32 @chtls_push_frames(ptr noundef %28, i32 noundef %conv89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %land.lhs.true86.if.end93_crit_edge, label %if.then92

land.lhs.true86.if.end93_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then92:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #12
  %249 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %sk_write_space, align 4
  call void %250(ptr noundef %sk) #10
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %land.lhs.true86.if.end93_crit_edge, %land.lhs.true83.if.end93_crit_edge, %if.end81.if.end93_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.0, i32 %..i)
  %cmp94.not = icmp slt i32 %copied.0, %..i
  br i1 %cmp94.not, label %if.end93.if.end103_crit_edge, label %do.end99

if.end93.if.end103_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

do.end99:                                         ; preds = %if.end93
  %251 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load volatile ptr, ptr %tail, align 4
  %tobool101.not = icmp eq ptr %252, null
  br i1 %tobool101.not, label %do.end99.do.end273_crit_edge, label %do.end99.if.end103_crit_edge

do.end99.if.end103_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

do.end99.do.end273_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

if.end103:                                        ; preds = %do.end99.if.end103_crit_edge, %if.end93.if.end103_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool104.not = icmp eq i32 %copied.0, 0
  br i1 %tobool104.not, label %if.else, label %if.then105

if.then105:                                       ; preds = %if.end103
  %253 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool106.not = icmp eq i32 %254, 0
  br i1 %tobool106.not, label %lor.lhs.false, label %if.then105.do.end273_crit_edge

if.then105.do.end273_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

lor.lhs.false:                                    ; preds = %if.then105
  %255 = ptrtoint ptr %skc_state108 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load volatile i8, ptr %skc_state108, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %256)
  %cmp110 = icmp eq i8 %256, 7
  br i1 %cmp110, label %lor.lhs.false.do.end273_crit_edge, label %lor.lhs.false112

lor.lhs.false.do.end273_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

lor.lhs.false112:                                 ; preds = %lor.lhs.false
  %257 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %sk_shutdown, align 2
  %259 = and i8 %258, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool115.not = icmp eq i8 %259, 0
  br i1 %tobool115.not, label %lor.lhs.false116, label %lor.lhs.false112.do.end273_crit_edge

lor.lhs.false112.do.end273_crit_edge:             ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

lor.lhs.false116:                                 ; preds = %lor.lhs.false112
  %260 = call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i432 = and i32 %260, -16384
  %261 = inttoptr i32 %and.i432 to ptr
  %task118 = getelementptr inbounds %struct.thread_info, ptr %261, i32 0, i32 2
  %262 = ptrtoint ptr %task118 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %task118, align 8
  %stack.i.i433 = getelementptr inbounds %struct.task_struct, ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %stack.i.i433 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %stack.i.i433, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load volatile i32, ptr %265, align 4
  %268 = and i32 %267, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool.not.i434 = icmp eq i32 %268, 0
  br i1 %tobool.not.i434, label %signal_pending.exit438, label %lor.lhs.false116.do.end273_crit_edge, !prof !88

lor.lhs.false116.do.end273_crit_edge:             ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

signal_pending.exit438:                           ; preds = %lor.lhs.false116
  %269 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load volatile i32, ptr %265, align 4
  %and1.i.i.i.i.i435 = and i32 %270, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i435)
  %tobool120.not = icmp eq i32 %and1.i.i.i.i.i435, 0
  br i1 %tobool120.not, label %signal_pending.exit438.do.end157_crit_edge, label %signal_pending.exit438.do.end273_crit_edge

signal_pending.exit438.do.end273_crit_edge:       ; preds = %signal_pending.exit438
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

signal_pending.exit438.do.end157_crit_edge:       ; preds = %signal_pending.exit438
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end157

if.else:                                          ; preds = %if.end103
  %271 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load volatile i32, ptr %221, align 4
  %273 = and i32 %272, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool.i.not = icmp eq i32 %273, 0
  br i1 %tobool.i.not, label %if.end125, label %if.else.do.end273_crit_edge

if.else.do.end273_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

if.end125:                                        ; preds = %if.else
  %274 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool127.not = icmp eq i32 %275, 0
  br i1 %tobool127.not, label %if.end130, label %sock_error.exit

sock_error.exit:                                  ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i441 = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  call void @llvm.prefetch.p0(ptr %sk_err, i32 1, i32 3, i32 1) #10
  %276 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err) #10, !srcloc !101
  %asmresult.i.i = extractvalue { i32, i32 } %276, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  %sub.i442 = sub i32 0, %asmresult.i.i
  br label %do.end273

if.end130:                                        ; preds = %if.end125
  %277 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %sk_shutdown, align 2
  %279 = and i8 %278, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool134.not = icmp eq i8 %279, 0
  br i1 %tobool134.not, label %if.end136, label %if.end130.do.end273_crit_edge

if.end130.do.end273_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

if.end136:                                        ; preds = %if.end130
  %280 = ptrtoint ptr %skc_state108 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load volatile i8, ptr %skc_state108, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %281)
  %cmp140 = icmp eq i8 %281, 7
  br i1 %cmp140, label %if.end136.do.end273_crit_edge, label %if.end143

if.end136.do.end273_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

if.end143:                                        ; preds = %if.end136
  %282 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool144.not = icmp eq i32 %283, 0
  br i1 %tobool144.not, label %if.end143.do.end273_crit_edge, label %if.end146

if.end143.do.end273_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

if.end146:                                        ; preds = %if.end143
  %284 = call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i445 = and i32 %284, -16384
  %285 = inttoptr i32 %and.i445 to ptr
  %task148 = getelementptr inbounds %struct.thread_info, ptr %285, i32 0, i32 2
  %286 = ptrtoint ptr %task148 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %task148, align 8
  %stack.i.i446 = getelementptr inbounds %struct.task_struct, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %stack.i.i446 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %stack.i.i446, align 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load volatile i32, ptr %289, align 4
  %292 = and i32 %291, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool.not.i447 = icmp eq i32 %292, 0
  br i1 %tobool.not.i447, label %signal_pending.exit451, label %if.end146.if.then151_crit_edge, !prof !88

if.end146.if.then151_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then151

signal_pending.exit451:                           ; preds = %if.end146
  %293 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load volatile i32, ptr %289, align 4
  %and1.i.i.i.i.i448 = and i32 %294, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i448)
  %tobool150.not = icmp eq i32 %and1.i.i.i.i.i448, 0
  br i1 %tobool150.not, label %signal_pending.exit451.do.end157_crit_edge, label %signal_pending.exit451.if.then151_crit_edge

signal_pending.exit451.if.then151_crit_edge:      ; preds = %signal_pending.exit451
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then151

signal_pending.exit451.do.end157_crit_edge:       ; preds = %signal_pending.exit451
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end157

if.then151:                                       ; preds = %signal_pending.exit451.if.then151_crit_edge, %if.end146.if.then151_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %283)
  %cmp.i452 = icmp eq i32 %283, 2147483647
  %cond.i453 = select i1 %cmp.i452, i32 -512, i32 -4
  br label %do.end273

do.end157:                                        ; preds = %signal_pending.exit451.do.end157_crit_edge, %signal_pending.exit438.do.end157_crit_edge
  %295 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load volatile ptr, ptr %tail, align 4
  %tobool161.not = icmp eq ptr %296, null
  br i1 %tobool161.not, label %if.end163, label %if.then162

if.then162:                                       ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #12
  call void @release_sock(ptr noundef %sk) #10
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  call fastcc void @chtls_cleanup_rbuf(ptr noundef %sk)
  br label %cleanup266

if.end163:                                        ; preds = %do.end157
  br i1 %cmp94.not, label %if.end167, label %if.end163.do.end273_crit_edge

if.end163.do.end273_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

if.end167:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @chtls_cleanup_rbuf(ptr noundef %sk)
  %call168 = call i32 @sk_wait_data(ptr noundef %sk, ptr noundef nonnull %timeo, ptr noundef null) #10
  br label %cleanup266

found_ok_skb:                                     ; preds = %if.end76
  %len169 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 6
  %297 = ptrtoint ptr %len169 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %len169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool170.not = icmp eq i32 %298, 0
  br i1 %tobool170.not, label %if.then171, label %if.end181

if.then171:                                       ; preds = %found_ok_skb
  %299 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 0, ptr %299, align 8
  %301 = ptrtoint ptr %qlen.i.i462 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %qlen.i.i462, align 4
  %sub.i.i455 = add i32 %302, -1
  store volatile i32 %sub.i.i455, ptr %qlen.i.i462, align 4
  %303 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %242, align 8
  %prev9.i.i456 = getelementptr inbounds %struct.anon.46, ptr %242, i32 0, i32 1
  %305 = ptrtoint ptr %prev9.i.i456 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %prev9.i.i456, align 4
  store ptr null, ptr %prev9.i.i456, align 4
  store ptr null, ptr %242, align 8
  %prev17.i.i457 = getelementptr inbounds %struct.anon.46, ptr %304, i32 0, i32 1
  %307 = ptrtoint ptr %prev17.i.i457 to i32
  call void @__asan_store4_noabort(i32 %307)
  store volatile ptr %306, ptr %prev17.i.i457, align 4
  %308 = ptrtoint ptr %306 to i32
  call void @__asan_store4_noabort(i32 %308)
  store volatile ptr %304, ptr %306, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %242, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool172.not = icmp eq i32 %copied.0, 0
  br i1 %tobool172.not, label %land.lhs.true173, label %if.then171.if.end176_crit_edge

if.then171.if.end176_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

land.lhs.true173:                                 ; preds = %if.then171
  %309 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool174.not = icmp eq i32 %310, 0
  br i1 %tobool174.not, label %land.lhs.true173.do.end273_crit_edge, label %land.lhs.true173.if.end176_crit_edge

land.lhs.true173.if.end176_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

land.lhs.true173.do.end273_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

if.end176:                                        ; preds = %land.lhs.true173.if.end176_crit_edge, %if.then171.if.end176_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.0, i32 %..i)
  %cmp177 = icmp slt i32 %copied.0, %..i
  %. = select i1 %cmp177, i32 7, i32 6
  br label %cleanup266

if.end181:                                        ; preds = %found_ok_skb
  %311 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %copied_seq, align 4
  %seq = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 3, i32 16
  %313 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %seq, align 8
  %sub = sub i32 %312, %314
  %sub184 = sub i32 %298, %sub
  %315 = call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %sub184)
  br i1 %tobool56.not, label %if.end181.if.end217_crit_edge, label %if.then197, !prof !88

if.end181.if.end217_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

if.then197:                                       ; preds = %if.end181
  %316 = ptrtoint ptr %urg_seq to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %urg_seq, align 4
  %sub200 = sub i32 %317, %312
  call void @__sanitizer_cov_trace_cmp4(i32 %sub200, i32 %315)
  %cmp201 = icmp ult i32 %sub200, %315
  br i1 %cmp201, label %if.then203, label %if.then197.if.end217_crit_edge

if.then197.if.end217_crit_edge:                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

if.then203:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub200)
  %tobool204.not = icmp eq i32 %sub200, 0
  br i1 %tobool204.not, label %if.else206, label %if.then203.if.end217_crit_edge

if.then203.if.end217_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

if.else206:                                       ; preds = %if.then203
  %318 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load volatile i32, ptr %221, align 4
  %320 = and i32 %319, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %tobool.i458.not = icmp eq i32 %320, 0
  br i1 %tobool.i458.not, label %if.then208, label %if.else206.if.end217_crit_edge

if.else206.if.end217_crit_edge:                   ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

if.then208:                                       ; preds = %if.else206
  %inc = add i32 %312, 1
  %321 = ptrtoint ptr %copied_seq to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %inc, ptr %copied_seq, align 4
  %inc210 = add i32 %sub, 1
  %dec = add i32 %315, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool211.not = icmp eq i32 %dec, 0
  br i1 %tobool211.not, label %if.then208.skip_copy_crit_edge, label %if.then208.if.end217_crit_edge

if.then208.if.end217_crit_edge:                   ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

if.then208.skip_copy_crit_edge:                   ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_copy

if.end217:                                        ; preds = %if.then208.if.end217_crit_edge, %if.else206.if.end217_crit_edge, %if.then203.if.end217_crit_edge, %if.then197.if.end217_crit_edge, %if.end181.if.end217_crit_edge
  %avail.3 = phi i32 [ %315, %if.end181.if.end217_crit_edge ], [ %315, %if.else206.if.end217_crit_edge ], [ %dec, %if.then208.if.end217_crit_edge ], [ %315, %if.then197.if.end217_crit_edge ], [ %sub200, %if.then203.if.end217_crit_edge ]
  %offset.2 = phi i32 [ %sub, %if.end181.if.end217_crit_edge ], [ %sub, %if.else206.if.end217_crit_edge ], [ %inc210, %if.then208.if.end217_crit_edge ], [ %sub, %if.then197.if.end217_crit_edge ], [ %sub, %if.then203.if.end217_crit_edge ]
  br i1 %tobool219.not, label %if.then228, label %if.end217.if.end236_crit_edge, !prof !88

if.end217.if.end236_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.then228:                                       ; preds = %if.end217
  %call.i459 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %242, i32 noundef %offset.2, ptr noundef %msg_iter.i, i32 noundef %avail.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i459)
  %tobool230.not = icmp ne i32 %call.i459, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool232.not = icmp eq i32 %copied.0, 0
  %or.cond = select i1 %tobool230.not, i1 %tobool232.not, i1 false
  br i1 %or.cond, label %if.then228.do.end273_crit_edge, label %if.then228.if.end236_crit_edge

if.then228.if.end236_crit_edge:                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.then228.do.end273_crit_edge:                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

if.end236:                                        ; preds = %if.then228.if.end236_crit_edge, %if.end217.if.end236_crit_edge
  %322 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %copied_seq, align 4
  %add = add i32 %323, %avail.3
  store i32 %add, ptr %copied_seq, align 4
  %add238 = add i32 %avail.3, %copied.0
  %sub239 = sub i32 %len.addr.0, %avail.3
  br label %skip_copy

skip_copy:                                        ; preds = %if.end236, %if.then208.skip_copy_crit_edge
  %copied.1 = phi i32 [ %add238, %if.end236 ], [ %copied.0, %if.then208.skip_copy_crit_edge ]
  %avail.4 = phi i32 [ %avail.3, %if.end236 ], [ 0, %if.then208.skip_copy_crit_edge ]
  %offset.3 = phi i32 [ %offset.2, %if.end236 ], [ %inc210, %if.then208.skip_copy_crit_edge ]
  %len.addr.1 = phi i32 [ %sub239, %if.end236 ], [ %len.addr.0, %if.then208.skip_copy_crit_edge ]
  %324 = ptrtoint ptr %urg_data to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %urg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %325)
  %tobool242.not = icmp eq i16 %325, 0
  br i1 %tobool242.not, label %skip_copy.if.end250_crit_edge, label %land.lhs.true243

skip_copy.if.end250_crit_edge:                    ; preds = %skip_copy
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end250

land.lhs.true243:                                 ; preds = %skip_copy
  %326 = ptrtoint ptr %urg_seq to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %urg_seq, align 4
  %328 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %copied_seq, align 4
  %sub.i460 = sub i32 %327, %329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i460)
  %cmp.i461 = icmp slt i32 %sub.i460, 0
  br i1 %cmp.i461, label %if.then248, label %land.lhs.true243.if.end250_crit_edge

land.lhs.true243.if.end250_crit_edge:             ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end250

if.then248:                                       ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #12
  %330 = ptrtoint ptr %urg_data to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 0, ptr %urg_data, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.then248, %land.lhs.true243.if.end250_crit_edge, %skip_copy.if.end250_crit_edge
  %add251 = add i32 %offset.3, %avail.4
  %331 = ptrtoint ptr %len169 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %len169, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add251, i32 %332)
  %cmp253.not = icmp ult i32 %add251, %332
  br i1 %cmp253.not, label %if.end250.cleanup266_crit_edge, label %if.then255

if.end250.cleanup266_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup266

if.then255:                                       ; preds = %if.end250
  %333 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 4
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 0, ptr %333, align 8
  %335 = ptrtoint ptr %qlen.i.i462 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %qlen.i.i462, align 4
  %sub.i.i463 = add i32 %336, -1
  store volatile i32 %sub.i.i463, ptr %qlen.i.i462, align 4
  %337 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %242, align 8
  %prev9.i.i464 = getelementptr inbounds %struct.anon.46, ptr %242, i32 0, i32 1
  %339 = ptrtoint ptr %prev9.i.i464 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %prev9.i.i464, align 4
  store ptr null, ptr %prev9.i.i464, align 4
  store ptr null, ptr %242, align 8
  %prev17.i.i465 = getelementptr inbounds %struct.anon.46, ptr %338, i32 0, i32 1
  %341 = ptrtoint ptr %prev17.i.i465 to i32
  call void @__asan_store4_noabort(i32 %341)
  store volatile ptr %340, ptr %prev17.i.i465, align 4
  %342 = ptrtoint ptr %340 to i32
  call void @__asan_store4_noabort(i32 %342)
  store volatile ptr %338, ptr %340, align 8
  call void @__kfree_skb(ptr noundef nonnull %242) #10
  %inc256 = add i32 %buffers_freed.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.1, i32 %..i)
  %cmp257.not = icmp slt i32 %copied.1, %..i
  br i1 %cmp257.not, label %if.then255.cleanup266_crit_edge, label %land.lhs.true259

if.then255.cleanup266_crit_edge:                  ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup266

land.lhs.true259:                                 ; preds = %if.then255
  %343 = ptrtoint ptr %sk_receive_queue77 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %sk_receive_queue77, align 4
  %cmp.i466 = icmp eq ptr %344, %sk_receive_queue77
  %tobool262.not490 = icmp eq ptr %344, null
  %tobool262.not = or i1 %cmp.i466, %tobool262.not490
  br i1 %tobool262.not, label %land.lhs.true259.do.end273_crit_edge, label %land.lhs.true259.cleanup266_crit_edge

land.lhs.true259.cleanup266_crit_edge:            ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup266

land.lhs.true259.do.end273_crit_edge:             ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

cleanup266:                                       ; preds = %land.lhs.true259.cleanup266_crit_edge, %if.then255.cleanup266_crit_edge, %if.end250.cleanup266_crit_edge, %if.end176, %if.end167, %if.then162
  %buffers_freed.2 = phi i32 [ %buffers_freed.0, %if.then162 ], [ %buffers_freed.0, %if.end167 ], [ %buffers_freed.0, %if.end176 ], [ %inc256, %land.lhs.true259.cleanup266_crit_edge ], [ %inc256, %if.then255.cleanup266_crit_edge ], [ %buffers_freed.0, %if.end250.cleanup266_crit_edge ]
  %copied.2 = phi i32 [ %copied.0, %if.then162 ], [ %copied.0, %if.end167 ], [ %copied.0, %if.end176 ], [ %copied.1, %land.lhs.true259.cleanup266_crit_edge ], [ %copied.1, %if.then255.cleanup266_crit_edge ], [ %copied.1, %if.end250.cleanup266_crit_edge ]
  %cleanup.dest.slot.1 = phi i32 [ 7, %if.then162 ], [ 7, %if.end167 ], [ %., %if.end176 ], [ 0, %land.lhs.true259.cleanup266_crit_edge ], [ 0, %if.then255.cleanup266_crit_edge ], [ 0, %if.end250.cleanup266_crit_edge ]
  %len.addr.2 = phi i32 [ %len.addr.0, %if.then162 ], [ %len.addr.0, %if.end167 ], [ %len.addr.0, %if.end176 ], [ %len.addr.1, %land.lhs.true259.cleanup266_crit_edge ], [ %len.addr.1, %if.then255.cleanup266_crit_edge ], [ %len.addr.1, %if.end250.cleanup266_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cleanup.dest.slot.1)
  %switch = icmp eq i32 %cleanup.dest.slot.1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.2)
  %cmp271.not = icmp eq i32 %len.addr.2, 0
  %or.cond399 = select i1 %switch, i1 true, i1 %cmp271.not
  br i1 %or.cond399, label %cleanup266.do.end273_crit_edge, label %cleanup266.do.body54_crit_edge

cleanup266.do.body54_crit_edge:                   ; preds = %cleanup266
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

cleanup266.do.end273_crit_edge:                   ; preds = %cleanup266
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end273

do.end273:                                        ; preds = %cleanup266.do.end273_crit_edge, %land.lhs.true259.do.end273_crit_edge, %if.then228.do.end273_crit_edge, %land.lhs.true173.do.end273_crit_edge, %if.end163.do.end273_crit_edge, %if.then151, %if.end143.do.end273_crit_edge, %if.end136.do.end273_crit_edge, %if.end130.do.end273_crit_edge, %sock_error.exit, %if.else.do.end273_crit_edge, %signal_pending.exit438.do.end273_crit_edge, %lor.lhs.false116.do.end273_crit_edge, %lor.lhs.false112.do.end273_crit_edge, %lor.lhs.false.do.end273_crit_edge, %if.then105.do.end273_crit_edge, %do.end99.do.end273_crit_edge, %cond.true, %if.then72.do.end273_crit_edge, %if.then65.do.end273_crit_edge
  %copied.2488 = phi i32 [ -11, %if.then72.do.end273_crit_edge ], [ %cond.i430, %cond.true ], [ %cond.i453, %if.then151 ], [ %sub.i442, %sock_error.exit ], [ %copied.0, %lor.lhs.false116.do.end273_crit_edge ], [ %copied.0, %if.then65.do.end273_crit_edge ], [ %copied.0, %do.end99.do.end273_crit_edge ], [ %copied.0, %signal_pending.exit438.do.end273_crit_edge ], [ %copied.0, %lor.lhs.false112.do.end273_crit_edge ], [ %copied.0, %lor.lhs.false.do.end273_crit_edge ], [ %copied.0, %if.then105.do.end273_crit_edge ], [ 0, %if.else.do.end273_crit_edge ], [ 0, %if.end130.do.end273_crit_edge ], [ -107, %if.end136.do.end273_crit_edge ], [ -11, %if.end143.do.end273_crit_edge ], [ %copied.0, %if.end163.do.end273_crit_edge ], [ -11, %land.lhs.true173.do.end273_crit_edge ], [ -14, %if.then228.do.end273_crit_edge ], [ %copied.1, %land.lhs.true259.do.end273_crit_edge ], [ %copied.2, %cleanup266.do.end273_crit_edge ]
  %buffers_freed.2487 = phi i32 [ %buffers_freed.0, %if.then72.do.end273_crit_edge ], [ %buffers_freed.0, %cond.true ], [ %buffers_freed.0, %if.then151 ], [ %buffers_freed.0, %sock_error.exit ], [ %buffers_freed.0, %lor.lhs.false116.do.end273_crit_edge ], [ %buffers_freed.0, %if.then65.do.end273_crit_edge ], [ %buffers_freed.0, %do.end99.do.end273_crit_edge ], [ %buffers_freed.0, %signal_pending.exit438.do.end273_crit_edge ], [ %buffers_freed.0, %lor.lhs.false112.do.end273_crit_edge ], [ %buffers_freed.0, %lor.lhs.false.do.end273_crit_edge ], [ %buffers_freed.0, %if.then105.do.end273_crit_edge ], [ %buffers_freed.0, %if.else.do.end273_crit_edge ], [ %buffers_freed.0, %if.end130.do.end273_crit_edge ], [ %buffers_freed.0, %if.end136.do.end273_crit_edge ], [ %buffers_freed.0, %if.end143.do.end273_crit_edge ], [ %buffers_freed.0, %if.end163.do.end273_crit_edge ], [ %buffers_freed.0, %land.lhs.true173.do.end273_crit_edge ], [ %buffers_freed.0, %if.then228.do.end273_crit_edge ], [ %inc256, %land.lhs.true259.do.end273_crit_edge ], [ %buffers_freed.2, %cleanup266.do.end273_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffers_freed.2487)
  %tobool274.not = icmp eq i32 %buffers_freed.2487, 0
  br i1 %tobool274.not, label %do.end273.if.end276_crit_edge, label %if.then275

do.end273.if.end276_crit_edge:                    ; preds = %do.end273
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end276

if.then275:                                       ; preds = %do.end273
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @chtls_cleanup_rbuf(ptr noundef %sk)
  br label %if.end276

if.end276:                                        ; preds = %if.then275, %do.end273.if.end276_crit_edge
  call void @release_sock(ptr noundef %sk) #10
  br label %cleanup277

cleanup277:                                       ; preds = %if.end276, %chtls_pt_recvmsg.exit, %if.then12, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call13, %if.then12 ], [ %copied.365.i, %chtls_pt_recvmsg.exit ], [ %copied.2488, %if.end276 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @peekmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #10
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool.not = icmp eq i32 %nonblock, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_rcvtimeo.exit_crit_edge

entry.sock_rcvtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 62
  %0 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %1, %cond.false.i ], [ 0, %entry.sock_rcvtimeo.exit_crit_edge ]
  %2 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond.i, ptr %timeo, align 4
  %copied_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 8
  %3 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %copied_seq, align 4
  %urg_data = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 55
  %urg_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 103
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %5 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %and117 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %tail = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9, i32 3
  br label %do.body

do.body:                                          ; preds = %do.cond138.do.body_crit_edge, %sock_rcvtimeo.exit
  %peek_seq.0 = phi i32 [ %4, %sock_rcvtimeo.exit ], [ %peek_seq.5, %do.cond138.do.body_crit_edge ]
  %copied.0 = phi i32 [ 0, %sock_rcvtimeo.exit ], [ %copied.1, %do.cond138.do.body_crit_edge ]
  %len.addr.0 = phi i32 [ %len, %sock_rcvtimeo.exit ], [ %len.addr.1, %do.cond138.do.body_crit_edge ]
  %6 = ptrtoint ptr %urg_data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %urg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not = icmp eq i16 %7, 0
  br i1 %tobool2.not, label %do.body.for.cond.preheader_crit_edge, label %land.rhs

do.body.for.cond.preheader_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

land.rhs:                                         ; preds = %do.body
  %8 = ptrtoint ptr %urg_seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %urg_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %peek_seq.0)
  %cmp = icmp eq i32 %9, %peek_seq.0
  br i1 %cmp, label %if.then, label %land.rhs.for.cond.preheader_crit_edge, !prof !89

land.rhs.for.cond.preheader_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %signal_pending.exit.for.cond.preheader_crit_edge, %land.rhs.for.cond.preheader_crit_edge, %do.body.for.cond.preheader_crit_edge
  br label %for.cond

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool6.not = icmp eq i32 %copied.0, 0
  br i1 %tobool6.not, label %if.end, label %if.then.do.end141_crit_edge

if.then.do.end141_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

if.end:                                           ; preds = %if.then
  %10 = call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stack.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end.if.then11_crit_edge, !prof !88

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

signal_pending.exit:                              ; preds = %if.end
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %15, align 4
  %and1.i.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool10.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool10.not, label %signal_pending.exit.for.cond.preheader_crit_edge, label %signal_pending.exit.if.then11_crit_edge

signal_pending.exit.if.then11_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

signal_pending.exit.for.cond.preheader_crit_edge: ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

if.then11:                                        ; preds = %signal_pending.exit.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %21 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.not = icmp eq i32 %22, 0
  br i1 %tobool12.not, label %if.then11.do.end141_crit_edge, label %cond.true

if.then11.do.end141_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

cond.true:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %22)
  %cmp.i = icmp eq i32 %22, 2147483647
  %cond.i200 = select i1 %cmp.i, i32 -512, i32 -4
  br label %do.end141

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %skb.0.in = phi ptr [ %skb.0, %for.body.for.cond_crit_edge ], [ %sk_receive_queue, %for.cond.preheader ]
  %23 = ptrtoint ptr %skb.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %skb.0 = load ptr, ptr %skb.0.in, align 4
  %cmp17.not = icmp eq ptr %skb.0, %sk_receive_queue
  br i1 %cmp17.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %seq = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 16
  %24 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %seq, align 8
  %sub = sub i32 %peek_seq.0, %25
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %26 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len19, align 4
  %cmp20 = icmp ugt i32 %27, %sub
  br i1 %cmp20, label %found_ok_skb, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool25.not = icmp eq i32 %copied.0, 0
  br i1 %tobool25.not, label %if.end27, label %for.end.do.end141_crit_edge

for.end.do.end141_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

if.end27:                                         ; preds = %for.end
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %5, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not = icmp eq i32 %30, 0
  br i1 %tobool.i.not, label %if.end30, label %if.end27.do.end141_crit_edge

if.end27.do.end141_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

if.end30:                                         ; preds = %if.end27
  %31 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool31.not = icmp eq i32 %32, 0
  br i1 %tobool31.not, label %if.end34, label %sock_error.exit

sock_error.exit:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  call void @llvm.prefetch.p0(ptr %sk_err, i32 1, i32 3, i32 1) #10
  %33 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err) #10, !srcloc !101
  %asmresult.i.i = extractvalue { i32, i32 } %33, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  %sub.i = sub i32 0, %asmresult.i.i
  br label %do.end141

if.end34:                                         ; preds = %if.end30
  %34 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sk_shutdown, align 2
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool36.not = icmp eq i8 %36, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.do.end141_crit_edge

if.end34.do.end141_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

if.end38:                                         ; preds = %if.end34
  %37 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %38)
  %cmp40 = icmp eq i8 %38, 7
  br i1 %cmp40, label %if.end38.do.end141_crit_edge, label %if.end43

if.end38.do.end141_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

if.end43:                                         ; preds = %if.end38
  %39 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool44.not = icmp eq i32 %40, 0
  br i1 %tobool44.not, label %if.end43.do.end141_crit_edge, label %if.end46

if.end43.do.end141_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

if.end46:                                         ; preds = %if.end43
  %41 = call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i204 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i204 to ptr
  %task48 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task48, align 8
  %stack.i.i205 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %stack.i.i205 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stack.i.i205, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %49 = and i32 %48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i206 = icmp eq i32 %49, 0
  br i1 %tobool.not.i206, label %signal_pending.exit210, label %if.end46.if.then51_crit_edge, !prof !88

if.end46.if.then51_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

signal_pending.exit210:                           ; preds = %if.end46
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %46, align 4
  %and1.i.i.i.i.i207 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i207)
  %tobool50.not = icmp eq i32 %and1.i.i.i.i.i207, 0
  br i1 %tobool50.not, label %do.end, label %signal_pending.exit210.if.then51_crit_edge

signal_pending.exit210.if.then51_crit_edge:       ; preds = %signal_pending.exit210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

if.then51:                                        ; preds = %signal_pending.exit210.if.then51_crit_edge, %if.end46.if.then51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %40)
  %cmp.i211 = icmp eq i32 %40, 2147483647
  %cond.i212 = select i1 %cmp.i211, i32 -512, i32 -4
  br label %do.end141

do.end:                                           ; preds = %signal_pending.exit210
  %52 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %tail, align 4
  %tobool55.not = icmp eq ptr %53, null
  br i1 %tobool55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @release_sock(ptr noundef %sk) #10
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  br label %if.end58

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = call i32 @sk_wait_data(ptr noundef %sk, ptr noundef nonnull %timeo, ptr noundef null) #10
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then56
  %54 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %copied_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %peek_seq.0, i32 %55)
  %cmp60.not = icmp eq i32 %peek_seq.0, %55
  br i1 %cmp60.not, label %if.end58.do.cond138_crit_edge, label %if.then68, !prof !88

if.end58.do.cond138_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond138

if.then68:                                        ; preds = %if.end58
  %call69 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then68.if.end81_crit_edge, label %do.end74

if.then68.if.end81_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

do.end74:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task48, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 68
  %58 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid, align 8
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %comm, i32 noundef %59) #13
  br label %if.end81

if.end81:                                         ; preds = %do.end74, %if.then68.if.end81_crit_edge
  %60 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %copied_seq, align 4
  br label %do.cond138

found_ok_skb:                                     ; preds = %for.body
  %sub85 = sub i32 %27, %sub
  %62 = call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %sub85)
  br i1 %tobool2.not, label %found_ok_skb.if.end116_crit_edge, label %if.then98, !prof !88

found_ok_skb.if.end116_crit_edge:                 ; preds = %found_ok_skb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then98:                                        ; preds = %found_ok_skb
  %63 = ptrtoint ptr %urg_seq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %urg_seq, align 4
  %sub100 = sub i32 %64, %peek_seq.0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub100, i32 %62)
  %cmp101 = icmp ult i32 %sub100, %62
  br i1 %cmp101, label %if.then103, label %if.then98.if.end116_crit_edge

if.then98.if.end116_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then103:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub100)
  %tobool104.not = icmp eq i32 %sub100, 0
  br i1 %tobool104.not, label %if.then105, label %if.then103.if.end116_crit_edge

if.then103.if.end116_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then105:                                       ; preds = %if.then103
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %5, align 4
  %67 = lshr i32 %66, 2
  %.lobit = and i32 %67, 1
  %68 = xor i32 %.lobit, 1
  %peek_seq.1 = add i32 %68, %peek_seq.0
  %offset.0 = add nuw i32 %68, %sub
  %sext = add i32 %62, -1
  %avail.1 = add nuw i32 %sext, %.lobit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail.1)
  %tobool110.not = icmp eq i32 %avail.1, 0
  br i1 %tobool110.not, label %if.then105.do.cond138_crit_edge, label %if.then105.if.end116_crit_edge

if.then105.if.end116_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then105.do.cond138_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond138

if.end116:                                        ; preds = %if.then105.if.end116_crit_edge, %if.then103.if.end116_crit_edge, %if.then98.if.end116_crit_edge, %found_ok_skb.if.end116_crit_edge
  %peek_seq.4 = phi i32 [ %peek_seq.0, %found_ok_skb.if.end116_crit_edge ], [ %peek_seq.1, %if.then105.if.end116_crit_edge ], [ %peek_seq.0, %if.then98.if.end116_crit_edge ], [ %peek_seq.0, %if.then103.if.end116_crit_edge ]
  %offset.3 = phi i32 [ %sub, %found_ok_skb.if.end116_crit_edge ], [ %offset.0, %if.then105.if.end116_crit_edge ], [ %sub, %if.then98.if.end116_crit_edge ], [ %sub, %if.then103.if.end116_crit_edge ]
  %avail.4 = phi i32 [ %62, %found_ok_skb.if.end116_crit_edge ], [ %avail.1, %if.then105.if.end116_crit_edge ], [ %62, %if.then98.if.end116_crit_edge ], [ %sub100, %if.then103.if.end116_crit_edge ]
  br i1 %tobool118.not, label %if.then127, label %if.end116.if.end135_crit_edge, !prof !88

if.end116.if.end135_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then127:                                       ; preds = %if.end116
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef %skb.0, i32 noundef %offset.3, ptr noundef %msg_iter.i, i32 noundef %len.addr.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool129.not = icmp ne i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool131.not = icmp eq i32 %copied.0, 0
  %or.cond = select i1 %tobool129.not, i1 %tobool131.not, i1 false
  br i1 %or.cond, label %if.then127.do.end141_crit_edge, label %if.then127.if.end135_crit_edge

if.then127.if.end135_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then127.do.end141_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

if.end135:                                        ; preds = %if.then127.if.end135_crit_edge, %if.end116.if.end135_crit_edge
  %add = add i32 %avail.4, %peek_seq.4
  %add136 = add i32 %avail.4, %copied.0
  %sub137 = sub i32 %len.addr.0, %avail.4
  br label %do.cond138

do.cond138:                                       ; preds = %if.end135, %if.then105.do.cond138_crit_edge, %if.end81, %if.end58.do.cond138_crit_edge
  %peek_seq.5 = phi i32 [ %add, %if.end135 ], [ %61, %if.end81 ], [ %peek_seq.0, %if.end58.do.cond138_crit_edge ], [ %peek_seq.1, %if.then105.do.cond138_crit_edge ]
  %copied.1 = phi i32 [ %add136, %if.end135 ], [ 0, %if.end81 ], [ 0, %if.end58.do.cond138_crit_edge ], [ %copied.0, %if.then105.do.cond138_crit_edge ]
  %len.addr.1 = phi i32 [ %sub137, %if.end135 ], [ %len.addr.0, %if.end81 ], [ %len.addr.0, %if.end58.do.cond138_crit_edge ], [ %len.addr.0, %if.then105.do.cond138_crit_edge ]
  %cmp139.not = icmp eq i32 %len.addr.1, 0
  br i1 %cmp139.not, label %do.cond138.do.end141_crit_edge, label %do.cond138.do.body_crit_edge

do.cond138.do.body_crit_edge:                     ; preds = %do.cond138
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond138.do.end141_crit_edge:                   ; preds = %do.cond138
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

do.end141:                                        ; preds = %do.cond138.do.end141_crit_edge, %if.then127.do.end141_crit_edge, %if.then51, %if.end43.do.end141_crit_edge, %if.end38.do.end141_crit_edge, %if.end34.do.end141_crit_edge, %sock_error.exit, %if.end27.do.end141_crit_edge, %for.end.do.end141_crit_edge, %cond.true, %if.then11.do.end141_crit_edge, %if.then.do.end141_crit_edge
  %copied.2 = phi i32 [ %sub.i, %sock_error.exit ], [ %cond.i212, %if.then51 ], [ %cond.i200, %cond.true ], [ -11, %if.then11.do.end141_crit_edge ], [ -14, %if.then127.do.end141_crit_edge ], [ -11, %if.end43.do.end141_crit_edge ], [ -107, %if.end38.do.end141_crit_edge ], [ 0, %if.end34.do.end141_crit_edge ], [ 0, %if.end27.do.end141_crit_edge ], [ %copied.0, %for.end.do.end141_crit_edge ], [ %copied.1, %do.cond138.do.end141_crit_edge ], [ %copied.0, %if.then.do.end141_crit_edge ]
  call void @release_sock(ptr noundef %sk) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #10
  ret i32 %copied.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chtls_cleanup_rbuf(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @chtls_cleanup_rbuf.__warned, align 1
  br i1 %.b1, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_cleanup_rbuf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1401, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not = icmp eq i32 %and.i, 0
  br i1 %tobool11.not, label %do.end7.cleanup_crit_edge, label %if.end13

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %do.end7
  %6 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %sk_user_data, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end13.do.end7.i_crit_edge

if.end13.do.end7.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.end13
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b45.i = load i1, ptr @chtls_select_window.__warned, align 1
  br i1 %.b45.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @chtls_select_window.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1341, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %if.end13.do.end7.i_crit_edge
  %rcv_wnd.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 79
  %8 = ptrtoint ptr %rcv_wnd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rcv_wnd.i, align 8
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %10 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sk_rcvbuf.i.i, align 8
  %skc_net.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i.i.i.i, align 4
  %sysctl_tcp_adv_win_scale.i.i.i = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 35, i32 85
  %14 = ptrtoint ptr %sysctl_tcp_adv_win_scale.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sysctl_tcp_adv_win_scale.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i.i.i = icmp slt i32 %15, 1
  %sub.i.i.i = sub i32 0, %15
  %shr.i.i.i = ashr i32 %11, %sub.i.i.i
  %shr1.i.i.i = ashr i32 %11, %15
  %sub2.i.i.i = sub i32 %11, %shr1.i.i.i
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 %shr.i.i.i, i32 %sub2.i.i.i
  %16 = tail call i32 @llvm.umax.i32(i32 %9, i32 %cond.i.i.i) #10
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 24576) #10
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 134217727) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %18)
  %cmp23.i = icmp ult i32 %9, %18
  br i1 %cmp23.i, label %if.then24.i, label %do.end7.i.chtls_select_window.exit_crit_edge

do.end7.i.chtls_select_window.exit_crit_edge:     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chtls_select_window.exit

if.then24.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %7 to i32
  %and.i2 = and i32 %19, -4
  %20 = inttoptr i32 %and.i2 to ptr
  %sub.neg.i = sub i32 %9, %18
  %rcv_wup.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 9
  %21 = ptrtoint ptr %rcv_wup.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rcv_wup.i, align 8
  %sub26.i = add i32 %sub.neg.i, %22
  store i32 %sub26.i, ptr %rcv_wup.i, align 8
  %23 = ptrtoint ptr %rcv_wnd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %rcv_wnd.i, align 8
  %flags.i.i = getelementptr inbounds %struct.chtls_sock, ptr %20, i32 0, i32 10
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 4
  %and.i.i.i = and i32 %25, -513
  store i32 %and.i.i.i, ptr %flags.i.i, align 4
  br label %chtls_select_window.exit

chtls_select_window.exit:                         ; preds = %if.then24.i, %do.end7.i.chtls_select_window.exit_crit_edge
  %copied_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 8
  %26 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %copied_seq, align 4
  %rcv_wup = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 9
  %28 = ptrtoint ptr %rcv_wup to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rcv_wup, align 8
  %sub = sub i32 %27, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %tobool15.not = icmp eq i32 %27, %29
  br i1 %tobool15.not, label %chtls_select_window.exit.cleanup_crit_edge, label %if.end20, !prof !89

chtls_select_window.exit.cleanup_crit_edge:       ; preds = %chtls_select_window.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %chtls_select_window.exit
  %add = add i32 %sub, 16384
  %30 = ptrtoint ptr %rcv_wnd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rcv_wnd.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %31)
  %cmp.not = icmp uge i32 %add, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 15359, i32 %sub)
  %cmp22 = icmp ugt i32 %sub, 15359
  %or.cond = or i1 %cmp22, %cmp.not
  br i1 %or.cond, label %if.then24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 24, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i3 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i3, label %if.then24.send_rx_credits.exit_crit_edge, label %if.end.i

if.then24.send_rx_credits.exit_crit_edge:         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_rx_credits.exit

if.end.i:                                         ; preds = %if.then24
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !88

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

__skb_put.exit.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 24
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %37, 24
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %38 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i, align 8
  %port_id.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 29
  %40 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %port_id.i, align 8
  %queue.tr.i.i = zext i8 %41 to i16
  %42 = shl nuw nsw i16 %queue.tr.i.i, 1
  %conv.i.i = or i16 %42, 1
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 10
  %43 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i.i, ptr %queue_mapping1.i.i.i, align 8
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 83886088, ptr %39, align 8
  %tid.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 19
  %45 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tid.i, align 8
  %shl.i4 = shl i32 %46, 8
  %or.i = or i32 %shl.i4, 2
  %wr_mid.i = getelementptr inbounds %struct.work_request_hdr, ptr %39, i32 0, i32 1
  %47 = ptrtoint ptr %wr_mid.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i, ptr %wr_mid.i, align 4
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %39, i32 0, i32 2
  %48 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %wr_lo.i, align 8
  %49 = load i32, ptr %tid.i, align 8
  %or5.i = or i32 %49, 218103808
  %ot.i = getelementptr inbounds %struct.cpl_rx_data_ack, ptr %39, i32 0, i32 1
  %50 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or5.i, ptr %ot.i, align 8
  %or7.i = or i32 %sub, 268435456
  %credit_dack.i = getelementptr inbounds %struct.cpl_rx_data_ack, ptr %39, i32 0, i32 2
  %51 = ptrtoint ptr %credit_dack.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or7.i, ptr %credit_dack.i, align 4
  %cdev.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 1
  %52 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cdev.i, align 4
  %ports.i = getelementptr inbounds %struct.chtls_dev, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ports.i, align 8
  %56 = load i8, ptr %port_id.i, align 8
  %idxprom.i = zext i8 %56 to i32
  %arrayidx.i = getelementptr ptr, ptr %55, i32 %idxprom.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %call9.i = tail call i32 @cxgb4_ofld_send(ptr noundef %58, ptr noundef nonnull %call.i.i) #10
  br label %send_rx_credits.exit

send_rx_credits.exit:                             ; preds = %__skb_put.exit.i, %if.then24.send_rx_credits.exit_crit_edge
  %retval.0.i = phi i32 [ %sub, %__skb_put.exit.i ], [ 0, %if.then24.send_rx_credits.exit_crit_edge ]
  %59 = ptrtoint ptr %rcv_wup to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rcv_wup, align 8
  %add27 = add i32 %60, %retval.0.i
  store i32 %add27, ptr %rcv_wup, align 8
  br label %cleanup

cleanup:                                          ; preds = %send_rx_credits.exit, %if.end20.cleanup_crit_edge, %chtls_select_window.exit.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_wait_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_flowc_wr_skb(ptr noundef %sk, ptr nocapture noundef readonly %flowc, i32 noundef %flowclen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b20 = load i1, ptr @create_flowc_wr_skb.__warned, align 1
  br i1 %.b20, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @create_flowc_wr_skb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 93, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %call.i = tail call ptr @__alloc_skb(i32 noundef %flowclen, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %do.end7.cleanup_crit_edge, label %if.end13

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %do.end7
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_data.exit, label %do.body3.i.i, !prof !88

do.body3.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

__skb_put_data.exit:                              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  %and = and i32 %4, -4
  %5 = inttoptr i32 %and to ptr
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %flowclen
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %9, %flowclen
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %10 = call ptr @memcpy(ptr %7, ptr %flowc, i32 %flowclen)
  %txq_idx = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 17
  %11 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %txq_idx, align 8
  %.tr = trunc i32 %12 to i16
  %conv = shl i16 %.tr, 1
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %queue_mapping1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %__skb_put_data.exit, %do.end7.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_immdata_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyid_to_addr(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_do_copy_data_nocache(ptr nocapture noundef readonly %sk, ptr nocapture noundef %skb, ptr noundef %from, ptr noundef %to, i32 noundef %copy, i32 noundef %offset) unnamed_addr #7 align 64 {
entry:
  %csum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %1 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csum) #10
  %2 = ptrtoint ptr %csum to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %csum, align 4
  %call.i = call i32 @csum_and_copy_from_iter(ptr noundef %to, i32 noundef %copy, ptr noundef nonnull %csum, ptr noundef %from) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %copy)
  %cmp.i = icmp eq i32 %call.i, %copy
  br i1 %cmp.i, label %cleanup.thread, label %cleanup, !prof !88

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = ptrtoint ptr %csum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %csum, align 4
  %and.i.i = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i.i = call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 24) #10
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %7, i32 %or.i.i.i
  %add.i.i = add i32 %retval.0.i.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %retval.0.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %retval.0.i.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add1.i.i, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csum) #10
  br label %return

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @iov_iter_revert(ptr noundef %from, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csum) #10
  br label %return

if.else:                                          ; preds = %entry
  %sk_route_caps = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 38
  %9 = ptrtoint ptr %sk_route_caps to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sk_route_caps, align 8
  %and = and i64 %10, 2199023255552
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copy)
  %cmp9.i.i.i31 = icmp slt i32 %copy, 0
  br i1 %tobool.not, label %if.end8.i.i.i32, label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.else
  br i1 %cmp9.i.i.i31, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.copy_from_iter_nocache.exit.i_crit_edge, label %if.then27.i.i.i, !prof !88

land.rhs16.i.i.i.copy_from_iter_nocache.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_iter_nocache.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_iter_nocache.exit.i

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__check_object_size(ptr noundef %to, i32 noundef %copy, i1 noundef zeroext false) #10
  %call3.i.i = tail call i32 @_copy_from_iter_nocache(ptr noundef %to, i32 noundef %copy, ptr noundef %from) #10
  br label %copy_from_iter_nocache.exit.i

copy_from_iter_nocache.exit.i:                    ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter_nocache.exit.i_crit_edge
  %retval.0.i.i22 = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter_nocache.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i22, i32 %copy)
  %cmp.i23 = icmp eq i32 %retval.0.i.i22, %copy
  br i1 %cmp.i23, label %copy_from_iter_nocache.exit.i.return_crit_edge, label %copy_from_iter_full_nocache.exit, !prof !88

copy_from_iter_nocache.exit.i.return_crit_edge:   ; preds = %copy_from_iter_nocache.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

copy_from_iter_full_nocache.exit:                 ; preds = %copy_from_iter_nocache.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iov_iter_revert(ptr noundef %from, i32 noundef %retval.0.i.i22) #10
  br label %return

if.end8.i.i.i32:                                  ; preds = %if.else
  br i1 %cmp9.i.i.i31, label %land.rhs16.i.i.i34, label %if.then.i.i.i.i37

land.rhs16.i.i.i34:                               ; preds = %if.end8.i.i.i32
  %.b1.i.i.i33 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i33, label %land.rhs16.i.i.i34.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i35, !prof !88

land.rhs16.i.i.i34.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_iter.exit.i

if.then27.i.i.i35:                                ; preds = %land.rhs16.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_iter.exit.i

if.then.i.i.i.i37:                                ; preds = %if.end8.i.i.i32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__check_object_size(ptr noundef %to, i32 noundef %copy, i1 noundef zeroext false) #10
  %call3.i.i38 = tail call i32 @_copy_from_iter(ptr noundef %to, i32 noundef %copy, ptr noundef %from) #10
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i37, %if.then27.i.i.i35, %land.rhs16.i.i.i34.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i40 = phi i32 [ %call3.i.i38, %if.then.i.i.i.i37 ], [ 0, %if.then27.i.i.i35 ], [ 0, %land.rhs16.i.i.i34.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i40, i32 %copy)
  %cmp.i41 = icmp eq i32 %retval.0.i.i40, %copy
  br i1 %cmp.i41, label %copy_from_iter.exit.i.return_crit_edge, label %copy_from_iter_full.exit, !prof !88

copy_from_iter.exit.i.return_crit_edge:           ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

copy_from_iter_full.exit:                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iov_iter_revert(ptr noundef %from, i32 noundef %retval.0.i.i40) #10
  br label %return

return:                                           ; preds = %copy_from_iter_full.exit, %copy_from_iter.exit.i.return_crit_edge, %copy_from_iter_full_nocache.exit, %copy_from_iter_nocache.exit.i.return_crit_edge, %cleanup, %cleanup.thread
  %retval.1 = phi i32 [ -14, %cleanup ], [ -14, %copy_from_iter_full_nocache.exit ], [ -14, %copy_from_iter_full.exit ], [ 0, %cleanup.thread ], [ 0, %copy_from_iter_nocache.exit.i.return_crit_edge ], [ 0, %copy_from_iter.exit.i.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_and_copy_from_iter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter_nocache(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_busy_loop(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_busy_loop_end(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !76}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 171, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 767, i32 27}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 821, i32 27}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 1009, i32 27}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 1241, i32 8}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 1765, i32 8}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 109, i32 27}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 93, i32 27}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls.h", i32 547, i32 27}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls.h", i32 483, i32 27}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 45, i32 27}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 488, i32 8}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 446, i32 27}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 230, i32 8}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 235, i32 3}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tls_copy_ivs._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @tls_copy_ivs._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 259, i32 4}
!38 = !{ptr @tls_copy_ivs._entry.5, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tls_copy_ivs._entry_ptr.7, !37, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 286, i32 8}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 359, i32 8}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 517, i32 8}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 730, i32 27}
!48 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/mm.h", i32 717, i32 2}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 879, i32 27}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 851, i32 27}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!56 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 1683, i32 5}
!69 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @peekmsg._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @peekmsg._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 1431, i32 27}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 1401, i32 27}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_io.c", i32 1341, i32 27}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{!"branch_weights", i32 1, i32 2000}
!90 = !{i64 2148385503, i64 2148385535, i64 2148385564, i64 2148385598, i64 2148385629, i64 2148385652}
!91 = !{i64 2148383973, i64 2148383999, i64 2148384028, i64 2148384062, i64 2148384093, i64 2148384116}
!92 = !{i64 2153534069, i64 2153534552, i64 2153534106, i64 2153534162, i64 2153534196, i64 2153534220, i64 2153534261, i64 2153534282, i64 2153534310, i64 2153534344}
!93 = !{i64 2148472449}
!94 = !{i64 2148387158, i64 2148387190, i64 2148387219, i64 2148387253, i64 2148387284, i64 2148387307}
!95 = !{i64 2148472678}
!96 = !{i64 2148997350, i64 2148997355, i64 2148997368, i64 2148997412, i64 2148997446, i64 2148997467}
!97 = !{i64 2150972714, i64 2150973205, i64 2150972751, i64 2150972807, i64 2150972841, i64 2150972865, i64 2150972906, i64 2150972927, i64 2150972955, i64 2150972989}
!98 = !{i64 2153553981, i64 2153554465, i64 2153554018, i64 2153554074, i64 2153554108, i64 2153554132, i64 2153554173, i64 2153554194, i64 2153554222, i64 2153554256}
!99 = !{!"auto-init"}
!100 = !{i64 2156842071}
!101 = !{i64 890741, i64 890758, i64 890782, i64 890808, i64 890826}
!102 = !{i64 2156842414}
!103 = !{i64 2154605410, i64 2154605898, i64 2154605447, i64 2154605503, i64 2154605537, i64 2154605561, i64 2154605602, i64 2154605623, i64 2154605651, i64 2154605685}
