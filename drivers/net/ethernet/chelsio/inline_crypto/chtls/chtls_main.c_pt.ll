; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.cxgb4_uld_info = type { [16 x i8], ptr, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.158 = type { i32 }
%struct.chtls_listen = type { ptr, ptr }
%struct.tls_crypto_info = type { i16, i16 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.198, %struct.anon.199, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.198 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.199 = type { i32, i32, i32, i32 }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%union.tls_crypto_context = type { %union.anon.182 }
%union.anon.182 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.chtls_sock = type { ptr, ptr, ptr, ptr, %struct.sk_buff_head, ptr, ptr, ptr, ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, ptr, %struct.chtls_hws, %struct.synq, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.chtls_hws = type { %struct.sk_buff_head, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, %struct.tls_scmd, %union.anon.200 }
%struct.tls_scmd = type { i32, i32 }
%union.anon.200 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.synq = type { ptr, ptr }
%struct.chtls_dev = type { %struct.tls_toe_device, %struct.list_head, ptr, ptr, [32 x ptr], %struct.spinlock, ptr, ptr, i32, ptr, %struct.idr, %struct.idr, %struct.spinlock, [8 x ptr], [32 x ptr], ptr, %struct.sk_buff_head, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.key_map, i32, [104 x i8] }
%struct.tls_toe_device = type { [32 x i8], %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.key_map = type { ptr, i32, i32, i32, %struct.spinlock }
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
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.pkt_gl = type { i64, [17 x %struct.page_frag], ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.165, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.187, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.165 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.187 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.anon = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.193, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.193 = type { ptr }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.201, i32 }
%union.anon.201 = type { ptr }
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
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }

@chtls_cpl_prot = internal global { %struct.proto, [36 x i8] } zeroinitializer, align 32
@chtls_cpl_protv6 = internal global { %struct.proto, [36 x i8] } zeroinitializer, align 32
@listen_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @listen_notify_handler, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_chtls__673_635_chtls_register6 = internal global ptr @chtls_register, section ".initcall6.init", align 4
@__exitcall_chtls_unregister = internal global ptr @chtls_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_description674 = internal constant [44 x i8] c"chtls.description=Chelsio TLS Inline driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file675 = internal constant [66 x i8] c"chtls.file=drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls\00", section ".modinfo", align 1
@__UNIQUE_ID_license676 = internal constant [18 x i8] c"chtls.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author677 = internal constant [36 x i8] c"chtls.author=Chelsio Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_version678 = internal constant [25 x i8] c"chtls.version=1.0.0.0-ko\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chtls\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1.0.0.0-ko\00", [21 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@chtls_rsk_ops = dso_local global { %struct.request_sock_ops, [60 x i8] } zeroinitializer, align 32
@chtls_rsk_opsv6 = dso_local global { %struct.request_sock_ops, [60 x i8] } zeroinitializer, align 32
@notify_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @notify_mutex, i64 52), ptr getelementptr (i8, ptr @notify_mutex, i64 52) }, ptr @notify_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@listen_notify_list = internal global { %struct.raw_notifier_head, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"notify_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"notify_mutex\00", [19 x i8] zeroinitializer }, align 32
@cdev_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cdev_mutex, i64 52), ptr getelementptr (i8, ptr @cdev_mutex, i64 52) }, ptr @cdev_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@cdev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cdev_list, ptr @cdev_list }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdev_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cdev_mutex\00", [21 x i8] zeroinitializer }, align 32
@chtls_uld_info = internal global { %struct.cxgb4_uld_info, [56 x i8] } { %struct.cxgb4_uld_info { [16 x i8] c"chtls\00\00\00\00\00\00\00\00\00\00\00", ptr null, i32 16, i32 1024, i32 16, i8 0, i8 0, ptr @chtls_uld_add, ptr @chtls_uld_rx_handler, ptr @chtls_uld_state_change, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tcp_prot = external dso_local local_unnamed_addr global %struct.proto, align 4
@tcpv6_prot = external dso_local local_unnamed_addr global %struct.proto, align 4
@do_chtls_setsockopt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@chtls_uld_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&cdev->deferq_task)\00", [58 x i8] zeroinitializer }, align 32
@chtls_uld_add.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cdev->listen_lock\00", [45 x i8] zeroinitializer }, align 32
@chtls_uld_add.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cdev->idr_lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@chtls_handlers = external dso_local local_unnamed_addr global [239 x ptr], align 4
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 51, i64 52]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"chtls_cpl_prot\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 35, i32 21 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"chtls_cpl_protv6\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 35, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"listen_notifier\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 74, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 641, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"chtls_rsk_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 36, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"chtls_rsk_opsv6\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 36, i32 40 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"notify_mutex\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"listen_notify_list\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 34, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 33, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"cdev_mutex\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"cdev_list\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 30, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 31, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"chtls_uld_info\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 581, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 499, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 156, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 273, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 274, i32 2 }
@___asan_gen_.97 = private constant [65 x i8] c"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 275, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 378, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2789, i32 6 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author677, ptr @__UNIQUE_ID_description674, ptr @__UNIQUE_ID_file675, ptr @__UNIQUE_ID_license676, ptr @__UNIQUE_ID_version678, ptr @__exitcall_chtls_unregister, ptr @__initcall__kmod_chtls__673_635_chtls_register6, ptr @__modver_attr, ptr @chtls_unregister, ptr @chtls_cpl_prot, ptr @chtls_cpl_protv6, ptr @listen_notifier, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @chtls_rsk_ops, ptr @chtls_rsk_opsv6, ptr @notify_mutex, ptr @listen_notify_list, ptr @.str.3, ptr @.str.4, ptr @cdev_mutex, ptr @cdev_list, ptr @.str.5, ptr @.str.6, ptr @chtls_uld_info, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @chtls_uld_add.__key, ptr @.str.12, ptr @chtls_uld_add.__key.13, ptr @.str.14, ptr @chtls_uld_add.__key.15, ptr @.str.16, ptr @xa_init_flags.__key, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_cpl_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_cpl_protv6 to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @listen_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_rsk_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_rsk_opsv6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notify_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @listen_notify_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdev_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_uld_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_uld_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_uld_add.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_uld_add.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @chtls_install_cpl_ops(ptr nocapture noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp eq i16 %1, 2
  %spec.select = select i1 %cmp, ptr @chtls_cpl_prot, ptr @chtls_cpl_protv6
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select, ptr %2, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @chtls_unregister() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @notify_mutex, i32 noundef 0) #13
  %call.i = tail call i32 @raw_notifier_chain_unregister(ptr noundef nonnull @listen_notify_list, ptr noundef nonnull @listen_notifier) #13
  tail call void @mutex_unlock(ptr noundef nonnull @notify_mutex) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @cdev_mutex, i32 noundef 0) #13
  %0 = load ptr, ptr @cdev_list, align 4
  %cmp.not22.i = icmp eq ptr %0, @cdev_list
  br i1 %cmp.not22.i, label %entry.chtls_free_all_uld.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.chtls_free_all_uld.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %chtls_free_all_uld.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in23.i = phi ptr [ %.pn25.i, %for.inc.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn25.i = load ptr, ptr %.pn.in23.i, align 4
  %cdev_state.i = getelementptr i8, ptr %.pn.in23.i, i32 728
  %2 = ptrtoint ptr %cdev_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cdev_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6.i = icmp eq i32 %3, 1
  br i1 %cmp6.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in23.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %kref.i = getelementptr i8, ptr %.pn.in23.i, i32 -4
  %release.i = getelementptr i8, ptr %.pn.in23.i, i32 -8
  %12 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #13, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !80

if.end5.i.i.i.i.i.for.inc.i_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #13
  br label %for.inc.i

if.then.i.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !81
  tail call void %13(ptr noundef %kref.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn25.i, @cdev_list
  br i1 %cmp.not.i, label %for.inc.i.chtls_free_all_uld.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.chtls_free_all_uld.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %chtls_free_all_uld.exit

chtls_free_all_uld.exit:                          ; preds = %for.inc.i.chtls_free_all_uld.exit_crit_edge, %entry.chtls_free_all_uld.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cdev_mutex) #13
  %call = tail call i32 @cxgb4_unregister_uld(i32 noundef 6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_unregister_uld(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_register() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @chtls_init_ulp_ops() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @notify_mutex, i32 noundef 0) #13
  %call.i = tail call i32 @raw_notifier_chain_register(ptr noundef nonnull @listen_notify_list, ptr noundef nonnull @listen_notifier) #13
  tail call void @mutex_unlock(ptr noundef nonnull @notify_mutex) #13
  tail call void @cxgb4_register_uld(i32 noundef 6, ptr noundef nonnull @chtls_uld_info) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @listen_notify_handler(ptr nocapture noundef readnone %this, i32 noundef %event, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %sk = getelementptr inbounds %struct.chtls_listen, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 4
  %call = tail call i32 @chtls_listen_start(ptr noundef %2, ptr noundef %4) #13
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %sk3 = getelementptr inbounds %struct.chtls_listen, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %sk3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk3, align 4
  tail call void @chtls_listen_stop(ptr noundef %6, ptr noundef %8) #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %ret.0.ph = phi i32 [ %call, %sw.bb ], [ 0, %sw.bb1 ]
  tail call void @kfree(ptr noundef %data) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chtls_listen_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @chtls_listen_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @chtls_init_ulp_ops() unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @chtls_cpl_prot, ptr @tcp_prot, i32 252)
  %1 = call ptr @memset(ptr getelementptr inbounds (%struct.request_sock_ops, ptr @chtls_rsk_ops, i32 0, i32 2), i32 0, i32 28)
  store i32 2, ptr @chtls_rsk_ops, align 4
  store i32 256, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @chtls_rsk_ops, i32 0, i32 1), align 4
  store ptr @chtls_rsk_destructor, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @chtls_rsk_ops, i32 0, i32 7), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 48) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 48), align 4
  %slab.i = getelementptr inbounds %struct.request_sock_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %slab.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slab.i, align 4
  store ptr %4, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @chtls_rsk_ops, i32 0, i32 2), align 4
  store ptr @chtls_rsk_ops, ptr getelementptr inbounds (%struct.proto, ptr @chtls_cpl_prot, i32 0, i32 48), align 4
  store ptr @chtls_close, ptr @chtls_cpl_prot, align 4
  store ptr @chtls_disconnect, ptr getelementptr inbounds (%struct.proto, ptr @chtls_cpl_prot, i32 0, i32 3), align 4
  store ptr @chtls_destroy_sock, ptr getelementptr inbounds (%struct.proto, ptr @chtls_cpl_prot, i32 0, i32 7), align 4
  store ptr @chtls_shutdown, ptr getelementptr inbounds (%struct.proto, ptr @chtls_cpl_prot, i32 0, i32 8), align 4
  store ptr @chtls_sendmsg, ptr getelementptr inbounds (%struct.proto, ptr @chtls_cpl_prot, i32 0, i32 12), align 4
  store ptr @chtls_sendpage, ptr getelementptr inbounds (%struct.proto, ptr @chtls_cpl_prot, i32 0, i32 14), align 4
  store ptr @chtls_recvmsg, ptr getelementptr inbounds (%struct.proto, ptr @chtls_cpl_prot, i32 0, i32 13), align 4
  store ptr @chtls_setsockopt, ptr getelementptr inbounds (%struct.proto, ptr @chtls_cpl_prot, i32 0, i32 9), align 4
  store ptr @chtls_getsockopt, ptr getelementptr inbounds (%struct.proto, ptr @chtls_cpl_prot, i32 0, i32 10), align 4
  %5 = call ptr @memcpy(ptr @chtls_cpl_protv6, ptr @chtls_cpl_prot, i32 252)
  %6 = call ptr @memset(ptr getelementptr inbounds (%struct.request_sock_ops, ptr @chtls_rsk_opsv6, i32 0, i32 2), i32 0, i32 28)
  store i32 10, ptr @chtls_rsk_opsv6, align 4
  store i32 256, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @chtls_rsk_opsv6, i32 0, i32 1), align 4
  store ptr @chtls_rsk_destructor, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @chtls_rsk_opsv6, i32 0, i32 7), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.proto, ptr @tcpv6_prot, i32 0, i32 48) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @tcpv6_prot, i32 0, i32 48), align 4
  %slab.i1 = getelementptr inbounds %struct.request_sock_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %slab.i1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slab.i1, align 4
  store ptr %9, ptr getelementptr inbounds (%struct.request_sock_ops, ptr @chtls_rsk_opsv6, i32 0, i32 2), align 4
  store ptr @chtls_rsk_opsv6, ptr getelementptr inbounds (%struct.proto, ptr @chtls_cpl_protv6, i32 0, i32 48), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_register_uld(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @chtls_close(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chtls_disconnect(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @chtls_destroy_sock(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @chtls_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chtls_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chtls_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chtls_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_setsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #3 align 64 {
entry:
  %tmp_crypto_info.i = alloca %struct.tls_crypto_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 282, i32 %level)
  %cmp.not = icmp eq i32 %level, 282
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %sk_proto = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %sk_proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_proto, align 4
  %setsockopt = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %setsockopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setsockopt, align 4
  %call1 = tail call i32 %5(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_crypto_info.i) #13
  %6 = ptrtoint ptr %tmp_crypto_info.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %tmp_crypto_info.i, align 4, !annotation !82
  %7 = getelementptr inbounds %struct.tls_crypto_info, ptr %tmp_crypto_info.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %7, align 2, !annotation !82
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %9 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end7.i_crit_edge

if.end.do.end7.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b67.i = load i1, ptr @do_chtls_setsockopt.__warned, align 1
  br i1 %.b67.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @do_chtls_setsockopt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 499, ptr noundef nonnull @.str.8) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %if.end.do.end7.i_crit_edge
  %11 = ptrtoint ptr %10 to i32
  %and.i = and i32 %11, -4
  %12 = inttoptr i32 %and.i to ptr
  %sockptr.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.0.extract.i.i)
  %retval.0.i.i = icmp eq i32 %sockptr.coerce.fca.0.extract.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp.i = icmp ult i32 %optlen, 4
  %or.cond.i = or i1 %retval.0.i.i, %cmp.i
  br i1 %or.cond.i, label %do.end7.i.do_chtls_setsockopt.exit_crit_edge, label %if.end12.i

do.end7.i.do_chtls_setsockopt.exit_crit_edge:     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_chtls_setsockopt.exit

if.end12.i:                                       ; preds = %do.end7.i
  %13 = inttoptr i32 %sockptr.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i.i, label %if.end59.i.i.i.i.i

if.end59.i.i.i.i.i:                               ; preds = %if.end12.i
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #13
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i.i, label %if.end59.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end59.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %if.end59.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end59.i.i.i.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 4, i32 -1226833920) #17, !srcloc !83
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !80

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp_crypto_info.i, i32 noundef 4) #13
  %15 = call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i.i.i.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #8, !srcloc !84
  %and.i.i.i.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #13, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !86
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp_crypto_info.i, ptr noundef %13, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #13, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.if.end16.i_crit_edge, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !80

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i.if.end16.i_crit_edge:            ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.end59.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i.i3.i.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 4, %if.end59.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 4, %res.0.i.i.i3.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %tmp_crypto_info.i, i32 %sub.i.i.i.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i3.i.i)
  br label %do_chtls_setsockopt.exit

