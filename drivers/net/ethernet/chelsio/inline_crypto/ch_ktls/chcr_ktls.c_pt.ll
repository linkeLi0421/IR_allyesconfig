; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cxgb4_uld_info = type { [16 x i8], ptr, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tlsdev_ops = type { ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.165 }
%union.anon.165 = type { i32 }
%struct.chcr_ktls_uld_ctx = type { %struct.list_head, %struct.cxgb4_lld_info, %struct.xarray, i8 }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.166, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.166 = type { ptr }
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
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.194, i32 }
%union.anon.194 = type { ptr }
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
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.chcr_ktls_ofld_ctx_tx = type { %struct.tls_offload_context_tx, ptr }
%struct.tls_offload_context_tx = type { ptr, %struct.spinlock, %struct.list_head, ptr, ptr, i64, i64, [17 x %struct.scatterlist], ptr, [0 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.chcr_ktls_info = type { ptr, %struct.spinlock, %struct.ktls_key_ctx, ptr, ptr, ptr, %struct.completion, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
%struct.ktls_key_ctx = type { i32, [4 x i8], i64, [32 x i8] }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.111, [0 x i32], %union.anon.112, i16, i16, %union.anon.113, %struct.refcount_struct, [0 x i32], %union.anon.114 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.110 }
%union.anon.110 = type { [4 x i32] }
%union.anon.111 = type { i32 }
%union.anon.112 = type { %struct.hlist_node }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
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
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.203, %struct.anon.204, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.117, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.117 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.118 = type { ptr }
%union.anon.119 = type { ptr }
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
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.203 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.204 = type { i32, i32, i32, i32 }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%union.tls_crypto_context = type { %union.anon.184 }
%union.anon.184 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.tls_record_info = type { %struct.list_head, i32, i32, i32, [17 x %struct.bio_vec] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tx_desc = type { [8 x i64] }
%struct.fw_ulptx_wr = type { i32, i32, i64 }
%struct.tx_sw_desc = type { ptr, [18 x i32] }
%struct.ulp_txpkt = type { i32, i32 }
%struct.ulptx_idata = type { i32, i32 }
%struct.cpl_tx_sec_pdu = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.cpl_tx_data = type { %union.opcode_tid, i32, i32, i32 }
%union.opcode_tid = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.148, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.148 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fw_eth_tx_pkt_wr = type { i32, i32, i64 }
%struct.cpl_tx_pkt_core = type { i32, i16, i16, i64 }
%struct.cpl_act_open_rpl = type { %union.opcode_tid, i32 }
%union.aopen_entry = type { ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.cpl_set_tcb_field_core = type { %union.opcode_tid, i16, i16, i64, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.163, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.163 = type { %struct.atomic_t }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.tls12_crypto_info_aes_gcm_128 = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.work_request_hdr = type { i32, i32, i64 }
%struct.cpl_act_open_req = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i32, i32, i64, i32, i32 }
%struct.anon.41 = type { i32, i32 }
%struct.cpl_act_open_req6 = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i64, i64, i64, i64, i64, i32, i32 }
%struct.cpl_set_tcb_field = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i64, i64 }
%struct.l2t_entry = type { i16, i16, [4 x i32], i32, ptr, ptr, ptr, %struct.sk_buff_head, %struct.spinlock, %struct.atomic_t, i16, i16, i8, i8, [6 x i8] }

@chcr_ktls_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016ch_ktls: driver unloaded\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"chcr_ktls_exit\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c\00", [33 x i8] zeroinitializer }, align 32
@chcr_ktls_exit._entry_ptr = internal global ptr @chcr_ktls_exit._entry, section ".printk_index", align 4
@dev_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dev_mutex, i64 52), ptr getelementptr (i8, ptr @dev_mutex, i64 52) }, ptr @dev_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@uld_ctx_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @uld_ctx_list, ptr @uld_ctx_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_ch_ktls__669_2265_chcr_ktls_init6 = internal global ptr @chcr_ktls_init, section ".initcall6.init", align 4
@__exitcall_chcr_ktls_exit = internal global ptr @chcr_ktls_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description670 = internal constant [47 x i8] c"ch_ktls.description=Chelsio NIC TLS ULD driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file671 = internal constant [72 x i8] c"ch_ktls.file=drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/ch_ktls\00", section ".modinfo", align 1
@__UNIQUE_ID_license672 = internal constant [20 x i8] c"ch_ktls.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author673 = internal constant [38 x i8] c"ch_ktls.author=Chelsio Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_version674 = internal constant [27 x i8] c"ch_ktls.version=1.0.0.0-ko\00", section ".modinfo", align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ch_ktls\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1.0.0.0-ko\00", [21 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.4, ptr @.str.5 }, section "__modver", align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dev_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev_mutex\00", [22 x i8] zeroinitializer }, align 32
@chcr_ktls_uld_info = internal global { %struct.cxgb4_uld_info, [56 x i8] } { %struct.cxgb4_uld_info { [16 x i8] c"ch_ktls\00\00\00\00\00\00\00\00\00", ptr null, i32 1, i32 1024, i32 0, i8 0, i8 0, ptr @chcr_ktls_uld_add, ptr @chcr_ktls_uld_rx_handler, ptr @chcr_ktls_uld_state_change, ptr null, ptr null, ptr null, ptr @chcr_ktls_xmit, ptr @chcr_ktls_ops, ptr null }, [56 x i8] zeroinitializer }, align 32
@chcr_ktls_ops = internal constant { %struct.tlsdev_ops, [20 x i8] } { %struct.tlsdev_ops { ptr @chcr_ktls_dev_add, ptr @chcr_ktls_dev_del, ptr null }, [20 x i8] zeroinitializer }, align 32
@chcr_ktls_uld_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@chcr_ktls_uld_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 2119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016ch_ktls: %s - version %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chcr_ktls_uld_add\00", [46 x i8] zeroinitializer }, align 32
@chcr_ktls_uld_add._entry_ptr = internal global ptr @chcr_ktls_uld_add._entry, section ".printk_index", align 4
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Chelsio NIC TLS ULD Driver\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@chcr_ktls_uld_rx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 2153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ch_ktls: Unsupported opcode %d received\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chcr_ktls_uld_rx_handler\00", [39 x i8] zeroinitializer }, align 32
@chcr_ktls_uld_rx_handler._entry_ptr = internal global ptr @chcr_ktls_uld_rx_handler._entry, section ".printk_index", align 4
@work_handlers = internal constant { <{ [59 x ptr], [180 x ptr] }>, [228 x i8] } { <{ [59 x ptr], [180 x ptr] }> <{ [59 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @chcr_ktls_cpl_act_open_rpl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @chcr_ktls_cpl_set_tcb_rpl], [180 x ptr] zeroinitializer }>, [228 x i8] zeroinitializer }, align 32
@chcr_ktls_cpl_act_open_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ch_ktls: %s: incorrect tx_info or atid\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chcr_ktls_cpl_act_open_rpl\00", [37 x i8] zeroinitializer }, align 32
@chcr_ktls_cpl_act_open_rpl._entry_ptr = internal global ptr @chcr_ktls_cpl_act_open_rpl._entry, section ".printk_index", align 4
@chcr_ktls_cpl_act_open_rpl._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ch_ktls: %s: Failed to allocate tid XA entry = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@chcr_ktls_cpl_act_open_rpl._entry_ptr.19 = internal global ptr @chcr_ktls_cpl_act_open_rpl._entry.17, section ".printk_index", align 4
@chcr_ktls_cpl_set_tcb_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ch_ktls: %s: incorrect tx_info or tid\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chcr_ktls_cpl_set_tcb_rpl\00", [38 x i8] zeroinitializer }, align 32
@chcr_ktls_cpl_set_tcb_rpl._entry_ptr = internal global ptr @chcr_ktls_cpl_set_tcb_rpl._entry, section ".printk_index", align 4
@chcr_ktls_uld_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 2206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016ch_ktls: %s: Up\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chcr_ktls_uld_state_change\00", [37 x i8] zeroinitializer }, align 32
@chcr_ktls_uld_state_change._entry_ptr = internal global ptr @chcr_ktls_uld_state_change._entry, section ".printk_index", align 4
@chcr_ktls_uld_state_change._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 2214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016ch_ktls: %s: Down\0A\00", [43 x i8] zeroinitializer }, align 32
@chcr_ktls_uld_state_change._entry_ptr.26 = internal global ptr @chcr_ktls_uld_state_change._entry.24, section ".printk_index", align 4
@chcr_ktls_xmit.__UNIQUE_ID_ddebug668 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 1, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"chcr_ktls_xmit\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"seq 0x%x, end_seq 0x%x prev_seq 0x%x, datalen 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ch_ktls: seq 0x%x, end_seq 0x%x prev_seq 0x%x, datalen 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.31 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_common.h\00", [63 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@chcr_ktls_dev_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ch_ktls: not expecting for RX direction\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chcr_ktls_dev_add\00", [46 x i8] zeroinitializer }, align 32
@chcr_ktls_dev_add._entry_ptr = internal global ptr @chcr_ktls_dev_add._entry, section ".printk_index", align 4
@chcr_ktls_dev_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&tx_info->lock\00", [17 x i8] zeroinitializer }, align 32
@chcr_ktls_dev_add._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ch_ktls: DST entry not found\0A\00", [32 x i8] zeroinitializer }, align 32
@chcr_ktls_dev_add._entry_ptr.37 = internal global ptr @chcr_ktls_dev_add._entry.35, section ".printk_index", align 4
@chcr_ktls_dev_add._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ch_ktls: neighbour not found\0A\00", [32 x i8] zeroinitializer }, align 32
@chcr_ktls_dev_add._entry_ptr.40 = internal global ptr @chcr_ktls_dev_add._entry.38, section ".printk_index", align 4
@chcr_ktls_dev_add._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.33, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ch_ktls: l2t entry not found\0A\00", [32 x i8] zeroinitializer }, align 32
@chcr_ktls_dev_add._entry_ptr.43 = internal global ptr @chcr_ktls_dev_add._entry.41, section ".printk_index", align 4
@chcr_ktls_save_keys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ch_ktls: GCM: cipher type 0x%x not supported\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chcr_ktls_save_keys\00", [44 x i8] zeroinitializer }, align 32
@chcr_ktls_save_keys._entry_ptr = internal global ptr @chcr_ktls_save_keys._entry, section ".printk_index", align 4
@sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2251, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [10 x i8] c"dev_mutex\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"uld_ctx_list\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 15, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2271, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 16, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"chcr_ktls_uld_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2229, i32 30 }
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"chcr_ktls_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2132, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2118, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 378, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2153, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [14 x i8] c"work_handlers\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2137, i32 26 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 665, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 695, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 728, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2206, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2214, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1997, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1160, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [68 x i8] c"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_common.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 108, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 439, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 454, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 500, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 505, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 515, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private constant [66 x i8] c"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 128, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 2077, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 695, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 723, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 87, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author673, ptr @__UNIQUE_ID_description670, ptr @__UNIQUE_ID_file671, ptr @__UNIQUE_ID_license672, ptr @__UNIQUE_ID_version674, ptr @__exitcall_chcr_ktls_exit, ptr @__initcall__kmod_ch_ktls__669_2265_chcr_ktls_init6, ptr @__modver_attr, ptr @chcr_ktls_cpl_act_open_rpl._entry, ptr @chcr_ktls_cpl_act_open_rpl._entry.17, ptr @chcr_ktls_cpl_act_open_rpl._entry_ptr, ptr @chcr_ktls_cpl_act_open_rpl._entry_ptr.19, ptr @chcr_ktls_cpl_set_tcb_rpl._entry, ptr @chcr_ktls_cpl_set_tcb_rpl._entry_ptr, ptr @chcr_ktls_dev_add._entry, ptr @chcr_ktls_dev_add._entry.35, ptr @chcr_ktls_dev_add._entry.38, ptr @chcr_ktls_dev_add._entry.41, ptr @chcr_ktls_dev_add._entry_ptr, ptr @chcr_ktls_dev_add._entry_ptr.37, ptr @chcr_ktls_dev_add._entry_ptr.40, ptr @chcr_ktls_dev_add._entry_ptr.43, ptr @chcr_ktls_exit, ptr @chcr_ktls_exit._entry, ptr @chcr_ktls_exit._entry_ptr, ptr @chcr_ktls_save_keys._entry, ptr @chcr_ktls_save_keys._entry_ptr, ptr @chcr_ktls_uld_add._entry, ptr @chcr_ktls_uld_add._entry_ptr, ptr @chcr_ktls_uld_rx_handler._entry, ptr @chcr_ktls_uld_rx_handler._entry_ptr, ptr @chcr_ktls_uld_state_change._entry, ptr @chcr_ktls_uld_state_change._entry.24, ptr @chcr_ktls_uld_state_change._entry_ptr, ptr @chcr_ktls_uld_state_change._entry_ptr.26, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dev_mutex, ptr @uld_ctx_list, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @chcr_ktls_uld_info, ptr @chcr_ktls_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @xa_init_flags.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @work_handlers, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @chcr_ktls_dev_add.__key, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @init_completion.__key, ptr @.str.51], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uld_ctx_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_uld_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_uld_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_uld_rx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @work_handlers to i32), i32 956, i32 1184, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_cpl_act_open_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_cpl_act_open_rpl._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_cpl_set_tcb_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_uld_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_uld_state_change._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_dev_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_dev_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_dev_add._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_dev_add._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_dev_add._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_ktls_save_keys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @chcr_ktls_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @dev_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @uld_ctx_list, align 4
  %cmp.not22 = icmp eq ptr %0, @uld_ctx_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %u_ctx.023 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %u_ctx.023 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.0 = load ptr, ptr %u_ctx.023, align 4
  %lldi = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %u_ctx.023, i32 0, i32 1
  %2 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldi, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %ch_ktls_stats = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 74
  %6 = call ptr @memset(ptr %ch_ktls_stats, i32 0, i32 384)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %u_ctx.023) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %u_ctx.023, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %u_ctx.023 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %u_ctx.023, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %u_ctx.023 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %u_ctx.023, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %u_ctx.023, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tid_list = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %u_ctx.023, i32 0, i32 2
  tail call void @xa_destroy(ptr noundef %tid_list) #12
  tail call void @kfree(ptr noundef %u_ctx.023) #12
  %cmp.not = icmp eq ptr %tmp.0, @uld_ctx_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dev_mutex) #12
  %call15 = tail call i32 @cxgb4_unregister_uld(i32 noundef 7) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_unregister_uld(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ktls_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cxgb4_register_uld(i32 noundef 7, ptr noundef nonnull @chcr_ktls_uld_info) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_register_uld(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @chcr_ktls_uld_add(ptr nocapture noundef readonly %lldi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b23 = load i1, ptr @chcr_ktls_uld_add.__already_done, align 1
  br i1 %.b23, label %entry.if.end_crit_edge, label %if.then, !prof !131

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @chcr_ktls_uld_add.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 212) #16
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end.out_crit_edge, label %if.end16

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %lldi17 = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %call7.i.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %lldi17, ptr %lldi, i32 148)
  %detach = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %detach to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %detach, align 8
  %tid_list = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %tid_list, ptr noundef nonnull @.str.11, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %xa_flags.i, align 8
  %xa_head.i = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xa_head.i, align 4
  br label %out

out:                                              ; preds = %if.end16, %if.end.out_crit_edge
  %u_ctx.0 = phi ptr [ %call7.i.i, %if.end16 ], [ inttoptr (i32 -12 to ptr), %if.end.out_crit_edge ]
  ret ptr %u_ctx.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ktls_uld_rx_handler(ptr nocapture noundef readonly %handle, ptr noundef %rsp, ptr nocapture noundef readnone %pgl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rsp, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [239 x ptr], ptr @work_handlers, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %idxprom) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lldi = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %handle, i32 0, i32 1
  %4 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldi, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx4 = getelementptr i64, ptr %rsp, i32 1
  %call5 = tail call i32 %3(ptr noundef %7, ptr noundef %arrayidx4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ktls_uld_state_change(ptr noundef %handle, i32 noundef %new_state) #4 align 64 {
entry:
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %new_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %new_state, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.end
    i32 1, label %entry.do.end6_crit_edge
    i32 2, label %entry.do.end6_crit_edge30
    i32 3, label %entry.do.end6_crit_edge31
  ]

entry.do.end6_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

entry.do.end6_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end:                                           ; preds = %entry
  %lldi = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %handle, i32 0, i32 1
  %1 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lldi, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %do.end.pci_name.exit_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @dev_mutex, i32 noundef 0) #12
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @uld_ctx_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %handle, ptr noundef %7, ptr noundef nonnull @uld_ctx_list) #12
  br i1 %call.i.i, label %if.end.i.i19, label %pci_name.exit.list_add_tail.exit_crit_edge

pci_name.exit.list_add_tail.exit_crit_edge:       ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i19:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %handle, ptr getelementptr inbounds (%struct.list_head, ptr @uld_ctx_list, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @uld_ctx_list, ptr %handle, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %handle, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %handle, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i19, %pci_name.exit.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dev_mutex) #12
  br label %sw.epilog

do.end6:                                          ; preds = %entry.do.end6_crit_edge, %entry.do.end6_crit_edge30, %entry.do.end6_crit_edge31
  %lldi8 = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %handle, i32 0, i32 1
  %11 = ptrtoint ptr %lldi8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lldi8, align 4
  %init_name.i.i20 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i20, align 8
  %tobool.not.i.i21 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i21, label %if.end.i.i23, label %do.end6.pci_name.exit25_crit_edge

do.end6.pci_name.exit25_crit_edge:                ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit25

if.end.i.i23:                                     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i22 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %15 = ptrtoint ptr %dev.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i22, align 4
  br label %pci_name.exit25

pci_name.exit25:                                  ; preds = %if.end.i.i23, %do.end6.pci_name.exit25_crit_edge
  %retval.0.i.i24 = phi ptr [ %16, %if.end.i.i23 ], [ %14, %do.end6.pci_name.exit25_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %retval.0.i.i24) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @dev_mutex, i32 noundef 0) #12
  %detach = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %handle, i32 0, i32 3
  %17 = ptrtoint ptr %detach to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %detach, align 4
  %call.i.i26 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %handle) #12
  br i1 %call.i.i26, label %if.end.i.i27, label %pci_name.exit25.list_del.exit_crit_edge

pci_name.exit25.list_del.exit_crit_edge:          ; preds = %pci_name.exit25
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i27:                                     ; preds = %pci_name.exit25
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %handle, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i27, %pci_name.exit25.list_del.exit_crit_edge
  %24 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %handle, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %handle, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #12
  %26 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %index.i, align 4
  %tid_list.i = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %handle, i32 0, i32 2
  %call.i = call ptr @xa_find(ptr noundef %tid_list.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #12
  %tobool.not10.i = icmp eq ptr %call.i, null
  br i1 %tobool.not10.i, label %list_del.exit.ch_ktls_reset_all_conn.exit_crit_edge, label %list_del.exit.for.body.i_crit_edge

list_del.exit.for.body.i_crit_edge:               ; preds = %list_del.exit
  br label %for.body.i

list_del.exit.ch_ktls_reset_all_conn.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ch_ktls_reset_all_conn.exit

for.body.i:                                       ; preds = %clear_conn_resources.exit.i.for.body.i_crit_edge, %list_del.exit.for.body.i_crit_edge
  %tx_ctx.011.i = phi ptr [ %call3.i, %clear_conn_resources.exit.i.for.body.i_crit_edge ], [ %call.i, %list_del.exit.for.body.i_crit_edge ]
  %chcr_info.i = getelementptr inbounds %struct.chcr_ktls_ofld_ctx_tx, ptr %tx_ctx.011.i, i32 0, i32 1
  %27 = ptrtoint ptr %chcr_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chcr_info.i, align 8
  %l2te.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %l2te.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %l2te.i.i, align 4
  %tobool.not.i.i28 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i28, label %for.body.i.if.end.i.i29_crit_edge, label %if.then.i.i

for.body.i.if.end.i.i29_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i29

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @cxgb4_l2t_release(ptr noundef nonnull %30) #12
  br label %if.end.i.i29

if.end.i.i29:                                     ; preds = %if.then.i.i, %for.body.i.if.end.i.i29_crit_edge
  %ip_family.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %28, i32 0, i32 26
  %31 = ptrtoint ptr %ip_family.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ip_family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %32)
  %cmp.i.i = icmp eq i8 %32, 10
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i29.if.end4.i.i_crit_edge

if.end.i.i29.if.end4.i.i_crit_edge:               ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #14
  %netdev.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %28, i32 0, i32 5
  %33 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev.i.i, align 8
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %28, align 8
  %skc_v6_rcv_saddr.i.i = getelementptr inbounds %struct.sock_common, ptr %36, i32 0, i32 11
  call void @cxgb4_clip_release(ptr noundef %34, ptr noundef %skc_v6_rcv_saddr.i.i, i8 noundef zeroext 1) #12
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i29.if.end4.i.i_crit_edge
  %tid.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %28, i32 0, i32 9
  %37 = ptrtoint ptr %tid.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tid.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp5.not.i.i = icmp eq i32 %38, -1
  br i1 %cmp5.not.i.i, label %if.end4.i.i.clear_conn_resources.exit.i_crit_edge, label %if.then7.i.i

if.end4.i.i.clear_conn_resources.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_conn_resources.exit.i

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %adap.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %28, i32 0, i32 3
  %39 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adap.i.i, align 8
  %tids.i.i = getelementptr inbounds %struct.adapter, ptr %40, i32 0, i32 48
  %tx_chan.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %28, i32 0, i32 23
  %41 = ptrtoint ptr %tx_chan.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tx_chan.i.i, align 2
  %conv8.i.i = zext i8 %42 to i32
  %43 = ptrtoint ptr %ip_family.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ip_family.i.i, align 1
  %conv11.i.i = zext i8 %44 to i16
  call void @cxgb4_remove_tid(ptr noundef %tids.i.i, i32 noundef %conv8.i.i, i32 noundef %38, i16 noundef zeroext %conv11.i.i) #12
  br label %clear_conn_resources.exit.i

clear_conn_resources.exit.i:                      ; preds = %if.then7.i.i, %if.end4.i.i.clear_conn_resources.exit.i_crit_edge
  %adap.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %28, i32 0, i32 3
  %45 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adap.i, align 8
  %ch_ktls_stats.i = getelementptr inbounds %struct.adapter, ptr %46, i32 0, i32 74
  %port_id.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %28, i32 0, i32 25
  %47 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %port_id.i, align 8
  %idxprom.i = zext i8 %48 to i32
  %ktls_tx_connection_close.i = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats.i, i32 0, i32 %idxprom.i, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_connection_close.i, i32 noundef 8) #12
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_connection_close.i) #12
  call void @kvfree(ptr noundef %28) #12
  %49 = ptrtoint ptr %chcr_info.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %chcr_info.i, align 8
  call void @module_put(ptr noundef null) #12
  %call3.i = call ptr @xa_find_after(ptr noundef %tid_list.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %clear_conn_resources.exit.i.ch_ktls_reset_all_conn.exit_crit_edge, label %clear_conn_resources.exit.i.for.body.i_crit_edge

clear_conn_resources.exit.i.for.body.i_crit_edge: ; preds = %clear_conn_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

clear_conn_resources.exit.i.ch_ktls_reset_all_conn.exit_crit_edge: ; preds = %clear_conn_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ch_ktls_reset_all_conn.exit

ch_ktls_reset_all_conn.exit:                      ; preds = %clear_conn_resources.exit.i.ch_ktls_reset_all_conn.exit_crit_edge, %list_del.exit.ch_ktls_reset_all_conn.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #12
  call void @xa_destroy(ptr noundef %tid_list.i) #12
  call void @mutex_unlock(ptr noundef nonnull @dev_mutex) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %ch_ktls_reset_all_conn.exit, %list_add_tail.exit, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ktls_xmit(ptr noundef %skb, ptr noundef readnone %dev) #4 align 64 {
entry:
  %iv_record.i.i = alloca i64, align 8
  %prior_data.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
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
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %sub = sub i32 %12, %add
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %13 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.i.not = icmp eq i16 %16, 0
  %conv = zext i16 %16 to i32
  %spec.select = select i1 %tobool.i.not, i32 %sub, i32 %conv
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %icsk_ulp_data.i, align 8
  %netdev = getelementptr inbounds %struct.tls_context, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  %cmp.not = icmp eq ptr %23, %dev
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge, !prof !131

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %priv_ctx_tx.i.i = getelementptr inbounds %struct.tls_context, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %priv_ctx_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv_ctx_tx.i.i, align 4
  %chcr_info = getelementptr inbounds %struct.chcr_ktls_ofld_ctx_tx, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %chcr_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chcr_info, align 8
  %tobool9.not = icmp eq ptr %27, null
  br i1 %tobool9.not, label %if.end.out_crit_edge, label %if.end19, !prof !132

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end19:                                         ; preds = %if.end
  %adap20 = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adap20, align 8
  %ch_ktls_stats = getelementptr inbounds %struct.adapter, ptr %29, i32 0, i32 74
  %port_id = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 25
  %30 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_id, align 8
  %idxprom = zext i8 %31 to i32
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %32 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %queue_mapping, align 8
  %conv21 = zext i16 %33 to i32
  %sge = getelementptr inbounds %struct.adapter, ptr %29, i32 0, i32 22
  %first_qset = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 27
  %34 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %first_qset, align 2
  %conv22 = zext i8 %35 to i32
  %add23 = add nuw nsw i32 %conv22, %conv21
  %arrayidx24 = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add23
  tail call void @cxgb4_reclaim_completed_tx(ptr noundef %29, ptr noundef %arrayidx24, i1 noundef zeroext true) #12
  %36 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load = load i16, ptr %doff.i.i, align 4
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %tobool26.not = icmp eq i16 %bf.clear, 0
  br i1 %tobool26.not, label %land.lhs.true, label %if.end19.do.body36_crit_edge

if.end19.do.body36_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

land.lhs.true:                                    ; preds = %if.end19
  %37 = lshr i16 %bf.load, 10
  %38 = and i16 %37, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %38)
  %cmp41.i = icmp ugt i16 %38, 20
  br i1 %cmp41.i, label %for.body.preheader.i, label %land.lhs.true.do.body36_crit_edge

land.lhs.true.do.body36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

for.body.preheader.i:                             ; preds = %land.lhs.true
  %shl.i = zext i16 %38 to i32
  %sub.i = add nsw i32 %shl.i, -20
  %add.ptr.i = getelementptr %struct.tcphdr, ptr %add.ptr.i.i, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %cp.043.i = phi ptr [ %add.ptr22.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %cnt.042.i = phi i32 [ %sub21.i, %for.inc.i.for.body.i_crit_edge ], [ %sub.i, %for.body.preheader.i ]
  %39 = ptrtoint ptr %cp.043.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cp.043.i, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %40, label %if.else.i [
    i8 0, label %for.body.i.do.body36_crit_edge
    i8 1, label %for.inc.i
  ]

for.body.i.do.body36_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cnt.042.i)
  %cmp8.i = icmp ult i32 %cnt.042.i, 2
  br i1 %cmp8.i, label %if.else.i.do.body36_crit_edge, label %chcr_ktls_check_tcp_options.exit

if.else.i.do.body36_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

for.inc.i:                                        ; preds = %for.body.i
  %sub21.i = add nsw i32 %cnt.042.i, -1
  %add.ptr22.i = getelementptr i8, ptr %cp.043.i, i32 1
  %cmp.i = icmp sgt i32 %cnt.042.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.body36_crit_edge

for.inc.i.do.body36_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

chcr_ktls_check_tcp_options.exit:                 ; preds = %if.else.i
  %arrayidx12.i = getelementptr i8, ptr %cp.043.i, i32 1
  %42 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp14.i = icmp ult i8 %43, 2
  %conv13.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.042.i, i32 %conv13.i)
  %cmp16.i = icmp ult i32 %cnt.042.i, %conv13.i
  %or.cond.i = select i1 %cmp14.i, i1 true, i1 %cmp16.i
  br i1 %or.cond.i, label %chcr_ktls_check_tcp_options.exit.do.body36_crit_edge, label %if.then29

chcr_ktls_check_tcp_options.exit.do.body36_crit_edge: ; preds = %chcr_ktls_check_tcp_options.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

if.then29:                                        ; preds = %chcr_ktls_check_tcp_options.exit
  %tx_chan = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 23
  %44 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tx_chan, align 2
  %conv30 = zext i8 %45 to i32
  %call31 = tail call fastcc i32 @chcr_ktls_write_tcp_options(ptr noundef nonnull %27, ptr noundef %skb, ptr noundef %arrayidx24, i32 noundef %conv30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then29.do.body36_crit_edge, label %if.then29.cleanup245_crit_edge

if.then29.cleanup245_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup245

if.then29.do.body36_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

do.body36:                                        ; preds = %if.then29.do.body36_crit_edge, %chcr_ktls_check_tcp_options.exit.do.body36_crit_edge, %for.inc.i.do.body36_crit_edge, %if.else.i.do.body36_crit_edge, %for.body.i.do.body36_crit_edge, %land.lhs.true.do.body36_crit_edge, %if.end19.do.body36_crit_edge
  %lock = getelementptr inbounds %struct.tls_offload_context_tx, ptr %25, i32 0, i32 1
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %record_no = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 8
  %prev_seq = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 13
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %window = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %prev_ack.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 14
  %prev_win.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 22
  %size.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx24, i32 0, i32 2
  %txq.i178.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add23, i32 1
  %stops.i180.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx24, i32 0, i32 5
  %desc.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx24, i32 0, i32 8
  %pidx.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx24, i32 0, i32 4
  %tid.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 9
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %key_ctx_len.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 16
  %sdesc.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx24, i32 0, i32 9
  %cntxt_id.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx24, i32 0, i32 7
  %iv_size.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 12
  %scmd0_seqno_numivs.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 17
  %scmd0_ivgen_hdrlen.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 18
  %stat.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx24, i32 0, i32 10
  %key_ctx.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 2
  %shl103.i.i = shl i32 %spec.select, 16
  %ktls_tx_skip_no_sync_data = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats, i32 0, i32 %idxprom, i32 7
  br label %do.body43

do.body43:                                        ; preds = %do.cond229.do.body43_crit_edge, %do.body36
  %skb_offset.0 = phi i32 [ %add, %do.body36 ], [ %skb_offset.2, %do.cond229.do.body43_crit_edge ]
  %data_len.0 = phi i32 [ %sub, %do.body36 ], [ %data_len.2, %do.cond229.do.body43_crit_edge ]
  %tcp_seq.0 = phi i32 [ %5, %do.body36 ], [ %tcp_seq.2, %do.cond229.do.body43_crit_edge ]
  tail call void @cxgb4_reclaim_completed_tx(ptr noundef %29, ptr noundef %arrayidx24, i1 noundef zeroext true) #12
  %call46 = tail call ptr @tls_get_record(ptr noundef %25, i32 noundef %tcp_seq.0, ptr noundef %record_no) #12
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then56, label %if.end59, !prof !132

if.then56:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #12
  %ktls_tx_drop_no_sync_data = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats, i32 0, i32 %idxprom, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_drop_no_sync_data, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_drop_no_sync_data) #12
  br label %out

if.end59:                                         ; preds = %do.body43
  %end_seq = getelementptr inbounds %struct.tls_record_info, ptr %call46, i32 0, i32 1
  %46 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %end_seq, align 4
  %sub60 = sub i32 %47, %tcp_seq.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chcr_ktls_xmit.__UNIQUE_ID_ddebug668, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chcr_ktls_xmit, %if.then71)) #12
          to label %do.end75 [label %if.then71], !srcloc !133

if.then71:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %end_seq, align 4
  %50 = ptrtoint ptr %prev_seq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prev_seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chcr_ktls_xmit.__UNIQUE_ID_ddebug668, ptr noundef nonnull @.str.29, i32 noundef %tcp_seq.0, i32 noundef %49, i32 noundef %51, i32 noundef %data_len.0) #12
  br label %do.end75

do.end75:                                         ; preds = %if.then71, %if.end59
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %data_len.0)
  %cmp76 = icmp eq i32 %sub, %data_len.0
  br i1 %cmp76, label %if.then78, label %do.end75.if.end106_crit_edge

do.end75.if.end106_crit_edge:                     ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then78:                                        ; preds = %do.end75
  %len.i = getelementptr inbounds %struct.tls_record_info, ptr %call46, i32 0, i32 2
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i401 = icmp ne i32 %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub60)
  %cmp81 = icmp ult i32 %sub60, 16
  %or.cond = select i1 %cmp.i401, i1 %cmp81, i1 false
  br i1 %or.cond, label %if.then83, label %if.then78.if.end86_crit_edge

if.then78.if.end86_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then83:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %end_seq, align 4
  %sub85 = add i32 %55, -16
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.then78.if.end86_crit_edge
  %tx_max.0 = phi i32 [ %tcp_seq.0, %if.then78.if.end86_crit_edge ], [ %sub85, %if.then83 ]
  %conv87 = zext i32 %tx_max.0 to i64
  %56 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ack_seq, align 4
  %conv88 = zext i32 %57 to i64
  %58 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %window, align 2
  %conv89 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %sub60, i32 %53)
  %cmp91 = icmp ne i32 %sub60, %53
  %60 = ptrtoint ptr %prev_ack.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %prev_ack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i402 = icmp eq i32 %61, 0
  br i1 %cmp.i402, label %land.rhs.i, label %if.end86.land.end.i_crit_edge

if.end86.land.end.i_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %prev_win.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %prev_win.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp1.i = icmp eq i16 %63, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end86.land.end.i_crit_edge
  %64 = phi i1 [ false, %if.end86.land.end.i_crit_edge ], [ %cmp1.i, %land.rhs.i ]
  %65 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.i.i, align 4
  %67 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx24, align 4
  %69 = xor i32 %68, -1
  %sub1.i.i = add i32 %66, -4
  %sub10.i = add i32 %sub1.i.i, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp11.i = icmp slt i32 %sub10.i, 0
  br i1 %cmp11.i, label %cleanup, label %if.end.i, !prof !132

if.end.i:                                         ; preds = %land.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub10.i)
  %cmp14.i403 = icmp ult i32 %sub10.i, 5
  br i1 %cmp14.i403, label %if.then22.i, label %if.end.i.if.end23.i_crit_edge, !prof !132

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %txq.i178.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %txq.i178.i, align 4
  %state.i.i179.i = getelementptr inbounds %struct.netdev_queue, ptr %71, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i179.i) #12
  %72 = ptrtoint ptr %stops.i180.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %stops.i180.i, align 4
  %inc.i181.i = add i32 %73, 1
  store i32 %inc.i181.i, ptr %stops.i180.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %if.end.i.if.end23.i_crit_edge
  %wr_mid.0.i = phi i32 [ -1073741824, %if.then22.i ], [ 0, %if.end.i.if.end23.i_crit_edge ]
  %74 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %desc.i, align 32
  %76 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pidx.i, align 16
  %arrayidx.i = getelementptr %struct.tx_desc, ptr %75, i32 %77
  %add.ptr.i404 = getelementptr i8, ptr %arrayidx.i, i32 16
  br i1 %64, label %if.end23.i.if.then31.i_crit_edge, label %lor.lhs.false.i

if.end23.i.if.then31.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31.i

lor.lhs.false.i:                                  ; preds = %if.end23.i
  %78 = ptrtoint ptr %prev_seq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %prev_seq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %tx_max.0)
  %cmp29.not.i = icmp eq i32 %79, %tx_max.0
  br i1 %cmp29.not.i, label %lor.lhs.false.i.if.end33.i_crit_edge, label %lor.lhs.false.i.if.then31.i_crit_edge

lor.lhs.false.i.if.then31.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31.i

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.then31.i:                                      ; preds = %lor.lhs.false.i.if.then31.i_crit_edge, %if.end23.i.if.then31.i_crit_edge
  %80 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tid.i, align 8
  %call32.i = tail call fastcc ptr @chcr_write_cpl_set_tcb_ulp(ptr noundef %27, ptr noundef %arrayidx24, i32 noundef %81, ptr noundef %add.ptr.i404, i16 noundef zeroext 9, i64 noundef 4294967295, i64 noundef %conv87) #12
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %lor.lhs.false.i.if.end33.i_crit_edge
  %cpl.0.i = phi i32 [ 1, %if.then31.i ], [ 0, %lor.lhs.false.i.if.end33.i_crit_edge ]
  %pos.0.i = phi ptr [ %call32.i, %if.then31.i ], [ %add.ptr.i404, %lor.lhs.false.i.if.end33.i_crit_edge ]
  %82 = ptrtoint ptr %prev_seq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %prev_seq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %tx_max.0)
  %cmp36.not.i = icmp ne i32 %83, %tx_max.0
  %brmerge.i = or i1 %cmp91, %cmp36.not.i
  br i1 %brmerge.i, label %if.then41.i, label %if.end33.i.if.end52.i_crit_edge

if.end33.i.if.end52.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.then41.i:                                      ; preds = %if.end33.i
  %84 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adap20, align 8
  %86 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %port_id, align 8
  %88 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tid.i, align 8
  %call44.i = tail call fastcc ptr @chcr_write_cpl_set_tcb_ulp(ptr noundef %27, ptr noundef %arrayidx24, i32 noundef %89, ptr noundef %pos.0.i, i16 noundef zeroext 10, i64 noundef 268435455, i64 noundef 0) #12
  %90 = ptrtoint ptr %prev_seq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %prev_seq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %tx_max.0)
  %cmp47.not.i = icmp eq i32 %91, %tx_max.0
  br i1 %cmp47.not.i, label %if.then41.i.if.end50.i_crit_edge, label %if.then49.i

if.then41.i.if.end50.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.then49.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #14
  %ch_ktls_stats.i = getelementptr inbounds %struct.adapter, ptr %85, i32 0, i32 74
  %idxprom.i = zext i8 %87 to i32
  %ktls_tx_ooo.i = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats.i, i32 0, i32 %idxprom.i, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_ooo.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_ooo.i) #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.then41.i.if.end50.i_crit_edge
  %inc51.i = add nuw nsw i32 %cpl.0.i, 1
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end50.i, %if.end33.i.if.end52.i_crit_edge
  %cpl.1.i = phi i32 [ %inc51.i, %if.end50.i ], [ %cpl.0.i, %if.end33.i.if.end52.i_crit_edge ]
  %pos.1.i = phi ptr [ %call44.i, %if.end50.i ], [ %pos.0.i, %if.end33.i.if.end52.i_crit_edge ]
  br i1 %64, label %if.end52.i.if.end67.i_crit_edge, label %lor.lhs.false55.i

if.end52.i.if.end67.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i

lor.lhs.false55.i:                                ; preds = %if.end52.i
  %92 = ptrtoint ptr %prev_ack.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %prev_ack.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %57)
  %cmp58.not.i = icmp eq i32 %93, %57
  br i1 %cmp58.not.i, label %lor.lhs.false55.i.lor.lhs.false70.i_crit_edge, label %lor.lhs.false55.i.if.end67.i_crit_edge

lor.lhs.false55.i.if.end67.i_crit_edge:           ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i

lor.lhs.false55.i.lor.lhs.false70.i_crit_edge:    ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false70.i

if.end67.i:                                       ; preds = %lor.lhs.false55.i.if.end67.i_crit_edge, %if.end52.i.if.end67.i_crit_edge
  %94 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tid.i, align 8
  %shl62.i = shl nuw nsw i64 %conv88, 10
  %call63.i = tail call fastcc ptr @chcr_write_cpl_set_tcb_ulp(ptr noundef %27, ptr noundef %arrayidx24, i32 noundef %95, ptr noundef %pos.1.i, i16 noundef zeroext 16, i64 noundef 4398046510080, i64 noundef %shl62.i) #12
  %96 = ptrtoint ptr %prev_ack.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %57, ptr %prev_ack.i, align 4
  %inc66.i = add nuw nsw i32 %cpl.1.i, 1
  br i1 %64, label %if.end67.i.if.end82.thread.i_crit_edge, label %if.end67.i.lor.lhs.false70.i_crit_edge

if.end67.i.lor.lhs.false70.i_crit_edge:           ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false70.i

if.end67.i.if.end82.thread.i_crit_edge:           ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.thread.i

lor.lhs.false70.i:                                ; preds = %if.end67.i.lor.lhs.false70.i_crit_edge, %lor.lhs.false55.i.lor.lhs.false70.i_crit_edge
  %pos.2187.i = phi ptr [ %call63.i, %if.end67.i.lor.lhs.false70.i_crit_edge ], [ %pos.1.i, %lor.lhs.false55.i.lor.lhs.false70.i_crit_edge ]
  %cpl.2185.i = phi i32 [ %inc66.i, %if.end67.i.lor.lhs.false70.i_crit_edge ], [ %cpl.1.i, %lor.lhs.false55.i.lor.lhs.false70.i_crit_edge ]
  %97 = ptrtoint ptr %prev_win.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %prev_win.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %59)
  %cmp73.not.i = icmp eq i16 %98, %59
  br i1 %cmp73.not.i, label %if.end82.i, label %lor.lhs.false70.i.if.end82.thread.i_crit_edge

lor.lhs.false70.i.if.end82.thread.i_crit_edge:    ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.thread.i

if.end82.thread.i:                                ; preds = %lor.lhs.false70.i.if.end82.thread.i_crit_edge, %if.end67.i.if.end82.thread.i_crit_edge
  %pos.2188.i = phi ptr [ %pos.2187.i, %lor.lhs.false70.i.if.end82.thread.i_crit_edge ], [ %call63.i, %if.end67.i.if.end82.thread.i_crit_edge ]
  %cpl.2186.i = phi i32 [ %cpl.2185.i, %lor.lhs.false70.i.if.end82.thread.i_crit_edge ], [ %inc66.i, %if.end67.i.if.end82.thread.i_crit_edge ]
  %99 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tid.i, align 8
  %shl77.i = shl nuw nsw i64 %conv89, 10
  %101 = tail call fastcc ptr @chcr_write_cpl_set_tcb_ulp(ptr noundef %27, ptr noundef %arrayidx24, i32 noundef %100, ptr noundef %pos.2188.i, i16 noundef zeroext 17, i64 noundef 17179868160, i64 noundef %shl77.i) #12
  %102 = ptrtoint ptr %prev_win.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %59, ptr %prev_win.i, align 4
  %inc81.i = add nuw nsw i32 %cpl.2186.i, 1
  br label %if.then84.i

if.end82.i:                                       ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpl.2185.i)
  %tobool83.not.i = icmp eq i32 %cpl.2185.i, 0
  br i1 %tobool83.not.i, label %if.end82.i.if.end98_crit_edge, label %if.end82.i.if.then84.i_crit_edge

if.end82.i.if.then84.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84.i

if.end82.i.if.end98_crit_edge:                    ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

if.then84.i:                                      ; preds = %if.end82.i.if.then84.i_crit_edge, %if.end82.thread.i
  %cpl.3191.i = phi i32 [ %inc81.i, %if.end82.thread.i ], [ %cpl.2185.i, %if.end82.i.if.then84.i_crit_edge ]
  %mul91.i = mul nuw nsw i32 %cpl.3191.i, 48
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 67108864, ptr %arrayidx.i, align 8
  %cookie.i = getelementptr inbounds %struct.fw_ulptx_wr, ptr %arrayidx.i, i32 0, i32 2
  %104 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 0, ptr %cookie.i, align 8
  %sub94.i = add nuw nsw i32 %mul91.i, 31
  %div95176.i = lshr i32 %sub94.i, 4
  %or97.i = or i32 %div95176.i, %wr_mid.0.i
  %flowid_len16.i = getelementptr inbounds %struct.fw_ulptx_wr, ptr %arrayidx.i, i32 0, i32 1
  %105 = ptrtoint ptr %flowid_len16.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or97.i, ptr %flowid_len16.i, align 4
  %sub99.i = add nuw nsw i32 %mul91.i, 79
  %div100177.i = lshr i32 %sub99.i, 6
  %106 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx24, align 4
  %add.i.i = add i32 %107, %div100177.i
  store i32 %add.i.i, ptr %arrayidx24, align 4
  %108 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pidx.i, align 4
  %add1.i.i = add i32 %109, %div100177.i
  store i32 %add1.i.i, ptr %pidx.i, align 4
  %110 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %111)
  %cmp.not.i.i = icmp ult i32 %add1.i.i, %111
  br i1 %cmp.not.i.i, label %if.then84.i.chcr_txq_advance.exit.i_crit_edge, label %if.then.i.i

if.then84.i.chcr_txq_advance.exit.i_crit_edge:    ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_txq_advance.exit.i

if.then.i.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %add1.i.i, %111
  %112 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub.i.i, ptr %pidx.i, align 4
  br label %chcr_txq_advance.exit.i

chcr_txq_advance.exit.i:                          ; preds = %if.then.i.i, %if.then84.i.chcr_txq_advance.exit.i_crit_edge
  %113 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %adap20, align 8
  tail call void @cxgb4_ring_tx_db(ptr noundef %114, ptr noundef %arrayidx24, i32 noundef %div100177.i) #12
  br label %if.end98

if.end98:                                         ; preds = %chcr_txq_advance.exit.i, %if.end82.i.if.end98_crit_edge
  %115 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load100 = load i16, ptr %doff.i.i, align 4
  %bf.clear101 = and i16 %bf.load100, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear101)
  %tobool102.not = icmp eq i16 %bf.clear101, 0
  br i1 %tobool102.not, label %if.end98.if.end106_crit_edge, label %if.then103

if.end98.if.end106_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then103:                                       ; preds = %if.end98
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #12
  %116 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #12, !srcloc !134
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then103.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !132

if.then103.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then103
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %117 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %117)
  %.not.i.i.i.i = icmp sgt i32 %117, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end106_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !131

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end106_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then103.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then103.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #12
  br label %if.end106

cleanup:                                          ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %txq.i178.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %txq.i178.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %119, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #12
  %120 = ptrtoint ptr %stops.i180.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %stops.i180.i, align 4
  %inc.i.i = add i32 %121, 1
  store i32 %inc.i.i, ptr %stops.i180.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #12
  br label %out

if.end106:                                        ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end106_crit_edge, %if.end98.if.end106_crit_edge, %do.end75.if.end106_crit_edge
  %len.i406 = getelementptr inbounds %struct.tls_record_info, ptr %call46, i32 0, i32 2
  %122 = ptrtoint ptr %len.i406 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %len.i406, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp.i407 = icmp eq i32 %123, 0
  br i1 %cmp.i407, label %if.then114, label %if.end143, !prof !132

if.then114:                                       ; preds = %if.end106
  %call.i.i393 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_skip_no_sync_data, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_skip_no_sync_data) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %data_len.0, i32 %sub60)
  %cmp115 = icmp ugt i32 %data_len.0, %sub60
  br i1 %cmp115, label %if.then117, label %if.then114.if.end119_crit_edge

if.then114.if.end119_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.then117:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @skb_get(ptr noundef %skb)
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.then114.if.end119_crit_edge
  %tls_end_offset.0 = phi i32 [ %sub60, %if.then117 ], [ %data_len.0, %if.then114.if.end119_crit_edge ]
  %124 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %bf.load121 = load i16, ptr %doff.i.i, align 4
  %125 = and i16 %bf.load121, 9
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %125)
  %126 = icmp eq i16 %125, 8
  %call130 = tail call fastcc i32 @chcr_ktls_tx_plaintxt(ptr noundef nonnull %27, ptr noundef %skb, i32 noundef %tcp_seq.0, i32 noundef %spec.select, i1 noundef zeroext %126, ptr noundef %arrayidx24, i32 noundef %tls_end_offset.0, i32 noundef %skb_offset.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end139, label %if.then132

if.then132:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_cmp4(i32 %data_len.0, i32 %tls_end_offset.0)
  %cmp133 = icmp ugt i32 %data_len.0, %tls_end_offset.0
  br i1 %cmp133, label %if.then135, label %if.then132.if.end136_crit_edge

if.then132.if.end136_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

if.then135:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.then132.if.end136_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #12
  br label %out

if.end139:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  %sub140 = sub i32 %data_len.0, %tls_end_offset.0
  %127 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %end_seq, align 4
  %add142 = add i32 %tls_end_offset.0, %skb_offset.0
  br label %do.cond229

if.end143:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_cmp4(i32 %data_len.0, i32 %sub60)
  %cmp144.not = icmp ult i32 %data_len.0, %sub60
  %129 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %bf.load169 = load i16, ptr %doff.i.i, align 4
  %130 = and i16 %bf.load169, 9
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %130)
  %131 = icmp eq i16 %130, 8
  br i1 %cmp144.not, label %if.else167, label %if.then146

if.then146:                                       ; preds = %if.end143
  %add159 = add i32 %sub60, %skb_offset.0
  %132 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add159, i32 %133)
  %cmp161 = icmp eq i32 %add159, %133
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %sub60)
  %cmp.i409 = icmp eq i32 %123, %sub60
  br i1 %cmp.i409, label %if.then.i411, label %if.else.i413

if.then.i411:                                     ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  %134 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %adap20, align 8
  %ktls_tx_complete_pkts.i = getelementptr inbounds %struct.adapter, ptr %135, i32 0, i32 74, i32 6
  br label %if.end10.i

if.else.i413:                                     ; preds = %if.then146
  %call.i.i412 = tail call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i412, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.end.i415

if.then2.i:                                       ; preds = %if.else.i413
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %if.then183

if.end.i415:                                      ; preds = %if.else.i413
  tail call fastcc void @chcr_ktls_copy_record_in_skb(ptr noundef nonnull %call.i.i412, ptr noundef %skb, ptr noundef nonnull %call46) #12
  %136 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %end_seq, align 4
  %138 = ptrtoint ptr %len.i406 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %len.i406, align 4
  %sub.i.i414 = sub i32 %137, %139
  br i1 %cmp161, label %if.then5.i, label %if.end.i415.if.end7.i_crit_edge

if.end.i415.if.end7.i_crit_edge:                  ; preds = %if.end.i415
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i415
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i415.if.end7.i_crit_edge
  %140 = xor i1 %cmp161, true
  %141 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %adap20, align 8
  %ktls_tx_end_pkts.i = getelementptr inbounds %struct.adapter, ptr %142, i32 0, i32 74, i32 2
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end7.i, %if.then.i411
  %ktls_tx_end_pkts.sink45.i = phi ptr [ %ktls_tx_end_pkts.i, %if.end7.i ], [ %ktls_tx_complete_pkts.i, %if.then.i411 ]
  %tcp_seq.addr.0.i = phi i32 [ %sub.i.i414, %if.end7.i ], [ %tcp_seq.0, %if.then.i411 ]
  %skb_offset.addr.0.i = phi i32 [ 0, %if.end7.i ], [ %skb_offset.0, %if.then.i411 ]
  %last_wr.addr.0.off0.i = phi i1 [ true, %if.end7.i ], [ %cmp161, %if.then.i411 ]
  %free_skb_if_tx_fails.1.off0.i = phi i1 [ %140, %if.end7.i ], [ false, %if.then.i411 ]
  %nskb.0.i = phi ptr [ %call.i.i412, %if.end7.i ], [ %skb, %if.then.i411 ]
  %call.i.i40.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_end_pkts.sink45.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_end_pkts.sink45.i) #12
  %143 = ptrtoint ptr %len.i406 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %len.i406, align 4
  %num_frags.i = getelementptr inbounds %struct.tls_record_info, ptr %call46, i32 0, i32 3
  %145 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_frags.i, align 4
  %spec.select.i416 = and i1 %131, %last_wr.addr.0.off0.i
  %147 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %adap20, align 8
  %149 = ptrtoint ptr %key_ctx_len.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %key_ctx_len.i.i, align 4
  %dec.i.i.i.i = add i32 %146, -1
  %mul.i.i.i.i = mul i32 %dec.i.i.i.i, 3
  %div4.i.i.i.i = lshr i32 %mul.i.i.i.i, 1
  %and.i.i.i.i = and i32 %dec.i.i.i.i, 1
  %add.i.i.i.i417 = or i32 %and.i.i.i.i, 2
  %add1.i.i.i.i = add nuw i32 %add.i.i.i.i417, %div4.i.i.i.i
  %sub.i.i.i = add i32 %150, 87
  %div3.i.i.i = lshr i32 %sub.i.i.i, 3
  %add2.i.i.i = add i32 %add1.i.i.i.i, %div3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add2.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add2.i.i.i, 64
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end10.i.chcr_flits_to_desc.exit.i.i_crit_edge, !prof !132

if.end10.i.chcr_flits_to_desc.exit.i.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_flits_to_desc.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %chcr_flits_to_desc.exit.i.i

chcr_flits_to_desc.exit.i.i:                      ; preds = %do.end.i.i.i, %if.end10.i.chcr_flits_to_desc.exit.i.i_crit_edge
  %sub.i245.i.i = add i32 %add2.i.i.i, 7
  %div21.i.i.i = lshr i32 %sub.i245.i.i, 3
  %151 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %size.i.i, align 4
  %153 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx24, align 4
  %155 = xor i32 %154, -1
  %sub1.i.i.i = sub i32 %152, %div21.i.i.i
  %sub.i41.i = add i32 %sub1.i.i.i, %155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i41.i)
  %cmp.i.i = icmp slt i32 %sub.i41.i, 0
  br i1 %cmp.i.i, label %if.then.i.i418, label %if.end.i.i, !prof !132

if.then.i.i418:                                   ; preds = %chcr_flits_to_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %156 = ptrtoint ptr %txq.i178.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %txq.i178.i, align 4
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %157, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i.i) #12
  %158 = ptrtoint ptr %stops.i180.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %stops.i180.i, align 4
  %inc.i.i.i = add i32 %159, 1
  store i32 %inc.i.i.i, ptr %stops.i180.i, align 4
  br label %if.then17.i

if.end.i.i:                                       ; preds = %chcr_flits_to_desc.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i41.i)
  %cmp7.i.i = icmp ult i32 %sub.i41.i, 5
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, !prof !132

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %160 = ptrtoint ptr %txq.i178.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %txq.i178.i, align 4
  %state.i.i247.i.i = getelementptr inbounds %struct.netdev_queue, ptr %161, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i247.i.i) #12
  %162 = ptrtoint ptr %stops.i180.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %stops.i180.i, align 4
  %inc.i249.i.i = add i32 %163, 1
  store i32 %inc.i249.i.i, ptr %stops.i180.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then14.i.i, %if.end.i.i.if.end15.i.i_crit_edge
  %wr_mid.0.i.i = phi i32 [ -1073741824, %if.then14.i.i ], [ 0, %if.end.i.i.if.end15.i.i_crit_edge ]
  %164 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %pidx.i, align 16
  %add.i.i419 = add nsw i32 %div21.i.i.i, -1
  %sub17.i.i = add i32 %add.i.i419, %165
  %166 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17.i.i, i32 %167)
  %cmp19.not.i.i = icmp ult i32 %sub17.i.i, %167
  %sub23.i.i = select i1 %cmp19.not.i.i, i32 0, i32 %167
  %spec.select.i.i = sub i32 %sub17.i.i, %sub23.i.i
  %168 = ptrtoint ptr %sdesc.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %sdesc.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.tx_sw_desc, ptr %169, i32 %spec.select.i.i
  %pdev_dev.i.i = getelementptr inbounds %struct.adapter, ptr %148, i32 0, i32 4
  %170 = ptrtoint ptr %pdev_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pdev_dev.i.i, align 16
  %addr.i.i = getelementptr %struct.tx_sw_desc, ptr %169, i32 %spec.select.i.i, i32 1
  %call26.i.i = tail call i32 @cxgb4_map_skb(ptr noundef %171, ptr noundef %nskb.0.i, ptr noundef %addr.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %cmp27.i.i = icmp slt i32 %call26.i.i, 0
  br i1 %cmp27.i.i, label %if.then34.i.i, label %if.end37.i.i, !prof !132

if.then34.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %172 = call ptr @memset(ptr %addr.i.i, i32 0, i32 72)
  %mapping_err.i.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add23, i32 9
  %173 = ptrtoint ptr %mapping_err.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %mapping_err.i.i, align 8
  %inc.i.i420 = add i32 %174, 1
  store i32 %inc.i.i420, ptr %mapping_err.i.i, align 8
  br label %if.then17.i

if.end37.i.i:                                     ; preds = %if.end15.i.i
  br i1 %last_wr.addr.0.off0.i, label %if.end37.i.i.if.end41.i.i_crit_edge, label %if.then39.i.i

if.end37.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i.i

if.then39.i.i:                                    ; preds = %if.end37.i.i
  %users.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %nskb.0.i, i32 0, i32 21
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users.i.i.i, i32 1, i32 3, i32 1) #12
  %175 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i.i, ptr %users.i.i.i, i32 1, ptr elementtype(i32) %users.i.i.i) #12, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %175, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then39.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !132

if.then39.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then39.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %176 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %176)
  %.not.i.i.i.i.i.i = icmp sgt i32 %176, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end41.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !131

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end41.i.i_crit_edge:       ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then39.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then39.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end41.i.i_crit_edge, %if.end37.i.i.if.end41.i.i_crit_edge
  %177 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %desc.i, align 32
  %179 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %pidx.i, align 16
  %arrayidx45.i.i = getelementptr %struct.tx_desc, ptr %178, i32 %180
  %add.ptr.i.i421 = getelementptr i64, ptr %arrayidx45.i.i, i32 %add2.i.i.i
  %sub47.i.i = add nuw i32 %add2.i.i.i, 1
  %div243.i.i = lshr i32 %sub47.i.i, 1
  %181 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 67108864, ptr %arrayidx45.i.i, align 8
  %or48.i.i = or i32 %wr_mid.0.i.i, %div243.i.i
  %flowid_len16.i.i = getelementptr inbounds %struct.fw_ulptx_wr, ptr %arrayidx45.i.i, i32 0, i32 1
  %182 = ptrtoint ptr %flowid_len16.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %or48.i.i, ptr %flowid_len16.i.i, align 4
  %cookie.i.i = getelementptr inbounds %struct.fw_ulptx_wr, ptr %arrayidx45.i.i, i32 0, i32 2
  %183 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 0, ptr %cookie.i.i, align 8
  %add.ptr49.i.i = getelementptr i8, ptr %arrayidx45.i.i, i32 16
  %184 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %port_id, align 8
  %conv.i.i422 = zext i8 %185 to i32
  %shl50.i.i = shl nuw nsw i32 %conv.i.i422, 22
  %186 = ptrtoint ptr %cntxt_id.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %cntxt_id.i.i, align 4
  %shl53.i.i = shl i32 %187, 4
  %or51.i.i = or i32 %shl53.i.i, %shl50.i.i
  %or55.i.i = or i32 %or51.i.i, 67108872
  %188 = ptrtoint ptr %add.ptr49.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %or55.i.i, ptr %add.ptr49.i.i, align 4
  %sub56.i.i = add nsw i32 %div243.i.i, -1
  %len.i42.i = getelementptr inbounds %struct.ulp_txpkt, ptr %add.ptr49.i.i, i32 0, i32 1
  %189 = ptrtoint ptr %len.i42.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %sub56.i.i, ptr %len.i42.i, align 4
  %add.ptr57.i.i = getelementptr %struct.ulp_txpkt, ptr %add.ptr49.i.i, i32 1
  %190 = ptrtoint ptr %add.ptr57.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -2122317824, ptr %add.ptr57.i.i, align 4
  %191 = ptrtoint ptr %key_ctx_len.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %key_ctx_len.i.i, align 4
  %add60.i.i = add i32 %192, 48
  %len61.i.i = getelementptr inbounds %struct.ulptx_idata, ptr %add.ptr57.i.i, i32 0, i32 1
  %193 = ptrtoint ptr %len61.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %add60.i.i, ptr %len61.i.i, align 4
  %add.ptr62.i.i = getelementptr %struct.ulptx_idata, ptr %add.ptr57.i.i, i32 1
  %194 = ptrtoint ptr %add.ptr62.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 -1979579386, ptr %add.ptr62.i.i, align 8
  %pldlen.i.i = getelementptr inbounds %struct.cpl_tx_sec_pdu, ptr %add.ptr62.i.i, i32 0, i32 1
  %195 = ptrtoint ptr %pldlen.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %144, ptr %pldlen.i.i, align 4
  %196 = ptrtoint ptr %iv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %iv_size.i.i, align 4
  %add64.i.i = add i32 %197, 6
  %shl65.i.i = shl i32 %add64.i.i, 5
  %or66.i.i = or i32 %shl65.i.i, 16941056
  %aadstart_cipherstop_hi.i.i = getelementptr inbounds %struct.cpl_tx_sec_pdu, ptr %add.ptr62.i.i, i32 0, i32 2
  %198 = ptrtoint ptr %aadstart_cipherstop_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %or66.i.i, ptr %aadstart_cipherstop_hi.i.i, align 8
  %shl67.i.i = shl i32 %add64.i.i, 18
  %or69.i.i = or i32 %shl67.i.i, 8208
  %cipherstop_lo_authinsert.i.i = getelementptr inbounds %struct.cpl_tx_sec_pdu, ptr %add.ptr62.i.i, i32 0, i32 3
  %199 = ptrtoint ptr %cipherstop_lo_authinsert.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %or69.i.i, ptr %cipherstop_lo_authinsert.i.i, align 4
  %200 = ptrtoint ptr %scmd0_seqno_numivs.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %scmd0_seqno_numivs.i.i, align 8
  %seqno_numivs.i.i = getelementptr inbounds %struct.cpl_tx_sec_pdu, ptr %add.ptr62.i.i, i32 0, i32 4
  %202 = ptrtoint ptr %seqno_numivs.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %seqno_numivs.i.i, align 8
  %203 = ptrtoint ptr %scmd0_ivgen_hdrlen.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %scmd0_ivgen_hdrlen.i.i, align 4
  %ivgen_hdrlen.i.i = getelementptr inbounds %struct.cpl_tx_sec_pdu, ptr %add.ptr62.i.i, i32 0, i32 5
  %205 = ptrtoint ptr %ivgen_hdrlen.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %ivgen_hdrlen.i.i, align 4
  %206 = ptrtoint ptr %record_no to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %record_no, align 8
  %scmd1.i.i = getelementptr inbounds %struct.cpl_tx_sec_pdu, ptr %add.ptr62.i.i, i32 0, i32 6
  %208 = ptrtoint ptr %scmd1.i.i to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %207, ptr %scmd1.i.i, align 8
  %add.ptr70.i.i = getelementptr %struct.cpl_tx_sec_pdu, ptr %add.ptr62.i.i, i32 1
  %209 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %stat.i.i, align 8
  %tobool72.not.i.i = icmp eq ptr %210, %add.ptr70.i.i
  br i1 %tobool72.not.i.i, label %if.then73.i.i, label %if.end41.i.i.if.end82.i.i_crit_edge