if.end.i.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %13, align 1
  %21 = ptrtoint ptr %tmp_crypto_info.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tmp_crypto_info.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i.i.i, %if.end.i.i.i.i.i.if.end16.i_crit_edge
  %22 = ptrtoint ptr %tmp_crypto_info.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tmp_crypto_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 771, i16 %23)
  %cmp17.not.i = icmp eq i16 %23, 771
  br i1 %cmp17.not.i, label %if.end20.i, label %if.end16.i.do_chtls_setsockopt.exit_crit_edge

if.end16.i.do_chtls_setsockopt.exit_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_chtls_setsockopt.exit

if.end20.i:                                       ; preds = %if.end16.i
  %crypto_info21.i = getelementptr inbounds %struct.chtls_sock, ptr %12, i32 0, i32 37, i32 22
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %7, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %25, label %if.end20.i.do_chtls_setsockopt.exit_crit_edge [
    i16 51, label %sw.bb.i
    i16 52, label %sw.bb28.i
  ]

if.end20.i.do_chtls_setsockopt.exit_crit_edge:    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_chtls_setsockopt.exit

sw.bb.i:                                          ; preds = %if.end20.i
  %27 = ptrtoint ptr %tmp_crypto_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tmp_crypto_info.i, align 4
  %29 = ptrtoint ptr %crypto_info21.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %crypto_info21.i, align 4
  %add.ptr.i = getelementptr %struct.chtls_sock, ptr %12, i32 0, i32 37, i32 22, i32 0, i32 1
  %add.ptr2.i.i = getelementptr i8, ptr %13, i32 4
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i, label %if.end59.i.i.i.i

if.end59.i.i.i.i:                                 ; preds = %sw.bb.i
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #13
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i, label %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end59.i.i.i.i
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr2.i.i, i32 36, i32 -1226833920) #17, !srcloc !83
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !80

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i69.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 36) #13
  %31 = call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i.i.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #8, !srcloc !84
  %and.i.i.i.i.i.i = and i32 %33, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !86
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %add.ptr.i, ptr noundef %add.ptr2.i.i, i32 noundef 36) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #13, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.sw.epilog.i_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !80

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.sw.epilog.i_crit_edge:             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i105.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 36, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 36, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 36, %res.0.i.i.i105.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i.i.i
  %34 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i105.i)
  br label %do_chtls_setsockopt.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr2.i.i, i32 36)
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.end20.i
  %36 = ptrtoint ptr %tmp_crypto_info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tmp_crypto_info.i, align 4
  %38 = ptrtoint ptr %crypto_info21.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %crypto_info21.i, align 4
  %add.ptr30.i = getelementptr %struct.chtls_sock, ptr %12, i32 0, i32 37, i32 22, i32 0, i32 1
  %add.ptr2.i74.i = getelementptr i8, ptr %13, i32 4
  br i1 %bf.cast.i.i.i.i, label %if.end.i98.i, label %if.end59.i.i.i79.i

if.end59.i.i.i79.i:                               ; preds = %sw.bb28.i
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #13
  %call.i.i.i80.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i80.i, label %if.end59.i.i.i79.i.if.then11.i.i.i97.i_crit_edge, label %land.lhs.true.i.i.i84.i

if.end59.i.i.i79.i.if.then11.i.i.i97.i_crit_edge: ; preds = %if.end59.i.i.i79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i97.i

land.lhs.true.i.i.i84.i:                          ; preds = %if.end59.i.i.i79.i
  %39 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr2.i74.i, i32 52, i32 -1226833920) #17, !srcloc !83
  %asmresult.i.i.i82.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i82.i)
  %cmp.i6.i.i83.i = icmp eq i32 %asmresult.i.i.i82.i, 0
  br i1 %cmp.i6.i.i83.i, label %if.end.i.i.i94.i, label %land.lhs.true.i.i.i84.i.if.then11.i.i.i97.i_crit_edge, !prof !80

land.lhs.true.i.i.i84.i.if.then11.i.i.i97.i_crit_edge: ; preds = %land.lhs.true.i.i.i84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i97.i