if.end41.i.i.if.end82.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.i.i

if.then73.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr70.i.i to i32
  %sub.ptr.lhs.cast76.i.i = ptrtoint ptr %add.ptr.i.i421 to i32
  %sub.ptr.sub78.i.i = sub i32 %sub.ptr.lhs.cast76.i.i, %sub.ptr.lhs.cast.i.i
  %211 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %desc.i, align 32
  %add.ptr81.i.i = getelementptr i8, ptr %212, i32 %sub.ptr.sub78.i.i
  br label %if.end82.i.i

if.end82.i.i:                                     ; preds = %if.then73.i.i, %if.end41.i.i.if.end82.i.i_crit_edge
  %pos.0.i.i = phi ptr [ %add.ptr70.i.i, %if.end41.i.i.if.end82.i.i_crit_edge ], [ %212, %if.then73.i.i ]
  %end.0.i.i = phi ptr [ %add.ptr.i.i421, %if.end41.i.i.if.end82.i.i_crit_edge ], [ %add.ptr81.i.i, %if.then73.i.i ]
  %213 = ptrtoint ptr %key_ctx_len.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %key_ctx_len.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %210 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %pos.0.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %sub.ptr.sub.i.i.i)
  %cmp.not.i.i.i = icmp sgt i32 %214, %sub.ptr.sub.i.i.i
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !132

if.then.i.i.i:                                    ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %215 = call ptr @memcpy(ptr %pos.0.i.i, ptr %key_ctx.i.i, i32 %214)
  %add.ptr.i.i.i423 = getelementptr i8, ptr %pos.0.i.i, i32 %214
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %216 = call ptr @memcpy(ptr %pos.0.i.i, ptr %key_ctx.i.i, i32 %sub.ptr.sub.i.i.i)
  %217 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %desc.i, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %key_ctx.i.i, i32 %sub.ptr.sub.i.i.i
  %sub.i250.i.i = sub i32 %214, %sub.ptr.sub.i.i.i
  %219 = call ptr @memcpy(ptr %218, ptr %add.ptr2.i.i.i, i32 %sub.i250.i.i)
  %220 = load ptr, ptr %desc.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %220, i32 %sub.i250.i.i
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %pos.addr.0.i.i.i = phi ptr [ %add.ptr.i.i.i423, %if.then.i.i.i ], [ %add.ptr5.i.i.i, %if.else.i.i.i ]
  %221 = ptrtoint ptr %pos.addr.0.i.i.i to i32
  %add.i.i.i = add i32 %221, 7
  %and.i.i.i = and i32 %add.i.i.i, -8
  %222 = inttoptr i32 %and.i.i.i to ptr
  %and6.i.i.i = and i32 %add.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end.i.i.i.chcr_copy_to_txd.exit.i.i_crit_edge, label %if.then8.i.i.i

if.end.i.i.i.chcr_copy_to_txd.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_copy_to_txd.exit.i.i

if.then8.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 0, ptr %222, align 8
  %add.ptr9.i.i.i = getelementptr i64, ptr %222, i32 1
  br label %chcr_copy_to_txd.exit.i.i

chcr_copy_to_txd.exit.i.i:                        ; preds = %if.then8.i.i.i, %if.end.i.i.i.chcr_copy_to_txd.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr9.i.i.i, %if.then8.i.i.i ], [ %222, %if.end.i.i.i.chcr_copy_to_txd.exit.i.i_crit_edge ]
  %224 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %stat.i.i, align 8
  %tobool91.not.i.i = icmp eq ptr %225, %retval.0.i.i.i
  br i1 %tobool91.not.i.i, label %if.then92.i.i, label %chcr_copy_to_txd.exit.i.i.if.end101.i.i_crit_edge

chcr_copy_to_txd.exit.i.i.if.end101.i.i_crit_edge: ; preds = %chcr_copy_to_txd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101.i.i

if.then92.i.i:                                    ; preds = %chcr_copy_to_txd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast88.i.i = ptrtoint ptr %retval.0.i.i.i to i32
  %sub.ptr.lhs.cast95.i.i = ptrtoint ptr %end.0.i.i to i32
  %sub.ptr.sub97.i.i = sub i32 %sub.ptr.lhs.cast95.i.i, %sub.ptr.lhs.cast88.i.i
  %226 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %desc.i, align 32
  %add.ptr100.i.i = getelementptr i8, ptr %227, i32 %sub.ptr.sub97.i.i
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.then92.i.i, %chcr_copy_to_txd.exit.i.i.if.end101.i.i_crit_edge
  %pos.1.i.i = phi ptr [ %retval.0.i.i.i, %chcr_copy_to_txd.exit.i.i.if.end101.i.i_crit_edge ], [ %227, %if.then92.i.i ]
  %end.1.i.i = phi ptr [ %end.0.i.i, %chcr_copy_to_txd.exit.i.i.if.end101.i.i_crit_edge ], [ %add.ptr100.i.i, %if.then92.i.i ]
  %228 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %tid.i, align 8
  %or102.i.i = or i32 %229, 201326592
  %230 = ptrtoint ptr %pos.1.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %or102.i.i, ptr %pos.1.i.i, align 4
  %or105.i.i = or i32 %144, %shl103.i.i
  %len106.i.i = getelementptr inbounds %struct.cpl_tx_data, ptr %pos.1.i.i, i32 0, i32 1
  %231 = ptrtoint ptr %len106.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %or105.i.i, ptr %len106.i.i, align 4
  %rsvd.i.i = getelementptr inbounds %struct.cpl_tx_data, ptr %pos.1.i.i, i32 0, i32 2
  %232 = ptrtoint ptr %rsvd.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %tcp_seq.addr.0.i, ptr %rsvd.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.cpl_tx_data, ptr %pos.1.i.i, i32 0, i32 3
  %spec.select244.i.i = select i1 %spec.select.i416, i32 6307840, i32 2097152
  %233 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %spec.select244.i.i, ptr %flags.i.i, align 4
  %add.ptr112.i.i = getelementptr %struct.cpl_tx_data, ptr %pos.1.i.i, i32 1
  %234 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %stat.i.i, align 8
  %tobool118.not.i.i = icmp eq ptr %235, %add.ptr112.i.i
  br i1 %tobool118.not.i.i, label %if.then119.i.i, label %if.end101.i.i.if.end128.i.i_crit_edge

if.end101.i.i.if.end128.i.i_crit_edge:            ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128.i.i

if.then119.i.i:                                   ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast115.i.i = ptrtoint ptr %add.ptr112.i.i to i32
  %sub.ptr.lhs.cast122.i.i = ptrtoint ptr %end.1.i.i to i32
  %sub.ptr.sub124.i.i = sub i32 %sub.ptr.lhs.cast122.i.i, %sub.ptr.lhs.cast115.i.i
  %236 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %desc.i, align 32
  %add.ptr127.i.i = getelementptr i8, ptr %237, i32 %sub.ptr.sub124.i.i
  br label %if.end128.i.i

if.end128.i.i:                                    ; preds = %if.then119.i.i, %if.end101.i.i.if.end128.i.i_crit_edge
  %pos.2.i.i = phi ptr [ %add.ptr112.i.i, %if.end101.i.i.if.end128.i.i_crit_edge ], [ %237, %if.then119.i.i ]
  %end.2.i.i = phi ptr [ %end.1.i.i, %if.end101.i.i.if.end128.i.i_crit_edge ], [ %add.ptr127.i.i, %if.then119.i.i ]
  tail call void @cxgb4_write_partial_sgl(ptr noundef %nskb.0.i, ptr noundef %arrayidx24, ptr noundef %pos.2.i.i, ptr noundef %end.2.i.i, ptr noundef %addr.i.i, i32 noundef %skb_offset.addr.0.i, i32 noundef %144) #12
  %238 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %nskb.0.i, ptr %arrayidx.i.i, align 4
  %239 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx24, align 4
  %add.i251.i.i = add i32 %240, %div21.i.i.i
  store i32 %add.i251.i.i, ptr %arrayidx24, align 4
  %241 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %pidx.i, align 4
  %add1.i.i.i = add i32 %242, %div21.i.i.i
  store i32 %add1.i.i.i, ptr %pidx.i, align 4
  %243 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i.i, i32 %244)
  %cmp.not.i253.i.i = icmp ult i32 %add1.i.i.i, %244
  br i1 %cmp.not.i253.i.i, label %if.end128.i.i.if.end197_crit_edge, label %if.then.i255.i.i

if.end128.i.i.if.end197_crit_edge:                ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end197

if.then.i255.i.i:                                 ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i254.i.i = sub i32 %add1.i.i.i, %244
  %245 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %sub.i254.i.i, ptr %pidx.i, align 4
  br label %if.end197

if.then17.i:                                      ; preds = %if.then34.i.i, %if.then.i.i418
  br i1 %free_skb_if_tx_fails.1.off0.i, label %if.then19.i, label %if.then17.i.out.i_crit_edge

if.then17.i.out.i_crit_edge:                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then19.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %out.i

out.i:                                            ; preds = %if.then19.i, %if.then17.i.out.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %nskb.0.i, i32 noundef 1) #12
  br label %if.then183

if.else167:                                       ; preds = %if.end143
  %246 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %end_seq, align 4
  %sub.i.neg.i = sub i32 %123, %247
  %sub.i427 = add i32 %sub.i.neg.i, %tcp_seq.0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prior_data.i) #12
  %248 = call ptr @memset(ptr %prior_data.i, i32 0, i32 16)
  %249 = xor i32 %data_len.0, -1
  %250 = add i32 %sub60, %249
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %250)
  %251 = icmp ult i32 %250, 15
  br i1 %251, label %if.then.i429, label %if.else167.if.end31.i_crit_edge

if.else167.if.end31.i_crit_edge:                  ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then.i429:                                     ; preds = %if.else167
  %sub6.i = add i32 %sub60, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub60)
  %tobool.not.i428 = icmp ult i32 %sub60, 17
  br i1 %tobool.not.i428, label %if.then.i429.if.end181.thread_crit_edge, label %if.end8.i

if.then.i429.if.end181.thread_crit_edge:          ; preds = %if.then.i429
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181.thread

if.end8.i:                                        ; preds = %if.then.i429
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %data_len.0)
  %cmp9.i = icmp ugt i32 %sub6.i, %data_len.0
  br i1 %cmp9.i, label %do.end.i, label %if.end8.i.cleanup.i_crit_edge, !prof !132

if.end8.i.cleanup.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1799, i32 noundef 9, ptr noundef null) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i, %if.end8.i.cleanup.i_crit_edge
  %252 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %adap20, align 8
  %ktls_tx_trimmed_pkts.i = getelementptr inbounds %struct.adapter, ptr %253, i32 0, i32 74, i32 7
  %call.i.i.i431 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_trimmed_pkts.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_trimmed_pkts.i) #12
  br label %if.end31.i

if.end31.i:                                       ; preds = %cleanup.i, %if.else167.if.end31.i_crit_edge
  %data_len.addr.1.i = phi i32 [ %sub6.i, %cleanup.i ], [ %data_len.0, %if.else167.if.end31.i_crit_edge ]
  %add.i = add i32 %data_len.addr.1.i, %sub.i427
  %254 = ptrtoint ptr %iv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %iv_size.i.i, align 4
  %add32.i = add i32 %255, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add32.i)
  %cmp33.not.i = icmp ugt i32 %add.i, %add32.i
  br i1 %cmp33.not.i, label %if.end41.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end31.i
  %call36.i = tail call fastcc i32 @chcr_ktls_tx_plaintxt(ptr noundef %27, ptr noundef %skb, i32 noundef %tcp_seq.0, i32 noundef %spec.select, i1 noundef zeroext %131, ptr noundef %arrayidx24, i32 noundef %data_len.addr.1.i, i32 noundef %skb_offset.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.then34.i.out.i514_crit_edge

if.then34.i.out.i514_crit_edge:                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i514

if.end39.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  %add40.i = add i32 %data_len.addr.1.i, %tcp_seq.0
  br label %if.end197.thread

if.end41.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i427)
  %tobool42.not.i = icmp eq i32 %sub.i427, 0
  br i1 %tobool42.not.i, label %if.else111.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i427, i32 %add32.i)
  %cmp46.i = icmp ult i32 %sub.i427, %add32.i
  %sub51.i = sub i32 %sub.i427, %add32.i
  %rem.i = and i32 %sub51.i, 15
  %tls_rec_offset.0.i = select i1 %cmp46.i, i32 0, i32 %sub.i427
  %prior_data_len.0.i = select i1 %cmp46.i, i32 %sub.i427, i32 %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prior_data_len.0.i)
  %tobool54.not.i = icmp eq i32 %prior_data_len.0.i, 0
  br i1 %tobool54.not.i, label %if.then43.i.if.end108.i_crit_edge, label %while.cond.preheader.i

if.then43.i.if.end108.i_crit_edge:                ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108.i

while.cond.preheader.i:                           ; preds = %if.then43.i
  %sub52.i = sub i32 %sub.i427, %rem.i
  %remaining.0.i = select i1 %cmp46.i, i32 0, i32 %sub52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0.i)
  %cmp56236.i = icmp sgt i32 %remaining.0.i, 0
  br i1 %cmp56236.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end62.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %i.0238.i = phi i32 [ %inc.i, %if.end62.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %remaining.1237.i = phi i32 [ %sub63.i, %if.end62.i.while.body.i_crit_edge ], [ %sub52.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %bv_len.i.i = getelementptr %struct.tls_record_info, ptr %call46, i32 0, i32 4, i32 %i.0238.i, i32 1
  %256 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.1237.i, i32 %257)
  %cmp59.i = icmp slt i32 %remaining.1237.i, %257
  br i1 %cmp59.i, label %while.body.i.while.end.i_crit_edge, label %if.end62.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end62.i:                                       ; preds = %while.body.i
  %sub63.i = sub i32 %remaining.1237.i, %257
  %inc.i = add i32 %i.0238.i, 1
  %cmp56.i = icmp sgt i32 %sub63.i, 0
  br i1 %cmp56.i, label %if.end62.i.while.body.i_crit_edge, label %if.end62.i.while.end.i_crit_edge

if.end62.i.while.end.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end62.i.while.body.i_crit_edge:                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %if.end62.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %remaining.1.lcssa.i = phi i32 [ %remaining.0.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %sub63.i, %if.end62.i.while.end.i_crit_edge ], [ %remaining.1237.i, %while.body.i.while.end.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i.while.end.i_crit_edge ], [ %inc.i, %if.end62.i.while.end.i_crit_edge ], [ %i.0238.i, %while.body.i.while.end.i_crit_edge ]
  %arrayidx65.i = getelementptr %struct.tls_record_info, ptr %call46, i32 0, i32 4, i32 %i.0.lcssa.i
  %258 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %arrayidx65.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %260 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %260, 512
  %261 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i.i = and i32 %261, -16384
  %262 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i433 = add i32 %264, 1
  store volatile i32 %add.i.i.i.i433, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !135
  %265 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i1.i.i.i = and i32 %265, -16384
  %266 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %266, i32 0, i32 2
  %267 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %268, i32 0, i32 213
  %269 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %270, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  %call.i.i202.i = tail call ptr @__kmap_local_page_prot(ptr noundef %259, i32 noundef %or.i.i) #12
  %bv_offset.i.i = getelementptr %struct.tls_record_info, ptr %call46, i32 0, i32 4, i32 %i.0.lcssa.i, i32 2
  %271 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i434 = getelementptr i8, ptr %call.i.i202.i, i32 %272
  %add.ptr69.i = getelementptr i8, ptr %add.ptr.i434, i32 %remaining.1.lcssa.i
  %bv_len.i203.i = getelementptr %struct.tls_record_info, ptr %call46, i32 0, i32 4, i32 %i.0.lcssa.i, i32 1
  %273 = ptrtoint ptr %bv_len.i203.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %bv_len.i203.i, align 4
  %sub71.i = sub i32 %274, %remaining.1.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %prior_data_len.0.i, i32 %sub71.i)
  %cmp72.not.i = icmp ugt i32 %prior_data_len.0.i, %sub71.i
  br i1 %cmp72.not.i, label %if.else82.i, label %if.then74.i

if.then74.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %275 = call ptr @memcpy(ptr %prior_data.i, ptr %add.ptr69.i, i32 %prior_data_len.0.i)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i202.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %276 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i1.i.i = and i32 %276, -16384
  %277 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %279, i32 0, i32 213
  %280 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i435 = add i32 %281, -1
  store i32 %dec.i.i.i.i435, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !138
  br label %if.end106.i

if.else82.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %282 = call ptr @memcpy(ptr %prior_data.i, ptr %add.ptr69.i, i32 %sub71.i)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i202.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %283 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i1.i204.i = and i32 %283, -16384
  %284 = inttoptr i32 %and.i.i.i1.i204.i to ptr
  %task.i.i.i205.i = getelementptr inbounds %struct.thread_info, ptr %284, i32 0, i32 2
  %285 = ptrtoint ptr %task.i.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %task.i.i.i205.i, align 8
  %pagefault_disabled.i.i.i206.i = getelementptr inbounds %struct.task_struct, ptr %286, i32 0, i32 213
  %287 = ptrtoint ptr %pagefault_disabled.i.i.i206.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %pagefault_disabled.i.i.i206.i, align 8
  %dec.i.i.i207.i = add i32 %288, -1
  store i32 %dec.i.i.i207.i, ptr %pagefault_disabled.i.i.i206.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !138
  %289 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i208.i = and i32 %289, -16384
  %290 = inttoptr i32 %and.i.i.i.i208.i to ptr
  %preempt_count.i.i.i209.i = getelementptr inbounds %struct.thread_info, ptr %290, i32 0, i32 1
  %291 = ptrtoint ptr %preempt_count.i.i.i209.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load volatile i32, ptr %preempt_count.i.i.i209.i, align 4
  %sub.i.i210.i = add i32 %292, -1
  store volatile i32 %sub.i.i210.i, ptr %preempt_count.i.i.i209.i, align 4
  %add91.i = add i32 %i.0.lcssa.i, 1
  %arrayidx92.i = getelementptr %struct.tls_record_info, ptr %call46, i32 0, i32 4, i32 %add91.i
  %293 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx92.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %295 = load i32, ptr @pgprot_kernel, align 4
  %or.i211.i = or i32 %295, 512
  %296 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i212.i = and i32 %296, -16384
  %297 = inttoptr i32 %and.i.i.i.i.i212.i to ptr
  %preempt_count.i.i.i.i213.i = getelementptr inbounds %struct.thread_info, ptr %297, i32 0, i32 1
  %298 = ptrtoint ptr %preempt_count.i.i.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load volatile i32, ptr %preempt_count.i.i.i.i213.i, align 4
  %add.i.i.i214.i = add i32 %299, 1
  store volatile i32 %add.i.i.i214.i, ptr %preempt_count.i.i.i.i213.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !135
  %300 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i1.i.i215.i = and i32 %300, -16384
  %301 = inttoptr i32 %and.i.i.i1.i.i215.i to ptr
  %task.i.i.i.i216.i = getelementptr inbounds %struct.thread_info, ptr %301, i32 0, i32 2
  %302 = ptrtoint ptr %task.i.i.i.i216.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %task.i.i.i.i216.i, align 8
  %pagefault_disabled.i.i.i.i217.i = getelementptr inbounds %struct.task_struct, ptr %303, i32 0, i32 213
  %304 = ptrtoint ptr %pagefault_disabled.i.i.i.i217.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %pagefault_disabled.i.i.i.i217.i, align 8
  %inc.i.i.i.i218.i = add i32 %305, 1
  store i32 %inc.i.i.i.i218.i, ptr %pagefault_disabled.i.i.i.i217.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  %call.i.i219.i = tail call ptr @__kmap_local_page_prot(ptr noundef %294, i32 noundef %or.i211.i) #12
  %bv_offset.i220.i = getelementptr %struct.tls_record_info, ptr %call46, i32 0, i32 4, i32 %add91.i, i32 2
  %306 = ptrtoint ptr %bv_offset.i220.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %bv_offset.i220.i, align 4
  %add.ptr96.i = getelementptr i8, ptr %call.i.i219.i, i32 %307
  %add.ptr98.i = getelementptr i8, ptr %prior_data.i, i32 %sub71.i
  %sub99.i436 = sub i32 %prior_data_len.0.i, %sub71.i
  %308 = call ptr @memcpy(ptr %add.ptr98.i, ptr %add.ptr96.i, i32 %sub99.i436)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i219.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %309 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i1.i221.i = and i32 %309, -16384
  %310 = inttoptr i32 %and.i.i.i1.i221.i to ptr
  %task.i.i.i222.i = getelementptr inbounds %struct.thread_info, ptr %310, i32 0, i32 2
  %311 = ptrtoint ptr %task.i.i.i222.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %task.i.i.i222.i, align 8
  %pagefault_disabled.i.i.i223.i = getelementptr inbounds %struct.task_struct, ptr %312, i32 0, i32 213
  %313 = ptrtoint ptr %pagefault_disabled.i.i.i223.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %pagefault_disabled.i.i.i223.i, align 8
  %dec.i.i.i224.i = add i32 %314, -1
  store i32 %dec.i.i.i224.i, ptr %pagefault_disabled.i.i.i223.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !138
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.else82.i, %if.then74.i
  %315 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i225.i = and i32 %315, -16384
  %316 = inttoptr i32 %and.i.i.i.i225.i to ptr
  %preempt_count.i.i.i226.i = getelementptr inbounds %struct.thread_info, ptr %316, i32 0, i32 1
  %317 = ptrtoint ptr %preempt_count.i.i.i226.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load volatile i32, ptr %preempt_count.i.i.i226.i, align 4
  %sub.i.i227.i = add i32 %318, -1
  store volatile i32 %sub.i.i227.i, ptr %preempt_count.i.i.i226.i, align 4
  %sub107.i = sub i32 %tcp_seq.0, %prior_data_len.0.i
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.end106.i, %if.then43.i.if.end108.i_crit_edge
  %tcp_seq.addr.0.i437 = phi i32 [ %sub107.i, %if.end106.i ], [ %tcp_seq.0, %if.then43.i.if.end108.i_crit_edge ]
  %319 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %adap20, align 8
  %ktls_tx_middle_pkts.i = getelementptr inbounds %struct.adapter, ptr %320, i32 0, i32 74, i32 4
  br label %if.end114.i

if.else111.i:                                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %321 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %adap20, align 8
  %ktls_tx_start_pkts.i = getelementptr inbounds %struct.adapter, ptr %322, i32 0, i32 74, i32 3
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.else111.i, %if.end108.i
  %ktls_tx_start_pkts.sink243.i = phi ptr [ %ktls_tx_start_pkts.i, %if.else111.i ], [ %ktls_tx_middle_pkts.i, %if.end108.i ]
  %tcp_seq.addr.1.i = phi i32 [ %tcp_seq.0, %if.else111.i ], [ %tcp_seq.addr.0.i437, %if.end108.i ]
  %tls_rec_offset.1.i = phi i32 [ 0, %if.else111.i ], [ %tls_rec_offset.0.i, %if.end108.i ]
  %prior_data_len.1.i = phi i32 [ 0, %if.else111.i ], [ %prior_data_len.0.i, %if.end108.i ]
  %call.i.i201.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_start_pkts.sink243.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_start_pkts.sink243.i) #12
  %323 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %adap20, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv_record.i.i)
  %325 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %end.i.i, align 4
  %327 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %len, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %329 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %328, %330
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %tobool.i.not.i.i.i = icmp eq i32 %330, 0
  br i1 %tobool.i.not.i.i.i, label %if.end114.i.chcr_get_nfrags_to_send.exit.i.i_crit_edge, label %if.end.i.i.i439

if.end114.i.chcr_get_nfrags_to_send.exit.i.i_crit_edge: ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_get_nfrags_to_send.exit.i.i

if.end.i.i.i439:                                  ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %skb_offset.0)
  %cmp.i.i.i438 = icmp ugt i32 %sub.i.i.i.i, %skb_offset.0
  br i1 %cmp.i.i.i438, label %if.then4.i.i.i, label %if.else.i.i.i440, !prof !132

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i439
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i228.i = sub i32 %sub.i.i.i.i, %skb_offset.0
  br label %if.end22.i.i.i

if.else.i.i.i440:                                 ; preds = %if.end.i.i.i439
  %sub6.i.i.i = sub i32 %skb_offset.0, %sub.i.i.i.i
  %frags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %326, i32 0, i32 12
  %bv_len.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %326, i32 0, i32 12, i32 0, i32 1
  %331 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %frag_size.084.i.i.i = load i32, ptr %bv_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i.i.i, i32 %frag_size.084.i.i.i)
  %cmp8.not85.i.i.i = icmp ult i32 %sub6.i.i.i, %frag_size.084.i.i.i
  br i1 %cmp8.not85.i.i.i, label %if.else.i.i.i440.while.end.i.i.i_crit_edge, label %if.else.i.i.i440.while.body.i.i.i_crit_edge

if.else.i.i.i440.while.body.i.i.i_crit_edge:      ; preds = %if.else.i.i.i440
  br label %while.body.i.i.i

if.else.i.i.i440.while.end.i.i.i_crit_edge:       ; preds = %if.else.i.i.i440
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.else.i.i.i440.while.body.i.i.i_crit_edge
  %frag_size.088.i.i.i = phi i32 [ %frag_size.0.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %frag_size.084.i.i.i, %if.else.i.i.i440.while.body.i.i.i_crit_edge ]
  %start.addr.087.i.i.i = phi i32 [ %sub9.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %sub6.i.i.i, %if.else.i.i.i440.while.body.i.i.i_crit_edge ]
  %frag_idx.086.i.i.i = phi i8 [ %inc.i.i.i441, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.else.i.i.i440.while.body.i.i.i_crit_edge ]
  %sub9.i.i.i = sub i32 %start.addr.087.i.i.i, %frag_size.088.i.i.i
  %inc.i.i.i441 = add i8 %frag_idx.086.i.i.i, 1
  %idxprom11.i.i.i = zext i8 %inc.i.i.i441 to i32
  %bv_len.i81.i.i.i = getelementptr %struct.skb_shared_info, ptr %326, i32 0, i32 12, i32 %idxprom11.i.i.i, i32 1
  %332 = ptrtoint ptr %bv_len.i81.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %frag_size.0.i.i.i = load i32, ptr %bv_len.i81.i.i.i, align 4
  %cmp8.not.i.i.i = icmp ult i32 %sub9.i.i.i, %frag_size.0.i.i.i
  br i1 %cmp8.not.i.i.i, label %while.cond.while.end_crit_edge.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

while.cond.while.end_crit_edge.i.i.i:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx12.le.i.i.i = getelementptr %struct.skb_shared_info, ptr %326, i32 0, i32 12, i32 %idxprom11.i.i.i
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond.while.end_crit_edge.i.i.i, %if.else.i.i.i440.while.end.i.i.i_crit_edge
  %frag_idx.0.lcssa.i.i.i = phi i8 [ %inc.i.i.i441, %while.cond.while.end_crit_edge.i.i.i ], [ 0, %if.else.i.i.i440.while.end.i.i.i_crit_edge ]
  %frag.0.lcssa.i.i.i = phi ptr [ %arrayidx12.le.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ %frags.i.i.i, %if.else.i.i.i440.while.end.i.i.i_crit_edge ]
  %start.addr.0.lcssa.i.i.i = phi i32 [ %sub9.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ %sub6.i.i.i, %if.else.i.i.i440.while.end.i.i.i_crit_edge ]
  %bv_len.i82.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0.lcssa.i.i.i, i32 0, i32 1
  %333 = ptrtoint ptr %bv_len.i82.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %bv_len.i82.i.i.i, align 4
  %sub15.i.i.i = sub i32 %334, %start.addr.0.lcssa.i.i.i
  br label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %while.end.i.i.i, %if.then4.i.i.i
  %sub15.sink.i.i.i = phi i32 [ %sub15.i.i.i, %while.end.i.i.i ], [ %sub.i.i228.i, %if.then4.i.i.i ]
  %frag_idx.1.i.i.i = phi i8 [ %frag_idx.0.lcssa.i.i.i, %while.end.i.i.i ], [ 0, %if.then4.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.sink.i.i.i, i32 %data_len.addr.1.i)
  %tobool26.not91.not.i.i.i = icmp ult i32 %sub15.sink.i.i.i, %data_len.addr.1.i
  br i1 %tobool26.not91.not.i.i.i, label %while.body27.i.preheader.i.i, label %if.end22.i.i.i.chcr_get_nfrags_to_send.exit.i.i_crit_edge

if.end22.i.i.i.chcr_get_nfrags_to_send.exit.i.i_crit_edge: ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_get_nfrags_to_send.exit.i.i

while.body27.i.preheader.i.i:                     ; preds = %if.end22.i.i.i
  %335 = tail call i32 @llvm.usub.sat.i32(i32 %data_len.addr.1.i, i32 %sub15.sink.i.i.i) #12
  br label %while.body27.i.i.i

while.body27.i.i.i:                               ; preds = %while.body27.i.i.i.while.body27.i.i.i_crit_edge, %while.body27.i.preheader.i.i
  %len.addr.094.i.i.i = phi i32 [ %338, %while.body27.i.i.i.while.body27.i.i.i_crit_edge ], [ %335, %while.body27.i.preheader.i.i ]
  %frag_idx.293.i.i.i = phi i8 [ %inc40.i.i.i, %while.body27.i.i.i.while.body27.i.i.i_crit_edge ], [ %frag_idx.1.i.i.i, %while.body27.i.preheader.i.i ]
  %nfrags.092.i.i.i = phi i8 [ %inc39.i.i.i, %while.body27.i.i.i.while.body27.i.i.i_crit_edge ], [ 1, %while.body27.i.preheader.i.i ]
  %idxprom29.i.i.i = zext i8 %frag_idx.293.i.i.i to i32
  %bv_len.i83.i.i.i = getelementptr %struct.skb_shared_info, ptr %326, i32 0, i32 12, i32 %idxprom29.i.i.i, i32 1
  %336 = ptrtoint ptr %bv_len.i83.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %bv_len.i83.i.i.i, align 4
  %338 = tail call i32 @llvm.usub.sat.i32(i32 %len.addr.094.i.i.i, i32 %337) #12
  %inc39.i.i.i = add i8 %nfrags.092.i.i.i, 1
  %inc40.i.i.i = add i8 %frag_idx.293.i.i.i, 1
  %tobool26.not.not.i.i.i = icmp ugt i32 %len.addr.094.i.i.i, %337
  br i1 %tobool26.not.not.i.i.i, label %while.body27.i.i.i.while.body27.i.i.i_crit_edge, label %while.end41.loopexit.i.i.i

while.body27.i.i.i.while.body27.i.i.i_crit_edge:  ; preds = %while.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body27.i.i.i

while.end41.loopexit.i.i.i:                       ; preds = %while.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.i.i.i = zext i8 %inc39.i.i.i to i32
  br label %chcr_get_nfrags_to_send.exit.i.i

chcr_get_nfrags_to_send.exit.i.i:                 ; preds = %while.end41.loopexit.i.i.i, %if.end22.i.i.i.chcr_get_nfrags_to_send.exit.i.i_crit_edge, %if.end114.i.chcr_get_nfrags_to_send.exit.i.i_crit_edge
  %retval.0.i.i.i442 = phi i32 [ 1, %if.end114.i.chcr_get_nfrags_to_send.exit.i.i_crit_edge ], [ 1, %if.end22.i.i.i.chcr_get_nfrags_to_send.exit.i.i_crit_edge ], [ %phi.cast.i.i.i, %while.end41.loopexit.i.i.i ]
  %339 = ptrtoint ptr %key_ctx_len.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %key_ctx_len.i.i, align 4
  %dec.i.i.i229.i = add nsw i32 %retval.0.i.i.i442, -1
  %mul.i.i.i.i444 = mul nsw i32 %dec.i.i.i229.i, 3
  %div4.i.i.i.i445 = lshr i32 %mul.i.i.i.i444, 1
  %and.i.i.i.i446 = and i32 %dec.i.i.i229.i, 1
  %sub.i301.i.i = add i32 %340, 87
  %div3.i.i.i447 = lshr i32 %sub.i301.i.i, 3
  %iv.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 7
  %341 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_load8_noabort(i32 %341)
  %342 = load i64, ptr %iv.i.i, align 8
  %343 = ptrtoint ptr %record_no to i32
  call void @__asan_load8_noabort(i32 %343)
  %344 = load i64, ptr %record_no, align 8
  %add3.i.i = add i64 %344, %342
  %345 = ptrtoint ptr %iv_record.i.i to i32
  call void @__asan_store8_noabort(i32 %345)
  store i64 %add3.i.i, ptr %iv_record.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prior_data_len.1.i)
  %tobool.not.i.i = icmp eq i32 %prior_data_len.1.i, 0
  %add.i.i.i230.i = select i1 %tobool.not.i.i, i32 4, i32 6
  %add1.i.i.i.i449 = or i32 %and.i.i.i.i446, %add.i.i.i230.i
  %add2.i.i.i450 = add nuw i32 %add1.i.i.i.i449, %div4.i.i.i.i445
  %spec.select.i.i451 = add i32 %add2.i.i.i450, %div3.i.i.i447
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select.i.i451)
  %cmp.i302.i.i = icmp ugt i32 %spec.select.i.i451, 64
  br i1 %cmp.i302.i.i, label %do.end.i.i.i452, label %chcr_get_nfrags_to_send.exit.i.i.chcr_flits_to_desc.exit.i.i457_crit_edge, !prof !132

chcr_get_nfrags_to_send.exit.i.i.chcr_flits_to_desc.exit.i.i457_crit_edge: ; preds = %chcr_get_nfrags_to_send.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_flits_to_desc.exit.i.i457

do.end.i.i.i452:                                  ; preds = %chcr_get_nfrags_to_send.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %chcr_flits_to_desc.exit.i.i457

chcr_flits_to_desc.exit.i.i457:                   ; preds = %do.end.i.i.i452, %chcr_get_nfrags_to_send.exit.i.i.chcr_flits_to_desc.exit.i.i457_crit_edge
  %sub.i303.i.i = add i32 %spec.select.i.i451, 7
  %div21.i.i.i453 = lshr i32 %sub.i303.i.i, 3
  %346 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %size.i.i, align 4
  %348 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx24, align 4
  %350 = xor i32 %349, -1
  %sub1.i.i.i455 = sub i32 %347, %div21.i.i.i453
  %sub.i231.i = add i32 %sub1.i.i.i455, %350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i231.i)
  %cmp.i.i456 = icmp slt i32 %sub.i231.i, 0
  br i1 %cmp.i.i456, label %if.then10.i.i, label %if.end11.i.i, !prof !132

if.then10.i.i:                                    ; preds = %chcr_flits_to_desc.exit.i.i457
  call void @__sanitizer_cov_trace_pc() #14
  %351 = ptrtoint ptr %txq.i178.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %txq.i178.i, align 4
  %state.i.i.i.i459 = getelementptr inbounds %struct.netdev_queue, ptr %352, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i.i459) #12
  %353 = ptrtoint ptr %stops.i180.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %stops.i180.i, align 4
  %inc.i305.i.i = add i32 %354, 1
  store i32 %inc.i305.i.i, ptr %stops.i180.i, align 4
  br label %chcr_ktls_xmit_wr_short.exit.thread.i

if.end11.i.i:                                     ; preds = %chcr_flits_to_desc.exit.i.i457
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i231.i)
  %cmp12.i.i = icmp ult i32 %sub.i231.i, 5
  br i1 %cmp12.i.i, label %if.then19.i.i, label %if.end11.i.i.if.end20.i.i_crit_edge, !prof !132

if.end11.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i.i

if.then19.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %355 = ptrtoint ptr %txq.i178.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %txq.i178.i, align 4
  %state.i.i307.i.i = getelementptr inbounds %struct.netdev_queue, ptr %356, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i307.i.i) #12
  %357 = ptrtoint ptr %stops.i180.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %stops.i180.i, align 4
  %inc.i309.i.i = add i32 %358, 1
  store i32 %inc.i309.i.i, ptr %stops.i180.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then19.i.i, %if.end11.i.i.if.end20.i.i_crit_edge
  %wr_mid.0.i.i461 = phi i32 [ -1073741824, %if.then19.i.i ], [ 0, %if.end11.i.i.if.end20.i.i_crit_edge ]
  %359 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %pidx.i, align 16
  %add22.i.i = add nsw i32 %div21.i.i.i453, -1
  %sub23.i.i463 = add i32 %add22.i.i, %360
  %361 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23.i.i463, i32 %362)
  %cmp25.not.i.i = icmp ult i32 %sub23.i.i463, %362
  %sub29.i.i = select i1 %cmp25.not.i.i, i32 0, i32 %362
  %spec.select299.i.i = sub i32 %sub23.i.i463, %sub29.i.i
  %363 = ptrtoint ptr %sdesc.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %sdesc.i.i, align 4
  %arrayidx.i.i465 = getelementptr %struct.tx_sw_desc, ptr %364, i32 %spec.select299.i.i
  %pdev_dev.i.i466 = getelementptr inbounds %struct.adapter, ptr %324, i32 0, i32 4
  %365 = ptrtoint ptr %pdev_dev.i.i466 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %pdev_dev.i.i466, align 16
  %addr.i.i467 = getelementptr %struct.tx_sw_desc, ptr %364, i32 %spec.select299.i.i, i32 1
  %call32.i.i = tail call i32 @cxgb4_map_skb(ptr noundef %366, ptr noundef %skb, ptr noundef %addr.i.i467) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %cmp33.i.i = icmp slt i32 %call32.i.i, 0
  br i1 %cmp33.i.i, label %if.then40.i.i, label %if.end43.i.i, !prof !132

if.then40.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %367 = call ptr @memset(ptr %addr.i.i467, i32 0, i32 72)
  %mapping_err.i.i468 = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add23, i32 9
  %368 = ptrtoint ptr %mapping_err.i.i468 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %mapping_err.i.i468, align 8
  %inc.i.i469 = add i32 %369, 1
  store i32 %inc.i.i469, ptr %mapping_err.i.i468, align 8
  br label %chcr_ktls_xmit_wr_short.exit.thread.i

if.end43.i.i:                                     ; preds = %if.end20.i.i
  %370 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %desc.i, align 32
  %372 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %pidx.i, align 16
  %arrayidx47.i.i = getelementptr %struct.tx_desc, ptr %371, i32 %373
  %add.ptr.i.i471 = getelementptr i64, ptr %arrayidx47.i.i, i32 %spec.select.i.i451
  %sub49.i.i = add i32 %spec.select.i.i451, 1
  %div295.i.i = lshr i32 %sub49.i.i, 1
  %374 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 67108864, ptr %arrayidx47.i.i, align 8
  %or50.i.i = or i32 %wr_mid.0.i.i461, %div295.i.i
  %flowid_len16.i.i472 = getelementptr inbounds %struct.fw_ulptx_wr, ptr %arrayidx47.i.i, i32 0, i32 1
  %375 = ptrtoint ptr %flowid_len16.i.i472 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %or50.i.i, ptr %flowid_len16.i.i472, align 4
  %cookie.i.i473 = getelementptr inbounds %struct.fw_ulptx_wr, ptr %arrayidx47.i.i, i32 0, i32 2
  %376 = ptrtoint ptr %cookie.i.i473 to i32
  call void @__asan_store8_noabort(i32 %376)
  store i64 0, ptr %cookie.i.i473, align 8
  %add.ptr51.i.i = getelementptr i8, ptr %arrayidx47.i.i, i32 16
  %377 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %port_id, align 8
  %conv.i.i475 = zext i8 %378 to i32
  %shl52.i.i = shl nuw nsw i32 %conv.i.i475, 22
  %379 = ptrtoint ptr %cntxt_id.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %cntxt_id.i.i, align 4
  %shl55.i.i = shl i32 %380, 4
  %or53.i.i = or i32 %shl55.i.i, %shl52.i.i
  %or57.i.i = or i32 %or53.i.i, 67108872
  %381 = ptrtoint ptr %add.ptr51.i.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %or57.i.i, ptr %add.ptr51.i.i, align 4
  %sub58.i.i = add nsw i32 %div295.i.i, -1
  %len.i232.i = getelementptr inbounds %struct.ulp_txpkt, ptr %add.ptr51.i.i, i32 0, i32 1
  %382 = ptrtoint ptr %len.i232.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %sub58.i.i, ptr %len.i232.i, align 4
  %add.ptr59.i.i = getelementptr %struct.ulp_txpkt, ptr %add.ptr51.i.i, i32 1
  %383 = ptrtoint ptr %add.ptr59.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 -2122317824, ptr %add.ptr59.i.i, align 4
  %384 = ptrtoint ptr %key_ctx_len.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %key_ctx_len.i.i, align 4
  %add63.i.i = add i32 %prior_data_len.1.i, 64
  %add64.i.i477 = add i32 %add63.i.i, %385
  %len65.i.i = getelementptr inbounds %struct.ulptx_idata, ptr %add.ptr59.i.i, i32 0, i32 1
  %386 = ptrtoint ptr %len65.i.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %add64.i.i477, ptr %len65.i.i, align 4
  %add.ptr66.i.i = getelementptr %struct.ulptx_idata, ptr %add.ptr59.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tls_rec_offset.1.i)
  %tobool67.not.i.i = icmp eq i32 %tls_rec_offset.1.i, 0
  br i1 %tobool67.not.i.i, label %cond.true.i.i, label %if.end43.i.i.cond.end.i.i_crit_edge

if.end43.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %387 = ptrtoint ptr %iv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %iv_size.i.i, align 4
  %phi.bo.i.i = shl i32 %388, 5
  %phi.bo296.i.i = add i32 %phi.bo.i.i, 704
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end43.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %phi.bo296.i.i, %cond.true.i.i ], [ 544, %if.end43.i.i.cond.end.i.i_crit_edge ]
  %389 = ptrtoint ptr %add.ptr66.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 -1979580415, ptr %add.ptr66.i.i, align 8
  %add70.i.i = add i32 %prior_data_len.1.i, %data_len.addr.1.i
  %add71.i.i = add i32 %add70.i.i, 16
  %pldlen.i.i478 = getelementptr inbounds %struct.cpl_tx_sec_pdu, ptr %add.ptr66.i.i, i32 0, i32 1
  %390 = ptrtoint ptr %pldlen.i.i478 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %add71.i.i, ptr %pldlen.i.i478, align 4
  %aadstart_cipherstop_hi.i.i479 = getelementptr inbounds %struct.cpl_tx_sec_pdu, ptr %add.ptr66.i.i, i32 0, i32 2
  %391 = ptrtoint ptr %aadstart_cipherstop_hi.i.i479 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %cond.i.i, ptr %aadstart_cipherstop_hi.i.i479, align 8
  %cipherstop_lo_authinsert.i.i480 = getelementptr inbounds %struct.cpl_tx_sec_pdu, ptr %add.ptr66.i.i, i32 0, i32 3
  %392 = ptrtoint ptr %cipherstop_lo_authinsert.i.i480 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 0, ptr %cipherstop_lo_authinsert.i.i480, align 4
  %scmd0_short_seqno_numivs.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 20
  %393 = ptrtoint ptr %scmd0_short_seqno_numivs.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %scmd0_short_seqno_numivs.i.i, align 4
  %seqno_numivs.i.i481 = getelementptr inbounds %struct.cpl_tx_sec_pdu, ptr %add.ptr66.i.i, i32 0, i32 4
  %395 = ptrtoint ptr %seqno_numivs.i.i481 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %394, ptr %seqno_numivs.i.i481, align 8
  %scmd0_short_ivgen_hdrlen.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 21
  %396 = ptrtoint ptr %scmd0_short_ivgen_hdrlen.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %scmd0_short_ivgen_hdrlen.i.i, align 8
  %ivgen_hdrlen.i.i482 = getelementptr inbounds %struct.cpl_tx_sec_pdu, ptr %add.ptr66.i.i, i32 0, i32 5
  %398 = ptrtoint ptr %ivgen_hdrlen.i.i482 to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %397, ptr %ivgen_hdrlen.i.i482, align 4
  %scmd1.i.i483 = getelementptr inbounds %struct.cpl_tx_sec_pdu, ptr %add.ptr66.i.i, i32 0, i32 6
  %399 = ptrtoint ptr %scmd1.i.i483 to i32
  call void @__asan_store8_noabort(i32 %399)
  store i64 0, ptr %scmd1.i.i483, align 8
  %add.ptr73.i.i = getelementptr %struct.cpl_tx_sec_pdu, ptr %add.ptr66.i.i, i32 1
  %400 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %stat.i.i, align 8
  %tobool75.not.i.i = icmp eq ptr %401, %add.ptr73.i.i
  br i1 %tobool75.not.i.i, label %if.then76.i.i, label %cond.end.i.i.if.end85.i.i_crit_edge

cond.end.i.i.if.end85.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85.i.i

if.then76.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast.i.i485 = ptrtoint ptr %add.ptr73.i.i to i32
  %sub.ptr.lhs.cast79.i.i = ptrtoint ptr %add.ptr.i.i471 to i32
  %sub.ptr.sub81.i.i = sub i32 %sub.ptr.lhs.cast79.i.i, %sub.ptr.lhs.cast.i.i485
  %402 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %desc.i, align 32
  %add.ptr84.i.i = getelementptr i8, ptr %403, i32 %sub.ptr.sub81.i.i
  br label %if.end85.i.i

if.end85.i.i:                                     ; preds = %if.then76.i.i, %cond.end.i.i.if.end85.i.i_crit_edge
  %pos.0.i.i486 = phi ptr [ %add.ptr73.i.i, %cond.end.i.i.if.end85.i.i_crit_edge ], [ %403, %if.then76.i.i ]
  %end.0.i.i487 = phi ptr [ %add.ptr.i.i471, %cond.end.i.i.if.end85.i.i_crit_edge ], [ %add.ptr84.i.i, %if.then76.i.i ]
  %404 = ptrtoint ptr %key_ctx_len.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %key_ctx_len.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i489 = ptrtoint ptr %401 to i32
  %sub.ptr.rhs.cast.i.i.i490 = ptrtoint ptr %pos.0.i.i486 to i32
  %sub.ptr.sub.i.i.i491 = sub i32 %sub.ptr.lhs.cast.i.i.i489, %sub.ptr.rhs.cast.i.i.i490
  call void @__sanitizer_cov_trace_cmp4(i32 %405, i32 %sub.ptr.sub.i.i.i491)
  %cmp.not.i.i.i492 = icmp sgt i32 %405, %sub.ptr.sub.i.i.i491
  br i1 %cmp.not.i.i.i492, label %if.else.i311.i.i, label %if.then.i.i.i494, !prof !132

if.then.i.i.i494:                                 ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %406 = call ptr @memcpy(ptr %pos.0.i.i486, ptr %key_ctx.i.i, i32 %405)
  %add.ptr.i.i.i493 = getelementptr i8, ptr %pos.0.i.i486, i32 %405
  br label %if.end.i312.i.i

if.else.i311.i.i:                                 ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %407 = call ptr @memcpy(ptr %pos.0.i.i486, ptr %key_ctx.i.i, i32 %sub.ptr.sub.i.i.i491)
  %408 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %desc.i, align 4
  %add.ptr2.i.i.i495 = getelementptr i8, ptr %key_ctx.i.i, i32 %sub.ptr.sub.i.i.i491
  %sub.i310.i.i = sub i32 %405, %sub.ptr.sub.i.i.i491
  %410 = call ptr @memcpy(ptr %409, ptr %add.ptr2.i.i.i495, i32 %sub.i310.i.i)
  %411 = load ptr, ptr %desc.i, align 4
  %add.ptr5.i.i.i496 = getelementptr i8, ptr %411, i32 %sub.i310.i.i
  br label %if.end.i312.i.i

if.end.i312.i.i:                                  ; preds = %if.else.i311.i.i, %if.then.i.i.i494
  %pos.addr.0.i.i.i497 = phi ptr [ %add.ptr.i.i.i493, %if.then.i.i.i494 ], [ %add.ptr5.i.i.i496, %if.else.i311.i.i ]
  %412 = ptrtoint ptr %pos.addr.0.i.i.i497 to i32
  %add.i.i.i498 = add i32 %412, 7
  %and.i.i.i499 = and i32 %add.i.i.i498, -8
  %413 = inttoptr i32 %and.i.i.i499 to ptr
  %and6.i.i.i500 = and i32 %add.i.i.i498, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i500)
  %tobool7.not.i.i.i501 = icmp eq i32 %and6.i.i.i500, 0
  br i1 %tobool7.not.i.i.i501, label %if.end.i312.i.i.chcr_copy_to_txd.exit.i.i504_crit_edge, label %if.then8.i.i.i503

if.end.i312.i.i.chcr_copy_to_txd.exit.i.i504_crit_edge: ; preds = %if.end.i312.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_copy_to_txd.exit.i.i504

if.then8.i.i.i503:                                ; preds = %if.end.i312.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_store8_noabort(i32 %414)
  store i64 0, ptr %413, align 8
  %add.ptr9.i.i.i502 = getelementptr i64, ptr %413, i32 1
  br label %chcr_copy_to_txd.exit.i.i504

chcr_copy_to_txd.exit.i.i504:                     ; preds = %if.then8.i.i.i503, %if.end.i312.i.i.chcr_copy_to_txd.exit.i.i504_crit_edge
  %retval.0.i313.i.i = phi ptr [ %add.ptr9.i.i.i502, %if.then8.i.i.i503 ], [ %413, %if.end.i312.i.i.chcr_copy_to_txd.exit.i.i504_crit_edge ]
  %415 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %stat.i.i, align 8
  %tobool94.not.i.i = icmp eq ptr %416, %retval.0.i313.i.i
  br i1 %tobool94.not.i.i, label %if.then95.i.i, label %chcr_copy_to_txd.exit.i.i504.if.end104.i.i_crit_edge

chcr_copy_to_txd.exit.i.i504.if.end104.i.i_crit_edge: ; preds = %chcr_copy_to_txd.exit.i.i504
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104.i.i

if.then95.i.i:                                    ; preds = %chcr_copy_to_txd.exit.i.i504
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast91.i.i = ptrtoint ptr %retval.0.i313.i.i to i32
  %sub.ptr.lhs.cast98.i.i = ptrtoint ptr %end.0.i.i487 to i32
  %sub.ptr.sub100.i.i = sub i32 %sub.ptr.lhs.cast98.i.i, %sub.ptr.lhs.cast91.i.i
  %417 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %desc.i, align 32
  %add.ptr103.i.i = getelementptr i8, ptr %418, i32 %sub.ptr.sub100.i.i
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %if.then95.i.i, %chcr_copy_to_txd.exit.i.i504.if.end104.i.i_crit_edge
  %pos.1.i.i505 = phi ptr [ %retval.0.i313.i.i, %chcr_copy_to_txd.exit.i.i504.if.end104.i.i_crit_edge ], [ %418, %if.then95.i.i ]
  %end.1.i.i506 = phi ptr [ %end.0.i.i487, %chcr_copy_to_txd.exit.i.i504.if.end104.i.i_crit_edge ], [ %add.ptr103.i.i, %if.then95.i.i ]
  %419 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %tid.i, align 8
  %or105.i.i508 = or i32 %420, 201326592
  %421 = ptrtoint ptr %pos.1.i.i505 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %or105.i.i508, ptr %pos.1.i.i505, align 4
  %or109.i.i = or i32 %add70.i.i, %shl103.i.i
  %len110.i.i = getelementptr inbounds %struct.cpl_tx_data, ptr %pos.1.i.i505, i32 0, i32 1
  %422 = ptrtoint ptr %len110.i.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 %or109.i.i, ptr %len110.i.i, align 4
  %rsvd.i.i509 = getelementptr inbounds %struct.cpl_tx_data, ptr %pos.1.i.i505, i32 0, i32 2
  %423 = ptrtoint ptr %rsvd.i.i509 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %tcp_seq.addr.1.i, ptr %rsvd.i.i509, align 4
  %flags.i.i510 = getelementptr inbounds %struct.cpl_tx_data, ptr %pos.1.i.i505, i32 0, i32 3
  %spec.select300.i.i = select i1 %131, i32 6307840, i32 2097152
  %424 = ptrtoint ptr %flags.i.i510 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %spec.select300.i.i, ptr %flags.i.i510, align 4
  %add.ptr116.i.i = getelementptr %struct.cpl_tx_data, ptr %pos.1.i.i505, i32 1
  %425 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %stat.i.i, align 8
  %tobool122.not.i.i = icmp eq ptr %426, %add.ptr116.i.i
  br i1 %tobool122.not.i.i, label %if.then123.i.i, label %if.end104.i.i.if.end132.i.i_crit_edge

if.end104.i.i.if.end132.i.i_crit_edge:            ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132.i.i

if.then123.i.i:                                   ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast119.i.i = ptrtoint ptr %add.ptr116.i.i to i32
  %sub.ptr.lhs.cast126.i.i = ptrtoint ptr %end.1.i.i506 to i32
  %sub.ptr.sub128.i.i = sub i32 %sub.ptr.lhs.cast126.i.i, %sub.ptr.lhs.cast119.i.i
  %427 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %desc.i, align 32
  %add.ptr131.i.i = getelementptr i8, ptr %428, i32 %sub.ptr.sub128.i.i
  br label %if.end132.i.i

if.end132.i.i:                                    ; preds = %if.then123.i.i, %if.end104.i.i.if.end132.i.i_crit_edge
  %pos.2.i.i511 = phi ptr [ %add.ptr116.i.i, %if.end104.i.i.if.end132.i.i_crit_edge ], [ %428, %if.then123.i.i ]
  %end.2.i.i512 = phi ptr [ %end.1.i.i506, %if.end104.i.i.if.end132.i.i_crit_edge ], [ %add.ptr131.i.i, %if.then123.i.i ]
  %salt.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 2, i32 1
  %salt_size.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 15
  %429 = ptrtoint ptr %salt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %salt_size.i.i, align 8
  %431 = call ptr @memcpy(ptr %pos.2.i.i511, ptr %salt.i.i, i32 %430)
  %432 = load i32, ptr %salt_size.i.i, align 8
  %add.ptr136.i.i = getelementptr i8, ptr %pos.2.i.i511, i32 %432
  %433 = ptrtoint ptr %iv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %iv_size.i.i, align 4
  %435 = call ptr @memcpy(ptr %add.ptr136.i.i, ptr %iv_record.i.i, i32 %434)
  br i1 %tobool67.not.i.i, label %if.end132.i.i.cond.end145.i.i_crit_edge, label %cond.true139.i.i

if.end132.i.i.cond.end145.i.i_crit_edge:          ; preds = %if.end132.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end145.i.i

cond.true139.i.i:                                 ; preds = %if.end132.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %436 = ptrtoint ptr %iv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %iv_size.i.i, align 4
  %add141.neg.i.i = add i32 %tls_rec_offset.1.i, -5
  %sub142.i.i = sub i32 %add141.neg.i.i, %437
  %div143298.i.i = lshr i32 %sub142.i.i, 4
  %phi.bo297.i.i = add nuw nsw i32 %div143298.i.i, 2
  br label %cond.end145.i.i

cond.end145.i.i:                                  ; preds = %cond.true139.i.i, %if.end132.i.i.cond.end145.i.i_crit_edge
  %cond146.i.i = phi i32 [ %phi.bo297.i.i, %cond.true139.i.i ], [ 2, %if.end132.i.i.cond.end145.i.i_crit_edge ]
  %438 = ptrtoint ptr %salt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %salt_size.i.i, align 8
  %add.ptr149.i.i = getelementptr i8, ptr %pos.2.i.i511, i32 %439
  %440 = ptrtoint ptr %iv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %iv_size.i.i, align 4
  %add.ptr151.i.i = getelementptr i8, ptr %add.ptr149.i.i, i32 %441
  %442 = ptrtoint ptr %add.ptr151.i.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %cond146.i.i, ptr %add.ptr151.i.i, align 4
  %add.ptr152.i.i = getelementptr i8, ptr %pos.2.i.i511, i32 16
  br i1 %tobool.not.i.i, label %cond.end145.i.i.if.end157.i.i_crit_edge, label %if.then154.i.i

cond.end145.i.i.if.end157.i.i_crit_edge:          ; preds = %cond.end145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157.i.i

if.then154.i.i:                                   ; preds = %cond.end145.i.i
  %443 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %stat.i.i, align 4
  %sub.ptr.lhs.cast.i315.i.i = ptrtoint ptr %444 to i32
  %sub.ptr.rhs.cast.i316.i.i = ptrtoint ptr %add.ptr152.i.i to i32
  %sub.ptr.sub.i317.i.i = sub i32 %sub.ptr.lhs.cast.i315.i.i, %sub.ptr.rhs.cast.i316.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i317.i.i)
  %cmp.not.i318.i.i = icmp slt i32 %sub.ptr.sub.i317.i.i, 16
  br i1 %cmp.not.i318.i.i, label %if.else.i325.i.i, label %if.then.i320.i.i, !prof !132

if.then.i320.i.i:                                 ; preds = %if.then154.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %445 = call ptr @memcpy(ptr %add.ptr152.i.i, ptr %prior_data.i, i32 16)
  %add.ptr.i319.i.i = getelementptr i8, ptr %pos.2.i.i511, i32 32
  br label %if.end.i331.i.i

if.else.i325.i.i:                                 ; preds = %if.then154.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %446 = call ptr @memcpy(ptr %add.ptr152.i.i, ptr %prior_data.i, i32 %sub.ptr.sub.i317.i.i)
  %447 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %desc.i, align 4
  %add.ptr2.i322.i.i = getelementptr i8, ptr %prior_data.i, i32 %sub.ptr.sub.i317.i.i
  %sub.i323.i.i = sub i32 16, %sub.ptr.sub.i317.i.i
  %449 = call ptr @memcpy(ptr %448, ptr %add.ptr2.i322.i.i, i32 %sub.i323.i.i)
  %450 = load ptr, ptr %desc.i, align 4
  %add.ptr5.i324.i.i = getelementptr i8, ptr %450, i32 %sub.i323.i.i
  br label %if.end.i331.i.i

if.end.i331.i.i:                                  ; preds = %if.else.i325.i.i, %if.then.i320.i.i
  %pos.addr.0.i326.i.i = phi ptr [ %add.ptr.i319.i.i, %if.then.i320.i.i ], [ %add.ptr5.i324.i.i, %if.else.i325.i.i ]
  %451 = ptrtoint ptr %pos.addr.0.i326.i.i to i32
  %add.i327.i.i = add i32 %451, 7
  %and.i328.i.i = and i32 %add.i327.i.i, -8
  %452 = inttoptr i32 %and.i328.i.i to ptr
  %and6.i329.i.i = and i32 %add.i327.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i329.i.i)
  %tobool7.not.i330.i.i = icmp eq i32 %and6.i329.i.i, 0
  br i1 %tobool7.not.i330.i.i, label %if.end.i331.i.i.if.end157.i.i_crit_edge, label %if.then8.i333.i.i

if.end.i331.i.i.if.end157.i.i_crit_edge:          ; preds = %if.end.i331.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157.i.i

if.then8.i333.i.i:                                ; preds = %if.end.i331.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_store8_noabort(i32 %453)
  store i64 0, ptr %452, align 8
  %add.ptr9.i332.i.i = getelementptr i64, ptr %452, i32 1
  br label %if.end157.i.i

if.end157.i.i:                                    ; preds = %if.then8.i333.i.i, %if.end.i331.i.i.if.end157.i.i_crit_edge, %cond.end145.i.i.if.end157.i.i_crit_edge
  %pos.3.i.i = phi ptr [ %add.ptr152.i.i, %cond.end145.i.i.if.end157.i.i_crit_edge ], [ %add.ptr9.i332.i.i, %if.then8.i333.i.i ], [ %452, %if.end.i331.i.i.if.end157.i.i_crit_edge ]
  tail call void @cxgb4_write_partial_sgl(ptr noundef %skb, ptr noundef %arrayidx24, ptr noundef %pos.3.i.i, ptr noundef %end.2.i.i512, ptr noundef %addr.i.i467, i32 noundef %skb_offset.0, i32 noundef %data_len.addr.1.i) #12
  %454 = ptrtoint ptr %arrayidx.i.i465 to i32
  call void @__asan_store4_noabort(i32 %454)
  store ptr %skb, ptr %arrayidx.i.i465, align 4
  %455 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %arrayidx24, align 4
  %add.i336.i.i = add i32 %456, %div21.i.i.i453
  store i32 %add.i336.i.i, ptr %arrayidx24, align 4
  %457 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %pidx.i, align 4
  %add1.i.i.i513 = add i32 %458, %div21.i.i.i453
  store i32 %add1.i.i.i513, ptr %pidx.i, align 4
  %459 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i.i513, i32 %460)
  %cmp.not.i338.i.i = icmp ult i32 %add1.i.i.i513, %460
  br i1 %cmp.not.i338.i.i, label %if.end157.i.i.if.end120.i_crit_edge, label %if.then.i340.i.i

if.end157.i.i.if.end120.i_crit_edge:              ; preds = %if.end157.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120.i