if.end.i.i.i94.i:                                 ; preds = %land.lhs.true.i.i.i84.i
  %call.i.i.i.i85.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr30.i, i32 noundef 52) #13
  %40 = call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i.i.i.i.i.i.i86.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i.i86.i to ptr
  %cpu_domain.i.i.i.i.i.i87.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i87.i) #8, !srcloc !84
  %and.i.i.i.i.i88.i = and i32 %42, -13
  %or.i.i.i.i.i89.i = or i32 %and.i.i.i.i.i88.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i89.i) #13, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !86
  %call1.i.i.i.i90.i = call i32 @arm_copy_from_user(ptr noundef %add.ptr30.i, ptr noundef %add.ptr2.i74.i, i32 noundef 52) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #13, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i90.i)
  %tobool4.not.i.i.i93.i = icmp eq i32 %call1.i.i.i.i90.i, 0
  br i1 %tobool4.not.i.i.i93.i, label %if.end.i.i.i94.i.sw.epilog.i_crit_edge, label %if.end.i.i.i94.i.if.then11.i.i.i97.i_crit_edge, !prof !80

if.end.i.i.i94.i.if.then11.i.i.i97.i_crit_edge:   ; preds = %if.end.i.i.i94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i97.i

if.end.i.i.i94.i.sw.epilog.i_crit_edge:           ; preds = %if.end.i.i.i94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.then11.i.i.i97.i:                              ; preds = %if.end.i.i.i94.i.if.then11.i.i.i97.i_crit_edge, %land.lhs.true.i.i.i84.i.if.then11.i.i.i97.i_crit_edge, %if.end59.i.i.i79.i.if.then11.i.i.i97.i_crit_edge
  %res.0.i.i.i92110.i = phi i32 [ %call1.i.i.i.i90.i, %if.end.i.i.i94.i.if.then11.i.i.i97.i_crit_edge ], [ 52, %if.end59.i.i.i79.i.if.then11.i.i.i97.i_crit_edge ], [ 52, %land.lhs.true.i.i.i84.i.if.then11.i.i.i97.i_crit_edge ]
  %sub.i.i.i95.i = sub i32 52, %res.0.i.i.i92110.i
  %add.ptr.i.i.i96.i = getelementptr i8, ptr %add.ptr30.i, i32 %sub.i.i.i95.i
  %43 = call ptr @memset(ptr %add.ptr.i.i.i96.i, i32 0, i32 %res.0.i.i.i92110.i)
  br label %do_chtls_setsockopt.exit

if.end.i98.i:                                     ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = call ptr @memcpy(ptr %add.ptr30.i, ptr %add.ptr2.i74.i, i32 52)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i98.i, %if.end.i.i.i94.i.sw.epilog.i_crit_edge, %if.end.i.i, %if.end.i.i.i.i.sw.epilog.i_crit_edge
  %cipher_type.0.i = phi i32 [ 51, %if.end.i.i ], [ 51, %if.end.i.i.i.i.sw.epilog.i_crit_edge ], [ 52, %if.end.i98.i ], [ 52, %if.end.i.i.i94.i.sw.epilog.i_crit_edge ]
  %keylen.0.i = phi i32 [ 16, %if.end.i.i ], [ 16, %if.end.i.i.i.i.sw.epilog.i_crit_edge ], [ 32, %if.end.i98.i ], [ 32, %if.end.i.i.i94.i.sw.epilog.i_crit_edge ]
  %call35.i = call i32 @chtls_setkey(ptr noundef %12, i32 noundef %keylen.0.i, i32 noundef %optname, i32 noundef %cipher_type.0.i) #13
  br label %do_chtls_setsockopt.exit

do_chtls_setsockopt.exit:                         ; preds = %sw.epilog.i, %if.then11.i.i.i97.i, %if.then11.i.i.i.i, %if.end20.i.do_chtls_setsockopt.exit_crit_edge, %if.end16.i.do_chtls_setsockopt.exit_crit_edge, %if.then11.i.i.i.i.i, %do.end7.i.do_chtls_setsockopt.exit_crit_edge
  %rc.0.i = phi i32 [ %call35.i, %sw.epilog.i ], [ -22, %do.end7.i.do_chtls_setsockopt.exit_crit_edge ], [ -524, %if.end16.i.do_chtls_setsockopt.exit_crit_edge ], [ -22, %if.end20.i.do_chtls_setsockopt.exit_crit_edge ], [ -14, %if.then11.i.i.i.i.i ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i.i97.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_crypto_info.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do_chtls_setsockopt.exit, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %rc.0.i, %do_chtls_setsockopt.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_getsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #3 align 64 {
entry:
  %crypto_info.i = alloca %struct.tls_crypto_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 282, i32 %level)
  %cmp.not = icmp eq i32 %level, 282
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %sk_proto = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %sk_proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_proto, align 4
  %getsockopt = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %getsockopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getsockopt, align 4
  %call1 = tail call i32 %5(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crypto_info.i) #13
  %6 = ptrtoint ptr %crypto_info.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 50528256, ptr %crypto_info.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.end.do_chtls_getsockopt.exit_crit_edge, label %if.end.i.i.i

if.end.do_chtls_getsockopt.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_chtls_getsockopt.exit

if.end.i.i.i:                                     ; preds = %if.end
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 4, i32 -1226833920) #17, !srcloc !87
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i1.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.do_chtls_getsockopt.exit_crit_edge

if.end.i.i.i.do_chtls_getsockopt.exit_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_chtls_getsockopt.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %crypto_info.i, i32 noundef 4) #13
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %crypto_info.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %do_chtls_getsockopt.exit