if.then.i340.i.i:                                 ; preds = %if.end157.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i339.i.i = sub i32 %add1.i.i.i513, %460
  %461 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %sub.i339.i.i, ptr %pidx.i, align 4
  br label %if.end120.i

chcr_ktls_xmit_wr_short.exit.thread.i:            ; preds = %if.then40.i.i, %if.then10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv_record.i.i)
  br label %out.i514

if.end120.i:                                      ; preds = %if.then.i340.i.i, %if.end157.i.i.if.end120.i_crit_edge
  tail call void @cxgb4_ring_tx_db(ptr noundef %324, ptr noundef %arrayidx24, i32 noundef %div21.i.i.i453) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv_record.i.i)
  %add122.i = add i32 %add70.i.i, %tcp_seq.addr.1.i
  br label %if.end197.thread

out.i514:                                         ; preds = %chcr_ktls_xmit_wr_short.exit.thread.i, %if.then34.i.out.i514_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %if.end181.thread

if.end181.thread:                                 ; preds = %out.i514, %if.then.i429.if.end181.thread_crit_edge
  %retval.1.i = phi i32 [ 16, %out.i514 ], [ 35, %if.then.i429.if.end181.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prior_data.i) #12
  br label %if.then183

if.end197.thread:                                 ; preds = %if.end120.i, %if.end39.i
  %storemerge = phi i32 [ %add40.i, %if.end39.i ], [ %add122.i, %if.end120.i ]
  %462 = ptrtoint ptr %prev_seq to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 %storemerge, ptr %prev_seq, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prior_data.i) #12
  br label %do.end232

if.then183:                                       ; preds = %if.end181.thread, %out.i, %if.then2.i
  %ret.0574 = phi i32 [ %retval.1.i, %if.end181.thread ], [ 16, %out.i ], [ 16, %if.then2.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #12
  %463 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %463)
  %bf.load187 = load i16, ptr %doff.i.i, align 4
  %bf.clear188 = and i16 %bf.load187, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear188)
  %tobool189.not = icmp eq i16 %bf.clear188, 0
  br i1 %tobool189.not, label %if.then183.if.end191_crit_edge, label %if.then190

if.then183.if.end191_crit_edge:                   ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

if.then190:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %if.then183.if.end191_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %ret.0574)
  %cmp192 = icmp eq i32 %ret.0574, 35
  br i1 %cmp192, label %if.then194, label %if.end191.cleanup245_crit_edge

if.end191.cleanup245_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup245

if.then194:                                       ; preds = %if.end191
  %call.i = tail call ptr @tls_encrypt_skb(ptr noundef %skb) #12
  %tobool.not.i515 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i515, label %if.then194.cleanup245_crit_edge, label %if.end.i523

if.then194.cleanup245_crit_edge:                  ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup245

if.end.i523:                                      ; preds = %if.then194
  %head.i.i.i516 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %464 = ptrtoint ptr %head.i.i.i516 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %head.i.i.i516, align 8
  %transport_header.i.i.i517 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %466 = ptrtoint ptr %transport_header.i.i.i517 to i32
  call void @__asan_load2_noabort(i32 %466)
  %467 = load i16, ptr %transport_header.i.i.i517, align 2
  %conv.i.i.i518 = zext i16 %467 to i32
  %add.ptr.i.i.i519 = getelementptr i8, ptr %465, i32 %conv.i.i.i518
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %468 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i520 = ptrtoint ptr %add.ptr.i.i.i519 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %469 to i32
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i519, i32 0, i32 4
  %470 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %470)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %471 = lshr i16 %bf.load.i.i.i, 10
  %472 = and i16 %471, 60
  %mul.i.i.i = zext i16 %472 to i32
  %len.i521 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %473 = ptrtoint ptr %len.i521 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %len.i521, align 4
  tail call void @skb_clone_tx_timestamp(ptr noundef nonnull %call.i) #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %475 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %476, i32 0, i32 3
  %477 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %tx_flags.i.i, align 1
  %479 = and i8 %478, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %479)
  %tobool.not.i.i522 = icmp eq i8 %479, 0
  br i1 %tobool.not.i.i522, label %if.end.i523.skb_tx_timestamp.exit.i_crit_edge, label %if.then.i.i524

if.end.i523.skb_tx_timestamp.exit.i_crit_edge:    ; preds = %if.end.i523
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tx_timestamp.exit.i

if.then.i.i524:                                   ; preds = %if.end.i523
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @skb_tstamp_tx(ptr noundef nonnull %call.i, ptr noundef null) #12
  br label %skb_tx_timestamp.exit.i

skb_tx_timestamp.exit.i:                          ; preds = %if.then.i.i524, %if.end.i523.skb_tx_timestamp.exit.i_crit_edge
  %480 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %481, i32 0, i32 2
  %482 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %nr_frags.i.i, align 2
  %conv.i.i525 = zext i8 %483 to i32
  %mul.i.i6.i = mul nuw nsw i32 %conv.i.i525, 3
  %div4.i.i.i = lshr i32 %mul.i.i6.i, 1
  %and.i.i.i526 = and i32 %conv.i.i525, 1
  %add.i.i.i527 = or i32 %and.i.i.i526, 2
  %add1.i.i.i528 = add nuw nsw i32 %add.i.i.i527, %div4.i.i.i
  %add4.i.i = add nuw nsw i32 %add1.i.i.i528, 4
  %sub6.i.i = add nuw nsw i32 %add1.i.i.i528, 5
  %div7149.i.i = lshr i32 %sub6.i.i, 1
  %sub9.i.i = add nuw nsw i32 %add1.i.i.i528, 11
  %div10150.i.i = lshr i32 %sub9.i.i, 3
  %484 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %size.i.i, align 4
  %486 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %arrayidx24, align 4
  %488 = xor i32 %487, -1
  %sub1.i.i.i530 = add i32 %485, %488
  %sub13.i.i = sub i32 %sub1.i.i.i530, %div10150.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13.i.i)
  %cmp.i.i531 = icmp slt i32 %sub13.i.i, 0
  br i1 %cmp.i.i531, label %if.then.i7.i, label %if.end.i.i536, !prof !132

if.then.i7.i:                                     ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %489 = ptrtoint ptr %txq.i178.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %txq.i178.i, align 4
  %state.i.i.i.i533 = getelementptr inbounds %struct.netdev_queue, ptr %490, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i.i533) #12
  %491 = ptrtoint ptr %stops.i180.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %stops.i180.i, align 4
  %inc.i.i.i535 = add i32 %492, 1
  store i32 %inc.i.i.i535, ptr %stops.i180.i, align 4
  br label %out.i558

if.end.i.i536:                                    ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub13.i.i)
  %cmp16.i.i = icmp ult i32 %sub13.i.i, 5
  br i1 %cmp16.i.i, label %if.then24.i.i, label %if.end.i.i536.if.end25.i.i_crit_edge, !prof !132

if.end.i.i536.if.end25.i.i_crit_edge:             ; preds = %if.end.i.i536
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i.i

if.then24.i.i:                                    ; preds = %if.end.i.i536
  call void @__sanitizer_cov_trace_pc() #14
  %493 = ptrtoint ptr %txq.i178.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %txq.i178.i, align 4
  %state.i.i152.i.i = getelementptr inbounds %struct.netdev_queue, ptr %494, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i152.i.i) #12
  %495 = ptrtoint ptr %stops.i180.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %stops.i180.i, align 4
  %inc.i154.i.i = add i32 %496, 1
  store i32 %inc.i154.i.i, ptr %stops.i180.i, align 4
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then24.i.i, %if.end.i.i536.if.end25.i.i_crit_edge
  %wr_mid.0.i.i537 = phi i32 [ -1073741824, %if.then24.i.i ], [ 0, %if.end.i.i536.if.end25.i.i_crit_edge ]
  %497 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %pidx.i, align 16
  %add27.i.i = add nsw i32 %div10150.i.i, -1
  %sub28.i.i = add i32 %add27.i.i, %498
  %499 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub28.i.i, i32 %500)
  %cmp30.not.i.i = icmp ult i32 %sub28.i.i, %500
  %sub35.i.i = select i1 %cmp30.not.i.i, i32 0, i32 %500
  %spec.select.i.i539 = sub i32 %sub28.i.i, %sub35.i.i
  %501 = ptrtoint ptr %sdesc.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %sdesc.i.i, align 4
  %503 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %adap20, align 8
  %pdev_dev.i.i541 = getelementptr inbounds %struct.adapter, ptr %504, i32 0, i32 4
  %505 = ptrtoint ptr %pdev_dev.i.i541 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %pdev_dev.i.i541, align 16
  %addr.i.i542 = getelementptr %struct.tx_sw_desc, ptr %502, i32 %spec.select.i.i539, i32 1
  %call38.i.i = tail call i32 @cxgb4_map_skb(ptr noundef %506, ptr noundef nonnull %call.i, ptr noundef %addr.i.i542) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %cmp39.i.i = icmp slt i32 %call38.i.i, 0
  br i1 %cmp39.i.i, label %if.then47.i.i, label %if.end50.i.i, !prof !132

if.then47.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %507 = call ptr @memset(ptr %addr.i.i542, i32 0, i32 72)
  %mapping_err.i.i543 = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add23, i32 9
  %508 = ptrtoint ptr %mapping_err.i.i543 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %mapping_err.i.i543, align 8
  %inc.i.i544 = add i32 %509, 1
  store i32 %inc.i.i544, ptr %mapping_err.i.i543, align 8
  br label %out.i558

if.end50.i.i:                                     ; preds = %if.end25.i.i
  %arrayidx.i.i545 = getelementptr %struct.tx_sw_desc, ptr %502, i32 %spec.select.i.i539
  %510 = ptrtoint ptr %transport_header.i.i.i517 to i32
  call void @__asan_load2_noabort(i32 %510)
  %511 = load i16, ptr %transport_header.i.i.i517, align 2
  %conv.i.i9.i = zext i16 %511 to i32
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %512 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %512)
  %513 = load i16, ptr %network_header.i.i.i, align 4
  %conv1.i.i.i = zext i16 %513 to i32
  %sub.i.i.i546 = sub nsw i32 %conv.i.i9.i, %conv1.i.i.i
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %514 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %514)
  %515 = load i16, ptr %mac_header.i.i.i, align 2
  %conv1.i157.i.i = zext i16 %515 to i32
  %516 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %desc.i, align 32
  %518 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %pidx.i, align 16
  %arrayidx56.i.i = getelementptr %struct.tx_desc, ptr %517, i32 %519
  %add.ptr.i.i548 = getelementptr i64, ptr %arrayidx56.i.i, i32 %add4.i.i
  %520 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 134217744, ptr %arrayidx56.i.i, align 8
  %or59.i.i = or i32 %wr_mid.0.i.i537, %div7149.i.i
  %equiq_to_len16.i.i = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, ptr %arrayidx56.i.i, i32 0, i32 1
  %521 = ptrtoint ptr %equiq_to_len16.i.i to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 %or59.i.i, ptr %equiq_to_len16.i.i, align 4
  %r3.i.i = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, ptr %arrayidx56.i.i, i32 0, i32 2
  %522 = ptrtoint ptr %r3.i.i to i32
  call void @__asan_store8_noabort(i32 %522)
  store i64 0, ptr %r3.i.i, align 8
  %add.ptr60.i.i = getelementptr %struct.fw_eth_tx_pkt_wr, ptr %arrayidx56.i.i, i32 1
  %tx_chan.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 23
  %523 = ptrtoint ptr %tx_chan.i.i to i32
  call void @__asan_load1_noabort(i32 %523)
  %524 = load i8, ptr %tx_chan.i.i, align 2
  %conv61.i.i = zext i8 %524 to i32
  %shl62.i.i = shl nuw nsw i32 %conv61.i.i, 16
  %525 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %adap20, align 8
  %pf.i.i = getelementptr inbounds %struct.adapter, ptr %526, i32 0, i32 7
  %527 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %pf.i.i, align 4
  %shl65.i.i549 = shl i32 %528, 8
  %or63.i.i = or i32 %shl62.i.i, %shl65.i.i549
  %or66.i.i550 = or i32 %or63.i.i, 234881024
  %529 = ptrtoint ptr %add.ptr60.i.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %or66.i.i550, ptr %add.ptr60.i.i, align 8
  %pack.i.i = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %add.ptr60.i.i, i32 0, i32 1
  %530 = ptrtoint ptr %pack.i.i to i32
  call void @__asan_store2_noabort(i32 %530)
  store i16 0, ptr %pack.i.i, align 4
  %ip_family.i.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 26
  %531 = ptrtoint ptr %ip_family.i.i to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %ip_family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %532)
  %cmp68.i.i = icmp eq i8 %532, 2
  %533 = select i1 %cmp68.i.i, i64 8796093022208, i64 10995116277760
  %sub.i158.i.i = add nsw i32 %conv1.i.i.i, -14
  %sub72.i.i = sub nsw i32 %sub.i158.i.i, %conv1.i157.i.i
  %conv73.i.i = zext i32 %sub72.i.i to i64
  %shl74.i.i = shl nuw i64 %conv73.i.i, 32
  %conv75.i.i = zext i32 %sub.i.i.i546 to i64
  %shl76.i.i = shl nuw nsw i64 %conv75.i.i, 20
  %or77.i.i = or i64 %shl74.i.i, %shl76.i.i
  %or78.i.i = or i64 %or77.i.i, %533
  %ctrl1.i.i = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %add.ptr60.i.i, i32 0, i32 3
  %534 = ptrtoint ptr %ctrl1.i.i to i32
  call void @__asan_store8_noabort(i32 %534)
  store i64 %or78.i.i, ptr %ctrl1.i.i, align 8
  %535 = ptrtoint ptr %len.i521 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %len.i521, align 4
  %conv79.i.i = trunc i32 %536 to i16
  %len80.i.i = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %add.ptr60.i.i, i32 0, i32 2
  %537 = ptrtoint ptr %len80.i.i to i32
  call void @__asan_store2_noabort(i32 %537)
  store i16 %conv79.i.i, ptr %len80.i.i, align 2
  %add.ptr81.i.i551 = getelementptr %struct.cpl_tx_pkt_core, ptr %add.ptr60.i.i, i32 1
  tail call void @cxgb4_write_sgl(ptr noundef nonnull %call.i, ptr noundef %arrayidx24, ptr noundef %add.ptr81.i.i551, ptr noundef %add.ptr.i.i548, i32 noundef 0, ptr noundef %addr.i.i542) #12
  %538 = ptrtoint ptr %arrayidx.i.i545 to i32
  call void @__asan_store4_noabort(i32 %538)
  store ptr %call.i, ptr %arrayidx.i.i545, align 4
  %539 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %arrayidx24, align 4
  %add.i159.i.i = add i32 %540, %div10150.i.i
  store i32 %add.i159.i.i, ptr %arrayidx24, align 4
  %541 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %pidx.i, align 4
  %add1.i160.i.i = add i32 %542, %div10150.i.i
  store i32 %add1.i160.i.i, ptr %pidx.i, align 4
  %543 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i160.i.i, i32 %544)
  %cmp.not.i.i.i552 = icmp ult i32 %add1.i160.i.i, %544
  br i1 %cmp.not.i.i.i552, label %if.end50.i.i.if.end7.i557_crit_edge, label %if.then.i.i.i553

if.end50.i.i.if.end7.i557_crit_edge:              ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i557

if.then.i.i.i553:                                 ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i162.i.i = sub i32 %add1.i160.i.i, %544
  %545 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store4_noabort(i32 %545)
  store i32 %sub.i162.i.i, ptr %pidx.i, align 4
  br label %if.end7.i557

if.end7.i557:                                     ; preds = %if.then.i.i.i553, %if.end50.i.i.if.end7.i557_crit_edge
  %546 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %adap20, align 8
  tail call void @cxgb4_ring_tx_db(ptr noundef %547, ptr noundef %arrayidx24, i32 noundef %div10150.i.i) #12
  %seq.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i519, i32 0, i32 2
  %548 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %seq.i, align 4
  %.neg590 = add i32 %474, %sub.ptr.rhs.cast.i.i
  %550 = add i32 %sub.ptr.lhs.cast.i.i520, %mul.i.i.i
  %sub.i554 = sub i32 %.neg590, %550
  %add8.i = add i32 %sub.i554, %549
  %551 = ptrtoint ptr %prev_seq to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 %add8.i, ptr %prev_seq, align 8
  %552 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %adap20, align 8
  %ktls_tx_fallback.i = getelementptr inbounds %struct.adapter, ptr %553, i32 0, i32 74, i32 8
  %call.i.i.i556 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_fallback.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_fallback.i) #12
  br label %cleanup245

out.i558:                                         ; preds = %if.then47.i.i, %if.then.i7.i
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #12
  br label %cleanup245

if.end197:                                        ; preds = %if.then.i255.i.i, %if.end128.i.i.if.end197_crit_edge
  tail call void @cxgb4_ring_tx_db(ptr noundef %148, ptr noundef %arrayidx24, i32 noundef %div21.i.i.i) #12
  %ktls_tx_send_records.i.i = getelementptr inbounds %struct.adapter, ptr %148, i32 0, i32 74, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_send_records.i.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_send_records.i.i) #12
  %554 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %end_seq, align 4
  %556 = ptrtoint ptr %prev_seq to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 %555, ptr %prev_seq, align 8
  %sub164 = sub i32 %data_len.0, %sub60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub164)
  %cmp198 = icmp slt i32 %sub164, 0
  br i1 %cmp198, label %do.end215, label %if.end197.do.cond229_crit_edge, !prof !132

if.end197.do.cond229_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond229

do.end215:                                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2092, i32 noundef 9, ptr noundef null) #12
  br label %do.end232

do.cond229:                                       ; preds = %if.end197.do.cond229_crit_edge, %if.end139
  %skb_offset.2 = phi i32 [ %add142, %if.end139 ], [ %add159, %if.end197.do.cond229_crit_edge ]
  %data_len.2 = phi i32 [ %sub140, %if.end139 ], [ %sub164, %if.end197.do.cond229_crit_edge ]
  %tcp_seq.2 = phi i32 [ %128, %if.end139 ], [ %47, %if.end197.do.cond229_crit_edge ]
  %cmp230 = icmp sgt i32 %data_len.2, 0
  br i1 %cmp230, label %do.cond229.do.body43_crit_edge, label %do.cond229.do.end232_crit_edge

do.cond229.do.end232_crit_edge:                   ; preds = %do.cond229
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end232

do.cond229.do.body43_crit_edge:                   ; preds = %do.cond229
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43

do.end232:                                        ; preds = %do.cond229.do.end232_crit_edge, %do.end215, %if.end197.thread
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #12
  %ktls_tx_encrypted_packets = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats, i32 0, i32 %idxprom, i32 3
  %call.i.i394 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_encrypted_packets, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_encrypted_packets) #12
  %conv235 = zext i32 %sub to i64
  %ktls_tx_encrypted_bytes = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats, i32 0, i32 %idxprom, i32 4
  %call.i.i395 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_encrypted_bytes, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef %conv235, ptr noundef %ktls_tx_encrypted_bytes) #12
  %557 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %557)
  %bf.load237 = load i16, ptr %doff.i.i, align 4
  %bf.clear238 = and i16 %bf.load237, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear238)
  %tobool239.not = icmp eq i16 %bf.clear238, 0
  br i1 %tobool239.not, label %do.end232.cleanup245_crit_edge, label %if.then240

do.end232.cleanup245_crit_edge:                   ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup245

if.then240:                                       ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #14
  %tx_chan241 = getelementptr inbounds %struct.chcr_ktls_info, ptr %27, i32 0, i32 23
  %558 = ptrtoint ptr %tx_chan241 to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %tx_chan241, align 2
  %conv242 = zext i8 %559 to i32
  %call243 = tail call fastcc i32 @chcr_ktls_write_tcp_options(ptr noundef nonnull %27, ptr noundef %skb, ptr noundef %arrayidx24, i32 noundef %conv242)
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %cleanup245

out:                                              ; preds = %if.end136, %cleanup, %if.then56, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %cleanup245

cleanup245:                                       ; preds = %out, %if.then240, %do.end232.cleanup245_crit_edge, %out.i558, %if.end7.i557, %if.then194.cleanup245_crit_edge, %if.end191.cleanup245_crit_edge, %if.then29.cleanup245_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 16, %if.then29.cleanup245_crit_edge ], [ 0, %if.end191.cleanup245_crit_edge ], [ 0, %if.then240 ], [ 0, %do.end232.cleanup245_crit_edge ], [ 0, %if.then194.cleanup245_crit_edge ], [ 0, %if.end7.i557 ], [ 0, %out.i558 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ktls_cpl_act_open_rpl(ptr noundef %adap, ptr nocapture noundef readonly %input) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 4
  %and = and i32 %1, 16777215
  %atid_status = getelementptr inbounds %struct.cpl_act_open_rpl, ptr %input, i32 0, i32 1
  %2 = ptrtoint ptr %atid_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %atid_status, align 4
  %and1 = and i32 %3, 255
  %shr3 = lshr i32 %3, 8
  %and6 = and i32 %shr3, 16383
  %tids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48
  %natids.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 10
  %4 = ptrtoint ptr %natids.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %natids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and6)
  %cmp.i = icmp ugt i32 %5, %and6
  br i1 %cmp.i, label %lookup_atid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lookup_atid.exit:                                 ; preds = %entry
  %atid_tab.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 9
  %6 = ptrtoint ptr %atid_tab.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %atid_tab.i, align 4
  %arrayidx.i = getelementptr %union.aopen_entry, ptr %7, i32 %and6
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %lookup_atid.exit.do.end_crit_edge, label %lor.lhs.false

lookup_atid.exit.do.end_crit_edge:                ; preds = %lookup_atid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %lookup_atid.exit
  %atid7 = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %atid7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %atid7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and6)
  %cmp.not = icmp eq i32 %11, %and6
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %lookup_atid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @cxgb4_free_atid(ptr noundef %tids, i32 noundef %and6) #12
  %12 = ptrtoint ptr %atid7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %atid7, align 4
  %lock = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %pending_close = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 29
  %13 = ptrtoint ptr %pending_close to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pending_close, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp eq i8 %14, 0
  br i1 %tobool10.not, label %if.end19, label %if.then11

if.then11:                                        ; preds = %if.end
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool13.not = icmp eq i32 %and1, 0
  br i1 %tobool13.not, label %if.then14, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %adap15 = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 3
  %15 = ptrtoint ptr %adap15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap15, align 8
  %tids16 = getelementptr inbounds %struct.adapter, ptr %16, i32 0, i32 48
  %tx_chan = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 23
  %17 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_chan, align 2
  %conv = zext i8 %18 to i32
  %ip_family = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 26
  %19 = ptrtoint ptr %ip_family to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ip_family, align 1
  %conv17 = zext i8 %20 to i16
  tail call void @cxgb4_remove_tid(ptr noundef %tids16, i32 noundef %conv, i32 noundef %and, i16 noundef zeroext %conv17) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.then11.if.end18_crit_edge
  tail call void @kvfree(ptr noundef nonnull %9) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool20.not = icmp eq i32 %and1, 0
  br i1 %tobool20.not, label %if.then21, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then21:                                        ; preds = %if.end19
  %tid22 = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 9
  %21 = ptrtoint ptr %tid22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %tid22, align 8
  %ip_family24 = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 26
  %22 = ptrtoint ptr %ip_family24 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ip_family24, align 1
  %24 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tids, align 128
  %tid_base.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 1
  %26 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %27
  %arrayidx.i87 = getelementptr ptr, ptr %25, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %9, ptr %arrayidx.i87, align 4
  %hash_base.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 8
  %29 = ptrtoint ptr %hash_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hash_base.i, align 32
  %31 = add i32 %30, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %and)
  %.not.i = icmp ult i32 %31, %and
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %23)
  %cmp2.i = icmp eq i8 %23, 10
  br i1 %.not.i, label %if.then.i, label %if.else6.i

if.then.i:                                        ; preds = %if.then21
  %hash_tids_in_use.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 37
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hash_tids_in_use.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %hash_tids_in_use.i, i32 1, i32 3, i32 1) #12
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hash_tids_in_use.i, ptr %hash_tids_in_use.i, i32 2, ptr elementtype(i32) %hash_tids_in_use.i) #12, !srcloc !140
  br label %cxgb4_insert_tid.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hash_tids_in_use.i, ptr %hash_tids_in_use.i, i32 1, ptr elementtype(i32) %hash_tids_in_use.i) #12, !srcloc !140
  br label %cxgb4_insert_tid.exit

if.else6.i:                                       ; preds = %if.then21
  %tids_in_use.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 36
  %call.i.i26.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tids_in_use.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %tids_in_use.i, i32 1, i32 3, i32 1) #12
  br i1 %cmp2.i, label %if.then10.i, label %if.else11.i

if.then10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tids_in_use.i, ptr %tids_in_use.i, i32 2, ptr elementtype(i32) %tids_in_use.i) #12, !srcloc !140
  br label %cxgb4_insert_tid.exit

if.else11.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tids_in_use.i, ptr %tids_in_use.i, i32 1, ptr elementtype(i32) %tids_in_use.i) #12, !srcloc !140
  br label %cxgb4_insert_tid.exit

cxgb4_insert_tid.exit:                            ; preds = %if.else11.i, %if.then10.i, %if.else.i, %if.then4.i
  %conns_in_use.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 38
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conns_in_use.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %conns_in_use.i, i32 1, i32 3, i32 1) #12
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conns_in_use.i, ptr %conns_in_use.i, i32 1, ptr elementtype(i32) %conns_in_use.i) #12, !srcloc !140
  %uld = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 37
  %37 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %uld, align 4
  %handle = getelementptr %struct.cxgb4_uld_info, ptr %38, i32 7, i32 1
  %39 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %handle, align 4
  %tobool28.not = icmp eq ptr %40, null
  br i1 %tobool28.not, label %cxgb4_insert_tid.exit.out_crit_edge, label %if.then29

cxgb4_insert_tid.exit.out_crit_edge:              ; preds = %cxgb4_insert_tid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then29:                                        ; preds = %cxgb4_insert_tid.exit
  %41 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %9, align 8
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %42, i32 0, i32 13
  %43 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i.i = getelementptr inbounds %struct.tls_context, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %priv_ctx_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv_ctx_tx.i.i, align 4
  %tid_list = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %40, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tid_list) #12
  %call.i = tail call i32 @__xa_insert(ptr noundef %tid_list, i32 noundef %and, ptr noundef %46, i32 noundef 2048) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %tid_list) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31 = icmp slt i32 %call.i, 0
  br i1 %cmp31, label %do.end36, label %if.then29.out_crit_edge

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end36:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %tid22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tid22, align 8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %48) #15
  br label %out

out:                                              ; preds = %do.end36, %if.then29.out_crit_edge, %cxgb4_insert_tid.exit.out_crit_edge, %if.end19.out_crit_edge
  %.sink = phi i32 [ 2, %do.end36 ], [ 0, %if.then29.out_crit_edge ], [ 0, %cxgb4_insert_tid.exit.out_crit_edge ], [ 2, %if.end19.out_crit_edge ]
  %ret.1 = phi i32 [ %call.i, %do.end36 ], [ %call.i, %if.then29.out_crit_edge ], [ 0, %cxgb4_insert_tid.exit.out_crit_edge ], [ 0, %if.end19.out_crit_edge ]
  %open_state42 = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 28
  %49 = ptrtoint ptr %open_state42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink, ptr %open_state42, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %completion = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 6
  tail call void @complete(ptr noundef %completion) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end18, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end18 ], [ %ret.1, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ktls_cpl_set_tcb_rpl(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %input) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 8
  %and = and i32 %1, 16777215
  %tid_base.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 1
  %2 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %3
  %ntids.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 2
  %4 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp.i = icmp ult i32 %sub.i, %5
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %tids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48
  %6 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tids, align 128
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %lor.lhs.false

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %lookup_tid.exit
  %tid1 = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %tid1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tid1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and)
  %cmp.not = icmp eq i32 %11, %and
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %pending_close = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 29
  %12 = ptrtoint ptr %pending_close to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pending_close, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @kvfree(ptr noundef nonnull %9) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %open_state = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 28
  %14 = ptrtoint ptr %open_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %open_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %completion = getelementptr inbounds %struct.chcr_ktls_info, ptr %9, i32 0, i32 6
  tail call void @complete(ptr noundef %completion) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.then4 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_free_atid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_remove_tid(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_l2t_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_clip_release(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_reclaim_completed_tx(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chcr_ktls_write_tcp_options(ptr nocapture noundef readonly %tx_info, ptr nocapture noundef readonly %skb, ptr noundef %q, i32 noundef %tx_chan) unnamed_addr #4 align 64 {
entry:
  %buf = alloca [150 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %buf) #12
  %0 = call ptr @memset(ptr %buf, i32 255, i32 150)
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %1 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %2 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %4 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %5 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mac_header.i, align 2
  %conv1.i131 = zext i16 %6 to i32
  %sub.i132 = sub nsw i32 %conv1.i, %conv1.i131
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %12 = lshr i16 %bf.load.i.i, 10
  %13 = and i16 %12, 60
  %mul.i.i = zext i16 %13 to i32
  %add = add i32 %sub.ptr.sub.i, %mul.i.i
  %add4 = add i32 %add, 16
  %sub = add i32 %add, 47
  %div127 = lshr i32 %sub, 4
  %sub8 = add nuw nsw i32 %div127, 3
  %div9128 = lshr i32 %sub8, 2
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %16 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q, align 4
  %18 = xor i32 %17, -1
  %sub1.i = add i32 %15, %18
  %sub12 = sub i32 %sub1.i, %div9128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12)
  %cmp = icmp slt i32 %sub12, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !132

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %txq.i = getelementptr inbounds %struct.sge_eth_txq, ptr %q, i32 0, i32 1
  %19 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %txq.i, align 4
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %stops.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 5
  %21 = ptrtoint ptr %stops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stops.i, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %stops.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub12)
  %cmp14 = icmp ult i32 %sub12, 5
  br i1 %cmp14, label %if.then21, label %if.end.if.end22_crit_edge, !prof !132

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %txq.i133 = getelementptr inbounds %struct.sge_eth_txq, ptr %q, i32 0, i32 1
  %23 = ptrtoint ptr %txq.i133 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %txq.i133, align 4
  %state.i.i134 = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i134) #12
  %stops.i135 = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 5
  %25 = ptrtoint ptr %stops.i135 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stops.i135, align 4
  %inc.i136 = add i32 %26, 1
  store i32 %inc.i136, ptr %stops.i135, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge
  %wr_mid.0 = phi i32 [ -1073741824, %if.then21 ], [ 0, %if.end.if.end22_crit_edge ]
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %27 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc, align 32
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 4
  %29 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pidx, align 16
  %arrayidx = getelementptr %struct.tx_desc, ptr %28, i32 %30
  %or25 = or i32 %add4, 134217728
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or25, ptr %arrayidx, align 8
  %or27 = or i32 %wr_mid.0, %div127
  %equiq_to_len16 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, ptr %arrayidx, i32 0, i32 1
  %32 = ptrtoint ptr %equiq_to_len16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or27, ptr %equiq_to_len16, align 4
  %r3 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, ptr %arrayidx, i32 0, i32 2
  %33 = ptrtoint ptr %r3 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %r3, align 8
  %add.ptr = getelementptr %struct.fw_eth_tx_pkt_wr, ptr %arrayidx, i32 1
  %shl28 = shl i32 %tx_chan, 16
  %adap = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 3
  %34 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adap, align 8
  %pf = getelementptr inbounds %struct.adapter, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pf, align 4
  %shl30 = shl i32 %37, 8
  %or29 = or i32 %shl28, %shl30
  %or31 = or i32 %or29, 234881024
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or31, ptr %add.ptr, align 8
  %pack = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %add.ptr, i32 0, i32 1
  %39 = ptrtoint ptr %pack to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %pack, align 4
  %conv = trunc i32 %add to i16
  %len = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %add.ptr, i32 0, i32 2
  %40 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv, ptr %len, align 2
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %43 = call ptr @memcpy(ptr %buf, ptr %42, i32 %add)
  %ip_family = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 26
  %44 = ptrtoint ptr %ip_family to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ip_family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp33 = icmp eq i8 %45, 2
  %add.ptr37 = getelementptr i8, ptr %buf, i32 %sub.i132
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %sub38 = sub i32 %add, %sub.i132
  %conv39 = trunc i32 %sub38 to i16
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr37, i32 0, i32 2
  %46 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv39, ptr %tot_len, align 2
  br label %if.end45

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %47 = add nsw i32 %sub.i132, %sub.i
  %sub43 = sub i32 %add, %47
  %conv44 = trunc i32 %sub43 to i16
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr37, i32 0, i32 2
  %48 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv44, ptr %payload_len, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then35
  %cntrl1.0 = phi i64 [ 8796093022208, %if.then35 ], [ 10995116277760, %if.else ]
  %sub46 = add nsw i32 %sub.i132, -14
  %conv47 = zext i32 %sub46 to i64
  %shl48 = shl nuw i64 %conv47, 32
  %conv49 = zext i32 %sub.i to i64
  %shl50 = shl nuw nsw i64 %conv49, 20
  %or51 = or i64 %shl48, %shl50
  %or52 = or i64 %or51, %cntrl1.0
  %ctrl1 = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %add.ptr, i32 0, i32 3
  %49 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %or52, ptr %ctrl1, align 8
  %add.ptr53 = getelementptr %struct.cpl_tx_pkt_core, ptr %add.ptr, i32 1
  %add.ptr55 = getelementptr i8, ptr %buf, i32 %sub.i132
  %add.ptr56 = getelementptr i8, ptr %add.ptr55, i32 %sub.i
  %fin = getelementptr inbounds %struct.tcphdr, ptr %add.ptr56, i32 0, i32 4
  %50 = ptrtoint ptr %fin to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load = load i16, ptr %fin, align 4
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %tobool57.not = icmp eq i16 %bf.clear, 0
  br i1 %tobool57.not, label %if.then58, label %if.else61