do_chtls_getsockopt.exit:                         ; preds = %copy_to_user.exit.i, %if.end.i.i.i.do_chtls_getsockopt.exit_crit_edge, %if.end.do_chtls_getsockopt.exit_crit_edge
  %8 = phi i32 [ -14, %if.end.do_chtls_getsockopt.exit_crit_edge ], [ -14, %if.end.i.i.i.do_chtls_getsockopt.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crypto_info.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do_chtls_getsockopt.exit, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %8, %do_chtls_getsockopt.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @chtls_rsk_destructor(ptr nocapture noundef %req) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chtls_setkey(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @chtls_uld_add(ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 896) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup60_crit_edge, label %if.end

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup60

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i110 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 148) #18
  %tobool2.not = icmp eq ptr %call7.i.i110, null
  br i1 %tobool2.not, label %if.end.out_lldi_crit_edge, label %if.end4

if.end.out_lldi_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_lldi

if.end4:                                          ; preds = %if.end
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 20, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %askb.i = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 15
  %2 = ptrtoint ptr %askb.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %askb.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end4.out_skb_crit_edge, label %if.end8

if.end4.out_skb_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_skb

if.end8:                                          ; preds = %if.end4
  %call3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #13
  %3 = ptrtoint ptr %askb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %askb.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 19
  %9 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %10 = load ptr, ptr %askb.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  %15 = call ptr @memset(ptr %12, i32 0, i32 %14)
  %16 = call ptr @memcpy(ptr %call7.i.i110, ptr %info, i32 148)
  %lldi9 = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %lldi9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i110, ptr %lldi9, align 4
  %18 = ptrtoint ptr %call7.i.i110 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i110, align 8
  %pdev10 = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %pdev10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %pdev10, align 8
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %call7.i.i110, i32 0, i32 2
  %21 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tids, align 8
  %tids11 = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 7
  %ports = getelementptr inbounds %struct.cxgb4_lld_info, ptr %call7.i.i110, i32 0, i32 3
  %23 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ports, align 4
  %ports12 = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %ports12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %ports12, align 8
  %mtus = getelementptr inbounds %struct.cxgb4_lld_info, ptr %call7.i.i110, i32 0, i32 5
  %26 = ptrtoint ptr %mtus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mtus, align 4
  %mtus13 = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %mtus13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %mtus13, align 4
  %29 = ptrtoint ptr %tids11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %22, ptr %tids11, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %24, align 4
  %call17 = tail call i32 @cxgb4_port_viid(ptr noundef %31) #13
  %and = and i32 %call17, 1792
  %pfvf = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %pfvf to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and, ptr %pfvf, align 128
  %nodeid = getelementptr inbounds %struct.cxgb4_lld_info, ptr %call7.i.i110, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8
  %i.0117 = phi i32 [ 0, %if.end8 ], [ %inc, %for.inc.for.body_crit_edge ]
  %33 = tail call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %36, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i111 = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i111, i32 3264, i32 2592
  %37 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nodeid, align 4
  %call19 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef %cond.i, i32 noundef 0, i32 noundef %38) #13
  %arrayidx20 = getelementptr %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 14, i32 %i.0117
  %39 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call19, ptr %arrayidx20, align 4
  %tobool23.not = icmp eq ptr %call19, null
  br i1 %tobool23.not, label %out_rspq_skb, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %hwtid_idr = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %hwtid_idr, ptr noundef nonnull @.str.17, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i.i.i = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 1
  %40 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 2
  %41 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %idr_base.i.i = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 10, i32 2
  %43 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %idr_next.i.i, align 8
  %deferq_task = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %deferq_task, i32 noundef 0) #13
  %44 = ptrtoint ptr %deferq_task to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %deferq_task, align 8
  %lockdep_map = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @chtls_uld_add.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry32 = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 17, i32 1
  %45 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 17, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry32, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 17, i32 2
  %47 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @process_deferq, ptr %func, align 4
  %listen_lock = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %listen_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @chtls_uld_add.__key.13, i16 noundef signext 3) #13
  %idr_lock = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %idr_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @chtls_uld_add.__key.15, i16 noundef signext 3) #13
  %send_page_order = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 21
  %48 = ptrtoint ptr %send_page_order to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %send_page_order, align 4
  %max_host_sndbuf = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 22
  %49 = ptrtoint ptr %max_host_sndbuf to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 49152, ptr %max_host_sndbuf, align 16
  %vr = getelementptr inbounds %struct.cxgb4_lld_info, ptr %call7.i.i110, i32 0, i32 4
  %50 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vr, align 8
  %size44 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %51, i32 0, i32 9, i32 1
  %52 = ptrtoint ptr %size44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool45.not = icmp eq i32 %53, 0
  br i1 %tobool45.not, label %for.end.if.end51_crit_edge, label %if.then46

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then46:                                        ; preds = %for.end
  %call47 = tail call i32 @chtls_init_kmap(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i110) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then46.if.end51_crit_edge, label %if.then46.for.body54.preheader_crit_edge

if.then46.for.body54.preheader_crit_edge:         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body54.preheader

if.then46.if.end51_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end51:                                         ; preds = %if.then46.if.end51_crit_edge, %for.end.if.end51_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @cdev_mutex, i32 noundef 0) #13
  %list = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 1
  %54 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @cdev_list, i32 0, i32 1), align 4
  %call.i.i112 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %54, ptr noundef nonnull @cdev_list) #13
  br i1 %call.i.i112, label %if.end.i.i, label %if.end51.list_add_tail.exit_crit_edge

if.end51.list_add_tail.exit_crit_edge:            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @cdev_list, i32 0, i32 1), align 4
  %55 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @cdev_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %prev3.i.i, align 8
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %list, ptr %54, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end51.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cdev_mutex) #13
  br label %cleanup60

out_rspq_skb:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0117)
  %cmp53118.not = icmp eq i32 %i.0117, 0
  br i1 %cmp53118.not, label %out_rspq_skb.for.end59_crit_edge, label %out_rspq_skb.for.body54.preheader_crit_edge

out_rspq_skb.for.body54.preheader_crit_edge:      ; preds = %out_rspq_skb
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body54.preheader

out_rspq_skb.for.end59_crit_edge:                 ; preds = %out_rspq_skb
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end59

for.body54.preheader:                             ; preds = %out_rspq_skb.for.body54.preheader_crit_edge, %if.then46.for.body54.preheader_crit_edge
  %i.0116124 = phi i32 [ %i.0117, %out_rspq_skb.for.body54.preheader_crit_edge ], [ 32, %if.then46.for.body54.preheader_crit_edge ]
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %for.body54.preheader
  %j.0119 = phi i32 [ %inc58, %for.body54.for.body54_crit_edge ], [ 0, %for.body54.preheader ]
  %arrayidx56 = getelementptr %struct.chtls_dev, ptr %call7.i.i, i32 0, i32 14, i32 %j.0119
  %58 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx56, align 4
  tail call void @kfree_skb_reason(ptr noundef %59, i32 noundef 0) #13
  %inc58 = add nuw nsw i32 %j.0119, 1
  %exitcond121.not = icmp eq i32 %inc58, %i.0116124
  br i1 %exitcond121.not, label %for.body54.for.end59_crit_edge, label %for.body54.for.body54_crit_edge

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body54

for.body54.for.end59_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end59

for.end59:                                        ; preds = %for.body54.for.end59_crit_edge, %out_rspq_skb.for.end59_crit_edge
  %60 = ptrtoint ptr %askb.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %askb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %61, i32 noundef 0) #13
  br label %out_skb

out_skb:                                          ; preds = %for.end59, %if.end4.out_skb_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i110) #13
  br label %out_lldi

out_lldi:                                         ; preds = %out_skb, %if.end.out_lldi_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup60

cleanup60:                                        ; preds = %out_lldi, %list_add_tail.exit, %entry.cleanup60_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %list_add_tail.exit ], [ null, %entry.cleanup60_crit_edge ], [ null, %out_lldi ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_uld_rx_handler(ptr noundef %handle, ptr noundef %rsp, ptr noundef %gl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rsp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %1)
  %cmp = icmp eq i8 %1, 59
  br i1 %cmp, label %if.then, label %if.end6, !prof !88

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @chtls_recv_packet(ptr noundef %handle, ptr noundef %gl, ptr noundef %rsp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.nomem_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.nomem_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %nomem

if.end6:                                          ; preds = %entry
  %tobool7.not = icmp eq ptr %gl, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %conv.i = zext i8 %1 to i32
  %2 = ptrtoint ptr %rsp to i32
  %mul.i.i.i.i = mul i32 %2, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 27
  %arrayidx.i = getelementptr %struct.chtls_dev, ptr %handle, i32 0, i32 14, i32 %shr.i.i.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then8.if.end18.i_crit_edge, label %land.lhs.true.i

if.then8.if.end18.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.then8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #13
  %7 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, 1
  br i1 %cmp.i.not.i, label %land.lhs.true5.i, label %land.lhs.true2.i.if.end18.i_crit_edge

land.lhs.true2.i.if.end18.i_crit_edge:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 12
  %9 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %land.lhs.true5.i.if.then.i_crit_edge, label %skb_cloned.exit.i

land.lhs.true5.i.if.then.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

skb_cloned.exit.i:                                ; preds = %land.lhs.true5.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %13, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i57.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i57.not.i, label %skb_cloned.exit.i.if.then.i_crit_edge, label %skb_cloned.exit.i.if.end18.i_crit_edge

skb_cloned.exit.i.if.end18.i_crit_edge:           ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

skb_cloned.exit.i.if.then.i_crit_edge:            ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %skb_cloned.exit.i.if.then.i_crit_edge, %land.lhs.true5.i.if.then.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #13, !srcloc !89
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !88

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !80

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i) #13
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %call.i.i.i58.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #13
  %16 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp eq i32 %17, 2
  br i1 %cmp.i, label %if.then11.i, label %refcount_inc.exit.i.if.end16.i_crit_edge

refcount_inc.exit.i.if.end16.i_crit_edge:         ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.then11.i:                                      ; preds = %refcount_inc.exit.i
  %18 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i.i.i, label %if.end21.critedge.i.i.i, label %do.end.i.i.i, !prof !80

do.end.i.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2789, i32 noundef 9, ptr noundef null) #13
  br label %__skb_trim.exit.i

if.end21.critedge.i.i.i:                          ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  %len22.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %20 = ptrtoint ptr %len22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %len22.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %tail.i.i.i.i, align 8
  br label %__skb_trim.exit.i

__skb_trim.exit.i:                                ; preds = %if.end21.critedge.i.i.i, %do.end.i.i.i
  %24 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %__skb_trim.exit.i.if.end16.i_crit_edge

__skb_trim.exit.i.if.end16.i_crit_edge:           ; preds = %__skb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

skb_tailroom.exit.i:                              ; preds = %__skb_trim.exit.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub.ptr.sub.i.i)
  %cmp13.i = icmp ugt i32 %sub.ptr.sub.i.i, 39
  br i1 %cmp13.i, label %skb_tailroom.exit.i.copy_out.i_crit_edge, label %skb_tailroom.exit.i.if.end16.i_crit_edge

skb_tailroom.exit.i.if.end16.i_crit_edge:         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

skb_tailroom.exit.i.copy_out.i_crit_edge:         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_out.i

if.end16.i:                                       ; preds = %skb_tailroom.exit.i.if.end16.i_crit_edge, %__skb_trim.exit.i.if.end16.i_crit_edge, %refcount_inc.exit.i.if.end16.i_crit_edge
  %call.i.i.i.i59.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #13
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #13, !srcloc !79
  %asmresult.i.i.i.i.i60.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i60.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i60.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end16.i.if.end18.i_crit_edge, !prof !88

if.end16.i.if.end18.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then3.i.i.i:                                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef 4) #13
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then3.i.i.i, %if.end16.i.if.end18.i_crit_edge, %skb_cloned.exit.i.if.end18.i_crit_edge, %land.lhs.true2.i.if.end18.i_crit_edge, %land.lhs.true.i.if.end18.i_crit_edge, %if.then8.if.end18.i_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool20.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool20.not.i, label %if.end18.i.cleanup_crit_edge, label %if.end18.i.copy_out.i_crit_edge, !prof !88

if.end18.i.copy_out.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_out.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_out.i:                                       ; preds = %if.end18.i.copy_out.i_crit_edge, %skb_tailroom.exit.i.copy_out.i_crit_edge
  %skb.0.i = phi ptr [ %call.i.i, %if.end18.i.copy_out.i_crit_edge ], [ %4, %skb_tailroom.exit.i.copy_out.i_crit_edge ]
  %data_len.i.i61.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 7
  %31 = ptrtoint ptr %data_len.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i61.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i62.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i62.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !80

do.body3.i.i:                                     ; preds = %copy_out.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !90
  unreachable

__skb_put.exit.i:                                 ; preds = %copy_out.i
  %tail.i63.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i63.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i63.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 40
  store ptr %add.ptr.i.i, ptr %tail.i63.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 6
  %35 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %36, 40
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i, align 4
  %39 = call ptr @memcpy(ptr %38, ptr %rsp, i32 40)
  %40 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 18
  %41 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i65.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i66.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i67.i = sub i32 %sub.ptr.lhs.cast.i65.i, %sub.ptr.rhs.cast.i66.i
  %conv.i68.i = trunc i32 %sub.ptr.sub.i67.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 20
  %43 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i68.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 19
  %44 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i68.i, ptr %transport_header.i.i, align 2
  %arrayidx27.i = getelementptr [239 x ptr], ptr @chtls_handlers, i32 0, i32 %conv.i
  %45 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx27.i, align 4
  %call28.i = tail call i32 %46(ptr noundef %handle, ptr noundef nonnull %skb.0.i) #13
  %and.i = and i32 %call28.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %__skb_put.exit.i.cleanup_crit_edge, label %if.then30.i

__skb_put.exit.i.cleanup_crit_edge:               ; preds = %__skb_put.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then30.i:                                      ; preds = %__skb_put.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.0.i, i32 noundef 0) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call ptr @cxgb4_pktgl_to_skb(ptr noundef nonnull %gl, i32 noundef 128, i32 noundef 128) #13
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.nomem_crit_edge, label %if.end22, !prof !88

if.end10.nomem_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %nomem