if.then58:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear60 = and i16 %bf.load, -9
  %51 = ptrtoint ptr %fin to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %bf.clear60, ptr %fin, align 4
  br label %if.end62

if.else61:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %prev_seq = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 13
  %52 = ptrtoint ptr %prev_seq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %prev_seq, align 8
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr56, i32 0, i32 2
  %54 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %seq, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then58
  %stat.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %55 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %stat.i, align 4
  %sub.ptr.lhs.cast.i137 = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i138 = ptrtoint ptr %add.ptr53 to i32
  %sub.ptr.sub.i139 = sub i32 %sub.ptr.lhs.cast.i137, %sub.ptr.rhs.cast.i138
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.ptr.sub.i139)
  %cmp.not.i = icmp sgt i32 %add, %sub.ptr.sub.i139
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i, !prof !132

if.then.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %57 = call ptr @memcpy(ptr %add.ptr53, ptr %buf, i32 %add)
  %add.ptr.i = getelementptr i8, ptr %add.ptr53, i32 %add
  br label %if.end.i

if.else.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %58 = call ptr @memcpy(ptr %add.ptr53, ptr %buf, i32 %sub.ptr.sub.i139)
  %59 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %desc, align 4
  %add.ptr2.i = getelementptr i8, ptr %buf, i32 %sub.ptr.sub.i139
  %sub.i140 = sub i32 %add, %sub.ptr.sub.i139
  %61 = call ptr @memcpy(ptr %60, ptr %add.ptr2.i, i32 %sub.i140)
  %62 = load ptr, ptr %desc, align 4
  %add.ptr5.i = getelementptr i8, ptr %62, i32 %sub.i140
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %pos.addr.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr5.i, %if.else.i ]
  %63 = ptrtoint ptr %pos.addr.0.i to i32
  %add.i = add i32 %63, 7
  %and6.i = and i32 %add.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.chcr_copy_to_txd.exit_crit_edge, label %if.then8.i

if.end.i.chcr_copy_to_txd.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_copy_to_txd.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i = and i32 %add.i, -8
  %64 = inttoptr i32 %and.i to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 0, ptr %64, align 8
  br label %chcr_copy_to_txd.exit

chcr_copy_to_txd.exit:                            ; preds = %if.then8.i, %if.end.i.chcr_copy_to_txd.exit_crit_edge
  %66 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %q, align 4
  %add.i141 = add i32 %67, %div9128
  store i32 %add.i141, ptr %q, align 4
  %68 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pidx, align 4
  %add1.i = add i32 %69, %div9128
  store i32 %add1.i, ptr %pidx, align 4
  %70 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %71)
  %cmp.not.i143 = icmp ult i32 %add1.i, %71
  br i1 %cmp.not.i143, label %chcr_copy_to_txd.exit.chcr_txq_advance.exit_crit_edge, label %if.then.i145

chcr_copy_to_txd.exit.chcr_txq_advance.exit_crit_edge: ; preds = %chcr_copy_to_txd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_txq_advance.exit

if.then.i145:                                     ; preds = %chcr_copy_to_txd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i144 = sub i32 %add1.i, %71
  %72 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub.i144, ptr %pidx, align 4
  br label %chcr_txq_advance.exit

chcr_txq_advance.exit:                            ; preds = %if.then.i145, %chcr_copy_to_txd.exit.chcr_txq_advance.exit_crit_edge
  %73 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adap, align 8
  tail call void @cxgb4_ring_tx_db(ptr noundef %74, ptr noundef %q, i32 noundef %div9128) #12
  br label %cleanup

cleanup:                                          ; preds = %chcr_txq_advance.exit, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %chcr_txq_advance.exit ]
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tls_get_record(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_get(ptr noundef %skb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %users = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !134
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !132

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !131

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #12
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chcr_ktls_tx_plaintxt(ptr nocapture noundef readonly %tx_info, ptr noundef %skb, i32 noundef %tcp_seq, i32 noundef %mss, i1 noundef zeroext %tcp_push, ptr noundef %q, i32 noundef %data_len, i32 noundef %skb_offset) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %entry.chcr_get_nfrags_to_send.exit_crit_edge, label %if.end.i

entry.chcr_get_nfrags_to_send.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_get_nfrags_to_send.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %skb_offset)
  %cmp.i = icmp ugt i32 %sub.i.i, %skb_offset
  br i1 %cmp.i, label %if.then4.i, label %if.else.i, !prof !132

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i32 %sub.i.i, %skb_offset
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end.i
  %sub6.i = sub i32 %skb_offset, %sub.i.i
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12
  %bv_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 0, i32 1
  %6 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %frag_size.084.i = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %frag_size.084.i)
  %cmp8.not85.i = icmp ult i32 %sub6.i, %frag_size.084.i
  br i1 %cmp8.not85.i, label %if.else.i.while.end.i_crit_edge, label %if.else.i.while.body.i_crit_edge

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  br label %while.body.i

if.else.i.while.end.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.i.while.body.i_crit_edge
  %frag_size.088.i = phi i32 [ %frag_size.0.i, %while.body.i.while.body.i_crit_edge ], [ %frag_size.084.i, %if.else.i.while.body.i_crit_edge ]
  %start.addr.087.i = phi i32 [ %sub9.i, %while.body.i.while.body.i_crit_edge ], [ %sub6.i, %if.else.i.while.body.i_crit_edge ]
  %frag_idx.086.i = phi i8 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.else.i.while.body.i_crit_edge ]
  %sub9.i = sub i32 %start.addr.087.i, %frag_size.088.i
  %inc.i = add i8 %frag_idx.086.i, 1
  %idxprom11.i = zext i8 %inc.i to i32
  %bv_len.i81.i = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 %idxprom11.i, i32 1
  %7 = ptrtoint ptr %bv_len.i81.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %frag_size.0.i = load i32, ptr %bv_len.i81.i, align 4
  %cmp8.not.i = icmp ult i32 %sub9.i, %frag_size.0.i
  br i1 %cmp8.not.i, label %while.cond.while.end_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx12.le.i = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 %idxprom11.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.else.i.while.end.i_crit_edge
  %frag_idx.0.lcssa.i = phi i8 [ %inc.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.else.i.while.end.i_crit_edge ]
  %frag.0.lcssa.i = phi ptr [ %arrayidx12.le.i, %while.cond.while.end_crit_edge.i ], [ %frags.i, %if.else.i.while.end.i_crit_edge ]
  %start.addr.0.lcssa.i = phi i32 [ %sub9.i, %while.cond.while.end_crit_edge.i ], [ %sub6.i, %if.else.i.while.end.i_crit_edge ]
  %bv_len.i82.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0.lcssa.i, i32 0, i32 1
  %8 = ptrtoint ptr %bv_len.i82.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i82.i, align 4
  %sub15.i = sub i32 %9, %start.addr.0.lcssa.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %while.end.i, %if.then4.i
  %sub15.sink.i = phi i32 [ %sub15.i, %while.end.i ], [ %sub.i, %if.then4.i ]
  %frag_idx.1.i = phi i8 [ %frag_idx.0.lcssa.i, %while.end.i ], [ 0, %if.then4.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.sink.i, i32 %data_len)
  %tobool26.not91.not.i = icmp ult i32 %sub15.sink.i, %data_len
  br i1 %tobool26.not91.not.i, label %while.body27.i.preheader, label %if.end22.i.chcr_get_nfrags_to_send.exit_crit_edge

if.end22.i.chcr_get_nfrags_to_send.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_get_nfrags_to_send.exit

while.body27.i.preheader:                         ; preds = %if.end22.i
  %10 = tail call i32 @llvm.usub.sat.i32(i32 %data_len, i32 %sub15.sink.i) #12
  br label %while.body27.i

while.body27.i:                                   ; preds = %while.body27.i.while.body27.i_crit_edge, %while.body27.i.preheader
  %len.addr.094.i = phi i32 [ %13, %while.body27.i.while.body27.i_crit_edge ], [ %10, %while.body27.i.preheader ]
  %frag_idx.293.i = phi i8 [ %inc40.i, %while.body27.i.while.body27.i_crit_edge ], [ %frag_idx.1.i, %while.body27.i.preheader ]
  %nfrags.092.i = phi i8 [ %inc39.i, %while.body27.i.while.body27.i_crit_edge ], [ 1, %while.body27.i.preheader ]
  %idxprom29.i = zext i8 %frag_idx.293.i to i32
  %bv_len.i83.i = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 %idxprom29.i, i32 1
  %11 = ptrtoint ptr %bv_len.i83.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bv_len.i83.i, align 4
  %13 = tail call i32 @llvm.usub.sat.i32(i32 %len.addr.094.i, i32 %12) #12
  %inc39.i = add i8 %nfrags.092.i, 1
  %inc40.i = add i8 %frag_idx.293.i, 1
  %tobool26.not.not.i = icmp ugt i32 %len.addr.094.i, %12
  br i1 %tobool26.not.not.i, label %while.body27.i.while.body27.i_crit_edge, label %while.end41.loopexit.i

while.body27.i.while.body27.i_crit_edge:          ; preds = %while.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body27.i

while.end41.loopexit.i:                           ; preds = %while.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.i = zext i8 %inc39.i to i32
  %phi.bo = add nsw i32 %phi.cast.i, -1
  br label %chcr_get_nfrags_to_send.exit

chcr_get_nfrags_to_send.exit:                     ; preds = %while.end41.loopexit.i, %if.end22.i.chcr_get_nfrags_to_send.exit_crit_edge, %entry.chcr_get_nfrags_to_send.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.chcr_get_nfrags_to_send.exit_crit_edge ], [ 0, %if.end22.i.chcr_get_nfrags_to_send.exit_crit_edge ], [ %phi.bo, %while.end41.loopexit.i ]
  %mul.i = mul nsw i32 %retval.0.i, 3
  %div4.i = lshr i32 %mul.i, 1
  %and.i = and i32 %retval.0.i, 1
  %add.i = or i32 %and.i, 2
  %add1.i = add nuw i32 %add.i, %div4.i
  %add = add i32 %add1.i, 6
  %sub = add i32 %add1.i, 7
  %div1 = lshr i32 %sub, 1
  %sub5 = add i32 %add1.i, 13
  %div62 = lshr i32 %sub5, 3
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %16 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q, align 4
  %18 = xor i32 %17, -1
  %sub1.i = add i32 %15, %18
  %sub9 = sub i32 %sub1.i, %div62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9)
  %cmp = icmp slt i32 %sub9, 0
  br i1 %cmp, label %if.then12, label %if.end13, !prof !132

if.then12:                                        ; preds = %chcr_get_nfrags_to_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  %txq.i = getelementptr inbounds %struct.sge_eth_txq, ptr %q, i32 0, i32 1
  %19 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %txq.i, align 4
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %stops.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 5
  %21 = ptrtoint ptr %stops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stops.i, align 4
  %inc.i4 = add i32 %22, 1
  store i32 %inc.i4, ptr %stops.i, align 4
  br label %cleanup

if.end13:                                         ; preds = %chcr_get_nfrags_to_send.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub9)
  %cmp14 = icmp ult i32 %sub9, 5
  br i1 %cmp14, label %if.then21, label %if.end13.if.end22_crit_edge, !prof !132

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %txq.i5 = getelementptr inbounds %struct.sge_eth_txq, ptr %q, i32 0, i32 1
  %23 = ptrtoint ptr %txq.i5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %txq.i5, align 4
  %state.i.i6 = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i6) #12
  %stops.i7 = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 5
  %25 = ptrtoint ptr %stops.i7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stops.i7, align 4
  %inc.i8 = add i32 %26, 1
  store i32 %inc.i8, ptr %stops.i7, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end13.if.end22_crit_edge
  %wr_mid.0 = phi i32 [ -1073741824, %if.then21 ], [ 0, %if.end13.if.end22_crit_edge ]
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 4
  %27 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pidx, align 16
  %add24 = add nsw i32 %div62, -1
  %sub25 = add i32 %add24, %28
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub25, i32 %30)
  %cmp27.not = icmp ult i32 %sub25, %30
  %sub31 = select i1 %cmp27.not, i32 0, i32 %30
  %spec.select = sub i32 %sub25, %sub31
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 9
  %31 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdesc, align 4
  %arrayidx = getelementptr %struct.tx_sw_desc, ptr %32, i32 %spec.select
  %adap = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 3
  %33 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adap, align 8
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev_dev, align 16
  %addr = getelementptr %struct.tx_sw_desc, ptr %32, i32 %spec.select, i32 1
  %call34 = tail call i32 @cxgb4_map_skb(ptr noundef %36, ptr noundef %skb, ptr noundef %addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then42, label %if.end45, !prof !132

if.then42:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %37 = call ptr @memset(ptr %addr, i32 0, i32 72)
  %mapping_err = getelementptr inbounds %struct.sge_eth_txq, ptr %q, i32 0, i32 9
  %38 = ptrtoint ptr %mapping_err to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mapping_err, align 8
  %inc = add i32 %39, 1
  store i32 %inc, ptr %mapping_err, align 8
  br label %cleanup

if.end45:                                         ; preds = %if.end22
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %40 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc, align 32
  %42 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pidx, align 16
  %arrayidx49 = getelementptr %struct.tx_desc, ptr %41, i32 %43
  %add.ptr = getelementptr i64, ptr %arrayidx49, i32 %add
  %44 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 67108864, ptr %arrayidx49, align 8
  %or50 = or i32 %wr_mid.0, %div1
  %flowid_len16 = getelementptr inbounds %struct.fw_ulptx_wr, ptr %arrayidx49, i32 0, i32 1
  %45 = ptrtoint ptr %flowid_len16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or50, ptr %flowid_len16, align 4
  %cookie = getelementptr inbounds %struct.fw_ulptx_wr, ptr %arrayidx49, i32 0, i32 2
  %46 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %cookie, align 8
  %add.ptr51 = getelementptr %struct.fw_ulptx_wr, ptr %arrayidx49, i32 1
  %port_id52 = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 25
  %47 = ptrtoint ptr %port_id52 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %port_id52, align 8
  %conv = zext i8 %48 to i32
  %shl53 = shl nuw nsw i32 %conv, 22
  %cntxt_id = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 7
  %49 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cntxt_id, align 4
  %shl57 = shl i32 %50, 4
  %or54 = or i32 %shl57, %shl53
  %or59 = or i32 %or54, 67108872
  %51 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or59, ptr %add.ptr51, align 4
  %sub60 = add nsw i32 %div1, -1
  %len = getelementptr inbounds %struct.ulp_txpkt, ptr %add.ptr51, i32 0, i32 1
  %52 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub60, ptr %len, align 4
  %add.ptr61 = getelementptr %struct.ulp_txpkt, ptr %add.ptr51, i32 1
  %53 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -2122317824, ptr %add.ptr61, align 4
  %len63 = getelementptr inbounds %struct.ulptx_idata, ptr %add.ptr61, i32 0, i32 1
  %54 = ptrtoint ptr %len63 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %len63, align 4
  %add.ptr64 = getelementptr %struct.ulptx_idata, ptr %add.ptr61, i32 1
  %tid = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 9
  %55 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tid, align 8
  %or65 = or i32 %56, 201326592
  %57 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or65, ptr %add.ptr64, align 4
  %shl66 = shl i32 %mss, 16
  %or69 = or i32 %shl66, %data_len
  %len70 = getelementptr inbounds %struct.cpl_tx_data, ptr %add.ptr64, i32 0, i32 1
  %58 = ptrtoint ptr %len70 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or69, ptr %len70, align 4
  %rsvd = getelementptr inbounds %struct.cpl_tx_data, ptr %add.ptr64, i32 0, i32 2
  %59 = ptrtoint ptr %rsvd to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %tcp_seq, ptr %rsvd, align 4
  %flags = getelementptr inbounds %struct.cpl_tx_data, ptr %add.ptr64, i32 0, i32 3
  %spec.select3 = select i1 %tcp_push, i32 6307840, i32 2097152
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.select3, ptr %flags, align 4
  %add.ptr76 = getelementptr %struct.cpl_tx_data, ptr %add.ptr64, i32 1
  %stat = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %61 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %stat, align 8
  %tobool83.not = icmp eq ptr %62, %add.ptr76
  br i1 %tobool83.not, label %if.then84, label %if.end45.if.end93_crit_edge

if.end45.if.end93_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then84:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr76 to i32
  %sub.ptr.lhs.cast87 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub89 = sub i32 %sub.ptr.lhs.cast87, %sub.ptr.lhs.cast
  %63 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %desc, align 32
  %add.ptr92 = getelementptr i8, ptr %64, i32 %sub.ptr.sub89
  br label %if.end93

if.end93:                                         ; preds = %if.then84, %if.end45.if.end93_crit_edge
  %pos.1 = phi ptr [ %add.ptr76, %if.end45.if.end93_crit_edge ], [ %64, %if.then84 ]
  %end.0 = phi ptr [ %add.ptr, %if.end45.if.end93_crit_edge ], [ %add.ptr92, %if.then84 ]
  tail call void @cxgb4_write_partial_sgl(ptr noundef %skb, ptr noundef %q, ptr noundef %pos.1, ptr noundef %end.0, ptr noundef %addr, i32 noundef %skb_offset, i32 noundef %data_len) #12
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %skb, ptr %arrayidx, align 4
  %66 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %q, align 4
  %add.i9 = add i32 %67, %div62
  store i32 %add.i9, ptr %q, align 4
  %68 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pidx, align 4
  %add1.i10 = add i32 %69, %div62
  store i32 %add1.i10, ptr %pidx, align 4
  %70 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i10, i32 %71)
  %cmp.not.i = icmp ult i32 %add1.i10, %71
  br i1 %cmp.not.i, label %if.end93.chcr_txq_advance.exit_crit_edge, label %if.then.i

if.end93.chcr_txq_advance.exit_crit_edge:         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_txq_advance.exit

if.then.i:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i12 = sub i32 %add1.i10, %71
  %72 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub.i12, ptr %pidx, align 4
  br label %chcr_txq_advance.exit

chcr_txq_advance.exit:                            ; preds = %if.then.i, %if.end93.chcr_txq_advance.exit_crit_edge
  %73 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adap, align 8
  tail call void @cxgb4_ring_tx_db(ptr noundef %74, ptr noundef %q, i32 noundef %div62) #12
  br label %cleanup

cleanup:                                          ; preds = %chcr_txq_advance.exit, %if.then42, %if.then12
  %retval.0 = phi i32 [ 16, %if.then12 ], [ 16, %if.then42 ], [ 0, %chcr_txq_advance.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_ring_tx_db(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @chcr_write_cpl_set_tcb_ulp(ptr nocapture noundef readonly %tx_info, ptr nocapture noundef readonly %q, i32 noundef %tid, ptr noundef %pos, i16 noundef zeroext %word, i64 noundef %mask, i64 noundef %val) unnamed_addr #8 align 64 {
entry:
  %buf = alloca [48 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stat, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %pos to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.ptr.sub)
  %cmp = icmp ult i32 %sub.ptr.sub, 40
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge, !prof !132

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %1, %pos
  br i1 %tobool3.not, label %if.then4, label %if.end.i

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 32
  br label %if.end9

if.end.i:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buf) #12
  %port_id.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 25
  %4 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_id.i, align 8
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 22
  %cntxt_id.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 7
  %6 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cntxt_id.i, align 4
  %shl2.i = shl i32 %7, 4
  %or.i = or i32 %shl.i, %shl2.i
  %or4.i = or i32 %or.i, 67108872
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or4.i, ptr %buf, align 4
  %len.i = getelementptr inbounds %struct.ulp_txpkt, ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %len.i, align 4
  %add.ptr.i = getelementptr inbounds %struct.ulp_txpkt, ptr %buf, i32 1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -2130706432, ptr %add.ptr.i, align 4
  %len5.i = getelementptr inbounds %struct.ulp_txpkt, ptr %buf, i32 1, i32 1
  %11 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 24, ptr %len5.i, align 4
  %add.ptr6.i = getelementptr inbounds %struct.ulp_txpkt, ptr %buf, i32 2
  %or7.i = or i32 %tid, 83886080
  %12 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or7.i, ptr %add.ptr6.i, align 8
  %rx_qid.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 11
  %13 = ptrtoint ptr %rx_qid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_qid.i, align 8
  %15 = trunc i32 %14 to i16
  %conv11.i = or i16 %15, -32768
  %reply_ctrl.i = getelementptr inbounds %struct.ulp_txpkt, ptr %buf, i32 2, i32 1
  %16 = ptrtoint ptr %reply_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv11.i, ptr %reply_ctrl.i, align 4
  %word_cookie.i = getelementptr inbounds %struct.cpl_set_tcb_field_core, ptr %add.ptr6.i, i32 0, i32 2
  %17 = ptrtoint ptr %word_cookie.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %word, ptr %word_cookie.i, align 2
  %mask15.i = getelementptr inbounds %struct.ulp_txpkt, ptr %buf, i32 3
  %18 = ptrtoint ptr %mask15.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %mask, ptr %mask15.i, align 8
  %val16.i = getelementptr inbounds %struct.ulp_txpkt, ptr %buf, i32 4
  %19 = ptrtoint ptr %val16.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %val, ptr %val16.i, align 8
  %add.ptr17.i = getelementptr inbounds %struct.ulp_txpkt, ptr %buf, i32 5
  %20 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -2147483648, ptr %add.ptr17.i, align 4
  %len19.i = getelementptr inbounds %struct.ulp_txpkt, ptr %buf, i32 5, i32 1
  %21 = ptrtoint ptr %len19.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %len19.i, align 4
  %22 = call ptr @memcpy(ptr %pos, ptr %buf, i32 %sub.ptr.sub)
  %desc.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %23 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %buf, i32 %sub.ptr.sub
  %sub.i = sub nuw nsw i32 40, %sub.ptr.sub
  %25 = call ptr @memcpy(ptr %24, ptr %add.ptr2.i, i32 %sub.i)
  %26 = load ptr, ptr %desc.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %26, i32 %sub.i
  %27 = ptrtoint ptr %add.ptr5.i to i32
  %add.i = add i32 %27, 7
  %and.i = and i32 %add.i, -8
  %28 = inttoptr i32 %and.i to ptr
  %and6.i = and i32 %add.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.chcr_copy_to_txd.exit_crit_edge, label %if.then8.i

if.end.i.chcr_copy_to_txd.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_copy_to_txd.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %28, align 8
  %add.ptr9.i = getelementptr i64, ptr %28, i32 1
  br label %chcr_copy_to_txd.exit

chcr_copy_to_txd.exit:                            ; preds = %if.then8.i, %if.end.i.chcr_copy_to_txd.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr9.i, %if.then8.i ], [ %28, %if.end.i.chcr_copy_to_txd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf) #12
  br label %cleanup

if.end9:                                          ; preds = %if.then4, %entry.if.end9_crit_edge
  %pos.addr.0 = phi ptr [ %3, %if.then4 ], [ %pos, %entry.if.end9_crit_edge ]
  %port_id.i2 = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 25
  %30 = ptrtoint ptr %port_id.i2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_id.i2, align 8
  %conv.i3 = zext i8 %31 to i32
  %shl.i4 = shl nuw nsw i32 %conv.i3, 22
  %cntxt_id.i5 = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 7
  %32 = ptrtoint ptr %cntxt_id.i5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cntxt_id.i5, align 4
  %shl2.i6 = shl i32 %33, 4
  %or.i7 = or i32 %shl.i4, %shl2.i6
  %or4.i8 = or i32 %or.i7, 67108872
  %34 = ptrtoint ptr %pos.addr.0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or4.i8, ptr %pos.addr.0, align 4
  %len.i9 = getelementptr inbounds %struct.ulp_txpkt, ptr %pos.addr.0, i32 0, i32 1
  %35 = ptrtoint ptr %len.i9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %len.i9, align 4
  %add.ptr.i10 = getelementptr %struct.ulp_txpkt, ptr %pos.addr.0, i32 1
  %36 = ptrtoint ptr %add.ptr.i10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -2130706432, ptr %add.ptr.i10, align 4
  %len5.i11 = getelementptr %struct.ulp_txpkt, ptr %pos.addr.0, i32 1, i32 1
  %37 = ptrtoint ptr %len5.i11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 24, ptr %len5.i11, align 4
  %add.ptr6.i12 = getelementptr %struct.ulp_txpkt, ptr %pos.addr.0, i32 2
  %or7.i13 = or i32 %tid, 83886080
  %38 = ptrtoint ptr %add.ptr6.i12 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or7.i13, ptr %add.ptr6.i12, align 8
  %rx_qid.i14 = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 11
  %39 = ptrtoint ptr %rx_qid.i14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_qid.i14, align 8
  %41 = trunc i32 %40 to i16
  %conv11.i15 = or i16 %41, -32768
  %reply_ctrl.i16 = getelementptr %struct.ulp_txpkt, ptr %pos.addr.0, i32 2, i32 1
  %42 = ptrtoint ptr %reply_ctrl.i16 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv11.i15, ptr %reply_ctrl.i16, align 4
  %word_cookie.i17 = getelementptr inbounds %struct.cpl_set_tcb_field_core, ptr %add.ptr6.i12, i32 0, i32 2
  %43 = ptrtoint ptr %word_cookie.i17 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %word, ptr %word_cookie.i17, align 2
  %mask15.i18 = getelementptr %struct.ulp_txpkt, ptr %pos.addr.0, i32 3
  %44 = ptrtoint ptr %mask15.i18 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %mask, ptr %mask15.i18, align 8
  %val16.i19 = getelementptr %struct.ulp_txpkt, ptr %pos.addr.0, i32 4
  %45 = ptrtoint ptr %val16.i19 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %val, ptr %val16.i19, align 8
  %add.ptr17.i20 = getelementptr %struct.ulp_txpkt, ptr %pos.addr.0, i32 5
  %46 = ptrtoint ptr %add.ptr17.i20 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -2147483648, ptr %add.ptr17.i20, align 4
  %len19.i21 = getelementptr %struct.ulp_txpkt, ptr %pos.addr.0, i32 5, i32 1
  %47 = ptrtoint ptr %len19.i21 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %len19.i21, align 4
  %add.ptr20.i22 = getelementptr %struct.ulp_txpkt, ptr %pos.addr.0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.ptr.sub)
  %cmp11 = icmp eq i32 %sub.ptr.sub, 40
  br i1 %cmp11, label %if.then12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %desc14 = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %48 = ptrtoint ptr %desc14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %desc14, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %chcr_copy_to_txd.exit
  %retval.0 = phi ptr [ %retval.0.i, %chcr_copy_to_txd.exit ], [ %49, %if.then12 ], [ %add.ptr20.i22, %if.end9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_map_skb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_write_partial_sgl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chcr_ktls_copy_record_in_skb(ptr nocapture noundef %nskb, ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %record) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_frags = getelementptr inbounds %struct.tls_record_info, ptr %record, i32 0, i32 3
  %0 = ptrtoint ptr %num_frags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp37 = icmp sgt i32 %1, 0
  br i1 %cmp37, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %nskb, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %__skb_frag_ref.exit.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %__skb_frag_ref.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %3, i32 0, i32 12, i32 %i.038
  %arrayidx2 = getelementptr %struct.tls_record_info, ptr %record, i32 0, i32 4, i32 %i.038
  %4 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx2, i32 12)
  %5 = load ptr, ptr %end.i, align 4
  %arrayidx5 = getelementptr %struct.skb_shared_info, ptr %5, i32 0, i32 12, i32 %i.038
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !131

if.then.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add i32 %10, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %11, %if.end.i.i.i ]
  %12 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %13 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, 128
  br i1 %cmp.i.i.i, label %if.then.i1.i.i, label %do.end5.i.i.i, !prof !132

if.then.i1.i.i:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.30) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !141
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i9.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@chcr_ktls_copy_record_in_skb, %if.then.i.i.i.i.i)) #12
          to label %__skb_frag_ref.exit [label %if.then.i.i.i.i.i], !srcloc !133

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %12, i32 noundef 1) #12
  br label %__skb_frag_ref.exit