if.end22:                                         ; preds = %if.end10
  %47 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rsp, align 1
  %conv.i32 = zext i8 %48 to i32
  %data.i.i33 = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 19
  %49 = ptrtoint ptr %data.i.i33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i33, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %50, i32 -8
  store ptr %add.ptr.i.i34, ptr %data.i.i33, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 6
  %51 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len1.i.i, align 4
  %add.i.i35 = add i32 %52, 8
  store i32 %add.i.i35, ptr %len1.i.i, align 4
  %53 = load i64, ptr %rsp, align 1
  %54 = ptrtoint ptr %add.ptr.i.i34 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %53, ptr %add.ptr.i.i34, align 1
  %arrayidx.i36 = getelementptr [239 x ptr], ptr @chtls_handlers, i32 0, i32 %conv.i32
  %55 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i36, align 4
  %call1.i = tail call i32 %56(ptr noundef %handle, ptr noundef nonnull %call11) #13
  %and.i37 = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i38, label %if.end22.cleanup_crit_edge, label %if.then.i39

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i39:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call11, i32 noundef 0) #13
  br label %cleanup

nomem:                                            ; preds = %if.end10.nomem_crit_edge, %if.then.nomem_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.then.i39, %if.end22.cleanup_crit_edge, %if.then30.i, %__skb_put.exit.i.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %nomem ], [ 0, %if.then.cleanup_crit_edge ], [ -12, %if.end18.i.cleanup_crit_edge ], [ 0, %if.then30.i ], [ 0, %__skb_put.exit.i.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %if.then.i39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_uld_state_change(ptr noundef %handle, i32 noundef %new_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %new_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %new_state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @strlcpy(ptr noundef %handle, ptr noundef nonnull @.str.1, i32 noundef 32) #13
  %lldi.i = getelementptr inbounds %struct.chtls_dev, ptr %handle, i32 0, i32 2
  %1 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lldi.i, align 4
  %ports.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ports.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call6.i = tail call i32 @strlcat(ptr noundef %handle, ptr noundef %6, i32 noundef 32) #13
  %feature.i = getelementptr inbounds %struct.tls_toe_device, ptr %handle, i32 0, i32 2
  %7 = ptrtoint ptr %feature.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @chtls_inline_feature, ptr %feature.i, align 4
  %hash.i = getelementptr inbounds %struct.tls_toe_device, ptr %handle, i32 0, i32 3
  %8 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @chtls_create_hash, ptr %hash.i, align 4
  %unhash.i = getelementptr inbounds %struct.tls_toe_device, ptr %handle, i32 0, i32 4
  %9 = ptrtoint ptr %unhash.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @chtls_destroy_hash, ptr %unhash.i, align 4
  %release.i = getelementptr inbounds %struct.tls_toe_device, ptr %handle, i32 0, i32 5
  %10 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @chtls_dev_release, ptr %release.i, align 4
  %kref.i = getelementptr inbounds %struct.tls_toe_device, ptr %handle, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #13
  %11 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %kref.i, align 4
  tail call void @tls_toe_register_device(ptr noundef %handle) #13
  %cdev_state.i = getelementptr inbounds %struct.chtls_dev, ptr %handle, i32 0, i32 25
  %12 = ptrtoint ptr %cdev_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %cdev_state.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @cdev_mutex, i32 noundef 0) #13
  %list = getelementptr inbounds %struct.chtls_dev, ptr %handle, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb1.list_del.exit_crit_edge

sw.bb1.list_del.exit_crit_edge:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.chtls_dev, ptr %handle, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %sw.bb1.list_del.exit_crit_edge
  %19 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.chtls_dev, ptr %handle, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cdev_mutex) #13
  %kref = getelementptr inbounds %struct.tls_toe_device, ptr %handle, i32 0, i32 6
  %release = getelementptr inbounds %struct.tls_toe_device, ptr %handle, i32 0, i32 5
  %21 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #13
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #13, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i, !prof !80

if.end5.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #13
  br label %sw.epilog

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !81
  tail call void %22(ptr noundef %kref) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_port_viid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @process_deferq(ptr noundef %task_param) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %task_param, i32 -648
  %deferq = getelementptr i8, ptr %task_param, i32 -56
  %lock = getelementptr i8, ptr %task_param, i32 -44
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %0 = ptrtoint ptr %deferq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %deferq, align 4
  %cmp.i.i15 = icmp eq ptr %1, %deferq
  %tobool.not.i1416 = icmp eq ptr %1, null
  %tobool.not.i17 = or i1 %cmp.i.i15, %tobool.not.i1416
  br i1 %tobool.not.i17, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %qlen.i.i = getelementptr i8, ptr %task_param, i32 -48
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %14, %while.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.46, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.46, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  %cb = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb, align 8
  tail call void %12(ptr noundef %add.ptr, ptr noundef nonnull %2) #13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %13 = ptrtoint ptr %deferq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %deferq, align 4
  %cmp.i.i = icmp eq ptr %14, %deferq
  %tobool.not.i14 = icmp eq ptr %14, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i14
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chtls_init_kmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chtls_recv_packet(ptr noundef %cdev, ptr nocapture noundef readonly %gl, ptr nocapture noundef readonly %rsp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rsp, align 1
  %lldi = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 2
  %2 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldi, align 4
  %sge_pktshift = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %sge_pktshift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sge_pktshift, align 4
  %tot_len.i = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 4
  %6 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tot_len.i, align 8
  %add.i = sub i32 24, %5
  %sub.i = add i32 %add.i, %7
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %sub.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !88

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i, label %if.end, label %do.body3.i.i, !prof !80

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !90
  unreachable

if.end:                                           ; preds = %if.end.i
  %10 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tot_len.i, align 8
  %sub6.i = add i32 %11, %add.i
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %sub6.i
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %15, %sub6.i
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %18 = call ptr @memcpy(ptr %17, ptr %rsp, i32 24)
  %va.i = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 2
  %19 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %va.i, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 %5
  %21 = load i32, ptr %tot_len.i, align 8
  %sub9.i = sub i32 %21, %5
  %22 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %22, i32 24
  %23 = call ptr @memcpy(ptr %add.ptr.i21.i, ptr %add.ptr.i, i32 %sub9.i)
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr [239 x ptr], ptr @chtls_handlers, i32 0, i32 %conv
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 %25(ptr noundef %cdev, ptr noundef nonnull %call.i.i) #13
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb4_pktgl_to_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_inline_feature(ptr nocapture noundef readonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lldi = getelementptr inbounds %struct.chtls_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldi, align 4
  %nports = getelementptr inbounds %struct.cxgb4_lld_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %nports, align 2
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %cmp7.not = icmp eq i8 %bf.clear, 0
  br i1 %cmp7.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.chtls_dev, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ports, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.08
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features, align 16
  %and = and i64 %8, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chtls_create_hash(ptr noundef %dev, ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp = icmp eq i8 %1, 10
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %2 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 6
  br i1 %cmp.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %4 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp3.i = icmp eq i16 %5, 2
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %6 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skc_rcv_saddr.i, align 4
  %and.i = and i32 %7, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and.i)
  %cmp7.i = icmp eq i32 %and.i, 2130706432
  br i1 %cmp7.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %sk_backlog_rcv.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 80
  %8 = ptrtoint ptr %sk_backlog_rcv.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @listen_backlog_rcv, ptr %sk_backlog_rcv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 8) #18
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end10.i.cleanup_crit_edge, label %if.end13.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %call7.i.i, align 8
  %sk15.i = getelementptr inbounds %struct.chtls_listen, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %sk15.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sk, ptr %sk15.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @notify_mutex, i32 noundef 0) #13
  %call16.i = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @listen_notify_list, i32 noundef 0, ptr noundef nonnull %call7.i.i) #13
  tail call void @mutex_unlock(ptr noundef nonnull @notify_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end13.i, %if.end10.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end13.i ], [ -93, %if.then.cleanup_crit_edge ], [ -99, %land.lhs.true.i.cleanup_crit_edge ], [ -12, %if.end10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_destroy_hash(ptr noundef %dev, ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp = icmp eq i8 %1, 10
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %2 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 6
  br i1 %cmp.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 8) #18
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call7.i.i, align 8
  %sk5.i = getelementptr inbounds %struct.chtls_listen, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %sk5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sk, ptr %sk5.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @notify_mutex, i32 noundef 0) #13
  %call6.i = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @listen_notify_list, i32 noundef 1, ptr noundef nonnull %call7.i.i) #13
  tail call void @mutex_unlock(ptr noundef nonnull @notify_mutex) #13
  br label %if.end

if.end:                                           ; preds = %if.end3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chtls_dev_release(ptr noundef %kref) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %kref, i32 -56
  %pdev = getelementptr i8, ptr %kref, i32 16
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tls_pdu_tx = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 73, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tls_pdu_tx, i32 noundef 4) #13
  %4 = ptrtoint ptr %tls_pdu_tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %tls_pdu_tx, align 4
  %tls_pdu_rx = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 73, i32 7
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tls_pdu_rx, i32 noundef 4) #13
  %5 = ptrtoint ptr %tls_pdu_rx to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %tls_pdu_rx, align 4
  tail call void @tls_toe_unregister_device(ptr noundef %add.ptr) #13
  %kmap.i = getelementptr i8, ptr %kref, i32 672
  %6 = ptrtoint ptr %kmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kmap.i, align 8
  tail call void @kvfree(ptr noundef %7) #13
  %hwtid_idr.i = getelementptr i8, ptr %kref, i32 208
  tail call void @idr_destroy(ptr noundef %hwtid_idr.i) #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.09.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.chtls_dev, ptr %add.ptr, i32 0, i32 14, i32 %i.09.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %9, i32 noundef 0) #13
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %chtls_free_uld.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

chtls_free_uld.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %lldi.i = getelementptr i8, ptr %kref, i32 12
  %10 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lldi.i, align 4
  tail call void @kfree(ptr noundef %11) #13
  %askb.i = getelementptr i8, ptr %kref, i32 532
  %12 = ptrtoint ptr %askb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %askb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %13, i32 noundef 0) #13
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_toe_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @listen_backlog_rcv(ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i, align 4
  %conv.i10 = zext i16 %5 to i32
  %add.ptr.i11 = getelementptr i8, ptr %1, i32 %conv.i10
  %cmp.not = icmp eq ptr %add.ptr.i, %add.ptr.i11
  br i1 %cmp.not, label %if.end, label %if.then, !prof !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 @tcp_v4_do_rcv(ptr noundef %sk, ptr noundef %skb) #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb, align 8
  tail call void %7(ptr noundef %sk, ptr noundef %skb) #13
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_v4_do_rcv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_toe_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !28, !29, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !48, !50, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_chtls__673_635_chtls_register6, !1, !"__initcall__kmod_chtls__673_635_chtls_register6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 635, i32 1}
!2 = !{ptr @__exitcall_chtls_unregister, !3, !"__exitcall_chtls_unregister", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 636, i32 1}
!4 = !{ptr @__UNIQUE_ID_description674, !5, !"__UNIQUE_ID_description674", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 638, i32 1}
!6 = !{ptr @__UNIQUE_ID_file675, !7, !"__UNIQUE_ID_file675", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 639, i32 1}
!8 = !{ptr @__UNIQUE_ID_license676, !7, !"__UNIQUE_ID_license676", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author677, !10, !"__UNIQUE_ID_author677", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 640, i32 1}
!11 = !{ptr @__UNIQUE_ID_version678, !12, !"__UNIQUE_ID_version678", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 641, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @chtls_cpl_prot, !18, !"chtls_cpl_prot", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 35, i32 21}
!19 = !{ptr @chtls_cpl_protv6, !20, !"chtls_cpl_protv6", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 35, i32 37}
!21 = !{ptr @chtls_rsk_ops, !22, !"chtls_rsk_ops", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 36, i32 25}
!23 = !{ptr @chtls_rsk_opsv6, !24, !"chtls_rsk_opsv6", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 36, i32 40}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 33, i32 8}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @notify_mutex, !26, !"notify_mutex", i1 false, i1 false}
!29 = !{ptr @listen_notify_list, !30, !"listen_notify_list", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 34, i32 8}
!31 = !{ptr @listen_notifier, !32, !"listen_notifier", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 74, i32 30}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 31, i32 8}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cdev_mutex, !34, !"cdev_mutex", i1 false, i1 false}
!37 = !{ptr @cdev_list, !38, !"cdev_list", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 30, i32 8}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 499, i32 8}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!45 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!50 = !{ptr @chtls_uld_info, !51, !"chtls_uld_info", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 581, i32 30}
!52 = !{ptr @chtls_uld_add.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 273, i32 2}
!54 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @chtls_uld_add.__key.13, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 274, i32 2}
!57 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @chtls_uld_add.__key.15, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 275, i32 2}
!60 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @xa_init_flags.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!63 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"send_page_order", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c", i32 37, i32 13}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2148312769}
!79 = !{i64 2148227233, i64 2148227265, i64 2148227294, i64 2148227328, i64 2148227359, i64 2148227382}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2149319217}
!82 = !{!"auto-init"}
!83 = !{i64 2152575144, i64 2152575169}
!84 = !{i64 5070699}
!85 = !{i64 5070896}
!86 = !{i64 2152556129}
!87 = !{i64 2152575825, i64 2152575850}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2148224768, i64 2148224800, i64 2148224829, i64 2148224863, i64 2148224894, i64 2148224917}
!90 = !{i64 2154574985, i64 2154575473, i64 2154575022, i64 2154575078, i64 2154575112, i64 2154575136, i64 2154575177, i64 2154575198, i64 2154575226, i64 2154575260}