__skb_frag_ref.exit:                              ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i
  %inc = add nuw nsw i32 %i.038, 1
  %17 = ptrtoint ptr %num_frags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_frags, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %__skb_frag_ref.exit.for.body_crit_edge, label %__skb_frag_ref.exit.for.end_crit_edge

__skb_frag_ref.exit.for.end_crit_edge:            ; preds = %__skb_frag_ref.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

__skb_frag_ref.exit.for.body_crit_edge:           ; preds = %__skb_frag_ref.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %__skb_frag_ref.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %18, %__skb_frag_ref.exit.for.end_crit_edge ]
  %conv = trunc i32 %.lcssa to i8
  %end.i34 = getelementptr inbounds %struct.sk_buff, ptr %nskb, i32 0, i32 17
  %19 = ptrtoint ptr %end.i34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i34, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %nr_frags, align 2
  %len = getelementptr inbounds %struct.tls_record_info, ptr %record, i32 0, i32 2
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %nskb, i32 0, i32 7
  %24 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %data_len, align 8
  %25 = load i32, ptr %len, align 4
  %len9 = getelementptr inbounds %struct.sk_buff, ptr %nskb, i32 0, i32 6
  %26 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len9, align 4
  %add = add i32 %27, %25
  store i32 %add, ptr %len9, align 4
  %28 = load i32, ptr %len, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %nskb, i32 0, i32 20
  %29 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %truesize, align 8
  %add11 = add i32 %30, %28
  store i32 %add11, ptr %truesize, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %nskb, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %34, align 4
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %destructor to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %destructor, align 4
  %destructor12 = getelementptr inbounds %struct.sk_buff, ptr %nskb, i32 0, i32 4, i32 0, i32 1
  %38 = ptrtoint ptr %destructor12 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %destructor12, align 4
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc, i32 1, i32 3, i32 1) #12
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc, ptr %sk_wmem_alloc, i32 %add11, ptr elementtype(i32) %sk_wmem_alloc) #12, !srcloc !134
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %for.end.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !132

for.end.if.end15.sink.split.i.i_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %for.end
  %add.i.i = add i32 %asmresult.i.i.i.i, %add11
  %40 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %.not.i.i = icmp sgt i32 %40, -1
  br i1 %.not.i.i, label %if.else.i.i.refcount_add.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !131

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i.refcount_add.exit_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_add.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %for.end.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %for.end.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc, i32 noundef %.sink.i.i) #12
  br label %refcount_add.exit

refcount_add.exit:                                ; preds = %if.end15.sink.split.i.i, %if.else.i.i.refcount_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tls_encrypt_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_write_sgl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ktls_dev_add(ptr noundef %netdev, ptr noundef %sk, i32 noundef %direction, ptr noundef %crypto_info, i32 noundef %start_offload_tcp_sn) #4 align 64 {
entry:
  %ghash_h.i = alloca [16 x i8], align 1
  %aes_ctx.i = alloca %struct.crypto_aes_ctx, align 4
  %daaddr = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %daaddr) #12
  %priv_ctx_tx.i.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 4
  %2 = call ptr @memset(ptr %daaddr, i32 255, i32 16)
  %3 = ptrtoint ptr %priv_ctx_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv_ctx_tx.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %ch_ktls_stats = getelementptr inbounds %struct.adapter, ptr %6, i32 0, i32 74
  %port_id = getelementptr i8, ptr %netdev, i32 2325
  %7 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port_id, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats, i32 0, i32 %idxprom
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %arrayidx) #12
  %uld = getelementptr inbounds %struct.adapter, ptr %6, i32 0, i32 37
  %9 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uld, align 4
  %handle = getelementptr %struct.cxgb4_uld_info, ptr %10, i32 7, i32 1
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp eq i32 %direction, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #15
  br label %out

if.end:                                           ; preds = %entry
  %chcr_info = getelementptr inbounds %struct.chcr_ktls_ofld_ctx_tx, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %chcr_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chcr_info, align 8
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %land.lhs.true

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end6
  %detach = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %detach to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %detach, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not = icmp eq i8 %16, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %call.i.i258 = tail call noalias ptr @kvmalloc_node(i32 noundef 256, i32 noundef 3520, i32 noundef -1) #17
  %tobool12.not = icmp eq ptr %call.i.i258, null
  br i1 %tobool12.not, label %if.end10.out_crit_edge, label %if.end14

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end14:                                         ; preds = %if.end10
  %17 = ptrtoint ptr %call.i.i258 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sk, ptr %call.i.i258, align 8
  %lock = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @chcr_ktls_dev_add.__key, i16 noundef signext 3) #12
  %tid = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 9
  %18 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %tid, align 8
  %atid = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 10
  %19 = ptrtoint ptr %atid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %atid, align 4
  %adap20 = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 3
  %20 = ptrtoint ptr %adap20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %6, ptr %adap20, align 8
  %netdev21 = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 5
  %21 = ptrtoint ptr %netdev21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %netdev, ptr %netdev21, align 8
  %first_qset = getelementptr i8, ptr %netdev, i32 2329
  %22 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %first_qset, align 1
  %first_qset22 = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 27
  %24 = ptrtoint ptr %first_qset22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %first_qset22, align 2
  %tx_chan = getelementptr i8, ptr %netdev, i32 2326
  %25 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_chan, align 2
  %tx_chan23 = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 23
  %27 = ptrtoint ptr %tx_chan23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %tx_chan23, align 2
  %smt_idx = getelementptr i8, ptr %netdev, i32 2966
  %28 = ptrtoint ptr %smt_idx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %smt_idx, align 2
  %smt_idx24 = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 24
  %30 = ptrtoint ptr %smt_idx24 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %smt_idx24, align 1
  %31 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %port_id, align 1
  %port_id26 = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 25
  %33 = ptrtoint ptr %port_id26 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %port_id26, align 8
  %prev_ack = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 14
  %34 = ptrtoint ptr %prev_ack to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %prev_ack, align 4
  %prev_win = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 22
  %35 = ptrtoint ptr %prev_win to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %prev_win, align 4
  %36 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %uld, align 4
  %handle.i = getelementptr %struct.cxgb4_uld_info, ptr %37, i32 7, i32 1
  %38 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handle.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %chcr_get_first_rx_qid.exit.thread, label %chcr_get_first_rx_qid.exit

chcr_get_first_rx_qid.exit.thread:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %rx_qid279 = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 11
  %40 = ptrtoint ptr %rx_qid279 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %rx_qid279, align 8
  br label %free_tx_info

chcr_get_first_rx_qid.exit:                       ; preds = %if.end14
  %rxq_ids.i = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %39, i32 0, i32 1, i32 6
  %41 = ptrtoint ptr %rxq_ids.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rxq_ids.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 2
  %conv.i = zext i16 %44 to i32
  %rx_qid = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 11
  %45 = ptrtoint ptr %rx_qid to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv.i, ptr %rx_qid, align 8
  %prev_seq = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 13
  %46 = ptrtoint ptr %prev_seq to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %start_offload_tcp_sn, ptr %prev_seq, align 8
  %tcp_start_seq_number = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 19
  %47 = ptrtoint ptr %tcp_start_seq_number to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %start_offload_tcp_sn, ptr %tcp_start_seq_number, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ghash_h.i) #12
  %key_ctx.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 2
  %48 = call ptr @memset(ptr %ghash_h.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes_ctx.i) #12
  %49 = call ptr @memset(ptr %aes_ctx.i, i32 255, i32 484)
  %cipher_type.i = getelementptr inbounds %struct.tls_crypto_info, ptr %crypto_info, i32 0, i32 1
  %50 = ptrtoint ptr %cipher_type.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %cipher_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %51)
  %cond.i = icmp eq i16 %51, 51
  br i1 %cond.i, label %sw.bb.i, label %do.end.i

sw.bb.i:                                          ; preds = %chcr_get_first_rx_qid.exit
  %salt_size.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 15
  %52 = ptrtoint ptr %salt_size.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %salt_size.i, align 8
  %iv_size.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 12
  %53 = ptrtoint ptr %iv_size.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 8, ptr %iv_size.i, align 4
  %iv.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info, i32 0, i32 1
  %54 = ptrtoint ptr %iv.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %iv.i, align 2
  %iv1.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 7
  %56 = ptrtoint ptr %iv1.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %iv1.i, align 8
  %key2.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info, i32 0, i32 2
  %salt4.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info, i32 0, i32 3
  %rec_seq.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info, i32 0, i32 4
  %57 = ptrtoint ptr %rec_seq.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %rec_seq.i, align 2
  %record_no.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 8
  %59 = ptrtoint ptr %record_no.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %record_no.i, align 8
  %scmd0_seqno_numivs.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 17
  %60 = ptrtoint ptr %scmd0_seqno_numivs.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1615397377, ptr %scmd0_seqno_numivs.i, align 8
  %scmd0_ivgen_hdrlen.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 18
  %61 = ptrtoint ptr %scmd0_ivgen_hdrlen.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 131072, ptr %scmd0_ivgen_hdrlen.i, align 4
  %scmd0_short_seqno_numivs.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 20
  %62 = ptrtoint ptr %scmd0_short_seqno_numivs.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 72090624, ptr %scmd0_short_seqno_numivs.i, align 4
  %scmd0_short_ivgen_hdrlen.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 21
  %63 = ptrtoint ptr %scmd0_short_ivgen_hdrlen.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 147456, ptr %scmd0_short_ivgen_hdrlen.i, align 8
  %call13.i = call i32 @aes_expandkey(ptr noundef nonnull %aes_ctx.i, ptr noundef %key2.i, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i259 = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i259, label %if.end.i261, label %chcr_ktls_save_keys.exit

do.end.i:                                         ; preds = %chcr_get_first_rx_qid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i260 = zext i16 %51 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv.i260) #15
  br label %chcr_ktls_save_keys.exit.thread

if.end.i261:                                      ; preds = %sw.bb.i
  %64 = call ptr @memset(ptr %ghash_h.i, i32 0, i32 16)
  call void @aes_encrypt(ptr noundef nonnull %aes_ctx.i, ptr noundef nonnull %ghash_h.i, ptr noundef nonnull %ghash_h.i) #12
  %65 = call ptr @memset(ptr %aes_ctx.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes_ctx.i) #12, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i = icmp eq i32 %direction, 1
  br i1 %cmp.i, label %chcr_ktls_save_keys.exit.thread283, label %if.end.i261.chcr_ktls_save_keys.exit.thread_crit_edge

if.end.i261.chcr_ktls_save_keys.exit.thread_crit_edge: ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_ktls_save_keys.exit.thread

chcr_ktls_save_keys.exit.thread283:               ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %key_ctx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 50332673, ptr %key_ctx.i, align 8
  %salt26.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %salt_size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %salt_size.i, align 8
  %69 = call ptr @memcpy(ptr %salt26.i, ptr %salt4.i, i32 %68)
  %key29.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 2, i32 3
  %70 = call ptr @memcpy(ptr %key29.i, ptr %key2.i, i32 16)
  %add.ptr.i262 = getelementptr %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 2, i32 3, i32 16
  %71 = call ptr @memcpy(ptr %add.ptr.i262, ptr %ghash_h.i, i32 16)
  %key_ctx_len.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 16
  %72 = ptrtoint ptr %key_ctx_len.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 48, ptr %key_ctx_len.i, align 4
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes_ctx.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ghash_h.i) #12
  br label %if.end37

chcr_ktls_save_keys.exit.thread:                  ; preds = %if.end.i261.chcr_ktls_save_keys.exit.thread_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes_ctx.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ghash_h.i) #12
  br label %free_tx_info

chcr_ktls_save_keys.exit:                         ; preds = %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes_ctx.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ghash_h.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp35 = icmp slt i32 %call13.i, 0
  br i1 %cmp35, label %chcr_ktls_save_keys.exit.free_tx_info_crit_edge, label %chcr_ktls_save_keys.exit.if.end37_crit_edge

chcr_ktls_save_keys.exit.if.end37_crit_edge:      ; preds = %chcr_ktls_save_keys.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

chcr_ktls_save_keys.exit.free_tx_info_crit_edge:  ; preds = %chcr_ktls_save_keys.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_tx_info

if.end37:                                         ; preds = %chcr_ktls_save_keys.exit.if.end37_crit_edge, %chcr_ktls_save_keys.exit.thread283
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %73 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %74)
  %cmp38 = icmp eq i16 %74, 2
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sk, align 8
  %77 = ptrtoint ptr %daaddr to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %daaddr, align 4
  br label %if.end61

if.else:                                          ; preds = %if.end37
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %78 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %79 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool43.not = icmp eq i8 %79, 0
  br i1 %tobool43.not, label %land.lhs.true44, label %if.else.if.else54_crit_edge

if.else.if.else54_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else54

land.lhs.true44:                                  ; preds = %if.else
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %call.i263 = call i32 @__ipv6_addr_type(ptr noundef %skc_v6_daddr) #12
  %and.i = and i32 %call.i263, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and.i)
  %cmp47 = icmp eq i32 %and.i, 4096
  br i1 %cmp47, label %if.then49, label %land.lhs.true44.if.else54_crit_edge

land.lhs.true44.if.else54_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else54

if.then49:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sk, align 8
  %82 = ptrtoint ptr %daaddr to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %daaddr, align 4
  br label %if.end61

if.else54:                                        ; preds = %land.lhs.true44.if.else54_crit_edge, %if.else.if.else54_crit_edge
  %skc_v6_daddr57 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %83 = call ptr @memcpy(ptr %daaddr, ptr %skc_v6_daddr57, i32 16)
  br label %if.end61

if.end61:                                         ; preds = %if.else54, %if.then49, %if.then40
  %.sink = phi i8 [ 2, %if.then49 ], [ 10, %if.else54 ], [ 2, %if.then40 ]
  %ip_family53 = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 26
  %84 = ptrtoint ptr %ip_family53 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %.sink, ptr %ip_family53, align 1
  %85 = call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %88, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i264 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i264, label %if.end61.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end61.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end61
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end61.rcu_read_lock.exit.i_crit_edge
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %89 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %call.i265 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %tobool.not.i266 = icmp eq i32 %call.i265, 0
  br i1 %tobool.not.i266, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @sk_dst_get.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sk_dst_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 2077, ptr noundef nonnull @.str.47) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %90, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end13.i_crit_edge, label %land.lhs.true10.i

do.end7.i.if.end13.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

land.lhs.true10.i:                                ; preds = %do.end7.i
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %90, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !144
  call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #12
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #12, !srcloc !145
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %land.lhs.true10.i.if.end13.i_crit_edge, label %do.end11.i.i.i.i.i

land.lhs.true10.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

do.end11.i.i.i.i.i:                               ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !146
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end11.i.i.i.i.i, %land.lhs.true10.i.if.end13.i_crit_edge, %do.end7.i.if.end13.i_crit_edge
  %dst.0.i = phi ptr [ null, %do.end7.i.if.end13.i_crit_edge ], [ null, %land.lhs.true10.i.if.end13.i_crit_edge ], [ %90, %do.end11.i.i.i.i.i ]
  %call.i17.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i17.i, label %if.end13.i.sk_dst_get.exit_crit_edge, label %land.lhs.true.i20.i

if.end13.i.sk_dst_get.exit_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_dst_get.exit

land.lhs.true.i20.i:                              ; preds = %if.end13.i
  %call1.i18.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.sk_dst_get.exit_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.sk_dst_get.exit_crit_edge:    ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_dst_get.exit

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge:   ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_dst_get.exit

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #12
  br label %sk_dst_get.exit

sk_dst_get.exit:                                  ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.sk_dst_get.exit_crit_edge, %land.lhs.true.i20.i.sk_dst_get.exit_crit_edge, %if.end13.i.sk_dst_get.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !147
  %92 = call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i24.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i = add i32 %95, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i25.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool63.not = icmp eq ptr %dst.0.i, null
  br i1 %tobool63.not, label %do.end67, label %if.end70

do.end67:                                         ; preds = %sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #15
  br label %free_tx_info

if.end70:                                         ; preds = %sk_dst_get.exit
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %dst.0.i, i32 0, i32 1
  %96 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %97, i32 0, i32 14
  %98 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i267 = call ptr %99(ptr noundef nonnull %dst.0.i, ptr noundef null, ptr noundef nonnull %daaddr) #12
  %cmp.i.i = icmp ugt ptr %call.i267, inttoptr (i32 -4096 to ptr)
  %tobool73.not292 = icmp eq ptr %call.i267, null
  %tobool73.not = or i1 %cmp.i.i, %tobool73.not292
  br i1 %tobool73.not, label %if.end70.do.end78_crit_edge, label %lor.lhs.false

if.end70.do.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

lor.lhs.false:                                    ; preds = %if.end70
  %dev = getelementptr inbounds %struct.neighbour, ptr %call.i267, i32 0, i32 25
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 4
  %tobool74.not = icmp eq ptr %101, null
  br i1 %tobool74.not, label %lor.lhs.false.do.end78_crit_edge, label %if.end81

lor.lhs.false.do.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

do.end78:                                         ; preds = %lor.lhs.false.do.end78_crit_edge, %if.end70.do.end78_crit_edge
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #15
  call void @dst_release(ptr noundef nonnull %dst.0.i) #12
  br label %free_tx_info

if.end81:                                         ; preds = %lor.lhs.false
  %l2t = getelementptr inbounds %struct.adapter, ptr %6, i32 0, i32 30
  %102 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %l2t, align 8
  %call83 = call ptr @cxgb4_l2t_get(ptr noundef %103, ptr noundef nonnull %call.i267, ptr noundef nonnull %101, i32 noundef 0) #12
  %l2te = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 4
  %104 = ptrtoint ptr %l2te to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call83, ptr %l2te, align 4
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call.i267, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %105 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i268, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.neigh_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !131

if.end5.i.i.i.i.neigh_release.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %neigh_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %neigh_release.exit

if.then.i268:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !150
  call void @neigh_destroy(ptr noundef nonnull %call.i267) #12
  br label %neigh_release.exit

neigh_release.exit:                               ; preds = %if.then.i268, %if.then10.i.i.i.i, %if.end5.i.i.i.i.neigh_release.exit_crit_edge
  call void @dst_release(ptr noundef nonnull %dst.0.i) #12
  %106 = ptrtoint ptr %l2te to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %l2te, align 4
  %tobool85.not = icmp eq ptr %107, null
  br i1 %tobool85.not, label %do.end89, label %if.end92

do.end89:                                         ; preds = %neigh_release.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #15
  br label %free_tx_info

if.end92:                                         ; preds = %neigh_release.exit
  %call93 = call zeroext i1 @try_module_get(ptr noundef null) #12
  br i1 %call93, label %if.end95, label %if.end92.free_l2t_crit_edge

if.end92.free_l2t_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_l2t

if.end95:                                         ; preds = %if.end92
  %completion = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 6
  %108 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #12
  %open_state = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 28
  %109 = ptrtoint ptr %open_state to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %open_state, align 4
  %110 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %adap20, align 8
  %tids.i = getelementptr inbounds %struct.adapter, ptr %111, i32 0, i32 48
  %call.i270 = call i32 @cxgb4_alloc_atid(ptr noundef %tids.i, ptr noundef nonnull %call.i.i258) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i270)
  %cmp.i271 = icmp eq i32 %call.i270, -1
  br i1 %cmp.i271, label %if.end95.put_module_crit_edge, label %if.end.i272

if.end95.put_module_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_module

if.end.i272:                                      ; preds = %if.end95
  %112 = ptrtoint ptr %atid to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %call.i270, ptr %atid, align 4
  %ip_family.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 26
  %113 = ptrtoint ptr %ip_family.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ip_family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %114)
  %cmp2.i = icmp eq i8 %114, 2
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i272
  %call.i.i.i273 = call ptr @__alloc_skb(i32 noundef 64, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i.i274 = icmp eq ptr %call.i.i.i273, null
  br i1 %tobool.not.i.i274, label %if.then4.i.if.else16.i_crit_edge, label %if.end.i.i, !prof !132

if.then4.i.if.else16.i_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16.i

if.end.i.i:                                       ; preds = %if.then4.i
  %115 = ptrtoint ptr %port_id26 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %port_id26, align 8
  %queue.tr.i.i.i = zext i8 %116 to i16
  %117 = shl nuw nsw i16 %queue.tr.i.i.i, 1
  %conv.i.i.i = or i16 %117, 1
  %queue_mapping1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i273, i32 0, i32 10
  %118 = ptrtoint ptr %queue_mapping1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv.i.i.i, ptr %queue_mapping1.i.i.i.i, align 8
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i273, i32 0, i32 7
  %119 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.i.not.i.i.i.i = icmp eq i32 %120, 0
  br i1 %tobool.i.not.i.i.i.i, label %__skb_put_zero.exit.i.i, label %do.body3.i.i.i.i, !prof !131

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

__skb_put_zero.exit.i.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i273, i32 0, i32 16
  %121 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %122, i32 64
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %len9.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i273, i32 0, i32 6
  %123 = ptrtoint ptr %len9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %len9.i.i.i.i, align 4
  %add.i.i.i.i275 = add i32 %124, 64
  store i32 %add.i.i.i.i275, ptr %len9.i.i.i.i, align 4
  %125 = getelementptr inbounds i8, ptr %122, i32 16
  %126 = call ptr @memset(ptr %125, i32 0, i32 48)
  %127 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 83886128, ptr %122, align 8
  %wr_mid.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %122, i32 0, i32 1
  %128 = ptrtoint ptr %wr_mid.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 4, ptr %wr_mid.i.i, align 4
  %wr_lo.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %122, i32 0, i32 2
  %129 = ptrtoint ptr %wr_lo.i.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 0, ptr %wr_lo.i.i, align 8
  %130 = ptrtoint ptr %rx_qid to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rx_qid, align 8
  %shl.i.i = shl i32 %131, 14
  %or.i.i = or i32 %call.i270, %shl.i.i
  %or9.i.i = or i32 %or.i.i, 50331648
  %132 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or9.i.i, ptr %125, align 8
  %inet_sport.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %133 = ptrtoint ptr %inet_sport.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %inet_sport.i.i, align 8
  %local_port.i.i = getelementptr inbounds %struct.cpl_act_open_req, ptr %122, i32 0, i32 2
  %135 = ptrtoint ptr %local_port.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %local_port.i.i, align 4
  %136 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %136, align 4
  %peer_port.i.i = getelementptr inbounds %struct.cpl_act_open_req, ptr %122, i32 0, i32 3
  %139 = ptrtoint ptr %peer_port.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %peer_port.i.i, align 2
  %skc_rcv_saddr.i.i = getelementptr inbounds %struct.anon.41, ptr %sk, i32 0, i32 1
  %140 = ptrtoint ptr %skc_rcv_saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %skc_rcv_saddr.i.i, align 4
  %local_ip.i.i = getelementptr inbounds %struct.cpl_act_open_req, ptr %122, i32 0, i32 4
  %142 = ptrtoint ptr %local_ip.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %local_ip.i.i, align 8
  %143 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sk, align 8
  %peer_ip.i.i = getelementptr inbounds %struct.cpl_act_open_req, ptr %122, i32 0, i32 5
  %145 = ptrtoint ptr %peer_ip.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %peer_ip.i.i, align 4
  %146 = ptrtoint ptr %smt_idx24 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %smt_idx24, align 1
  %conv15.i.i = zext i8 %147 to i64
  %shl16.i.i = shl nuw nsw i64 %conv15.i.i, 28
  %148 = ptrtoint ptr %tx_chan23 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %tx_chan23, align 2
  %conv18.i.i = zext i8 %149 to i32
  %shl19.i.i = shl nuw nsw i32 %conv18.i.i, 2
  %150 = zext i32 %shl19.i.i to i64
  %or17.i.i = or i64 %shl16.i.i, %150
  %or21.i.i = or i64 %or17.i.i, 281474976710784
  %opt0.i.i = getelementptr inbounds %struct.cpl_act_open_req, ptr %122, i32 0, i32 6
  %151 = ptrtoint ptr %opt0.i.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %or21.i.i, ptr %opt0.i.i, align 8
  %152 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %adap20, align 8
  %154 = load i8, ptr %tx_chan23, align 2
  %idxprom.i.i = zext i8 %154 to i32
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %153, i32 0, i32 15, i32 1, i32 4, i32 %idxprom.i.i
  %155 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %arrayidx.i.i, align 2
  %conv23.i.i = zext i16 %156 to i32
  %shl24.i.i = shl i32 %conv23.i.i, 23
  %opt2.i.i = getelementptr inbounds %struct.cpl_act_open_req, ptr %122, i32 0, i32 8
  %157 = ptrtoint ptr %opt2.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %shl24.i.i, ptr %opt2.i.i, align 4
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end.i272
  %158 = ptrtoint ptr %netdev21 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %netdev21, align 8
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %call6.i = call i32 @cxgb4_clip_get(ptr noundef %159, ptr noundef %skc_v6_rcv_saddr.i, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i276 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i276, label %if.end8.i, label %if.else.i.put_module_crit_edge

if.else.i.put_module_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_module

if.end8.i:                                        ; preds = %if.else.i
  %call.i.i50.i = call ptr @__alloc_skb(i32 noundef 88, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i51.i = icmp eq ptr %call.i.i50.i, null
  br i1 %tobool.not.i51.i, label %if.end8.i.if.else16.i_crit_edge, label %if.end.i58.i, !prof !132

if.end8.i.if.else16.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16.i

if.end.i58.i:                                     ; preds = %if.end8.i
  %160 = ptrtoint ptr %port_id26 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %port_id26, align 8
  %queue.tr.i.i53.i = zext i8 %161 to i16
  %162 = shl nuw nsw i16 %queue.tr.i.i53.i, 1
  %conv.i.i54.i = or i16 %162, 1
  %queue_mapping1.i.i.i55.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i50.i, i32 0, i32 10
  %163 = ptrtoint ptr %queue_mapping1.i.i.i55.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv.i.i54.i, ptr %queue_mapping1.i.i.i55.i, align 8
  %data_len.i.i.i.i56.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i50.i, i32 0, i32 7
  %164 = ptrtoint ptr %data_len.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %data_len.i.i.i.i56.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool.i.not.i.i.i57.i = icmp eq i32 %165, 0
  br i1 %tobool.i.not.i.i.i57.i, label %__skb_put_zero.exit.i84.i, label %do.body3.i.i.i59.i, !prof !131

do.body3.i.i.i59.i:                               ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

__skb_put_zero.exit.i84.i:                        ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i.i.i.i60.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i50.i, i32 0, i32 16
  %166 = ptrtoint ptr %tail.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %tail.i.i.i.i60.i, align 8
  %add.ptr.i.i.i61.i = getelementptr i8, ptr %167, i32 88
  store ptr %add.ptr.i.i.i61.i, ptr %tail.i.i.i.i60.i, align 8
  %len9.i.i.i62.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i50.i, i32 0, i32 6
  %168 = ptrtoint ptr %len9.i.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %len9.i.i.i62.i, align 4
  %add.i.i.i63.i = add i32 %169, 88
  store i32 %add.i.i.i63.i, ptr %len9.i.i.i62.i, align 4
  %170 = getelementptr inbounds i8, ptr %167, i32 16
  %171 = call ptr @memset(ptr %170, i32 0, i32 72)
  %172 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 83886152, ptr %167, align 8
  %wr_mid.i64.i = getelementptr inbounds %struct.work_request_hdr, ptr %167, i32 0, i32 1
  %173 = ptrtoint ptr %wr_mid.i64.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 6, ptr %wr_mid.i64.i, align 4
  %wr_lo.i65.i = getelementptr inbounds %struct.work_request_hdr, ptr %167, i32 0, i32 2
  %174 = ptrtoint ptr %wr_lo.i65.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 0, ptr %wr_lo.i65.i, align 8
  %175 = ptrtoint ptr %rx_qid to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rx_qid, align 8
  %shl.i67.i = shl i32 %176, 14
  %or.i68.i = or i32 %call.i270, %shl.i67.i
  %or9.i69.i = or i32 %or.i68.i, -2097152000
  %177 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %or9.i69.i, ptr %170, align 8
  %inet_sport.i71.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %178 = ptrtoint ptr %inet_sport.i71.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %inet_sport.i71.i, align 8
  %local_port.i72.i = getelementptr inbounds %struct.cpl_act_open_req6, ptr %167, i32 0, i32 2
  %180 = ptrtoint ptr %local_port.i72.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %local_port.i72.i, align 4
  %181 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %181, align 4
  %peer_port.i73.i = getelementptr inbounds %struct.cpl_act_open_req6, ptr %167, i32 0, i32 3
  %184 = ptrtoint ptr %peer_port.i73.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %peer_port.i73.i, align 2
  %185 = ptrtoint ptr %skc_v6_rcv_saddr.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %skc_v6_rcv_saddr.i, align 8
  %local_ip_hi.i.i = getelementptr inbounds %struct.cpl_act_open_req6, ptr %167, i32 0, i32 4
  %187 = ptrtoint ptr %local_ip_hi.i.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %186, ptr %local_ip_hi.i.i, align 8
  %arrayidx15.i.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 2
  %188 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %arrayidx15.i.i, align 8
  %local_ip_lo.i.i = getelementptr inbounds %struct.cpl_act_open_req6, ptr %167, i32 0, i32 5
  %190 = ptrtoint ptr %local_ip_lo.i.i to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %189, ptr %local_ip_lo.i.i, align 8
  %skc_v6_daddr.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %191 = ptrtoint ptr %skc_v6_daddr.i.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %skc_v6_daddr.i.i, align 8
  %peer_ip_hi.i.i = getelementptr inbounds %struct.cpl_act_open_req6, ptr %167, i32 0, i32 6
  %193 = ptrtoint ptr %peer_ip_hi.i.i to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %192, ptr %peer_ip_hi.i.i, align 8
  %arrayidx22.i.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 2
  %194 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %arrayidx22.i.i, align 8
  %peer_ip_lo.i.i = getelementptr inbounds %struct.cpl_act_open_req6, ptr %167, i32 0, i32 7
  %196 = ptrtoint ptr %peer_ip_lo.i.i to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 %195, ptr %peer_ip_lo.i.i, align 8
  %197 = ptrtoint ptr %smt_idx24 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %smt_idx24, align 1
  %conv23.i75.i = zext i8 %198 to i64
  %shl24.i76.i = shl nuw nsw i64 %conv23.i75.i, 28
  %199 = ptrtoint ptr %tx_chan23 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %tx_chan23, align 2
  %conv26.i.i = zext i8 %200 to i32
  %shl27.i.i = shl nuw nsw i32 %conv26.i.i, 2
  %201 = zext i32 %shl27.i.i to i64
  %or25.i.i = or i64 %shl24.i76.i, %201
  %or29.i.i = or i64 %or25.i.i, 281474976710784
  %opt0.i78.i = getelementptr inbounds %struct.cpl_act_open_req6, ptr %167, i32 0, i32 8
  %202 = ptrtoint ptr %opt0.i78.i to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %or29.i.i, ptr %opt0.i78.i, align 8
  %203 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %adap20, align 8
  %205 = load i8, ptr %tx_chan23, align 2
  %idxprom.i80.i = zext i8 %205 to i32
  %arrayidx31.i.i = getelementptr %struct.adapter, ptr %204, i32 0, i32 15, i32 1, i32 4, i32 %idxprom.i80.i
  %206 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %arrayidx31.i.i, align 2
  %conv32.i.i = zext i16 %207 to i32
  %shl33.i.i = shl i32 %conv32.i.i, 23
  %opt2.i81.i = getelementptr inbounds %struct.cpl_act_open_req6, ptr %167, i32 0, i32 10
  %208 = ptrtoint ptr %opt2.i81.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %shl33.i.i, ptr %opt2.i81.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %__skb_put_zero.exit.i84.i, %__skb_put_zero.exit.i.i
  %call.i.i50.sink.i = phi ptr [ %call.i.i50.i, %__skb_put_zero.exit.i84.i ], [ %call.i.i.i273, %__skb_put_zero.exit.i.i ]
  %209 = ptrtoint ptr %netdev21 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %netdev21, align 8
  %211 = ptrtoint ptr %l2te to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %l2te, align 4
  %call36.i.i = call i32 @cxgb4_l2t_send(ptr noundef %210, ptr noundef nonnull %call.i.i50.sink.i, ptr noundef %212) #12
  %213 = zext i32 %call36.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call36.i.i, label %if.end10.i.if.else16.i_crit_edge [
    i32 0, label %if.end10.i.if.end99_crit_edge
    i32 2, label %if.end10.i.if.end99_crit_edge293
  ]

if.end10.i.if.end99_crit_edge293:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.end10.i.if.end99_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.end10.i.if.else16.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16.i

if.else16.i:                                      ; preds = %if.end10.i.if.else16.i_crit_edge, %if.end8.i.if.else16.i_crit_edge, %if.then4.i.if.else16.i_crit_edge
  %ret.087.i = phi i32 [ %call36.i.i, %if.end10.i.if.else16.i_crit_edge ], [ -12, %if.then4.i.if.else16.i_crit_edge ], [ -12, %if.end8.i.if.else16.i_crit_edge ]
  %214 = ptrtoint ptr %ip_family.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %ip_family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %215)
  %cmp19.i = icmp eq i8 %215, 10
  br i1 %cmp19.i, label %if.then21.i, label %if.else16.i.chcr_setup_connection.exit_crit_edge

if.else16.i.chcr_setup_connection.exit_crit_edge: ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %chcr_setup_connection.exit

if.then21.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #14
  %216 = ptrtoint ptr %netdev21 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %netdev21, align 8
  %skc_v6_rcv_saddr24.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  call void @cxgb4_clip_release(ptr noundef %217, ptr noundef %skc_v6_rcv_saddr24.i, i8 noundef zeroext 1) #12
  br label %chcr_setup_connection.exit

chcr_setup_connection.exit:                       ; preds = %if.then21.i, %if.else16.i.chcr_setup_connection.exit_crit_edge
  call void @cxgb4_free_atid(ptr noundef %tids.i, i32 noundef %call.i270) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.087.i)
  %tobool97.not = icmp eq i32 %ret.087.i, 0
  br i1 %tobool97.not, label %chcr_setup_connection.exit.if.end99_crit_edge, label %chcr_setup_connection.exit.put_module_crit_edge

chcr_setup_connection.exit.put_module_crit_edge:  ; preds = %chcr_setup_connection.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_module

chcr_setup_connection.exit.if.end99_crit_edge:    ; preds = %chcr_setup_connection.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.end99:                                         ; preds = %chcr_setup_connection.exit.if.end99_crit_edge, %if.end10.i.if.end99_crit_edge, %if.end10.i.if.end99_crit_edge293
  %call101 = call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 3000) #12
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %218 = ptrtoint ptr %open_state to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %open_state, align 4
  %220 = zext i32 %219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %219, label %if.else110 [
    i32 0, label %if.end113
    i32 1, label %if.then109
  ]

if.then109:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  %pending_close = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 29
  %221 = ptrtoint ptr %pending_close to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 1, ptr %pending_close, align 8
  br label %put_module

if.else110:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %put_module

if.end113:                                        ; preds = %if.end99
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %222 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 0, ptr %completion, align 4
  %223 = ptrtoint ptr %open_state to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 1, ptr %open_state, align 4
  %call117 = call fastcc i32 @chcr_init_tcb_fields(ptr noundef nonnull %call.i.i258)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end113.free_tid_crit_edge

if.end113.free_tid_crit_edge:                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_tid

if.end120:                                        ; preds = %if.end113
  %call122 = call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 3000) #12
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %224 = ptrtoint ptr %open_state to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %open_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool125.not = icmp eq i32 %225, 0
  br i1 %tobool125.not, label %if.end128, label %if.then126

if.then126:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  %pending_close127 = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 29
  %226 = ptrtoint ptr %pending_close127 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 1, ptr %pending_close127, align 8
  br label %free_tid

if.end128:                                        ; preds = %if.end120
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %227 = ptrtoint ptr %l2te to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %l2te, align 4
  %call131 = call zeroext i1 @cxgb4_check_l2t_valid(ptr noundef %228) #12
  br i1 %call131, label %if.end133, label %if.end128.free_tid_crit_edge

if.end128.free_tid_crit_edge:                     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_tid

if.end133:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  %ktls_tx_ctx = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats, i32 0, i32 %idxprom, i32 5
  %call.i.i256 = call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_ctx, i32 noundef 8) #12
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_ctx) #12
  %229 = ptrtoint ptr %chcr_info to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %call.i.i258, ptr %chcr_info, align 8
  br label %cleanup

free_tid:                                         ; preds = %if.end128.free_tid_crit_edge, %if.then126, %if.end113.free_tid_crit_edge
  %230 = ptrtoint ptr %ip_family.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %ip_family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %231)
  %cmp137 = icmp eq i8 %231, 10
  br i1 %cmp137, label %if.then139, label %free_tid.if.end141_crit_edge

free_tid.if.end141_crit_edge:                     ; preds = %free_tid
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then139:                                       ; preds = %free_tid
  call void @__sanitizer_cov_trace_pc() #14
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  call void @cxgb4_clip_release(ptr noundef %netdev, ptr noundef %skc_v6_rcv_saddr, i8 noundef zeroext 1) #12
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %free_tid.if.end141_crit_edge
  %232 = ptrtoint ptr %adap20 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %adap20, align 8
  %tids = getelementptr inbounds %struct.adapter, ptr %233, i32 0, i32 48
  %234 = ptrtoint ptr %tx_chan23 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %tx_chan23, align 2
  %conv144 = zext i8 %235 to i32
  %236 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %tid, align 8
  %238 = ptrtoint ptr %ip_family.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %ip_family.i, align 1
  %conv147 = zext i8 %239 to i16
  call void @cxgb4_remove_tid(ptr noundef %tids, i32 noundef %conv144, i32 noundef %237, i16 noundef zeroext %conv147) #12
  %tid_list = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %12, i32 0, i32 2
  %240 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %tid, align 8
  %call149 = call ptr @xa_erase(ptr noundef %tid_list, i32 noundef %241) #12
  br label %put_module

put_module:                                       ; preds = %if.end141, %if.else110, %if.then109, %chcr_setup_connection.exit.put_module_crit_edge, %if.else.i.put_module_crit_edge, %if.end95.put_module_crit_edge
  call void @module_put(ptr noundef null) #12
  br label %free_l2t

free_l2t:                                         ; preds = %put_module, %if.end92.free_l2t_crit_edge
  %242 = ptrtoint ptr %l2te to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %l2te, align 4
  call void @cxgb4_l2t_release(ptr noundef %243) #12
  br label %free_tx_info

free_tx_info:                                     ; preds = %free_l2t, %do.end89, %do.end78, %do.end67, %chcr_ktls_save_keys.exit.free_tx_info_crit_edge, %chcr_ktls_save_keys.exit.thread, %chcr_get_first_rx_qid.exit.thread
  %pending_close151 = getelementptr inbounds %struct.chcr_ktls_info, ptr %call.i.i258, i32 0, i32 29
  %244 = ptrtoint ptr %pending_close151 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %pending_close151, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool152.not = icmp eq i8 %245, 0
  br i1 %tobool152.not, label %if.else155, label %if.then153

if.then153:                                       ; preds = %free_tx_info
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %out

if.else155:                                       ; preds = %free_tx_info
  call void @__sanitizer_cov_trace_pc() #14
  call void @kvfree(ptr noundef nonnull %call.i.i258) #12
  br label %out

out:                                              ; preds = %if.else155, %if.then153, %if.end10.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %do.end
  %ktls_tx_connection_fail = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats, i32 0, i32 %idxprom, i32 1
  %call.i.i257 = call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_connection_fail, i32 noundef 8) #12
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_connection_fail) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end133
  %retval.0 = phi i32 [ -1, %out ], [ 0, %if.end133 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %daaddr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chcr_ktls_dev_del(ptr noundef %netdev, ptr nocapture noundef readonly %tls_ctx, i32 noundef %direction) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_ctx_tx.i.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 4
  %0 = ptrtoint ptr %priv_ctx_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ctx_tx.i.i, align 4
  %chcr_info = getelementptr inbounds %struct.chcr_ktls_ofld_ctx_tx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chcr_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chcr_info, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %adap = getelementptr inbounds %struct.chcr_ktls_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %uld = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uld, align 4
  %handle = getelementptr %struct.cxgb4_uld_info, ptr %7, i32 7, i32 1
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %detach = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %detach to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %detach, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %l2te = getelementptr inbounds %struct.chcr_ktls_info, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %l2te to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %l2te, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cxgb4_l2t_release(ptr noundef nonnull %13) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %ip_family = getelementptr inbounds %struct.chcr_ktls_info, ptr %3, i32 0, i32 26
  %14 = ptrtoint ptr %ip_family to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ip_family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %15)
  %cmp = icmp eq i8 %15, 10
  br i1 %cmp, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 11
  tail call void @cxgb4_clip_release(ptr noundef %netdev, ptr noundef %skc_v6_rcv_saddr, i8 noundef zeroext 1) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %tid = getelementptr inbounds %struct.chcr_ktls_info, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp12.not = icmp eq i32 %19, -1
  br i1 %cmp12.not, label %if.end11.if.end22_crit_edge, label %if.then14

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 8
  %tids = getelementptr inbounds %struct.adapter, ptr %21, i32 0, i32 48
  %tx_chan = getelementptr inbounds %struct.chcr_ktls_info, ptr %3, i32 0, i32 23
  %22 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx_chan, align 2
  %conv16 = zext i8 %23 to i32
  %24 = ptrtoint ptr %ip_family to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ip_family, align 1
  %conv19 = zext i8 %25 to i16
  tail call void @cxgb4_remove_tid(ptr noundef %tids, i32 noundef %conv16, i32 noundef %19, i16 noundef zeroext %conv19) #12
  %tid_list = getelementptr inbounds %struct.chcr_ktls_uld_ctx, ptr %9, i32 0, i32 2
  %26 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tid, align 8
  %call21 = tail call ptr @xa_erase(ptr noundef %tid_list, i32 noundef %27) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.end11.if.end22_crit_edge
  %28 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adap, align 8
  %ch_ktls_stats = getelementptr inbounds %struct.adapter, ptr %29, i32 0, i32 74
  %port_id = getelementptr inbounds %struct.chcr_ktls_info, ptr %3, i32 0, i32 25
  %30 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_id, align 8
  %idxprom = zext i8 %31 to i32
  %ktls_tx_connection_close = getelementptr [4 x %struct.ch_ktls_port_stats_debug], ptr %ch_ktls_stats, i32 0, i32 %idxprom, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_tx_connection_close, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ktls_tx_connection_close) #12
  tail call void @kvfree(ptr noundef nonnull %3) #12
  %32 = ptrtoint ptr %chcr_info to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %chcr_info, align 8
  tail call void @module_put(ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb4_l2t_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chcr_init_tcb_fields(ptr nocapture noundef readonly %tx_info) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i.i, label %chcr_set_tcb_field.exit, label %do.body3.i.i.i, !prof !131

do.body3.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

chcr_set_tcb_field.exit:                          ; preds = %if.end.i
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 40
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %5, 40
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 36)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 83886104, ptr %3, align 8
  %tid.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 9
  %9 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tid.i, align 8
  %shl.i = shl i32 %10, 8
  %or.i = or i32 %shl.i, 3
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %6, align 4
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %wr_lo.i, align 8
  %13 = load i32, ptr %tid.i, align 8
  %or6.i = or i32 %13, 83886080
  %ot.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or6.i, ptr %ot.i, align 8
  %rx_qid.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 11
  %15 = ptrtoint ptr %rx_qid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_qid.i, align 8
  %17 = trunc i32 %16 to i16
  %conv.i = or i16 %17, -32768
  %reply_ctrl.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %reply_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %reply_ctrl.i, align 4
  %word_cookie.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %word_cookie.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %word_cookie.i, align 2
  %mask15.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %mask15.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -9223372036854775806, ptr %mask15.i, align 8
  %val16.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %val16.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -9223372036854775808, ptr %val16.i, align 8
  %port_id.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 25
  %22 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_id.i, align 8
  %queue.tr.i.i = zext i8 %23 to i16
  %24 = shl nuw nsw i16 %queue.tr.i.i, 1
  %conv.i.i = or i16 %24, 1
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i.i, ptr %queue_mapping1.i.i.i, align 8
  %netdev.i = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 5
  %26 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev.i, align 8
  %call18.i = tail call i32 @cxgb4_ofld_send(ptr noundef %27, ptr noundef nonnull %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool.not = icmp eq i32 %call18.i, 0
  br i1 %tobool.not, label %if.end, label %chcr_set_tcb_field.exit.cleanup_crit_edge

chcr_set_tcb_field.exit.cleanup_crit_edge:        ; preds = %chcr_set_tcb_field.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %chcr_set_tcb_field.exit
  %call.i.i21 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i22 = icmp eq ptr %call.i.i21, null
  br i1 %tobool.not.i22, label %if.end.cleanup_crit_edge, label %if.end.i25

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i25:                                       ; preds = %if.end
  %data_len.i.i.i.i23 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i21, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i.i.i23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i.i.i24 = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i.i.i24, label %chcr_set_tcb_field.exit53, label %do.body3.i.i.i26, !prof !131

do.body3.i.i.i26:                                 ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

chcr_set_tcb_field.exit53:                        ; preds = %if.end.i25
  %tail.i.i.i.i27 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i21, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i.i.i27, align 8
  %add.ptr.i.i.i28 = getelementptr i8, ptr %31, i32 40
  store ptr %add.ptr.i.i.i28, ptr %tail.i.i.i.i27, align 8
  %len9.i.i.i29 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i21, i32 0, i32 6
  %32 = ptrtoint ptr %len9.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len9.i.i.i29, align 4
  %add.i.i.i30 = add i32 %33, 40
  store i32 %add.i.i.i30, ptr %len9.i.i.i29, align 4
  %34 = getelementptr inbounds i8, ptr %31, i32 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 36)
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 83886104, ptr %31, align 8
  %37 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tid.i, align 8
  %shl.i32 = shl i32 %38, 8
  %or.i33 = or i32 %shl.i32, 3
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i33, ptr %34, align 4
  %wr_lo.i35 = getelementptr inbounds %struct.work_request_hdr, ptr %31, i32 0, i32 2
  %40 = ptrtoint ptr %wr_lo.i35 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %wr_lo.i35, align 8
  %41 = load i32, ptr %tid.i, align 8
  %or6.i36 = or i32 %41, 83886080
  %ot.i37 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %31, i32 0, i32 1
  %42 = ptrtoint ptr %ot.i37 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or6.i36, ptr %ot.i37, align 8
  %43 = ptrtoint ptr %rx_qid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_qid.i, align 8
  %45 = trunc i32 %44 to i16
  %conv.i40 = or i16 %45, -32768
  %reply_ctrl.i41 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %31, i32 0, i32 2
  %46 = ptrtoint ptr %reply_ctrl.i41 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i40, ptr %reply_ctrl.i41, align 4
  %word_cookie.i42 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %31, i32 0, i32 3
  %47 = ptrtoint ptr %word_cookie.i42 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 10, ptr %word_cookie.i42, align 2
  %mask15.i43 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %31, i32 0, i32 4
  %48 = ptrtoint ptr %mask15.i43 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 72057594037927935, ptr %mask15.i43, align 8
  %val16.i44 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %31, i32 0, i32 5
  %49 = ptrtoint ptr %val16.i44 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %val16.i44, align 8
  %50 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %port_id.i, align 8
  %queue.tr.i.i46 = zext i8 %51 to i16
  %52 = shl nuw nsw i16 %queue.tr.i.i46, 1
  %conv.i.i47 = or i16 %52, 1
  %queue_mapping1.i.i.i48 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i21, i32 0, i32 10
  %53 = ptrtoint ptr %queue_mapping1.i.i.i48 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i.i47, ptr %queue_mapping1.i.i.i48, align 8
  %54 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev.i, align 8
  %call18.i50 = tail call i32 @cxgb4_ofld_send(ptr noundef %55, ptr noundef nonnull %call.i.i21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i50)
  %tobool2.not = icmp eq i32 %call18.i50, 0
  br i1 %tobool2.not, label %if.end4, label %chcr_set_tcb_field.exit53.cleanup_crit_edge

chcr_set_tcb_field.exit53.cleanup_crit_edge:      ; preds = %chcr_set_tcb_field.exit53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %chcr_set_tcb_field.exit53
  %call.i.i54 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i55 = icmp eq ptr %call.i.i54, null
  br i1 %tobool.not.i55, label %if.end4.cleanup_crit_edge, label %if.end.i58

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i58:                                       ; preds = %if.end4
  %data_len.i.i.i.i56 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i54, i32 0, i32 7
  %56 = ptrtoint ptr %data_len.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_len.i.i.i.i56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i.not.i.i.i57 = icmp eq i32 %57, 0
  br i1 %tobool.i.not.i.i.i57, label %chcr_set_tcb_field.exit86, label %do.body3.i.i.i59, !prof !131

do.body3.i.i.i59:                                 ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

chcr_set_tcb_field.exit86:                        ; preds = %if.end.i58
  %tail.i.i.i.i60 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i54, i32 0, i32 16
  %58 = ptrtoint ptr %tail.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i.i.i60, align 8
  %add.ptr.i.i.i61 = getelementptr i8, ptr %59, i32 40
  store ptr %add.ptr.i.i.i61, ptr %tail.i.i.i.i60, align 8
  %len9.i.i.i62 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i54, i32 0, i32 6
  %60 = ptrtoint ptr %len9.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len9.i.i.i62, align 4
  %add.i.i.i63 = add i32 %61, 40
  store i32 %add.i.i.i63, ptr %len9.i.i.i62, align 4
  %62 = getelementptr inbounds i8, ptr %59, i32 4
  %63 = call ptr @memset(ptr %62, i32 0, i32 36)
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 83886104, ptr %59, align 8
  %65 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tid.i, align 8
  %shl.i65 = shl i32 %66, 8
  %or.i66 = or i32 %shl.i65, 3
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or.i66, ptr %62, align 4
  %wr_lo.i68 = getelementptr inbounds %struct.work_request_hdr, ptr %59, i32 0, i32 2
  %68 = ptrtoint ptr %wr_lo.i68 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 0, ptr %wr_lo.i68, align 8
  %69 = load i32, ptr %tid.i, align 8
  %or6.i69 = or i32 %69, 83886080
  %ot.i70 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %59, i32 0, i32 1
  %70 = ptrtoint ptr %ot.i70 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or6.i69, ptr %ot.i70, align 8
  %71 = ptrtoint ptr %rx_qid.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_qid.i, align 8
  %73 = trunc i32 %72 to i16
  %conv.i73 = or i16 %73, -32768
  %reply_ctrl.i74 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %59, i32 0, i32 2
  %74 = ptrtoint ptr %reply_ctrl.i74 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i73, ptr %reply_ctrl.i74, align 4
  %word_cookie.i75 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %59, i32 0, i32 3
  %75 = ptrtoint ptr %word_cookie.i75 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 11, ptr %word_cookie.i75, align 2
  %mask15.i76 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %59, i32 0, i32 4
  %76 = ptrtoint ptr %mask15.i76 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 4503599610593280, ptr %mask15.i76, align 8
  %val16.i77 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %59, i32 0, i32 5
  %77 = ptrtoint ptr %val16.i77 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 0, ptr %val16.i77, align 8
  %78 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %port_id.i, align 8
  %queue.tr.i.i79 = zext i8 %79 to i16
  %80 = shl nuw nsw i16 %queue.tr.i.i79, 1
  %conv.i.i80 = or i16 %80, 1
  %queue_mapping1.i.i.i81 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i54, i32 0, i32 10
  %81 = ptrtoint ptr %queue_mapping1.i.i.i81 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i.i80, ptr %queue_mapping1.i.i.i81, align 8
  %82 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev.i, align 8
  %call18.i83 = tail call i32 @cxgb4_ofld_send(ptr noundef %83, ptr noundef nonnull %call.i.i54) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i83)
  %tobool6.not = icmp eq i32 %call18.i83, 0
  br i1 %tobool6.not, label %if.end8, label %chcr_set_tcb_field.exit86.cleanup_crit_edge

chcr_set_tcb_field.exit86.cleanup_crit_edge:      ; preds = %chcr_set_tcb_field.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %chcr_set_tcb_field.exit86
  %l2te = getelementptr inbounds %struct.chcr_ktls_info, ptr %tx_info, i32 0, i32 4
  %84 = ptrtoint ptr %l2te to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %l2te, align 4
  %idx = getelementptr inbounds %struct.l2t_entry, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %idx, align 2
  %conv = zext i16 %87 to i32
  %shl = shl nuw nsw i32 %conv, 12
  %88 = zext i32 %shl to i64
  %call.i.i87 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i88 = icmp eq ptr %call.i.i87, null
  br i1 %tobool.not.i88, label %if.end8.cleanup_crit_edge, label %if.end.i91

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i91:                                       ; preds = %if.end8
  %data_len.i.i.i.i89 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i87, i32 0, i32 7
  %89 = ptrtoint ptr %data_len.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %data_len.i.i.i.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.i.not.i.i.i90 = icmp eq i32 %90, 0
  br i1 %tobool.i.not.i.i.i90, label %__skb_put_zero.exit.i116, label %do.body3.i.i.i92, !prof !131

do.body3.i.i.i92:                                 ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

__skb_put_zero.exit.i116:                         ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i.i.i.i93 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i87, i32 0, i32 16
  %91 = ptrtoint ptr %tail.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tail.i.i.i.i93, align 8
  %add.ptr.i.i.i94 = getelementptr i8, ptr %92, i32 40
  store ptr %add.ptr.i.i.i94, ptr %tail.i.i.i.i93, align 8
  %len9.i.i.i95 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i87, i32 0, i32 6
  %93 = ptrtoint ptr %len9.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len9.i.i.i95, align 4
  %add.i.i.i96 = add i32 %94, 40
  store i32 %add.i.i.i96, ptr %len9.i.i.i95, align 4
  %95 = getelementptr inbounds i8, ptr %92, i32 4
  %96 = call ptr @memset(ptr %95, i32 0, i32 36)
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 83886104, ptr %92, align 8
  %98 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tid.i, align 8
  %shl.i98 = shl i32 %99, 8
  %or.i99 = or i32 %shl.i98, 3
  %100 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or.i99, ptr %95, align 4
  %wr_lo.i101 = getelementptr inbounds %struct.work_request_hdr, ptr %92, i32 0, i32 2
  %101 = ptrtoint ptr %wr_lo.i101 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 0, ptr %wr_lo.i101, align 8
  %102 = load i32, ptr %tid.i, align 8
  %or6.i102 = or i32 %102, 83886080
  %ot.i103 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %92, i32 0, i32 1
  %103 = ptrtoint ptr %ot.i103 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or6.i102, ptr %ot.i103, align 8
  %104 = ptrtoint ptr %rx_qid.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_qid.i, align 8
  %conv.i105 = trunc i32 %105 to i16
  %reply_ctrl.i106 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %92, i32 0, i32 2
  %106 = ptrtoint ptr %reply_ctrl.i106 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i105, ptr %reply_ctrl.i106, align 4
  %word_cookie.i107 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %92, i32 0, i32 3
  %107 = ptrtoint ptr %word_cookie.i107 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %word_cookie.i107, align 2
  %mask15.i108 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %92, i32 0, i32 4
  %108 = ptrtoint ptr %mask15.i108 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 16773120, ptr %mask15.i108, align 8
  %val16.i109 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %92, i32 0, i32 5
  %109 = ptrtoint ptr %val16.i109 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %88, ptr %val16.i109, align 8
  %110 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %port_id.i, align 8
  %queue.tr.i.i111 = zext i8 %111 to i16
  %112 = shl nuw nsw i16 %queue.tr.i.i111, 1
  %conv.i.i112 = or i16 %112, 1
  %queue_mapping1.i.i.i113 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i87, i32 0, i32 10
  %113 = ptrtoint ptr %queue_mapping1.i.i.i113 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv.i.i112, ptr %queue_mapping1.i.i.i113, align 8
  %114 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %netdev.i, align 8
  %call18.i115 = tail call i32 @cxgb4_ofld_send(ptr noundef %115, ptr noundef nonnull %call.i.i87) #12
  br label %cleanup

cleanup:                                          ; preds = %__skb_put_zero.exit.i116, %if.end8.cleanup_crit_edge, %chcr_set_tcb_field.exit86.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %chcr_set_tcb_field.exit53.cleanup_crit_edge, %if.end.cleanup_crit_edge, %chcr_set_tcb_field.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18.i, %chcr_set_tcb_field.exit.cleanup_crit_edge ], [ %call18.i50, %chcr_set_tcb_field.exit53.cleanup_crit_edge ], [ %call18.i83, %chcr_set_tcb_field.exit86.cleanup_crit_edge ], [ %call18.i115, %__skb_put_zero.exit.i116 ], [ -12, %if.end8.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cxgb4_check_l2t_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_alloc_atid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_clip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_l2t_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !120}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2251, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @chcr_ktls_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @chcr_ktls_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_ch_ktls__669_2265_chcr_ktls_init6, !7, !"__initcall__kmod_ch_ktls__669_2265_chcr_ktls_init6", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2265, i32 1}
!8 = !{ptr @__exitcall_chcr_ktls_exit, !9, !"__exitcall_chcr_ktls_exit", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2266, i32 1}
!10 = !{ptr @__UNIQUE_ID_description670, !11, !"__UNIQUE_ID_description670", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2268, i32 1}
!12 = !{ptr @__UNIQUE_ID_file671, !13, !"__UNIQUE_ID_file671", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2269, i32 1}
!14 = !{ptr @__UNIQUE_ID_license672, !13, !"__UNIQUE_ID_license672", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author673, !16, !"__UNIQUE_ID_author673", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2270, i32 1}
!17 = !{ptr @__UNIQUE_ID_version674, !18, !"__UNIQUE_ID_version674", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2271, i32 1}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__modver_attr, !18, !"__modver_attr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 16, i32 8}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dev_mutex, !24, !"dev_mutex", i1 false, i1 false}
!27 = !{ptr @uld_ctx_list, !28, !"uld_ctx_list", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 15, i32 8}
!29 = !{ptr @chcr_ktls_uld_info, !30, !"chcr_ktls_uld_info", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2229, i32 30}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2118, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @chcr_ktls_uld_add._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @chcr_ktls_uld_add._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @xa_init_flags.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2153, i32 3}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @chcr_ktls_uld_rx_handler._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @chcr_ktls_uld_rx_handler._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @work_handlers, !47, !"work_handlers", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2137, i32 26}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 665, i32 3}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @chcr_ktls_cpl_act_open_rpl._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @chcr_ktls_cpl_act_open_rpl._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 695, i32 5}
!55 = !{ptr @chcr_ktls_cpl_act_open_rpl._entry.17, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @chcr_ktls_cpl_act_open_rpl._entry_ptr.19, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 728, i32 3}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @chcr_ktls_cpl_set_tcb_rpl._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @chcr_ktls_cpl_set_tcb_rpl._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2206, i32 3}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @chcr_ktls_uld_state_change._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @chcr_ktls_uld_state_change._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2214, i32 3}
!69 = !{ptr @chcr_ktls_uld_state_change._entry.24, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @chcr_ktls_uld_state_change._entry_ptr.26, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 1997, i32 3}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @chcr_ktls_xmit.__UNIQUE_ID_ddebug668, !72, !"__UNIQUE_ID_ddebug668", i1 false, i1 false}
!75 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_common.h", i32 108, i32 2}
!80 = !{ptr @chcr_ktls_ops, !81, !"chcr_ktls_ops", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 2132, i32 32}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 439, i32 3}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @chcr_ktls_dev_add._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @chcr_ktls_dev_add._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @chcr_ktls_dev_add.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 454, i32 2}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 500, i32 3}
!92 = !{ptr @chcr_ktls_dev_add._entry.35, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @chcr_ktls_dev_add._entry_ptr.37, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 505, i32 3}
!96 = !{ptr @chcr_ktls_dev_add._entry.38, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @chcr_ktls_dev_add._entry_ptr.40, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 515, i32 3}
!100 = !{ptr @chcr_ktls_dev_add._entry.41, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @chcr_ktls_dev_add._entry_ptr.43, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c", i32 128, i32 3}
!104 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @chcr_ktls_save_keys._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @chcr_ktls_save_keys._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../include/net/sock.h", i32 2077, i32 8}
!109 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!113 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!117 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @init_completion.__key, !119, !"__key", i1 false, i1 false}
!119 = !{!"../include/linux/completion.h", i32 87, i32 2}
!120 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 2148892420, i64 2148892425, i64 2148892438, i64 2148892482, i64 2148892516, i64 2148892537}
!134 = !{i64 2148412135, i64 2148412167, i64 2148412196, i64 2148412230, i64 2148412261, i64 2148412284}
!135 = !{i64 2153842681}
!136 = !{i64 2152386441}
!137 = !{i64 2152386648}
!138 = !{i64 2153845452}
!139 = !{i8 0, i8 2}
!140 = !{i64 2148410605, i64 2148410631, i64 2148410660, i64 2148410694, i64 2148410725, i64 2148410748}
!141 = !{i64 2153370524, i64 2153371008, i64 2153370561, i64 2153370617, i64 2153370651, i64 2153370675, i64 2153370716, i64 2153370737, i64 2153370765, i64 2153370799}
!142 = !{i64 2149475077}
!143 = !{i64 2149707242}
!144 = !{i64 2148410024}
!145 = !{i64 894847, i64 894872, i64 894894, i64 894910, i64 894922, i64 894942, i64 894966, i64 894982, i64 894994}
!146 = !{i64 2148410212}
!147 = !{i64 2149707508}
!148 = !{i64 2148500136}
!149 = !{i64 2148414600, i64 2148414632, i64 2148414661, i64 2148414695, i64 2148414726, i64 2148414749}
!150 = !{i64 2150581789}
!151 = !{i64 2154623676, i64 2154624164, i64 2154623713, i64 2154623769, i64 2154623803, i64 2154623827, i64 2154623868, i64 2154623889, i64 2154623917, i64 2154623951}
