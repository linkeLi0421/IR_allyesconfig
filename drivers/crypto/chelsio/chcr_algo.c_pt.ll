; ModuleID = '/llk/IR_all_yes/drivers/crypto/chelsio/chcr_algo.c_pt.bc'
source_filename = "../drivers/crypto/chelsio/chcr_algo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.170, ptr, ptr, ptr, ptr, %union.anon.171, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.170 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.171 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.chcr_alg_template = type { i32, i32, [120 x i8], %union.anon.214 }
%union.anon.214 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.cpl_fw6_pld = type { i8, [5 x i8], i16, [4 x i64] }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.hash_wr_param = type { %struct.algo_param, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.algo_param = type { i32, i32, i32 }
%struct.cipher_wr_param = type { ptr, ptr, i32, i16 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.209, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.209 = type { ptr }
%struct.chcr_aead_reqctx = type { ptr, i32, i32, i32, i32, i16, i16, i16, i16, [48 x i8], ptr }
%struct.chcr_dev = type { %struct.spinlock, i32, %struct.atomic_t, i32, %struct.delayed_work, %struct.completion }
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
%struct.sk_buff_head = type { %union.anon.107, i32, %struct.spinlock }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.210, i32 }
%union.anon.210 = type { ptr }
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
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.chcr_hctx_per_wr = type { ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.156, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.156 = type { %struct.atomic_t }
%struct.ulptx_walk = type { ptr, i32, i32, i32, ptr, ptr }
%struct.ulptx_sgl = type { i32, i32, i64, [0 x %struct.ulptx_sge_pair] }
%struct.ulptx_sge_pair = type { [2 x i32], [2 x i64] }
%struct.cpl_rx_phys_dsgl = type { i32, i32, %struct.rss_header }
%struct.rss_header = type { i8, i8, i16, i32 }
%struct.phys_sge_pairs = type { [8 x i16], [8 x i64] }
%struct.dsgl_walk = type { i32, i32, ptr, ptr, ptr }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.chcr_skcipher_req_ctx = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i16, [16 x i8], [16 x i8], i16, i16, [54 x i8], %struct.skcipher_request }
%struct.chcr_wr = type { %struct.fw_crypto_lookaside_wr, %struct.ulp_txpkt, %struct.ulptx_idata, %struct.cpl_tx_sec_pdu, %struct._key_ctx }
%struct.fw_crypto_lookaside_wr = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.ulp_txpkt = type { i32, i32 }
%struct.ulptx_idata = type { i32, i32 }
%struct.cpl_tx_sec_pdu = type { i32, i32, i32, i32, i32, i32, i64 }
%struct._key_ctx = type { i32, [4 x i8], i64, [0 x i8] }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.le128 = type { i64, i64 }
%struct.chcr_context = type { ptr, i8, i8, i32, i32, %struct.completion, [0 x %struct.__crypto_ctx] }
%struct.__crypto_ctx = type { %union.anon.197 }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { %struct.anon.199, [0 x %struct.hmac_ctx] }
%struct.anon.199 = type {}
%struct.hmac_ctx = type { ptr, [128 x i8], [128 x i8] }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.uld_ctx = type { %struct.list_head, %struct.cxgb4_lld_info, %struct.chcr_dev }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.sge_uld_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, i8, i32, [56 x i8] }
%struct.chcr_ahash_req_ctx = type { %struct.chcr_hctx_per_wr, ptr, ptr, i64, i16, i16, i8, [64 x i8], [128 x i8], [128 x i8] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.ablk_ctx = type { ptr, i32, i32, i8, [64 x i8], [4 x i8], [32 x i8] }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
%struct.sha1_state = type { [5 x i32], i64, [64 x i8] }
%struct.sha256_state = type { [8 x i32], i64, [64 x i8] }
%struct.sha512_state = type { [8 x i64], [2 x i64], [128 x i8] }

@chcr_handle_cipher_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013chcr:%s : Failed to form WR. No memory\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"chcr_handle_cipher_resp\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/crypto/chelsio/chcr_algo.c\00", [61 x i8] zeroinitializer }, align 32
@chcr_handle_cipher_resp._entry_ptr = internal global ptr @chcr_handle_cipher_resp._entry, section ".printk_index", align 4
@sgl_ent_len = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 0, i32 0, i32 16, i32 24, i32 40, i32 48, i32 64, i32 72, i32 88, i32 96, i32 112, i32 120, i32 136, i32 144, i32 160, i32 168, i32 184, i32 192, i32 208, i32 216, i32 232, i32 240, i32 256, i32 264, i32 280, i32 288, i32 304, i32 312, i32 328, i32 336, i32 352, i32 360, i32 376], [60 x i8] zeroinitializer }, align 32
@dsgl_ent_len = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 0, i32 32, i32 32, i32 48, i32 48, i32 64, i32 64, i32 80, i32 80, i32 112, i32 112, i32 128, i32 128, i32 144, i32 144, i32 160, i32 160, i32 192, i32 192, i32 208, i32 208, i32 224, i32 224, i32 240, i32 240, i32 272, i32 272, i32 288, i32 288, i32 304, i32 304, i32 320, i32 320], [60 x i8] zeroinitializer }, align 32
@get_alg_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013chcr:ERROR, unsupported digest size\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_alg_config\00", [17 x i8] zeroinitializer }, align 32
@get_alg_config._entry_ptr = internal global ptr @get_alg_config._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SG should not be null here\0A\00", [36 x i8] zeroinitializer }, align 32
@chcr_register_alg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 4499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013chcr:%s : Algorithm registration failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chcr_register_alg\00", [46 x i8] zeroinitializer }, align 32
@chcr_register_alg._entry_ptr = internal global ptr @chcr_register_alg._entry, section ".printk_index", align 4
@driver_algs = internal global <{ { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] } }, %struct.chcr_alg_template, %struct.chcr_alg_template, %struct.chcr_alg_template, %struct.chcr_alg_template, %struct.chcr_alg_template, %struct.chcr_alg_template, %struct.chcr_alg_template, %struct.chcr_alg_template, %struct.chcr_alg_template, %struct.chcr_alg_template, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } }> <{ { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] } } { i32 184549381, i32 0, [120 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @chcr_aes_cbc_setkey, ptr @chcr_aes_encrypt, ptr @chcr_aes_decrypt, ptr @chcr_init_tfm, ptr @chcr_exit_tfm, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] } } { i32 167772165, i32 0, [120 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @chcr_aes_xts_setkey, ptr @chcr_aes_encrypt, ptr @chcr_aes_decrypt, ptr @chcr_init_tfm, ptr @chcr_exit_tfm, i32 32, i32 64, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xts-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] } } { i32 134217733, i32 0, [120 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @chcr_aes_ctr_setkey, ptr @chcr_aes_encrypt, ptr @chcr_aes_decrypt, ptr @chcr_init_tfm, ptr @chcr_exit_tfm, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] } } { i32 150994949, i32 0, [120 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @chcr_aes_rfc3686_setkey, ptr @chcr_aes_encrypt, ptr @chcr_aes_decrypt, ptr @chcr_rfc3686_init, ptr @chcr_exit_tfm, i32 20, i32 36, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc3686(ctr(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc3686-ctr-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, %struct.chcr_alg_template { i32 15, i32 0, [120 x i8] undef, %union.anon.214 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } } } } }, %struct.chcr_alg_template { i32 15, i32 0, [120 x i8] undef, %union.anon.214 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } } } } }, %struct.chcr_alg_template { i32 15, i32 0, [120 x i8] undef, %union.anon.214 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } } } } }, %struct.chcr_alg_template { i32 15, i32 0, [120 x i8] undef, %union.anon.214 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } } } } }, %struct.chcr_alg_template { i32 15, i32 0, [120 x i8] undef, %union.anon.214 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } } } } }, %struct.chcr_alg_template { i32 16777231, i32 0, [120 x i8] undef, %union.anon.214 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha1-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } } } } }, %struct.chcr_alg_template { i32 16777231, i32 0, [120 x i8] undef, %union.anon.214 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha224-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } } } } }, %struct.chcr_alg_template { i32 16777231, i32 0, [120 x i8] undef, %union.anon.214 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha256-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } } } } }, %struct.chcr_alg_template { i32 16777231, i32 0, [120 x i8] undef, %union.anon.214 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha384-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } } } } }, %struct.chcr_alg_template { i32 16777231, i32 0, [120 x i8] undef, %union.anon.214 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha512-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } } } } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 50331651, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_gcm_setkey, ptr @chcr_gcm_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 176, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gcm-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 33554435, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_gcm_setkey, ptr @chcr_4106_4309_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 176, i32 0, i32 6001, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4106(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc4106-gcm-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 83886083, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_aead_ccm_setkey, ptr @chcr_ccm_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 16, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 160, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"ccm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ccm-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 100663299, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_aead_rfc4309_setkey, ptr @chcr_4106_4309_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 160, i32 0, i32 6001, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4309(ccm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc4309-ccm-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 67108867, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_authenc_setkey, ptr @chcr_authenc_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 16, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 321, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 67108867, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_authenc_setkey, ptr @chcr_authenc_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 16, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 321, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 67108867, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_authenc_setkey, ptr @chcr_authenc_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 16, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 321, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-cbc-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 67108867, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_authenc_setkey, ptr @chcr_authenc_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 16, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 321, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-cbc-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 67108867, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_authenc_setkey, ptr @chcr_authenc_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 16, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 321, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-cbc-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 117440515, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_aead_digest_null_setkey, ptr @chcr_authenc_null_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 16, i32 0, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 321, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(digest_null,cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-digest_null-cbc-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 201326595, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_authenc_setkey, ptr @chcr_authenc_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 321, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-rfc3686-ctr-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 201326595, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_authenc_setkey, ptr @chcr_authenc_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 321, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-rfc3686-ctr-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 201326595, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_authenc_setkey, ptr @chcr_authenc_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 8, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 321, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-rfc3686-ctr-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 201326595, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_authenc_setkey, ptr @chcr_authenc_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 8, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 321, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-rfc3686-ctr-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 201326595, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_authenc_setkey, ptr @chcr_authenc_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 8, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 321, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-rfc3686-ctr-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, { i32, i32, [120 x i8], { %struct.aead_alg, [128 x i8] } } { i32 218103811, i32 0, [120 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @chcr_aead_digest_null_setkey, ptr @chcr_authenc_null_setauthsize, ptr null, ptr null, ptr null, ptr null, i32 8, i32 0, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 321, i32 0, i32 6000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(digest_null,rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-digest_null-rfc3686-ctr-aes-chcr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.170 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.171 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } } }>, align 128
@round_constant = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912, i32 1073741824, i32 -2147483648, i32 452984832, i32 905969664, i32 1811939328], [52 x i8] zeroinitializer }, align 32
@aes_sbox = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\\\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", [64 x i8] zeroinitializer }, align 32
@process_cipher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013chcr:AES: Invalid value of Key Len %d nbytes %d IV Len %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"process_cipher\00", [17 x i8] zeroinitializer }, align 32
@process_cipher._entry_ptr = internal global ptr @process_cipher._entry, section ".printk_index", align 4
@chcr_init_tfm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013chcr:failed to allocate fallback for %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chcr_init_tfm\00", [18 x i8] zeroinitializer }, align 32
@chcr_init_tfm._entry_ptr = internal global ptr @chcr_init_tfm._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@chcr_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013chcr:chcr device assignment fails\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chcr_device_init\00", [47 x i8] zeroinitializer }, align 32
@chcr_device_init._entry_ptr = internal global ptr @chcr_device_init._entry, section ".printk_index", align 4
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctr(aes)\00", [23 x i8] zeroinitializer }, align 32
@chcr_rfc3686_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.19, ptr @.str.2, i32 1497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chcr_rfc3686_init\00", [46 x i8] zeroinitializer }, align 32
@chcr_rfc3686_init._entry_ptr = internal global ptr @chcr_rfc3686_init._entry, section ".printk_index", align 4
@chcr_gcm_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 3515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013chcr:GCM: Invalid key length %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chcr_gcm_setkey\00", [16 x i8] zeroinitializer }, align 32
@chcr_gcm_setkey._entry_ptr = internal global ptr @chcr_gcm_setkey._entry, section ".printk_index", align 4
@chcr_authenc_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 3572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013chcr:Unsupported digest size\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chcr_authenc_setkey\00", [44 x i8] zeroinitializer }, align 32
@chcr_authenc_setkey._entry_ptr = internal global ptr @chcr_authenc_setkey._entry, section ".printk_index", align 4
@chcr_authenc_setkey._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 3591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013chcr:Unsupported cipher key\0A\00", [33 x i8] zeroinitializer }, align 32
@chcr_authenc_setkey._entry_ptr.26 = internal global ptr @chcr_authenc_setkey._entry.24, section ".printk_index", align 4
@chcr_authenc_setkey._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 3609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013chcr:Base driver cannot be loaded\0A\00", [59 x i8] zeroinitializer }, align 32
@chcr_authenc_setkey._entry_ptr.29 = internal global ptr @chcr_authenc_setkey._entry.27, section ".printk_index", align 4
@chcr_authenc_setkey._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 3625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@chcr_authenc_setkey._entry_ptr.31 = internal global ptr @chcr_authenc_setkey._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha224\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha384\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@chcr_compute_partial_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013chcr:Unknown digest size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chcr_compute_partial_hash\00", [38 x i8] zeroinitializer }, align 32
@chcr_compute_partial_hash._entry_ptr = internal global ptr @chcr_compute_partial_hash._entry, section ".printk_index", align 4
@chcr_aead_digest_null_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 3710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013chcr:Unsupported cipher key %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"chcr_aead_digest_null_setkey\00", [35 x i8] zeroinitializer }, align 32
@chcr_aead_digest_null_setkey._entry_ptr = internal global ptr @chcr_aead_digest_null_setkey._entry, section ".printk_index", align 4
@chcr_aead_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 3746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013chcr:%s : No crypto device.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chcr_aead_op\00", [19 x i8] zeroinitializer }, align 32
@chcr_aead_op._entry_ptr = internal global ptr @chcr_aead_op._entry, section ".printk_index", align 4
@chcr_aead_op._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 3767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013chcr:RFC4106: Invalid value of assoclen %d\0A\00", [50 x i8] zeroinitializer }, align 32
@chcr_aead_op._entry_ptr.45 = internal global ptr @chcr_aead_op._entry.43, section ".printk_index", align 4
@aead_ccm_validate_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 3020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013chcr:CCM: IV check fails\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aead_ccm_validate_input\00", [40 x i8] zeroinitializer }, align 32
@aead_ccm_validate_input._entry_ptr = internal global ptr @aead_ccm_validate_input._entry, section ".printk_index", align 4
@aead_ccm_validate_input._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 3026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013chcr:RFC4309: Invalid AAD length %d\0A\00", [57 x i8] zeroinitializer }, align 32
@aead_ccm_validate_input._entry_ptr.50 = internal global ptr @aead_ccm_validate_input._entry.48, section ".printk_index", align 4
@chcr_sha384_init = internal constant { [8 x i64], [32 x i8] } { [8 x i64] [i64 -3766243637369397544, i64 7105036623409894663, i64 -7973340178411365097, i64 1526699215303891257, i64 7436329637833083697, i64 -8163818279084223215, i64 -2662702644619276377, i64 5167115440072839076], [32 x i8] zeroinitializer }, align 32
@chcr_sha512_init = internal constant { [8 x i64], [32 x i8] } { [8 x i64] [i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935, i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809], [32 x i8] zeroinitializer }, align 32
@chcr_sha1_init = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878, i32 -1009589776], [44 x i8] zeroinitializer }, align 32
@chcr_sha224_init = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599, i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868], [32 x i8] zeroinitializer }, align 32
@chcr_sha256_init = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], [32 x i8] zeroinitializer }, align 32
@switch.table.chcr_aead_encrypt = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @create_authenc_wr, ptr @create_aead_ccm_wr, ptr @create_aead_ccm_wr, ptr @create_authenc_wr, ptr @create_gcm_wr, ptr @create_gcm_wr, ptr @create_gcm_wr, ptr @create_gcm_wr, ptr @create_authenc_wr, ptr @create_authenc_wr], [56 x i8] zeroinitializer }, align 32
@switch.table.chcr_aead_decrypt = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @create_authenc_wr, ptr @create_aead_ccm_wr, ptr @create_aead_ccm_wr, ptr @create_authenc_wr, ptr @create_gcm_wr, ptr @create_gcm_wr, ptr @create_gcm_wr, ptr @create_gcm_wr, ptr @create_authenc_wr, ptr @create_authenc_wr], [56 x i8] zeroinitializer }, align 32
@switch.table.chcr_hmac_cra_init = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.32, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.35, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.36], [48 x i8] zeroinitializer }, align 32
@switch.table.chcr_gcm_setauthsize = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 4, i16 4, i16 4, i16 4, i16 7, i16 4, i16 4, i16 4, i16 3, i16 1, i16 6, i16 1, i16 1], [38 x i8] zeroinitializer }, align 32
@switch.table.chcr_gcm_setauthsize.51 = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 1, i16 0], [38 x i8] zeroinitializer }, align 32
@switch.table.chcr_ccm_setauthsize = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 4, i16 4, i16 5, i16 4, i16 7, i16 4, i16 2, i16 4, i16 3, i16 4, i16 6, i16 4, i16 1], [38 x i8] zeroinitializer }, align 32
@switch.table.chcr_authenc_setkey = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 20, i32 20, i32 32, i32 32, i32 20, i32 20, i32 20, i32 64, i32 20, i32 20, i32 20, i32 64], [48 x i8] zeroinitializer }, align 32
@switch.table.chcr_authenc_setkey.52 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 3076, i32 3076, i32 3084, i32 3084, i32 3076, i32 3076, i32 3076, i32 3088, i32 3076, i32 3076, i32 3076, i32 3088], [48 x i8] zeroinitializer }, align 32
@switch.table.chcr_authenc_setkey.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01\01\02\03\01\01\01\07\01\01\01\08", [20 x i8] zeroinitializer }, align 32
@switch.table.chcr_authenc_setkey.54 = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.32, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.35, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.36], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 33554432, i64 50331648]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 134217728, i64 167772160, i64 184549376]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 28, i64 48]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 7, i64 11]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 134217728, i64 150994944]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.67 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 7, i64 11]
@__sancov_gen_cov_switch_values.68 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 7, i64 11]
@__sancov_gen_cov_switch_values.69 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 7, i64 11]
@__sancov_gen_cov_switch_values.70 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 7, i64 11]
@__sancov_gen_cov_switch_values.71 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 7, i64 11]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 28, i64 48]
@__sancov_gen_cov_switch_values.73 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 7, i64 11]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 19, i64 27, i64 35]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 201326592, i64 218103808]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 67108864, i64 117440512]
@__sancov_gen_cov_switch_values.81 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 6, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 201326592, i64 218103808]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 67108864, i64 117440512]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 128, i64 192, i64 256]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 134217728, i64 150994944]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 7, i64 11]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 117440512, i64 218103808]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 117440512, i64 218103808]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 201326592, i64 218103808]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 20]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1214, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"sgl_ent_len\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 76, i32 21 }
@___asan_gen_.109 = private unnamed_addr constant [13 x i8] c"dsgl_ent_len\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 83, i32 21 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1544, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 326, i32 6 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 528, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 4499, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [15 x i8] c"round_constant\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 90, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant [9 x i8] c"aes_sbox\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 371, i32 17 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1269, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1475, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 87, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1450, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1494, i32 45 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1497, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3515, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3572, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3591, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3609, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3625, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 286, i32 34 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 289, i32 34 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 292, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 295, i32 34 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 298, i32 34 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 344, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3710, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3746, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3766, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3020, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private constant [38 x i8] c"../drivers/crypto/chelsio/chcr_algo.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 3025, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"chcr_sha384_init\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 317, i32 18 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"chcr_sha512_init\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 322, i32 18 }
@___asan_gen_.289 = private unnamed_addr constant [15 x i8] c"chcr_sha1_init\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 303, i32 18 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"chcr_sha224_init\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 307, i32 18 }
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"chcr_sha256_init\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [38 x i8] c"../drivers/crypto/chelsio/chcr_algo.h\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 312, i32 18 }
@___asan_gen_.298 = private unnamed_addr constant [31 x i8] c"switch.table.chcr_aead_encrypt\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [31 x i8] c"switch.table.chcr_aead_decrypt\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [32 x i8] c"switch.table.chcr_hmac_cra_init\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [34 x i8] c"switch.table.chcr_gcm_setauthsize\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [37 x i8] c"switch.table.chcr_gcm_setauthsize.51\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [34 x i8] c"switch.table.chcr_ccm_setauthsize\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [33 x i8] c"switch.table.chcr_authenc_setkey\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [36 x i8] c"switch.table.chcr_authenc_setkey.52\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [36 x i8] c"switch.table.chcr_authenc_setkey.53\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [36 x i8] c"switch.table.chcr_authenc_setkey.54\00", align 1
@llvm.compiler.used = appending global [96 x ptr] [ptr @aead_ccm_validate_input._entry, ptr @aead_ccm_validate_input._entry.48, ptr @aead_ccm_validate_input._entry_ptr, ptr @aead_ccm_validate_input._entry_ptr.50, ptr @chcr_aead_digest_null_setkey._entry, ptr @chcr_aead_digest_null_setkey._entry_ptr, ptr @chcr_aead_op._entry, ptr @chcr_aead_op._entry.43, ptr @chcr_aead_op._entry_ptr, ptr @chcr_aead_op._entry_ptr.45, ptr @chcr_authenc_setkey._entry, ptr @chcr_authenc_setkey._entry.24, ptr @chcr_authenc_setkey._entry.27, ptr @chcr_authenc_setkey._entry.30, ptr @chcr_authenc_setkey._entry_ptr, ptr @chcr_authenc_setkey._entry_ptr.26, ptr @chcr_authenc_setkey._entry_ptr.29, ptr @chcr_authenc_setkey._entry_ptr.31, ptr @chcr_compute_partial_hash._entry, ptr @chcr_compute_partial_hash._entry_ptr, ptr @chcr_device_init._entry, ptr @chcr_device_init._entry_ptr, ptr @chcr_gcm_setkey._entry, ptr @chcr_gcm_setkey._entry_ptr, ptr @chcr_handle_cipher_resp._entry, ptr @chcr_handle_cipher_resp._entry_ptr, ptr @chcr_init_tfm._entry, ptr @chcr_init_tfm._entry_ptr, ptr @chcr_register_alg._entry, ptr @chcr_register_alg._entry_ptr, ptr @chcr_rfc3686_init._entry, ptr @chcr_rfc3686_init._entry_ptr, ptr @get_alg_config._entry, ptr @get_alg_config._entry_ptr, ptr @process_cipher._entry, ptr @process_cipher._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sgl_ent_len, ptr @dsgl_ent_len, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @round_constant, ptr @aes_sbox, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @init_completion.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @chcr_sha384_init, ptr @chcr_sha512_init, ptr @chcr_sha1_init, ptr @chcr_sha224_init, ptr @chcr_sha256_init, ptr @switch.table.chcr_aead_encrypt, ptr @switch.table.chcr_aead_decrypt, ptr @switch.table.chcr_hmac_cra_init, ptr @switch.table.chcr_gcm_setauthsize, ptr @switch.table.chcr_gcm_setauthsize.51, ptr @switch.table.chcr_ccm_setauthsize, ptr @switch.table.chcr_authenc_setkey, ptr @switch.table.chcr_authenc_setkey.52, ptr @switch.table.chcr_authenc_setkey.53, ptr @switch.table.chcr_authenc_setkey.54], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_handle_cipher_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgl_ent_len to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsgl_ent_len to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_alg_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_register_alg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @round_constant to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_sbox to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_cipher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_init_tfm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_rfc3686_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_gcm_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_authenc_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_authenc_setkey._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_authenc_setkey._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_authenc_setkey._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_compute_partial_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_aead_digest_null_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_aead_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_aead_op._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_ccm_validate_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_ccm_validate_input._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_sha384_init to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_sha512_init to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_sha1_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_sha224_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_sha256_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chcr_aead_encrypt to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chcr_aead_decrypt to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chcr_hmac_cra_init to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chcr_gcm_setauthsize to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chcr_gcm_setauthsize.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chcr_ccm_setauthsize to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chcr_authenc_setkey to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chcr_authenc_setkey.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chcr_authenc_setkey.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chcr_authenc_setkey.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chcr_verify_tag(ptr nocapture noundef readonly %req, ptr noundef %input, ptr nocapture noundef writeonly %err) local_unnamed_addr #0 align 64 {
entry:
  %temp = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp) #11
  %0 = call ptr @memset(ptr %temp, i32 255, i32 64)
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 -128
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 128
  %__crt_alg.i.i = getelementptr i8, ptr %2, i32 12
  %5 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -256
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 128
  %and.i = and i32 %8, 251658240
  %9 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.else [
    i32 33554432, label %entry.if.then_crit_edge
    i32 50331648, label %entry.if.then_crit_edge34
  ]

entry.if.then_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge34
  %arrayidx = getelementptr %struct.cpl_fw6_pld, ptr %input, i32 0, i32 3, i32 2
  %add.ptr = getelementptr %struct.cpl_fw6_pld, ptr %input, i32 1
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %arrayidx, ptr noundef %add.ptr, i32 noundef %4) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 4
  %call8 = tail call i32 @sg_nents(ptr noundef %11) #11
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cryptlen, align 4
  %add = sub i32 %13, %4
  %sub = add i32 %add, %15
  %call9 = call i32 @sg_pcopy_to_buffer(ptr noundef %11, i32 noundef %call8, ptr noundef nonnull %temp, i32 noundef %4, i32 noundef %sub) #11
  %add.ptr11 = getelementptr %struct.cpl_fw6_pld, ptr %input, i32 1
  %call.i31 = call i32 @__crypto_memneq(ptr noundef nonnull %temp, ptr noundef %add.ptr11, i32 noundef %4) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp.0.in.in = phi i32 [ %call.i, %if.then ], [ %call.i31, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.in.in)
  %cmp.0.in.not = icmp eq i32 %cmp.0.in.in, 0
  %. = select i1 %cmp.0.in.not, i32 0, i32 -74
  %16 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %., ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chcr_handle_resp(ptr noundef %req, ptr noundef %input, i32 noundef %err) local_unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.hash_wr_param, align 8
  %wrparam.i = alloca %struct.cipher_wr_param, align 4
  %err.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm1 = getelementptr %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm1, align 4
  %__crt_ctx.i = getelementptr %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i, align 4
  %lldi.i = getelementptr i8, ptr %3, i32 -148
  %4 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldi.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %__crt_alg = getelementptr %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg, align 4
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %cra_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cra_flags, align 16
  %and = and i32 %11, 15
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb5
    i32 15, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.addr.i)
  %13 = ptrtoint ptr %err.addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %err, ptr %err.addr.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %14 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_ctx.i, align 4
  %lldi.i.i = getelementptr i8, ptr %15, i32 -148
  %16 = ptrtoint ptr %lldi.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lldi.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %op.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %op.i.i, align 4
  %conv.i.i = trunc i32 %19 to i16
  tail call void @chcr_aead_dma_unmap(ptr noundef %dev.i.i, ptr noundef %req, i16 noundef zeroext %conv.i.i) #11
  %verify.i = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %verify.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %verify.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp.i = icmp eq i16 %21, 1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.chcr_handle_aead_resp.exit_crit_edge

sw.bb.chcr_handle_aead_resp.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_handle_aead_resp.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void @chcr_verify_tag(ptr noundef %req, ptr noundef %input, ptr noundef nonnull %err.addr.i) #11
  %22 = ptrtoint ptr %verify.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %verify.i, align 2
  br label %chcr_handle_aead_resp.exit

chcr_handle_aead_resp.exit:                       ; preds = %if.then.i, %sw.bb.chcr_handle_aead_resp.exit_crit_edge
  %inflight.i.i = getelementptr inbounds %struct.chcr_dev, ptr %15, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i.i, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i.i, ptr %inflight.i.i, i32 1, ptr elementtype(i32) %inflight.i.i) #11, !srcloc !135
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %complete.i, align 8
  %26 = ptrtoint ptr %err.addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err.addr.i, align 4
  tail call void %25(ptr noundef %req, i32 noundef %27) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.addr.i)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %req, i32 -16
  %28 = ptrtoint ptr %tfm1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tfm1, align 16
  %__crt_ctx.i.i.i.i21 = getelementptr i8, ptr %29, i32 128
  %ablkctx.i.i = getelementptr i8, ptr %29, i32 200
  %30 = ptrtoint ptr %__crt_ctx.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__crt_ctx.i.i.i.i21, align 4
  %lldi.i.i22 = getelementptr i8, ptr %31, i32 -148
  %32 = ptrtoint ptr %lldi.i.i22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lldi.i.i22, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrparam.i) #11
  %36 = call ptr @memset(ptr %wrparam.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not.i = icmp eq i32 %err, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb5.unmap.i_crit_edge

sw.bb5.unmap.i_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap.i

if.end.i:                                         ; preds = %sw.bb5
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 128
  %processed.i = getelementptr i8, ptr %req, i32 120
  %39 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %processed.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i23 = icmp eq i32 %38, %40
  br i1 %cmp.i23, label %if.then11.i, label %if.end16.i

if.then11.i:                                      ; preds = %if.end.i
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %src.i.i = getelementptr i8, ptr %req, i32 -8
  %41 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %src.i.i, align 8
  %dst.i.i = getelementptr i8, ptr %req, i32 -4
  %43 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dst.i.i, align 4
  %cmp.i.i = icmp eq ptr %42, %44
  %call.i.i24 = tail call i32 @sg_nents(ptr noundef %42) #11
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev14.i, ptr noundef %42, i32 noundef %call.i.i24, i32 noundef 0, i32 noundef 0) #11
  br label %chcr_cipher_dma_unmap.exit.i

if.else.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev14.i, ptr noundef %42, i32 noundef %call.i.i24, i32 noundef 1, i32 noundef 0) #11
  %45 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dst.i.i, align 4
  %call8.i.i = tail call i32 @sg_nents(ptr noundef %46) #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev14.i, ptr noundef %46, i32 noundef %call8.i.i, i32 noundef 2, i32 noundef 0) #11
  br label %chcr_cipher_dma_unmap.exit.i

chcr_cipher_dma_unmap.exit.i:                     ; preds = %if.else.i.i, %if.then.i.i
  %iv.i = getelementptr i8, ptr %req, i32 -12
  %47 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iv.i, align 4
  %49 = ptrtoint ptr %tfm1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tfm1, align 16
  %__crt_alg.i.i.i.i = getelementptr i8, ptr %50, i32 12
  %51 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %52, i32 -256
  %53 = ptrtoint ptr %add.ptr.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i6.i, align 128
  %and.i.i.i = and i32 %54, 251658240
  %55 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and.i.i.i, label %chcr_cipher_dma_unmap.exit.i.complete.i27_crit_edge [
    i32 134217728, label %if.then.i7.i
    i32 167772160, label %if.then5.i.i
    i32 184549376, label %if.then12.i.i
  ]

chcr_cipher_dma_unmap.exit.i.complete.i27_crit_edge: ; preds = %chcr_cipher_dma_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %complete.i27

if.then.i7.i:                                     ; preds = %chcr_cipher_dma_unmap.exit.i
  %56 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %processed.i, align 8
  %sub.i.i = add i32 %57, 15
  %div30.i.i = lshr i32 %sub.i.i, 4
  %incdec.ptr.i.i.i = getelementptr i8, ptr %48, i32 12
  %58 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %incdec.ptr.i.i.i, align 4
  %add1.i.i.i = add i32 %div30.i.i, %59
  store i32 %add1.i.i.i, ptr %incdec.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %add1.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %59, %add1.i.i.i
  br i1 %cmp2.i.i.i, label %if.then.i7.i.complete.i27_crit_edge, label %for.cond.i.i.i

if.then.i7.i.complete.i27_crit_edge:              ; preds = %if.then.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %complete.i27

for.cond.i.i.i:                                   ; preds = %if.then.i7.i
  %incdec.ptr.1.i.i.i = getelementptr i8, ptr %48, i32 8
  %60 = ptrtoint ptr %incdec.ptr.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %incdec.ptr.1.i.i.i, align 4
  %add1.1.i.i.i = add i32 %61, 1
  store i32 %add1.1.i.i.i, ptr %incdec.ptr.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cmp2.1.not.i.i.i = icmp eq i32 %61, -1
  br i1 %cmp2.1.not.i.i.i, label %for.cond.1.i.i.i, label %for.cond.i.i.i.complete.i27_crit_edge

for.cond.i.i.i.complete.i27_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %complete.i27

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %incdec.ptr.2.i.i.i = getelementptr i8, ptr %48, i32 4
  %62 = ptrtoint ptr %incdec.ptr.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %incdec.ptr.2.i.i.i, align 4
  %add1.2.i.i.i = add i32 %63, 1
  store i32 %add1.2.i.i.i, ptr %incdec.ptr.2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp2.2.not.i.i.i = icmp eq i32 %63, -1
  br i1 %cmp2.2.not.i.i.i, label %for.cond.2.i.i.i, label %for.cond.1.i.i.i.complete.i27_crit_edge

for.cond.1.i.i.i.complete.i27_crit_edge:          ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %complete.i27

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %48, align 4
  %add1.3.i.i.i = add i32 %65, 1
  store i32 %add1.3.i.i.i, ptr %48, align 4
  br label %complete.i27

if.then5.i.i:                                     ; preds = %chcr_cipher_dma_unmap.exit.i
  %partial_req.i.i = getelementptr i8, ptr %req, i32 128
  %66 = ptrtoint ptr %partial_req.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %partial_req.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i, label %if.then6.i.i, label %if.else8.i.i

if.then6.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %iv7.i.i = getelementptr i8, ptr %req, i32 150
  %68 = call ptr @memcpy(ptr %48, ptr %iv7.i.i, i32 16)
  br label %complete.i27

if.else8.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i.i = tail call fastcc i32 @chcr_update_tweak(ptr noundef %add.ptr.i, ptr noundef %48, i32 noundef 1) #11
  br label %complete.i27

if.then12.i.i:                                    ; preds = %chcr_cipher_dma_unmap.exit.i
  %op.i.i25 = getelementptr i8, ptr %req, i32 144
  %69 = ptrtoint ptr %op.i.i25 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %op.i.i25, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool13.not.i.i = icmp eq i32 %70, 0
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %if.then12.i.i.complete.i27_crit_edge

if.then12.i.i.complete.i27_crit_edge:             ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %complete.i27

if.then14.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.cpl_fw6_pld, ptr %input, i32 0, i32 3, i32 2
  %71 = call ptr @memcpy(ptr %48, ptr %arrayidx.i.i, i32 16)
  br label %complete.i27

if.end16.i:                                       ; preds = %if.end.i
  %imm.i = getelementptr i8, ptr %req, i32 148
  %72 = ptrtoint ptr %imm.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %imm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool17.not.i = icmp eq i16 %73, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.else29.i

if.then18.i:                                      ; preds = %if.end16.i
  %srcsg.i = getelementptr i8, ptr %req, i32 132
  %74 = ptrtoint ptr %srcsg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %srcsg.i, align 4
  %dstsg.i = getelementptr i8, ptr %req, i32 116
  %76 = ptrtoint ptr %dstsg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dstsg.i, align 4
  %enckey_len.i = getelementptr i8, ptr %29, i32 208
  %78 = ptrtoint ptr %enckey_len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %enckey_len.i, align 4
  %sub.i = sub i32 368, %79
  %src_ofst.i = getelementptr i8, ptr %req, i32 136
  %80 = ptrtoint ptr %src_ofst.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %src_ofst.i, align 8
  %dst_ofst.i = getelementptr i8, ptr %req, i32 140
  %82 = ptrtoint ptr %dst_ofst.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dst_ofst.i, align 4
  %call19.i = tail call fastcc i32 @chcr_sg_ent_in_wr(ptr noundef %75, ptr noundef %77, i32 noundef %sub.i, i32 noundef %81, i32 noundef %83) #11
  %84 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %processed.i, align 8
  %add.i = add i32 %85, %call19.i
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %87)
  %cmp22.not.i = icmp ult i32 %add.i, %87
  br i1 %cmp22.not.i, label %if.else.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub26.i = sub i32 %87, %85
  br label %if.end33.i

if.else.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = srem i32 %call19.i, 16
  %sub27.i = sub i32 %call19.i, %rem.i
  br label %if.end33.i

if.else29.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub32.i = sub i32 %38, %40
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else29.i, %if.else.i, %if.then23.i
  %bytes.0.i = phi i32 [ %sub32.i, %if.else29.i ], [ %sub26.i, %if.then23.i ], [ %sub27.i, %if.else.i ]
  %iv34.i = getelementptr i8, ptr %req, i32 150
  %88 = ptrtoint ptr %tfm1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tfm1, align 16
  %__crt_alg.i.i.i9.i = getelementptr i8, ptr %89, i32 12
  %90 = ptrtoint ptr %__crt_alg.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %__crt_alg.i.i.i9.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %91, i32 -256
  %92 = ptrtoint ptr %add.ptr.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i.i10.i, align 128
  %and.i.i11.i = and i32 %93, 251658240
  %94 = add nsw i32 %and.i.i11.i, -134217728
  %95 = lshr exact i32 %94, 24
  %trunc.i.i = trunc i32 %95 to i8
  %96 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %trunc.i.i, label %if.end33.i.if.end38.i_crit_edge [
    i8 0, label %if.then.i17.i
    i8 1, label %if.then5.i28.i
    i8 2, label %chcr_update_cipher_iv.exit.i
    i8 3, label %if.then16.i.i
  ]

if.end33.i.if.end38.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then.i17.i:                                    ; preds = %if.end33.i
  %iv3.i12.i = getelementptr i8, ptr %req, i32 -12
  %97 = ptrtoint ptr %iv3.i12.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %iv3.i12.i, align 4
  %99 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %processed.i, align 8
  %div38.i.i = lshr i32 %100, 4
  %101 = call ptr @memcpy(ptr %iv34.i, ptr %98, i32 16)
  %incdec.ptr.i.i14.i = getelementptr i8, ptr %req, i32 162
  %102 = ptrtoint ptr %incdec.ptr.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %incdec.ptr.i.i14.i, align 4
  %add1.i.i15.i = add i32 %103, %div38.i.i
  store i32 %add1.i.i15.i, ptr %incdec.ptr.i.i14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %add1.i.i15.i)
  %cmp2.i.i16.i = icmp ult i32 %103, %add1.i.i15.i
  br i1 %cmp2.i.i16.i, label %if.then.i17.i.if.end38.i_crit_edge, label %for.cond.i.i21.i

if.then.i17.i.if.end38.i_crit_edge:               ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

for.cond.i.i21.i:                                 ; preds = %if.then.i17.i
  %incdec.ptr.1.i.i18.i = getelementptr i8, ptr %req, i32 158
  %104 = ptrtoint ptr %incdec.ptr.1.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %incdec.ptr.1.i.i18.i, align 4
  %add1.1.i.i19.i = add i32 %105, 1
  store i32 %add1.1.i.i19.i, ptr %incdec.ptr.1.i.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp2.1.not.i.i20.i = icmp eq i32 %105, -1
  br i1 %cmp2.1.not.i.i20.i, label %for.cond.1.i.i25.i, label %for.cond.i.i21.i.if.end38.i_crit_edge

for.cond.i.i21.i.if.end38.i_crit_edge:            ; preds = %for.cond.i.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

for.cond.1.i.i25.i:                               ; preds = %for.cond.i.i21.i
  %incdec.ptr.2.i.i22.i = getelementptr i8, ptr %req, i32 154
  %106 = ptrtoint ptr %incdec.ptr.2.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %incdec.ptr.2.i.i22.i, align 4
  %add1.2.i.i23.i = add i32 %107, 1
  store i32 %add1.2.i.i23.i, ptr %incdec.ptr.2.i.i22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %cmp2.2.not.i.i24.i = icmp eq i32 %107, -1
  br i1 %cmp2.2.not.i.i24.i, label %for.cond.2.i.i27.i, label %for.cond.1.i.i25.i.if.end38.i_crit_edge

for.cond.1.i.i25.i.if.end38.i_crit_edge:          ; preds = %for.cond.1.i.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

for.cond.2.i.i27.i:                               ; preds = %for.cond.1.i.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %iv34.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %iv34.i, align 4
  %add1.3.i.i26.i = add i32 %109, 1
  store i32 %add1.3.i.i26.i, ptr %iv34.i, align 4
  br label %if.end38.i

if.then5.i28.i:                                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %processed.i, align 8
  %div737.i.i = lshr i32 %111, 4
  %add.i.i = add nuw nsw i32 %div737.i.i, 1
  %add.ptr9.i.i = getelementptr i8, ptr %req, i32 162
  %112 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add.i.i, ptr %add.ptr9.i.i, align 4
  br label %if.end38.i

if.then16.i.i:                                    ; preds = %if.end33.i
  %op.i30.i = getelementptr i8, ptr %req, i32 144
  %113 = ptrtoint ptr %op.i30.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %op.i30.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i31.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i31.i, label %if.else19.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %iv18.i.i = getelementptr i8, ptr %req, i32 -12
  %115 = ptrtoint ptr %iv18.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %iv18.i.i, align 4
  %117 = call ptr @memcpy(ptr %iv34.i, ptr %116, i32 16)
  br label %if.end38.i

if.else19.i.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i32.i = getelementptr %struct.cpl_fw6_pld, ptr %input, i32 0, i32 3, i32 2
  %118 = call ptr @memcpy(ptr %iv34.i, ptr %arrayidx.i32.i, i32 16)
  br label %if.end38.i

chcr_update_cipher_iv.exit.i:                     ; preds = %if.end33.i
  %call13.i.i = tail call fastcc i32 @chcr_update_tweak(ptr noundef %add.ptr.i, ptr noundef %iv34.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool36.not.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool36.not.i, label %chcr_update_cipher_iv.exit.i.if.end38.i_crit_edge, label %chcr_update_cipher_iv.exit.i.unmap.i_crit_edge

chcr_update_cipher_iv.exit.i.unmap.i_crit_edge:   ; preds = %chcr_update_cipher_iv.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap.i

chcr_update_cipher_iv.exit.i.if.end38.i_crit_edge: ; preds = %chcr_update_cipher_iv.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.end38.i:                                       ; preds = %chcr_update_cipher_iv.exit.i.if.end38.i_crit_edge, %if.else19.i.i, %if.then17.i.i, %if.then5.i28.i, %for.cond.2.i.i27.i, %for.cond.1.i.i25.i.if.end38.i_crit_edge, %for.cond.i.i21.i.if.end38.i_crit_edge, %if.then.i17.i.if.end38.i_crit_edge, %if.end33.i.if.end38.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.0.i)
  %cmp39.i = icmp eq i32 %bytes.0.i, 0
  br i1 %cmp39.i, label %if.then42.i, label %if.end52.i, !prof !136

if.then42.i:                                      ; preds = %if.end38.i
  %119 = ptrtoint ptr %__crt_ctx.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %__crt_ctx.i.i.i.i21, align 4
  %lldi45.i = getelementptr i8, ptr %120, i32 -148
  %121 = ptrtoint ptr %lldi45.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %lldi45.i, align 4
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %122, i32 0, i32 44
  %src.i60 = getelementptr i8, ptr %req, i32 -8
  %123 = ptrtoint ptr %src.i60 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %src.i60, align 8
  %dst.i61 = getelementptr i8, ptr %req, i32 -4
  %125 = ptrtoint ptr %dst.i61 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dst.i61, align 4
  %cmp.i62 = icmp eq ptr %124, %126
  %call.i = tail call i32 @sg_nents(ptr noundef %124) #11
  br i1 %cmp.i62, label %if.then.i63, label %if.else.i65

if.then.i63:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev47.i, ptr noundef %124, i32 noundef %call.i, i32 noundef 0, i32 noundef 0) #11
  br label %chcr_cipher_dma_unmap.exit

if.else.i65:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev47.i, ptr noundef %124, i32 noundef %call.i, i32 noundef 1, i32 noundef 0) #11
  %127 = ptrtoint ptr %dst.i61 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dst.i61, align 4
  %call8.i64 = tail call i32 @sg_nents(ptr noundef %128) #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev47.i, ptr noundef %128, i32 noundef %call8.i64, i32 noundef 2, i32 noundef 0) #11
  br label %chcr_cipher_dma_unmap.exit

chcr_cipher_dma_unmap.exit:                       ; preds = %if.else.i65, %if.then.i63
  %iv48.i = getelementptr i8, ptr %req, i32 -12
  %129 = ptrtoint ptr %iv48.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %iv48.i, align 4
  %init_iv.i = getelementptr i8, ptr %req, i32 166
  %131 = call ptr @memcpy(ptr %130, ptr %init_iv.i, i32 16)
  %fallback.i = getelementptr inbounds %struct.adapter, ptr %35, i32 0, i32 73, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fallback.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %fallback.i, i32 1, i32 3, i32 1) #11
  %132 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fallback.i, ptr %fallback.i, i32 1, ptr elementtype(i32) %fallback.i) #11, !srcloc !137
  %133 = ptrtoint ptr %ablkctx.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ablkctx.i.i, align 4
  %135 = ptrtoint ptr %iv48.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %iv48.i, align 4
  %op.i = getelementptr i8, ptr %req, i32 144
  %137 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %op.i, align 32
  %conv.i = trunc i32 %138 to i16
  %fallback_req.i = getelementptr i8, ptr %req, i32 240
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %134, i32 0, i32 2
  %tfm1.i.i = getelementptr i8, ptr %req, i32 272
  %139 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i57 = getelementptr i8, ptr %req, i32 20
  %140 = ptrtoint ptr %flags.i57 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags.i57, align 4
  %complete.i58 = getelementptr i8, ptr %req, i32 8
  %142 = ptrtoint ptr %complete.i58 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %complete.i58, align 8
  %data.i = getelementptr i8, ptr %req, i32 12
  %144 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr i8, ptr %req, i32 264
  %146 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr i8, ptr %req, i32 268
  %147 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %145, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr i8, ptr %req, i32 276
  %148 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %141, ptr %flags4.i.i, align 4
  %149 = ptrtoint ptr %src.i60 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %src.i60, align 8
  %151 = ptrtoint ptr %dst.i61 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dst.i61, align 4
  %153 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %add.ptr.i, align 128
  %src1.i.i = getelementptr i8, ptr %req, i32 248
  %155 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %150, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr i8, ptr %req, i32 252
  %156 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %152, ptr %dst2.i.i, align 4
  %157 = ptrtoint ptr %fallback_req.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %154, ptr %fallback_req.i, align 128
  %iv4.i.i = getelementptr i8, ptr %req, i32 244
  %158 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %136, ptr %iv4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool.not.i59 = icmp eq i16 %conv.i, 0
  br i1 %tobool.not.i59, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %chcr_cipher_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req.i) #11
  br label %complete.i27

cond.false.i:                                     ; preds = %chcr_cipher_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req.i) #11
  br label %complete.i27

if.end52.i:                                       ; preds = %if.end38.i
  %__crt_alg.i.i.i = getelementptr i8, ptr %29, i32 12
  %159 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %160, i32 -256
  %161 = ptrtoint ptr %add.ptr.i36.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %add.ptr.i36.i, align 128
  %and.i.i = and i32 %162, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %and.i.i)
  %cmp54.i = icmp eq i32 %and.i.i, 134217728
  br i1 %cmp54.i, label %if.then56.i, label %if.end52.i.if.end60.i_crit_edge

if.end52.i.if.end60.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

if.then56.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr.i.i = getelementptr i8, ptr %req, i32 162
  %163 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %incdec.ptr.i.i, align 4
  %neg.i.i = xor i32 %164, -1
  %div7.i.i = lshr i32 %bytes.0.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i.i, i32 %neg.i.i)
  %cmp.not.not.i.i = icmp ugt i32 %div7.i.i, %neg.i.i
  %add.i37.i = shl i32 %neg.i.i, 4
  %mul.i.i = add i32 %add.i37.i, 16
  %bytes.addr.0.i.i = select i1 %cmp.not.not.i.i, i32 %mul.i.i, i32 %bytes.0.i
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %if.end52.i.if.end60.i_crit_edge
  %bytes.1.i = phi i32 [ %bytes.addr.0.i.i, %if.then56.i ], [ %bytes.0.i, %if.end52.i.if.end60.i_crit_edge ]
  %rxq_ids.i = getelementptr i8, ptr %31, i32 -124
  %165 = ptrtoint ptr %rxq_ids.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rxq_ids.i, align 4
  %rxqidx.i = getelementptr i8, ptr %req, i32 184
  %167 = ptrtoint ptr %rxqidx.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %rxqidx.i, align 8
  %idxprom.i = zext i16 %168 to i32
  %arrayidx.i = getelementptr i16, ptr %166, i32 %idxprom.i
  %169 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %arrayidx.i, align 2
  %qid.i = getelementptr inbounds %struct.cipher_wr_param, ptr %wrparam.i, i32 0, i32 3
  %171 = ptrtoint ptr %qid.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %170, ptr %qid.i, align 4
  %172 = ptrtoint ptr %wrparam.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %add.ptr.i, ptr %wrparam.i, align 4
  %bytes63.i = getelementptr inbounds %struct.cipher_wr_param, ptr %wrparam.i, i32 0, i32 2
  %173 = ptrtoint ptr %bytes63.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %bytes.1.i, ptr %bytes63.i, align 4
  %call64.i = call fastcc ptr @create_cipher_wr(ptr noundef nonnull %wrparam.i) #11
  %cmp.i38.i = icmp ugt ptr %call64.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38.i, label %do.end.i, label %if.end70.i

do.end.i:                                         ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  %174 = ptrtoint ptr %call64.i to i32
  br label %unmap.i

if.end70.i:                                       ; preds = %if.end60.i
  %ports.i = getelementptr i8, ptr %31, i32 -136
  %175 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ports.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %179 = getelementptr inbounds %struct.anon.49, ptr %call64.i, i32 0, i32 2
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %178, ptr %179, align 8
  %txqidx.i = getelementptr i8, ptr %req, i32 182
  %181 = ptrtoint ptr %txqidx.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %txqidx.i, align 2
  %conv.i.i26 = shl i16 %182, 1
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call64.i, i32 0, i32 10
  %183 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv.i.i26, ptr %queue_mapping1.i.i.i, align 8
  %call74.i = tail call i32 @chcr_send_wr(ptr noundef %call64.i) #11
  %last_req_len.i = getelementptr i8, ptr %req, i32 124
  %184 = ptrtoint ptr %last_req_len.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %bytes.1.i, ptr %last_req_len.i, align 4
  %185 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %processed.i, align 8
  %add76.i = add i32 %186, %bytes.1.i
  store i32 %add76.i, ptr %processed.i, align 8
  %187 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %188, i32 -256
  %189 = ptrtoint ptr %add.ptr.i40.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %add.ptr.i40.i, align 128
  %and.i41.i = and i32 %190, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 184549376, i32 %and.i41.i)
  %cmp78.i = icmp eq i32 %and.i41.i, 184549376
  br i1 %cmp78.i, label %land.lhs.true.i, label %if.end70.i.chcr_handle_cipher_resp.exit_crit_edge

if.end70.i.chcr_handle_cipher_resp.exit_crit_edge: ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_handle_cipher_resp.exit

land.lhs.true.i:                                  ; preds = %if.end70.i
  %flags.i = getelementptr i8, ptr %req, i32 20
  %191 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %192)
  %cmp80.i = icmp eq i32 %192, 512
  br i1 %cmp80.i, label %if.then82.i, label %land.lhs.true.i.chcr_handle_cipher_resp.exit_crit_edge

land.lhs.true.i.chcr_handle_cipher_resp.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_handle_cipher_resp.exit

if.then82.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %cbc_aes_aio_done.i = getelementptr i8, ptr %29, i32 144
  tail call void @complete(ptr noundef %cbc_aes_aio_done.i) #11
  br label %chcr_handle_cipher_resp.exit

unmap.i:                                          ; preds = %do.end.i, %chcr_update_cipher_iv.exit.i.unmap.i_crit_edge, %sw.bb5.unmap.i_crit_edge
  %err.addr.0.i = phi i32 [ %err, %sw.bb5.unmap.i_crit_edge ], [ %call13.i.i, %chcr_update_cipher_iv.exit.i.unmap.i_crit_edge ], [ %174, %do.end.i ]
  %193 = ptrtoint ptr %__crt_ctx.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %__crt_ctx.i.i.i.i21, align 4
  %lldi86.i = getelementptr i8, ptr %194, i32 -148
  %195 = ptrtoint ptr %lldi86.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %lldi86.i, align 4
  %dev88.i = getelementptr inbounds %struct.pci_dev, ptr %196, i32 0, i32 44
  %src.i44.i = getelementptr i8, ptr %req, i32 -8
  %197 = ptrtoint ptr %src.i44.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %src.i44.i, align 8
  %dst.i45.i = getelementptr i8, ptr %req, i32 -4
  %199 = ptrtoint ptr %dst.i45.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dst.i45.i, align 4
  %cmp.i46.i = icmp eq ptr %198, %200
  %call.i47.i = tail call i32 @sg_nents(ptr noundef %198) #11
  br i1 %cmp.i46.i, label %if.then.i48.i, label %if.else.i50.i

if.then.i48.i:                                    ; preds = %unmap.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev88.i, ptr noundef %198, i32 noundef %call.i47.i, i32 noundef 0, i32 noundef 0) #11
  br label %complete.i27

if.else.i50.i:                                    ; preds = %unmap.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev88.i, ptr noundef %198, i32 noundef %call.i47.i, i32 noundef 1, i32 noundef 0) #11
  %201 = ptrtoint ptr %dst.i45.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dst.i45.i, align 4
  %call8.i49.i = tail call i32 @sg_nents(ptr noundef %202) #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev88.i, ptr noundef %202, i32 noundef %call8.i49.i, i32 noundef 2, i32 noundef 0) #11
  br label %complete.i27

complete.i27:                                     ; preds = %if.else.i50.i, %if.then.i48.i, %cond.false.i, %cond.true.i, %if.then14.i.i, %if.then12.i.i.complete.i27_crit_edge, %if.else8.i.i, %if.then6.i.i, %for.cond.2.i.i.i, %for.cond.1.i.i.i.complete.i27_crit_edge, %for.cond.i.i.i.complete.i27_crit_edge, %if.then.i7.i.complete.i27_crit_edge, %chcr_cipher_dma_unmap.exit.i.complete.i27_crit_edge
  %err.addr.1.i = phi i32 [ %call9.i.i, %if.else8.i.i ], [ 0, %if.then6.i.i ], [ 0, %if.then12.i.i.complete.i27_crit_edge ], [ 0, %if.then14.i.i ], [ 0, %chcr_cipher_dma_unmap.exit.i.complete.i27_crit_edge ], [ 0, %if.then.i7.i.complete.i27_crit_edge ], [ 0, %for.cond.i.i.i.complete.i27_crit_edge ], [ 0, %for.cond.1.i.i.i.complete.i27_crit_edge ], [ 0, %for.cond.2.i.i.i ], [ %err.addr.0.i, %if.then.i48.i ], [ %err.addr.0.i, %if.else.i50.i ], [ %call6.i, %cond.true.i ], [ %call8.i, %cond.false.i ]
  %__crt_alg.i.i52.i = getelementptr i8, ptr %29, i32 12
  %203 = ptrtoint ptr %__crt_alg.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %__crt_alg.i.i52.i, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %204, i32 -256
  %205 = ptrtoint ptr %add.ptr.i53.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %add.ptr.i53.i, align 128
  %and.i54.i = and i32 %206, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 184549376, i32 %and.i54.i)
  %cmp90.i = icmp eq i32 %and.i54.i, 184549376
  br i1 %cmp90.i, label %land.lhs.true92.i, label %complete.i27.if.end99.i_crit_edge

complete.i27.if.end99.i_crit_edge:                ; preds = %complete.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99.i

land.lhs.true92.i:                                ; preds = %complete.i27
  %flags94.i = getelementptr i8, ptr %req, i32 20
  %207 = ptrtoint ptr %flags94.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %flags94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %208)
  %cmp95.i = icmp eq i32 %208, 512
  br i1 %cmp95.i, label %if.then97.i, label %land.lhs.true92.i.if.end99.i_crit_edge

land.lhs.true92.i.if.end99.i_crit_edge:           ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99.i

if.then97.i:                                      ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #13
  %cbc_aes_aio_done98.i = getelementptr i8, ptr %29, i32 144
  tail call void @complete(ptr noundef %cbc_aes_aio_done98.i) #11
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then97.i, %land.lhs.true92.i.if.end99.i_crit_edge, %complete.i27.if.end99.i_crit_edge
  %inflight.i.i28 = getelementptr inbounds %struct.chcr_dev, ptr %31, i32 0, i32 2
  %call.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i.i28, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i.i28, i32 1, i32 3, i32 1) #11
  %209 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i.i28, ptr %inflight.i.i28, i32 1, ptr elementtype(i32) %inflight.i.i28) #11, !srcloc !135
  %complete101.i = getelementptr i8, ptr %req, i32 8
  %210 = ptrtoint ptr %complete101.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %complete101.i, align 8
  tail call void %211(ptr noundef %req, i32 noundef %err.addr.1.i) #11
  br label %chcr_handle_cipher_resp.exit

chcr_handle_cipher_resp.exit:                     ; preds = %if.end99.i, %if.then82.i, %land.lhs.true.i.chcr_handle_cipher_resp.exit_crit_edge, %if.end70.i.chcr_handle_cipher_resp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrparam.i) #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %__ctx.i.i30 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %212 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %__crt_ctx.i, align 4
  %cmp.i32 = icmp eq ptr %input, null
  br i1 %cmp.i32, label %sw.bb8.out.i_crit_edge, label %if.end.i34

sw.bb8.out.i_crit_edge:                           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.i34:                                       ; preds = %sw.bb8
  %214 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %__crt_alg, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %215, i32 -128
  %216 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %218 = zext i32 %217 to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %217, label %if.end14.fold.split.i [
    i32 28, label %if.end.i34.if.end14.i_crit_edge
    i32 48, label %if.then12.i
  ]

if.end.i34.if.end14.i_crit_edge:                  ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.end14.fold.split.i:                            ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end14.fold.split.i, %if.then12.i, %if.end.i34.if.end14.i_crit_edge
  %updated_digestsize.0.i = phi i32 [ 64, %if.then12.i ], [ 32, %if.end.i34.if.end14.i_crit_edge ], [ %217, %if.end14.fold.split.i ]
  %dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %219 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %dma_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not.i35 = icmp eq i32 %220, 0
  br i1 %tobool.not.i35, label %if.end14.i.if.end19.i_crit_edge, label %if.then15.i

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %lldi.i36 = getelementptr i8, ptr %213, i32 -148
  %221 = ptrtoint ptr %lldi.i36 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %lldi.i36, align 4
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %222, i32 0, i32 44
  %dma_len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %223 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %dma_len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev16.i, i32 noundef %220, i32 noundef %224, i32 noundef 1, i32 noundef 0) #11
  %225 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %dma_addr.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end14.i.if.end19.i_crit_edge
  %isfinal.i = getelementptr inbounds %struct.chcr_hctx_per_wr, ptr %__ctx.i.i30, i32 0, i32 9
  %226 = ptrtoint ptr %isfinal.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %isfinal.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool20.not.i = icmp eq i8 %227, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i, label %if.end19.i.if.then24.i_crit_edge

if.end19.i.if.then24.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %if.end19.i
  %processed.i37 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %228 = ptrtoint ptr %processed.i37 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %processed.i37, align 4
  %reqlen.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %230 = ptrtoint ptr %reqlen.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %reqlen.i, align 4
  %conv21.i = zext i8 %231 to i32
  %add.i38 = add i32 %229, %conv21.i
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %232 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i38, i32 %233)
  %cmp22.i = icmp eq i32 %add.i38, %233
  br i1 %cmp22.i, label %lor.lhs.false.i.if.then24.i_crit_edge, label %if.end33.i43

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %if.end19.i.if.then24.i_crit_edge
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %234 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %235)
  %cmp25.i = icmp eq i32 %235, 1
  br i1 %cmp25.i, label %if.then27.i, label %if.else30.i

if.then27.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  %236 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %result.i, align 4
  %result29.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %237 = ptrtoint ptr %result29.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %result29.i, align 32
  %add.ptr.i39 = getelementptr i8, ptr %input, i32 40
  %239 = call ptr @memcpy(ptr %238, ptr %add.ptr.i39, i32 %217)
  br label %unmap.i49

if.else30.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  %partial_hash.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 13
  %add.ptr31.i = getelementptr i8, ptr %input, i32 40
  %240 = call ptr @memcpy(ptr %partial_hash.i, ptr %add.ptr31.i, i32 %updated_digestsize.0.i)
  br label %unmap.i49

if.end33.i43:                                     ; preds = %lor.lhs.false.i
  %partial_hash34.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 13
  %add.ptr36.i = getelementptr i8, ptr %input, i32 40
  %241 = call ptr @memcpy(ptr %partial_hash34.i, ptr %add.ptr36.i, i32 %updated_digestsize.0.i)
  %242 = ptrtoint ptr %tfm1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %tfm1, align 16
  %__crt_ctx.i.i.i.i40 = getelementptr i8, ptr %243, i32 128
  %244 = ptrtoint ptr %__crt_ctx.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %__crt_ctx.i.i.i.i40, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %params.i.i) #11
  %246 = call ptr @memset(ptr %params.i.i, i32 255, i32 48)
  %247 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i.i.i = and i32 %247, -16384
  %248 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %250, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  %251 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i41 = and i32 %251, -16384
  %252 = inttoptr i32 %and.i.i.i41 to ptr
  %cpu6.i.i = getelementptr inbounds %struct.thread_info, ptr %252, i32 0, i32 3
  %253 = ptrtoint ptr %cpu6.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %cpu6.i.i, align 4
  %ntxq.i.i = getelementptr i8, ptr %243, i32 136
  %255 = ptrtoint ptr %ntxq.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %ntxq.i.i, align 4
  %rem.i.i = urem i32 %254, %256
  %conv.i.i42 = trunc i32 %rem.i.i to i16
  %txqidx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %257 = ptrtoint ptr %txqidx.i.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv.i.i42, ptr %txqidx.i.i, align 8
  %nrxq.i.i = getelementptr i8, ptr %243, i32 140
  %258 = ptrtoint ptr %nrxq.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %nrxq.i.i, align 4
  %rem7.i.i = urem i32 %254, %259
  %conv8.i.i = trunc i32 %rem7.i.i to i16
  %rxqidx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 10
  %260 = ptrtoint ptr %rxqidx.i.i to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %conv8.i.i, ptr %rxqidx.i.i, align 2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !139
  %261 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i127.i.i = and i32 %261, -16384
  %262 = inttoptr i32 %and.i.i.i127.i.i to ptr
  %preempt_count.i.i128.i.i = getelementptr inbounds %struct.thread_info, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %preempt_count.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load volatile i32, ptr %preempt_count.i.i128.i.i, align 4
  %sub.i.i.i = add i32 %264, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i128.i.i, align 4
  %__crt_alg.i.i86.i = getelementptr %struct.crypto_tfm, ptr %243, i32 0, i32 3
  %265 = ptrtoint ptr %__crt_alg.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %__crt_alg.i.i86.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %266, i32 0, i32 3
  %267 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %266, i32 -128
  %269 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %add.ptr.i.i.i.i.i, align 128
  %271 = add i32 %270, -20
  %272 = tail call i32 @llvm.fshl.i32(i32 %271, i32 %271, i32 30) #11
  %273 = zext i32 %272 to i64
  call void @__sanitizer_cov_trace_switch(i64 %273, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %272, label %do.end.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 2, label %sw.bb1.i.i.i
    i32 3, label %sw.bb5.i.i.i
    i32 7, label %sw.bb9.i.i.i
    i32 11, label %sw.bb13.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end33.i43
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size.i.i.i = getelementptr inbounds %struct.algo_param, ptr %params.i.i, i32 0, i32 1
  %274 = ptrtoint ptr %mk_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 1, ptr %mk_size.i.i.i, align 4
  %275 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 1, ptr %params.i.i, align 8
  %result_size.i.i.i = getelementptr inbounds %struct.algo_param, ptr %params.i.i, i32 0, i32 2
  %276 = ptrtoint ptr %result_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 20, ptr %result_size.i.i.i, align 8
  br label %get_alg_config.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end33.i43
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size2.i.i.i = getelementptr inbounds %struct.algo_param, ptr %params.i.i, i32 0, i32 1
  %277 = ptrtoint ptr %mk_size2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 3, ptr %mk_size2.i.i.i, align 4
  %278 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 2, ptr %params.i.i, align 8
  %result_size4.i.i.i = getelementptr inbounds %struct.algo_param, ptr %params.i.i, i32 0, i32 2
  %279 = ptrtoint ptr %result_size4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 32, ptr %result_size4.i.i.i, align 8
  br label %get_alg_config.exit.i.i

sw.bb5.i.i.i:                                     ; preds = %if.end33.i43
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size6.i.i.i = getelementptr inbounds %struct.algo_param, ptr %params.i.i, i32 0, i32 1
  %280 = ptrtoint ptr %mk_size6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 3, ptr %mk_size6.i.i.i, align 4
  %281 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 3, ptr %params.i.i, align 8
  %result_size8.i.i.i = getelementptr inbounds %struct.algo_param, ptr %params.i.i, i32 0, i32 2
  %282 = ptrtoint ptr %result_size8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 32, ptr %result_size8.i.i.i, align 8
  br label %get_alg_config.exit.i.i

sw.bb9.i.i.i:                                     ; preds = %if.end33.i43
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size10.i.i.i = getelementptr inbounds %struct.algo_param, ptr %params.i.i, i32 0, i32 1
  %283 = ptrtoint ptr %mk_size10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 4, ptr %mk_size10.i.i.i, align 4
  %284 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 7, ptr %params.i.i, align 8
  %result_size12.i.i.i = getelementptr inbounds %struct.algo_param, ptr %params.i.i, i32 0, i32 2
  %285 = ptrtoint ptr %result_size12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 64, ptr %result_size12.i.i.i, align 8
  br label %get_alg_config.exit.i.i

sw.bb13.i.i.i:                                    ; preds = %if.end33.i43
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size14.i.i.i = getelementptr inbounds %struct.algo_param, ptr %params.i.i, i32 0, i32 1
  %286 = ptrtoint ptr %mk_size14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 4, ptr %mk_size14.i.i.i, align 4
  %287 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 8, ptr %params.i.i, align 8
  %result_size16.i.i.i = getelementptr inbounds %struct.algo_param, ptr %params.i.i, i32 0, i32 2
  %288 = ptrtoint ptr %result_size16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 64, ptr %result_size16.i.i.i, align 8
  br label %get_alg_config.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end33.i43
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %get_alg_config.exit.i.i

get_alg_config.exit.i.i:                          ; preds = %do.end.i.i.i, %sw.bb13.i.i.i, %sw.bb9.i.i.i, %sw.bb5.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %result_size.i.i = getelementptr inbounds %struct.algo_param, ptr %params.i.i, i32 0, i32 2
  %289 = ptrtoint ptr %result_size.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %result_size.i.i, align 8
  %add.i.i45 = add i32 %290, 15
  %div125.i.i = and i32 %add.i.i45, -16
  %kctx_len.i.i = getelementptr inbounds %struct.hash_wr_param, ptr %params.i.i, i32 0, i32 4
  %291 = ptrtoint ptr %kctx_len.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %div125.i.i, ptr %kctx_len.i.i, align 8
  %292 = ptrtoint ptr %__crt_alg.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %__crt_alg.i.i86.i, align 4
  %add.ptr.i131.i.i = getelementptr i8, ptr %293, i32 -384
  %294 = ptrtoint ptr %add.ptr.i131.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %add.ptr.i131.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777231, i32 %295)
  %cmp.i.not.i.i = icmp eq i32 %295, 16777231
  br i1 %cmp.i.not.i.i, label %if.then.i.i46, label %get_alg_config.exit.i.i.if.end.i.i_crit_edge

get_alg_config.exit.i.i.if.end.i.i_crit_edge:     ; preds = %get_alg_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i46:                                    ; preds = %get_alg_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul22.i.i = shl i32 %div125.i.i, 1
  %296 = ptrtoint ptr %kctx_len.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %mul22.i.i, ptr %kctx_len.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i46, %get_alg_config.exit.i.i.if.end.i.i_crit_edge
  %.sink.i.i = phi i32 [ 1, %if.then.i.i46 ], [ 0, %get_alg_config.exit.i.i.if.end.i.i_crit_edge ]
  %297 = getelementptr inbounds %struct.hash_wr_param, ptr %params.i.i, i32 0, i32 1
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %.sink.i.i, ptr %297, align 4
  %299 = ptrtoint ptr %__ctx.i.i30 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %__ctx.i.i30, align 4
  %301 = ptrtoint ptr %kctx_len.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %kctx_len.i.i, align 8
  %sub25.i.i = sub i32 384, %302
  %src_ofst.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %303 = ptrtoint ptr %src_ofst.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %src_ofst.i.i, align 4
  %dma_length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %300, i32 0, i32 4
  %305 = ptrtoint ptr %dma_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %dma_length.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %306, i32 %304)
  %cmp.i132.i.i = icmp eq i32 %306, %304
  br i1 %cmp.i132.i.i, label %if.then.i.i.i, label %if.end.i.i.if.end.i.i.i_crit_edge

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i133.i.i = tail call ptr @sg_next(ptr noundef %300) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end.i.i.if.end.i.i.i_crit_edge
  %srcskip.addr.0.i.i.i = phi i32 [ 0, %if.then.i.i.i ], [ %304, %if.end.i.i.if.end.i.i.i_crit_edge ]
  %src.addr.0.i.i.i = phi ptr [ %call.i133.i.i, %if.then.i.i.i ], [ %300, %if.end.i.i.if.end.i.i.i_crit_edge ]
  %tobool.not27.i.i.i = icmp eq ptr %src.addr.0.i.i.i, null
  br i1 %tobool.not27.i.i.i, label %if.end.i.i.i.chcr_hash_ent_in_wr.exit.i.i_crit_edge, label %if.end.i.i.i.land.rhs.i.i.i_crit_edge

if.end.i.i.i.land.rhs.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %land.rhs.i.i.i

if.end.i.i.i.chcr_hash_ent_in_wr.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_hash_ent_in_wr.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end12.i.i.i.land.rhs.i.i.i_crit_edge, %if.end.i.i.i.land.rhs.i.i.i_crit_edge
  %src.addr.132.i.i.i = phi ptr [ %src.addr.2.i.i.i, %if.end12.i.i.i.land.rhs.i.i.i_crit_edge ], [ %src.addr.0.i.i.i, %if.end.i.i.i.land.rhs.i.i.i_crit_edge ]
  %soffset.031.i.i.i = phi i32 [ %soffset.1.i.i.i, %if.end12.i.i.i.land.rhs.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.land.rhs.i.i.i_crit_edge ]
  %srcsg.030.i.i.i = phi i32 [ %add.i134.i.i, %if.end12.i.i.i.land.rhs.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.land.rhs.i.i.i_crit_edge ]
  %srclen.029.i.i.i = phi i32 [ %add5.i.i.i, %if.end12.i.i.i.land.rhs.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.land.rhs.i.i.i_crit_edge ]
  %srcskip.addr.128.i.i.i = phi i32 [ %srcskip.addr.2.i.i.i, %if.end12.i.i.i.land.rhs.i.i.i_crit_edge ], [ %srcskip.addr.0.i.i.i, %if.end.i.i.i.land.rhs.i.i.i_crit_edge ]
  %add.i134.i.i = add i32 %srcsg.030.i.i.i, 1
  %arrayidx.i.i.i = getelementptr [33 x i32], ptr @sgl_ent_len, i32 0, i32 %add.i134.i.i
  %307 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %308, i32 %sub25.i.i)
  %cmp1.i.i.i = icmp ult i32 %308, %sub25.i.i
  br i1 %cmp1.i.i.i, label %while.body.i.i.i, label %land.rhs.i.i.i.chcr_hash_ent_in_wr.exit.i.i_crit_edge

land.rhs.i.i.i.chcr_hash_ent_in_wr.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_hash_ent_in_wr.exit.i.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %dma_length2.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %src.addr.132.i.i.i, i32 0, i32 4
  %309 = ptrtoint ptr %dma_length2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %dma_length2.i.i.i, align 4
  %311 = add i32 %srcskip.addr.128.i.i.i, %soffset.031.i.i.i
  %sub3.i.i.i = sub i32 %310, %311
  %312 = tail call i32 @llvm.umin.i32(i32 %sub3.i.i.i, i32 65532) #11
  %add5.i.i.i = add i32 %312, %srclen.029.i.i.i
  %add6.i.i.i = add i32 %312, %soffset.031.i.i.i
  %add8.i.i.i = add i32 %add6.i.i.i, %srcskip.addr.128.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %310, i32 %add8.i.i.i)
  %cmp9.i.i.i = icmp eq i32 %310, %add8.i.i.i
  br i1 %cmp9.i.i.i, label %if.then10.i.i.i, label %while.body.i.i.i.if.end12.i.i.i_crit_edge

while.body.i.i.i.if.end12.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i.i

if.then10.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i.i.i = tail call ptr @sg_next(ptr noundef nonnull %src.addr.132.i.i.i) #11
  br label %if.end12.i.i.i

if.end12.i.i.i:                                   ; preds = %if.then10.i.i.i, %while.body.i.i.i.if.end12.i.i.i_crit_edge
  %srcskip.addr.2.i.i.i = phi i32 [ 0, %if.then10.i.i.i ], [ %srcskip.addr.128.i.i.i, %while.body.i.i.i.if.end12.i.i.i_crit_edge ]
  %soffset.1.i.i.i = phi i32 [ 0, %if.then10.i.i.i ], [ %add6.i.i.i, %while.body.i.i.i.if.end12.i.i.i_crit_edge ]
  %src.addr.2.i.i.i = phi ptr [ %call11.i.i.i, %if.then10.i.i.i ], [ %src.addr.132.i.i.i, %while.body.i.i.i.if.end12.i.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp eq ptr %src.addr.2.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end12.i.i.i.chcr_hash_ent_in_wr.exit.i.i_crit_edge, label %if.end12.i.i.i.land.rhs.i.i.i_crit_edge

if.end12.i.i.i.land.rhs.i.i.i_crit_edge:          ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i.i

if.end12.i.i.i.chcr_hash_ent_in_wr.exit.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_hash_ent_in_wr.exit.i.i

chcr_hash_ent_in_wr.exit.i.i:                     ; preds = %if.end12.i.i.i.chcr_hash_ent_in_wr.exit.i.i_crit_edge, %land.rhs.i.i.i.chcr_hash_ent_in_wr.exit.i.i_crit_edge, %if.end.i.i.i.chcr_hash_ent_in_wr.exit.i.i_crit_edge
  %srclen.0.lcssa.i.i.i = phi i32 [ 0, %if.end.i.i.i.chcr_hash_ent_in_wr.exit.i.i_crit_edge ], [ %srclen.029.i.i.i, %land.rhs.i.i.i.chcr_hash_ent_in_wr.exit.i.i_crit_edge ], [ %add5.i.i.i, %if.end12.i.i.i.chcr_hash_ent_in_wr.exit.i.i_crit_edge ]
  %sg_len.i.i = getelementptr inbounds %struct.hash_wr_param, ptr %params.i.i, i32 0, i32 5
  %313 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %srclen.0.lcssa.i.i.i, ptr %sg_len.i.i, align 4
  %314 = ptrtoint ptr %processed.i37 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %processed.i37, align 4
  %add28.i.i = add i32 %315, %srclen.0.lcssa.i.i.i
  %316 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add28.i.i, i32 %317)
  %cmp.i.i47 = icmp ugt i32 %add28.i.i, %317
  br i1 %cmp.i.i47, label %if.then30.i.i, label %chcr_hash_ent_in_wr.exit.i.i.if.end35.i.i_crit_edge

chcr_hash_ent_in_wr.exit.i.i.if.end35.i.i_crit_edge: ; preds = %chcr_hash_ent_in_wr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i.i

if.then30.i.i:                                    ; preds = %chcr_hash_ent_in_wr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub33.i.i = sub i32 %317, %315
  %318 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %sub33.i.i, ptr %sg_len.i.i, align 4
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then30.i.i, %chcr_hash_ent_in_wr.exit.i.i.if.end35.i.i_crit_edge
  %result.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %319 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %result.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %tobool36.not.i.i = icmp eq i32 %320, 0
  br i1 %tobool36.not.i.i, label %if.end35.i.i.if.then43.i.i_crit_edge, label %lor.lhs.false.i.i

if.end35.i.i.if.then43.i.i_crit_edge:             ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43.i.i

lor.lhs.false.i.i:                                ; preds = %if.end35.i.i
  %321 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %sg_len.i.i, align 4
  %add39.i.i = add i32 %322, %315
  call void @__sanitizer_cov_trace_cmp4(i32 %add39.i.i, i32 %317)
  %cmp41.i.i = icmp ult i32 %add39.i.i, %317
  br i1 %cmp41.i.i, label %lor.lhs.false.i.i.if.then43.i.i_crit_edge, label %if.else60.i.i

lor.lhs.false.i.i.if.then43.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43.i.i

if.then43.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then43.i.i_crit_edge, %if.end35.i.i.if.then43.i.i_crit_edge
  %323 = ptrtoint ptr %__crt_alg.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %__crt_alg.i.i86.i, align 4
  %add.ptr.i137.i.i = getelementptr i8, ptr %324, i32 -384
  %325 = ptrtoint ptr %add.ptr.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %add.ptr.i137.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777231, i32 %326)
  %cmp.i138.not.i.i = icmp eq i32 %326, 16777231
  br i1 %cmp.i138.not.i.i, label %if.then47.i.i, label %if.then43.i.i.if.end51.i.i_crit_edge

if.then43.i.i.if.end51.i.i_crit_edge:             ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i.i

if.then47.i.i:                                    ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %327 = ptrtoint ptr %kctx_len.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %kctx_len.i.i, align 8
  %div49126.i.i = lshr i32 %328, 1
  store i32 %div49126.i.i, ptr %kctx_len.i.i, align 8
  %329 = ptrtoint ptr %297 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 0, ptr %297, align 4
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then47.i.i, %if.then43.i.i.if.end51.i.i_crit_edge
  %last.i.i = getelementptr inbounds %struct.hash_wr_param, ptr %params.i.i, i32 0, i32 3
  %330 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 0, ptr %last.i.i, align 4
  %more.i.i = getelementptr inbounds %struct.hash_wr_param, ptr %params.i.i, i32 0, i32 2
  %331 = ptrtoint ptr %more.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 1, ptr %more.i.i, align 8
  %332 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %sg_len.i.i, align 4
  %conv54.i.i = and i32 %268, 255
  %rem55.i.i = urem i32 %333, %conv54.i.i
  %sub56.i.i = sub i32 %333, %rem55.i.i
  store i32 %sub56.i.i, ptr %sg_len.i.i, align 4
  %334 = ptrtoint ptr %result_size.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %result_size.i.i, align 8
  %hash_size.i.i = getelementptr inbounds %struct.hash_wr_param, ptr %params.i.i, i32 0, i32 7
  %336 = ptrtoint ptr %hash_size.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %335, ptr %hash_size.i.i, align 4
  br label %if.end69.i.i

if.else60.i.i:                                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %last61.i.i = getelementptr inbounds %struct.hash_wr_param, ptr %params.i.i, i32 0, i32 3
  %337 = ptrtoint ptr %last61.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 1, ptr %last61.i.i, align 4
  %more62.i.i = getelementptr inbounds %struct.hash_wr_param, ptr %params.i.i, i32 0, i32 2
  %338 = ptrtoint ptr %more62.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 0, ptr %more62.i.i, align 8
  %339 = ptrtoint ptr %__crt_alg.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %__crt_alg.i.i86.i, align 4
  %add.ptr.i.i.i141.i.i = getelementptr i8, ptr %340, i32 -128
  %341 = ptrtoint ptr %add.ptr.i.i.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %add.ptr.i.i.i141.i.i, align 128
  %hash_size64.i.i = getelementptr inbounds %struct.hash_wr_param, ptr %params.i.i, i32 0, i32 7
  %343 = ptrtoint ptr %hash_size64.i.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %342, ptr %hash_size64.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5
  %344 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load8_noabort(i32 %344)
  %345 = load i64, ptr %data_len.i.i, align 8
  %conv66.i.i = zext i32 %322 to i64
  %add67.i.i = add i64 %345, %conv66.i.i
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.else60.i.i, %if.end51.i.i
  %add67.sink.i.i = phi i64 [ %add67.i.i, %if.else60.i.i ], [ 0, %if.end51.i.i ]
  %scmd168.i.i = getelementptr inbounds %struct.hash_wr_param, ptr %params.i.i, i32 0, i32 8
  %346 = ptrtoint ptr %scmd168.i.i to i32
  call void @__asan_store8_noabort(i32 %346)
  store i64 %add67.sink.i.i, ptr %scmd168.i.i, align 8
  %bfr_len.i.i = getelementptr inbounds %struct.hash_wr_param, ptr %params.i.i, i32 0, i32 6
  %347 = ptrtoint ptr %bfr_len.i.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 0, ptr %bfr_len.i.i, align 8
  %348 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %sg_len.i.i, align 4
  %conv71.i.i = zext i32 %349 to i64
  %data_len72.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5
  %350 = ptrtoint ptr %data_len72.i.i to i32
  call void @__asan_load8_noabort(i32 %350)
  %351 = load i64, ptr %data_len72.i.i, align 8
  %add73.i.i = add i64 %351, %conv71.i.i
  store i64 %add73.i.i, ptr %data_len72.i.i, align 8
  %call74.i.i = call fastcc ptr @create_hash_wr(ptr noundef %req, ptr noundef nonnull %params.i.i) #11
  %cmp.i142.i.i = icmp ugt ptr %call74.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142.i.i, label %chcr_ahash_continue.exit.i, label %chcr_ahash_continue.exit.thread.i

chcr_ahash_continue.exit.thread.i:                ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %352 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %sg_len.i.i, align 4
  %354 = ptrtoint ptr %processed.i37 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %processed.i37, align 4
  %add81.i.i = add i32 %355, %353
  store i32 %add81.i.i, ptr %processed.i37, align 4
  %ports.i.i = getelementptr i8, ptr %245, i32 -136
  %356 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ports.i.i, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %357, align 4
  %360 = getelementptr inbounds %struct.anon.49, ptr %call74.i.i, i32 0, i32 2
  %361 = ptrtoint ptr %360 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %359, ptr %360, align 8
  %362 = ptrtoint ptr %txqidx.i.i to i32
  call void @__asan_load2_noabort(i32 %362)
  %363 = load i16, ptr %txqidx.i.i, align 8
  %conv.i.i.i = shl i16 %363, 1
  %queue_mapping1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call74.i.i, i32 0, i32 10
  %364 = ptrtoint ptr %queue_mapping1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 %conv.i.i.i, ptr %queue_mapping1.i.i.i.i, align 8
  %call84.i.i = tail call i32 @chcr_send_wr(ptr noundef %call74.i.i) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %params.i.i) #11
  br label %sw.epilog

chcr_ahash_continue.exit.i:                       ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %365 = ptrtoint ptr %call74.i.i to i32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %params.i.i) #11
  br label %unmap.i49

unmap.i49:                                        ; preds = %chcr_ahash_continue.exit.i, %if.else30.i, %if.then27.i
  %err.addr.0.i48 = phi i32 [ %err, %if.then27.i ], [ %err, %if.else30.i ], [ %365, %chcr_ahash_continue.exit.i ]
  %is_sg_map.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %366 = ptrtoint ptr %is_sg_map.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %is_sg_map.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %367)
  %tobool41.not.i = icmp eq i8 %367, 0
  br i1 %tobool41.not.i, label %unmap.i49.out.i_crit_edge, label %if.then42.i51

unmap.i49.out.i_crit_edge:                        ; preds = %unmap.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then42.i51:                                    ; preds = %unmap.i49
  %nbytes.i87.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %368 = ptrtoint ptr %nbytes.i87.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %nbytes.i87.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %tobool.not.i.i50 = icmp eq i32 %369, 0
  br i1 %tobool.not.i.i50, label %if.then42.i51.out.i_crit_edge, label %if.end.i88.i

if.then42.i51.out.i_crit_edge:                    ; preds = %if.then42.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.i88.i:                                     ; preds = %if.then42.i51
  call void @__sanitizer_cov_trace_pc() #13
  %lldi43.i = getelementptr i8, ptr %213, i32 -148
  %370 = ptrtoint ptr %lldi43.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %lldi43.i, align 4
  %dev45.i = getelementptr inbounds %struct.pci_dev, ptr %371, i32 0, i32 44
  %src.i.i52 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %372 = ptrtoint ptr %src.i.i52 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %src.i.i52, align 4
  %call2.i.i = tail call i32 @sg_nents(ptr noundef %373) #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev45.i, ptr noundef %373, i32 noundef %call2.i.i, i32 noundef 1, i32 noundef 0) #11
  %374 = ptrtoint ptr %is_sg_map.i to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 0, ptr %is_sg_map.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end.i88.i, %if.then42.i51.out.i_crit_edge, %unmap.i49.out.i_crit_edge, %sw.bb8.out.i_crit_edge
  %err.addr.1.i53 = phi i32 [ %err, %sw.bb8.out.i_crit_edge ], [ %err.addr.0.i48, %unmap.i49.out.i_crit_edge ], [ %err.addr.0.i48, %if.then42.i51.out.i_crit_edge ], [ %err.addr.0.i48, %if.end.i88.i ]
  %inflight.i.i54 = getelementptr inbounds %struct.chcr_dev, ptr %213, i32 0, i32 2
  %call.i.i.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i.i54, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i.i54, i32 1, i32 3, i32 1) #11
  %375 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i.i54, ptr %inflight.i.i54, i32 1, ptr elementtype(i32) %inflight.i.i54) #11, !srcloc !135
  %complete.i56 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %376 = ptrtoint ptr %complete.i56 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %complete.i56, align 8
  tail call void %377(ptr noundef %req, i32 noundef %err.addr.1.i53) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %out.i, %chcr_ahash_continue.exit.thread.i, %chcr_handle_cipher_resp.exit, %chcr_handle_aead_resp.exit, %entry.sw.epilog_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.sw.epilog_crit_edge ], [ %err, %chcr_handle_cipher_resp.exit ], [ %27, %chcr_handle_aead_resp.exit ], [ %err, %chcr_ahash_continue.exit.thread.i ], [ %err, %out.i ]
  %complete = getelementptr inbounds %struct.adapter, ptr %7, i32 0, i32 73, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %complete, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %complete, i32 1, i32 3, i32 1) #11
  %378 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %complete, ptr %complete, i32 1, ptr elementtype(i32) %complete) #11, !srcloc !137
  ret i32 %err.addr.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chcr_aead_common_exit(ptr nocapture noundef readonly %req) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %lldi = getelementptr i8, ptr %3, i32 -148
  %4 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldi, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %op = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op, align 4
  %conv = trunc i32 %7 to i16
  tail call void @chcr_aead_dma_unmap(ptr noundef %dev, ptr noundef %req, i16 noundef zeroext %conv)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chcr_aead_dma_unmap(ptr noundef %dev, ptr nocapture noundef readonly %req, i16 noundef zeroext %op_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 128
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst, align 8
  %cmp = icmp eq ptr %5, %7
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cryptlen, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %op_type)
  %tobool.not = icmp eq i16 %op_type, 0
  %spec.select = select i1 %tobool.not, i32 %3, i32 0
  %add = add i32 %9, %spec.select
  %add3 = add i32 %add, %11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add6 = add i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %op_type)
  %tobool11.not = icmp eq i16 %op_type, 0
  %sub = sub i32 0, %3
  %cond15 = select i1 %tobool11.not, i32 %3, i32 %sub
  %add16 = add i32 %add6, %cond15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %src_len.0 = phi i32 [ %add3, %if.then ], [ %add6, %if.else ]
  %dst_len.0 = phi i32 [ %add3, %if.then ], [ %add16, %if.else ]
  %cryptlen17 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %cryptlen17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cryptlen17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_len.0)
  %tobool19.not = icmp eq i32 %src_len.0, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool19.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_len.0)
  %tobool21.not = icmp eq i32 %dst_len.0, 0
  %or.cond77 = select i1 %or.cond, i1 true, i1 %tobool21.not
  br i1 %or.cond77, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %iv_dma = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %iv_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iv_dma, align 4
  %b0_len = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %b0_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %b0_len, align 4
  %add24 = add i32 %17, 16
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %15, i32 noundef %add24, i32 noundef 0, i32 noundef 0) #11
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 4
  %20 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst, align 8
  %cmp27 = icmp eq ptr %19, %21
  %conv32 = sext i32 %src_len.0 to i64
  %call33 = tail call i32 @sg_nents_for_len(ptr noundef %19, i64 noundef %conv32) #11
  br i1 %cmp27, label %if.then29, label %if.else34

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %19, i32 noundef %call33, i32 noundef 0, i32 noundef 0) #11
  br label %cleanup

if.else34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %19, i32 noundef %call33, i32 noundef 1, i32 noundef 0) #11
  %22 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst, align 8
  %conv41 = sext i32 %dst_len.0 to i64
  %call42 = tail call i32 @sg_nents_for_len(ptr noundef %23, i64 noundef %conv41) #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %23, i32 noundef %call42, i32 noundef 2, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else34, %if.then29, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chcr_aead_dma_map(ptr noundef %dev, ptr noundef %req, i16 noundef zeroext %op_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 128
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst, align 8
  %cmp = icmp eq ptr %5, %7
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cryptlen, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %op_type)
  %tobool.not = icmp eq i16 %op_type, 0
  %spec.select = select i1 %tobool.not, i32 %3, i32 0
  %add = add i32 %9, %spec.select
  %add3 = add i32 %add, %11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add6 = add i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %op_type)
  %tobool11.not = icmp eq i16 %op_type, 0
  %sub = sub i32 0, %3
  %cond15 = select i1 %tobool11.not, i32 %3, i32 %sub
  %add16 = add i32 %add6, %cond15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %src_len.0 = phi i32 [ %add3, %if.then ], [ %add6, %if.else ]
  %dst_len.0 = phi i32 [ %add3, %if.then ], [ %add16, %if.else ]
  %cryptlen17 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %cryptlen17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cryptlen17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_len.0)
  %tobool19.not = icmp eq i32 %src_len.0, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool19.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_len.0)
  %tobool21.not = icmp eq i32 %dst_len.0, 0
  %or.cond124 = select i1 %or.cond, i1 true, i1 %tobool21.not
  br i1 %or.cond124, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %b0_len = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %b0_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b0_len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %iv) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end23
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !140

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i ], [ %17, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %iv_dma126 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %iv_dma126 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %iv_dma126, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #11
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %if.end23
  %add24 = add i32 %15, 16
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %iv, i32 noundef %add24) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %iv to i32
  %sub.i = add i32 %22, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %21, i32 %shr.i
  %and.i = and i32 %22, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %add24, i32 noundef 0, i32 noundef 0) #11
  %iv_dma = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %iv_dma to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call41.i, ptr %iv_dma, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end30

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %dma_map_single_attrs.exit
  %24 = ptrtoint ptr %b0_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %b0_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool32.not = icmp eq i32 %25, 0
  br i1 %tobool32.not, label %if.end30.if.end38_crit_edge, label %if.then33

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %iv_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iv_dma, align 4
  %add35 = add i32 %27, 16
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end30.if.end38_crit_edge
  %add35.sink = phi i32 [ %add35, %if.then33 ], [ 0, %if.end30.if.end38_crit_edge ]
  %28 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add35.sink, ptr %28, align 4
  %30 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %src, align 4
  %32 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dst, align 8
  %cmp41 = icmp eq ptr %31, %33
  %conv46 = sext i32 %src_len.0 to i64
  %call47 = tail call i32 @sg_nents_for_len(ptr noundef %31, i64 noundef %conv46) #11
  br i1 %cmp41, label %if.then43, label %if.else52

if.then43:                                        ; preds = %if.end38
  %call48 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %31, i32 noundef %call47, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then43.err_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then43.err_crit_edge:                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.else52:                                        ; preds = %if.end38
  %call57 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %31, i32 noundef %call47, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.else52.err_crit_edge, label %if.end60

if.else52.err_crit_edge:                          ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end60:                                         ; preds = %if.else52
  %34 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dst, align 8
  %conv63 = sext i32 %dst_len.0 to i64
  %call64 = tail call i32 @sg_nents_for_len(ptr noundef %35, i64 noundef %conv63) #11
  %call65 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %35, i32 noundef %call64, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then67:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %src, align 4
  %call71 = tail call i32 @sg_nents_for_len(ptr noundef %37, i64 noundef %conv46) #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %37, i32 noundef %call71, i32 noundef 1, i32 noundef 0) #11
  br label %err

err:                                              ; preds = %if.then67, %if.else52.err_crit_edge, %if.then43.err_crit_edge
  %38 = ptrtoint ptr %iv_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iv_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %39, i32 noundef 16, i32 noundef 0, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end60.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ], [ 0, %if.then43.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chcr_add_aead_src_ent(ptr nocapture noundef readonly %req, ptr noundef %ulptx) local_unnamed_addr #0 align 64 {
entry:
  %ulp_walk = alloca %struct.ulptx_walk, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ulp_walk) #11
  %0 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 1
  %imm = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %1 = ptrtoint ptr %imm to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %b0_len = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %b0_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %b0_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %scratch_pad = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 32
  %5 = ptrtoint ptr %scratch_pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scratch_pad, align 4
  %7 = call ptr @memcpy(ptr %ulptx, ptr %6, i32 %4)
  %8 = ptrtoint ptr %b0_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b0_len, align 4
  %add.ptr = getelementptr i8, ptr %ulptx, i32 %9
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %buf.0 = phi ptr [ %add.ptr, %if.then2 ], [ %ulptx, %if.then.if.end_crit_edge ]
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 4
  %call6 = tail call i32 @sg_nents(ptr noundef %11) #11
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cryptlen, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %assoclen, align 8
  %add = add i32 %15, %13
  %call7 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %11, i32 noundef %call6, ptr noundef %buf.0, i32 noundef %add, i32 noundef 0) #11
  br label %if.end17

if.else:                                          ; preds = %entry
  %16 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 5
  %17 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 4
  %18 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 3
  %19 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 2
  %20 = ptrtoint ptr %ulp_walk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ulptx, ptr %ulp_walk, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %0, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %19, align 4
  %sge.i = getelementptr inbounds %struct.ulptx_sgl, ptr %ulptx, i32 0, i32 3
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sge.i, ptr %16, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %17, align 4
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %18, align 4
  %b0_len8 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %b0_len8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %b0_len8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool9.not = icmp eq i32 %27, 0
  br i1 %tobool9.not, label %if.else.if.end12_crit_edge, label %ulptx_walk_add_page.exit

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

ulptx_walk_add_page.exit:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %b0_dma = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %b0_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %b0_dma, align 4
  %len0.i = getelementptr inbounds %struct.ulptx_sgl, ptr %ulptx, i32 0, i32 1
  %30 = ptrtoint ptr %len0.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %len0.i, align 4
  %conv.i = zext i32 %29 to i64
  %addr0.i = getelementptr inbounds %struct.ulptx_sgl, ptr %ulptx, i32 0, i32 2
  %31 = ptrtoint ptr %addr0.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv.i, ptr %addr0.i, align 8
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %0, align 4
  br label %if.end12

if.end12:                                         ; preds = %ulptx_walk_add_page.exit, %if.else.if.end12_crit_edge
  %src13 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %33 = ptrtoint ptr %src13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %src13, align 4
  %cryptlen14 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %35 = ptrtoint ptr %cryptlen14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cryptlen14, align 4
  %assoclen15 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %37 = ptrtoint ptr %assoclen15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %assoclen15, align 8
  %add16 = add i32 %38, %36
  call fastcc void @ulptx_walk_add_sg(ptr noundef nonnull %ulp_walk, ptr noundef %34, i32 noundef %add16, i32 noundef 0)
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %0, align 4
  %or.i = or i32 %40, -2113929216
  %41 = ptrtoint ptr %ulp_walk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ulp_walk, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or.i, ptr %42, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end12, %if.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ulp_walk) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ulptx_walk_add_sg(ptr nocapture noundef %walk, ptr noundef %sg, i32 noundef %len, i32 noundef %skip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %tobool1.not174 = icmp eq ptr %sg, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip)
  %tobool2.not175 = icmp eq i32 %skip, 0
  %or.cond176 = or i1 %tobool1.not174, %tobool2.not175
  br i1 %or.cond176, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %sg.addr.0178 = phi ptr [ %call, %if.end5.while.body_crit_edge ], [ %sg, %while.cond.preheader.while.body_crit_edge ]
  %skip.addr.0177 = phi i32 [ %sub, %if.end5.while.body_crit_edge ], [ %skip, %while.cond.preheader.while.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0178, i32 0, i32 4
  %0 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.addr.0177, i32 %1)
  %cmp.not = icmp ult i32 %skip.addr.0177, %1
  br i1 %cmp.not, label %while.body.land.lhs.true.critedge_crit_edge, label %if.end5

while.body.land.lhs.true.critedge_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.critedge

if.end5:                                          ; preds = %while.body
  %sub = sub i32 %skip.addr.0177, %1
  %call = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.0178) #11
  %tobool1.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool2.not = icmp eq i32 %sub, 0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %sg.addr.0.lcssa = phi ptr [ %sg, %while.cond.preheader.while.end_crit_edge ], [ %call, %if.end5.while.end_crit_edge ]
  %tobool1.not.lcssa = phi i1 [ %tobool1.not174, %while.cond.preheader.while.end_crit_edge ], [ %tobool1.not, %if.end5.while.end_crit_edge ]
  br i1 %tobool1.not.lcssa, label %if.end53.thread, label %while.end.land.lhs.true.critedge_crit_edge, !prof !136

while.end.land.lhs.true.critedge_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.critedge

if.end53.thread:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 528, i32 noundef 9, ptr noundef nonnull @.str.7) #11
  br label %cleanup

land.lhs.true.critedge:                           ; preds = %while.end.land.lhs.true.critedge_crit_edge, %while.body.land.lhs.true.critedge_crit_edge
  %sg.addr.0.lcssa199 = phi ptr [ %sg.addr.0.lcssa, %while.end.land.lhs.true.critedge_crit_edge ], [ %sg.addr.0178, %while.body.land.lhs.true.critedge_crit_edge ]
  %skip_len.0.lcssa198 = phi i32 [ 0, %while.end.land.lhs.true.critedge_crit_edge ], [ %skip.addr.0177, %while.body.land.lhs.true.critedge_crit_edge ]
  %nents = getelementptr inbounds %struct.ulptx_walk, ptr %walk, i32 0, i32 1
  %2 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp30 = icmp eq i32 %3, 0
  br i1 %cmp30, label %if.then31, label %land.lhs.true.critedge.if.end53_crit_edge

land.lhs.true.critedge.if.end53_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then31:                                        ; preds = %land.lhs.true.critedge
  %dma_length32 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0.lcssa199, i32 0, i32 4
  %4 = ptrtoint ptr %dma_length32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_length32, align 4
  %sub33 = sub i32 %5, %skip_len.0.lcssa198
  %6 = tail call i32 @llvm.umin.i32(i32 %sub33, i32 %len)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 65532)
  %8 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %walk, align 4
  %len0 = getelementptr inbounds %struct.ulptx_sgl, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %len0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %len0, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0.lcssa199, i32 0, i32 3
  %11 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_address, align 4
  %add = add i32 %12, %skip_len.0.lcssa198
  %conv = zext i32 %add to i64
  %13 = load ptr, ptr %walk, align 4
  %addr0 = getelementptr inbounds %struct.ulptx_sgl, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %addr0 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %addr0, align 8
  %15 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nents, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %nents, align 4
  %sub44 = sub i32 %len, %7
  %last_sg = getelementptr inbounds %struct.ulptx_walk, ptr %walk, i32 0, i32 4
  %17 = ptrtoint ptr %last_sg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sg.addr.0.lcssa199, ptr %last_sg, align 4
  %add45 = add i32 %7, %skip_len.0.lcssa198
  %last_sg_len = getelementptr inbounds %struct.ulptx_walk, ptr %walk, i32 0, i32 3
  %18 = ptrtoint ptr %last_sg_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add45, ptr %last_sg_len, align 4
  %19 = ptrtoint ptr %dma_length32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_length32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add45)
  %cmp48 = icmp eq i32 %20, %add45
  br i1 %cmp48, label %if.then50, label %if.then31.if.end53_crit_edge

if.then31.if.end53_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then50:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.0.lcssa199) #11
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.then31.if.end53_crit_edge, %land.lhs.true.critedge.if.end53_crit_edge
  %skip_len.2 = phi i32 [ 0, %if.then50 ], [ %add45, %if.then31.if.end53_crit_edge ], [ %skip_len.0.lcssa198, %land.lhs.true.critedge.if.end53_crit_edge ]
  %len.addr.0 = phi i32 [ %sub44, %if.then50 ], [ %sub44, %if.then31.if.end53_crit_edge ], [ %len, %land.lhs.true.critedge.if.end53_crit_edge ]
  %sg.addr.2 = phi ptr [ %call51, %if.then50 ], [ %sg.addr.0.lcssa199, %if.then31.if.end53_crit_edge ], [ %sg.addr.0.lcssa199, %land.lhs.true.critedge.if.end53_crit_edge ]
  %tobool55.not181 = icmp eq ptr %sg.addr.2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %tobool57.not182 = icmp eq i32 %len.addr.0, 0
  %or.cond173183 = select i1 %tobool55.not181, i1 true, i1 %tobool57.not182
  br i1 %or.cond173183, label %if.end53.cleanup_crit_edge, label %while.body59.lr.ph

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body59.lr.ph:                               ; preds = %if.end53
  %pair = getelementptr inbounds %struct.ulptx_walk, ptr %walk, i32 0, i32 5
  %pair_idx = getelementptr inbounds %struct.ulptx_walk, ptr %walk, i32 0, i32 2
  %nents88 = getelementptr inbounds %struct.ulptx_walk, ptr %walk, i32 0, i32 1
  %last_sg97 = getelementptr inbounds %struct.ulptx_walk, ptr %walk, i32 0, i32 4
  %last_sg_len98 = getelementptr inbounds %struct.ulptx_walk, ptr %walk, i32 0, i32 3
  br label %while.body59

while.body59:                                     ; preds = %if.end104.while.body59_crit_edge, %while.body59.lr.ph
  %sg.addr.3186 = phi ptr [ %sg.addr.2, %while.body59.lr.ph ], [ %sg.addr.4, %if.end104.while.body59_crit_edge ]
  %len.addr.1185 = phi i32 [ %len.addr.0, %while.body59.lr.ph ], [ %sub95, %if.end104.while.body59_crit_edge ]
  %skip_len.3184 = phi i32 [ %skip_len.2, %while.body59.lr.ph ], [ %skip_len.4, %if.end104.while.body59_crit_edge ]
  %dma_length60 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.3186, i32 0, i32 4
  %21 = ptrtoint ptr %dma_length60 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_length60, align 4
  %sub61 = sub i32 %22, %skip_len.3184
  %23 = tail call i32 @llvm.umin.i32(i32 %sub61, i32 %len.addr.1185)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 65532)
  %25 = ptrtoint ptr %pair to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pair, align 4
  %27 = ptrtoint ptr %pair_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pair_idx, align 4
  %arrayidx = getelementptr [2 x i32], ptr %26, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %24, ptr %arrayidx, align 4
  %dma_address77 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.3186, i32 0, i32 3
  %30 = ptrtoint ptr %dma_address77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_address77, align 4
  %add78 = add i32 %31, %skip_len.3184
  %conv79 = zext i32 %add78 to i64
  %32 = load ptr, ptr %pair, align 4
  %33 = load i32, ptr %pair_idx, align 4
  %arrayidx82 = getelementptr %struct.ulptx_sge_pair, ptr %32, i32 0, i32 1, i32 %33
  %34 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv79, ptr %arrayidx82, align 8
  %35 = load i32, ptr %pair_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool84.not = icmp eq i32 %35, 0
  %lnot.ext86 = zext i1 %tobool84.not to i32
  %36 = ptrtoint ptr %pair_idx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %lnot.ext86, ptr %pair_idx, align 4
  %37 = ptrtoint ptr %nents88 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nents88, align 4
  %inc89 = add i32 %38, 1
  store i32 %inc89, ptr %nents88, align 4
  br i1 %tobool84.not, label %while.body59.if.end94_crit_edge, label %if.then92

while.body59.if.end94_crit_edge:                  ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then92:                                        ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %pair to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pair, align 4
  %incdec.ptr = getelementptr %struct.ulptx_sge_pair, ptr %40, i32 1
  store ptr %incdec.ptr, ptr %pair, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %while.body59.if.end94_crit_edge
  %sub95 = sub i32 %len.addr.1185, %24
  %add96 = add i32 %24, %skip_len.3184
  %41 = ptrtoint ptr %last_sg97 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sg.addr.3186, ptr %last_sg97, align 4
  %42 = ptrtoint ptr %last_sg_len98 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add96, ptr %last_sg_len98, align 4
  %43 = ptrtoint ptr %dma_length60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_length60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add96)
  %cmp100 = icmp eq i32 %44, %add96
  br i1 %cmp100, label %if.then102, label %if.end94.if.end104_crit_edge

if.end94.if.end104_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then102:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %call103 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.3186) #11
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end94.if.end104_crit_edge
  %skip_len.4 = phi i32 [ 0, %if.then102 ], [ %add96, %if.end94.if.end104_crit_edge ]
  %sg.addr.4 = phi ptr [ %call103, %if.then102 ], [ %sg.addr.3186, %if.end94.if.end104_crit_edge ]
  %tobool55.not = icmp eq ptr %sg.addr.4, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub95)
  %tobool57.not = icmp eq i32 %sub95, 0
  %or.cond173 = select i1 %tobool55.not, i1 true, i1 %tobool57.not
  br i1 %or.cond173, label %if.end104.cleanup_crit_edge, label %if.end104.while.body59_crit_edge

if.end104.while.body59_crit_edge:                 ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body59

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end104.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end53.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chcr_add_aead_dst_ent(ptr nocapture noundef readonly %req, ptr noundef %phys_cpl, i16 noundef zeroext %qid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 128
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %4 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %rxqidx = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i, i32 0, i32 8
  %6 = ptrtoint ptr %rxqidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rxqidx, align 2
  %rxq_perchan = getelementptr i8, ptr %1, i32 132
  %8 = ptrtoint ptr %rxq_perchan to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rxq_perchan, align 4
  %div.rhs.trunc = zext i8 %9 to i16
  %div37 = udiv i16 %7, %div.rhs.trunc
  %div.zext = zext i16 %div37 to i32
  %ports = getelementptr i8, ptr %5, i32 -136
  %10 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %div.zext
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @cxgb4_port_e2cchan(ptr noundef %13) #11
  %add.ptr.i20 = getelementptr %struct.cpl_rx_phys_dsgl, ptr %phys_cpl, i32 1
  %b0_len = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %b0_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b0_len, align 4
  %add = add i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not.i = icmp eq i32 %add, 0
  br i1 %tobool.not.i, label %entry.dsgl_walk_add_page.exit_crit_edge, label %if.end10.i

entry.dsgl_walk_add_page.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsgl_walk_add_page.exit

if.end10.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %iv_dma = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %iv_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iv_dma, align 4
  %conv.i = trunc i32 %add to i16
  %18 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %add.ptr.i20, align 2
  %conv1.i = zext i32 %17 to i64
  %arrayidx5.i = getelementptr %struct.cpl_rx_phys_dsgl, ptr %phys_cpl, i32 2
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv1.i, ptr %arrayidx5.i, align 8
  br label %dsgl_walk_add_page.exit

dsgl_walk_add_page.exit:                          ; preds = %if.end10.i, %entry.dsgl_walk_add_page.exit_crit_edge
  %dsgl_walk.sroa.0.0 = phi i32 [ 0, %entry.dsgl_walk_add_page.exit_crit_edge ], [ 1, %if.end10.i ]
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %22 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cryptlen, align 4
  %op = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  %sub = sub i32 0, %3
  %cond = select i1 %tobool.not, i32 %3, i32 %sub
  %add7 = add i32 %23, %21
  %add8 = add i32 %add7, %cond
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %26 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dst, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add8)
  %tobool.not.i22 = icmp eq i32 %add8, 0
  %tobool9.not125.i = icmp eq ptr %27, null
  %or.cond = select i1 %tobool.not.i22, i1 true, i1 %tobool9.not125.i
  br i1 %or.cond, label %dsgl_walk_add_page.exit.dsgl_walk_add_sg.exit_crit_edge, label %dsgl_walk_add_page.exit.while.body11.i_crit_edge

dsgl_walk_add_page.exit.while.body11.i_crit_edge: ; preds = %dsgl_walk_add_page.exit
  br label %while.body11.i

dsgl_walk_add_page.exit.dsgl_walk_add_sg.exit_crit_edge: ; preds = %dsgl_walk_add_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsgl_walk_add_sg.exit

while.body11.i:                                   ; preds = %while.end38.i.while.body11.i_crit_edge, %dsgl_walk_add_page.exit.while.body11.i_crit_edge
  %dsgl_walk.sroa.16.2 = phi ptr [ %dsgl_walk.sroa.16.5, %while.end38.i.while.body11.i_crit_edge ], [ %add.ptr.i20, %dsgl_walk_add_page.exit.while.body11.i_crit_edge ]
  %sg.addr.2131.i = phi ptr [ %call59.i, %while.end38.i.while.body11.i_crit_edge ], [ %27, %dsgl_walk_add_page.exit.while.body11.i_crit_edge ]
  %left_size.0128.i = phi i32 [ %38, %while.end38.i.while.body11.i_crit_edge ], [ %add8, %dsgl_walk_add_page.exit.while.body11.i_crit_edge ]
  %j.0127.i = phi i32 [ %j.1.lcssa.i, %while.end38.i.while.body11.i_crit_edge ], [ %dsgl_walk.sroa.0.0, %dsgl_walk_add_page.exit.while.body11.i_crit_edge ]
  %dma_length12.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.2131.i, i32 0, i32 4
  %28 = ptrtoint ptr %dma_length12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_length12.i, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %left_size.0128.i, i32 %29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool16.not119.i = icmp eq i32 %30, 0
  br i1 %tobool16.not119.i, label %while.body11.i.while.end38.i_crit_edge, label %while.body17.lr.ph.i

while.body11.i.while.end38.i_crit_edge:           ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end38.i

while.body17.lr.ph.i:                             ; preds = %while.body11.i
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.2131.i, i32 0, i32 3
  br label %while.body17.i

while.body17.i:                                   ; preds = %while.body17.i.while.body17.i_crit_edge, %while.body17.lr.ph.i
  %dsgl_walk.sroa.16.3 = phi ptr [ %dsgl_walk.sroa.16.2, %while.body17.lr.ph.i ], [ %spec.select, %while.body17.i.while.body17.i_crit_edge ]
  %offset.0122.i = phi i32 [ 0, %while.body17.lr.ph.i ], [ %add30.i, %while.body17.i.while.body17.i_crit_edge ]
  %j.1121.i = phi i32 [ %j.0127.i, %while.body17.lr.ph.i ], [ %inc.i27, %while.body17.i.while.body17.i_crit_edge ]
  %len.0120.i = phi i32 [ %30, %while.body17.lr.ph.i ], [ %sub31.i, %while.body17.i.while.body17.i_crit_edge ]
  %31 = tail call i32 @llvm.umin.i32(i32 %len.0120.i, i32 2048) #11
  %conv.i24 = trunc i32 %31 to i16
  %rem.i25 = and i32 %j.1121.i, 7
  %arrayidx.i26 = getelementptr [8 x i16], ptr %dsgl_walk.sroa.16.3, i32 0, i32 %rem.i25
  %32 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i24, ptr %arrayidx.i26, align 2
  %33 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_address.i, align 4
  %add25.i = add i32 %34, %offset.0122.i
  %conv26.i = zext i32 %add25.i to i64
  %arrayidx29.i = getelementptr %struct.phys_sge_pairs, ptr %dsgl_walk.sroa.16.3, i32 0, i32 1, i32 %rem.i25
  %35 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv26.i, ptr %arrayidx29.i, align 8
  %add30.i = add i32 %31, %offset.0122.i
  %sub31.i = sub i32 %len.0120.i, %31
  %inc.i27 = add i32 %j.1121.i, 1
  %rem32.i = and i32 %inc.i27, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem32.i)
  %cmp33.i = icmp eq i32 %rem32.i, 0
  %spec.select.idx = zext i1 %cmp33.i to i32
  %spec.select = getelementptr %struct.phys_sge_pairs, ptr %dsgl_walk.sroa.16.3, i32 %spec.select.idx
  %tobool16.not.i = icmp eq i32 %sub31.i, 0
  br i1 %tobool16.not.i, label %while.body17.i.while.end38.i_crit_edge, label %while.body17.i.while.body17.i_crit_edge

while.body17.i.while.body17.i_crit_edge:          ; preds = %while.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body17.i

while.body17.i.while.end38.i_crit_edge:           ; preds = %while.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end38.i

while.end38.i:                                    ; preds = %while.body17.i.while.end38.i_crit_edge, %while.body11.i.while.end38.i_crit_edge
  %dsgl_walk.sroa.16.5 = phi ptr [ %dsgl_walk.sroa.16.2, %while.body11.i.while.end38.i_crit_edge ], [ %spec.select, %while.body17.i.while.end38.i_crit_edge ]
  %j.1.lcssa.i = phi i32 [ %j.0127.i, %while.body11.i.while.end38.i_crit_edge ], [ %inc.i27, %while.body17.i.while.end38.i_crit_edge ]
  %36 = ptrtoint ptr %dma_length12.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_length12.i, align 4
  %38 = tail call i32 @llvm.usub.sat.i32(i32 %left_size.0128.i, i32 %37) #11
  %call59.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.2131.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %left_size.0128.i, i32 %37)
  %tobool7.not.i = icmp ule i32 %left_size.0128.i, %37
  %tobool9.not.i = icmp eq ptr %call59.i, null
  %or.cond112.i = select i1 %tobool7.not.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond112.i, label %while.end38.i.dsgl_walk_add_sg.exit_crit_edge, label %while.end38.i.while.body11.i_crit_edge

while.end38.i.while.body11.i_crit_edge:           ; preds = %while.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body11.i

while.end38.i.dsgl_walk_add_sg.exit_crit_edge:    ; preds = %while.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsgl_walk_add_sg.exit

dsgl_walk_add_sg.exit:                            ; preds = %while.end38.i.dsgl_walk_add_sg.exit_crit_edge, %dsgl_walk_add_page.exit.dsgl_walk_add_sg.exit_crit_edge
  %dsgl_walk.sroa.0.1 = phi i32 [ %dsgl_walk.sroa.0.0, %dsgl_walk_add_page.exit.dsgl_walk_add_sg.exit_crit_edge ], [ %j.1.lcssa.i, %while.end38.i.dsgl_walk_add_sg.exit_crit_edge ]
  %39 = ptrtoint ptr %phys_cpl to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -805306368, ptr %phys_cpl, align 4
  %pcirlxorder_to_noofsgentr.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %phys_cpl, i32 0, i32 1
  %40 = ptrtoint ptr %pcirlxorder_to_noofsgentr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %dsgl_walk.sroa.0.1, ptr %pcirlxorder_to_noofsgentr.i, align 4
  %rss_hdr_int.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %phys_cpl, i32 0, i32 2
  %41 = ptrtoint ptr %rss_hdr_int.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 48, ptr %rss_hdr_int.i, align 4
  %qid2.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %phys_cpl, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %qid2.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %qid, ptr %qid2.i, align 2
  %hash_val.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %phys_cpl, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %hash_val.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %hash_val.i, align 4
  %conv.i29 = trunc i32 %call6 to i8
  %channel.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %phys_cpl, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %channel.i, align 1
  %bf.value.i = and i8 %conv.i29, 3
  %bf.clear.i = and i8 %bf.load.i, -4
  %bf.set.i = or i8 %bf.clear.i, %bf.value.i
  store i8 %bf.set.i, ptr %channel.i, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_port_e2cchan(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsgl_walk_add_sg(ptr nocapture noundef %walk, ptr noundef %sg, i32 noundef %slen, i32 noundef %skip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %walk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slen)
  %tobool.not = icmp eq i32 %slen, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %tobool1.not113 = icmp eq ptr %sg, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip)
  %tobool2.not114 = icmp eq i32 %skip, 0
  %or.cond115 = or i1 %tobool1.not113, %tobool2.not114
  br i1 %or.cond115, label %while.cond.preheader.while.cond6.preheader_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.cond6.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond6.preheader

while.cond6.preheader:                            ; preds = %if.end5.while.cond6.preheader_crit_edge, %while.cond.preheader.while.cond6.preheader_crit_edge
  %sg.addr.0.lcssa = phi ptr [ %sg, %while.cond.preheader.while.cond6.preheader_crit_edge ], [ %call, %if.end5.while.cond6.preheader_crit_edge ]
  %tobool9.not125 = icmp eq ptr %sg.addr.0.lcssa, null
  br i1 %tobool9.not125, label %while.cond6.preheader.while.end60_crit_edge, label %while.cond6.preheader.while.body11.lr.ph_crit_edge

while.cond6.preheader.while.body11.lr.ph_crit_edge: ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body11.lr.ph

while.cond6.preheader.while.end60_crit_edge:      ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end60

while.body11.lr.ph:                               ; preds = %while.body.while.body11.lr.ph_crit_edge, %while.cond6.preheader.while.body11.lr.ph_crit_edge
  %sg.addr.0.lcssa144 = phi ptr [ %sg.addr.0.lcssa, %while.cond6.preheader.while.body11.lr.ph_crit_edge ], [ %sg.addr.0117, %while.body.while.body11.lr.ph_crit_edge ]
  %skip_len.0.lcssa143 = phi i32 [ 0, %while.cond6.preheader.while.body11.lr.ph_crit_edge ], [ %skip.addr.0116, %while.body.while.body11.lr.ph_crit_edge ]
  %to = getelementptr inbounds %struct.dsgl_walk, ptr %walk, i32 0, i32 4
  %last_sg = getelementptr inbounds %struct.dsgl_walk, ptr %walk, i32 0, i32 2
  %last_sg_len = getelementptr inbounds %struct.dsgl_walk, ptr %walk, i32 0, i32 1
  br label %while.body11

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %sg.addr.0117 = phi ptr [ %call, %if.end5.while.body_crit_edge ], [ %sg, %while.cond.preheader.while.body_crit_edge ]
  %skip.addr.0116 = phi i32 [ %sub, %if.end5.while.body_crit_edge ], [ %skip, %while.cond.preheader.while.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0117, i32 0, i32 4
  %2 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.addr.0116, i32 %3)
  %cmp.not = icmp ult i32 %skip.addr.0116, %3
  br i1 %cmp.not, label %while.body.while.body11.lr.ph_crit_edge, label %if.end5

while.body.while.body11.lr.ph_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body11.lr.ph

if.end5:                                          ; preds = %while.body
  %sub = sub i32 %skip.addr.0116, %3
  %call = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.0117) #11
  %tobool1.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool2.not = icmp eq i32 %sub, 0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.end5.while.cond6.preheader_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end5.while.cond6.preheader_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond6.preheader

while.body11:                                     ; preds = %while.end38.while.body11_crit_edge, %while.body11.lr.ph
  %sg.addr.2131 = phi ptr [ %sg.addr.0.lcssa144, %while.body11.lr.ph ], [ %call59, %while.end38.while.body11_crit_edge ]
  %skip_len.2129 = phi i32 [ %skip_len.0.lcssa143, %while.body11.lr.ph ], [ 0, %while.end38.while.body11_crit_edge ]
  %left_size.0128 = phi i32 [ %slen, %while.body11.lr.ph ], [ %24, %while.end38.while.body11_crit_edge ]
  %j.0127 = phi i32 [ %1, %while.body11.lr.ph ], [ %j.1.lcssa, %while.end38.while.body11_crit_edge ]
  %dma_length12 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.2131, i32 0, i32 4
  %4 = ptrtoint ptr %dma_length12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_length12, align 4
  %sub13 = sub i32 %5, %skip_len.2129
  %6 = tail call i32 @llvm.umin.i32(i32 %left_size.0128, i32 %sub13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool16.not119 = icmp eq i32 %6, 0
  br i1 %tobool16.not119, label %while.body11.while.end38_crit_edge, label %while.body17.lr.ph

while.body11.while.end38_crit_edge:               ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end38

while.body17.lr.ph:                               ; preds = %while.body11
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.2131, i32 0, i32 3
  br label %while.body17

while.body17:                                     ; preds = %if.end37.while.body17_crit_edge, %while.body17.lr.ph
  %offset.0122 = phi i32 [ 0, %while.body17.lr.ph ], [ %add30, %if.end37.while.body17_crit_edge ]
  %j.1121 = phi i32 [ %j.0127, %while.body17.lr.ph ], [ %inc, %if.end37.while.body17_crit_edge ]
  %len.0120 = phi i32 [ %6, %while.body17.lr.ph ], [ %sub31, %if.end37.while.body17_crit_edge ]
  %7 = tail call i32 @llvm.umin.i32(i32 %len.0120, i32 2048)
  %conv = trunc i32 %7 to i16
  %8 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %to, align 4
  %rem = and i32 %j.1121, 7
  %arrayidx = getelementptr [8 x i16], ptr %9, i32 0, i32 %rem
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %arrayidx, align 2
  %11 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_address, align 4
  %add = add i32 %offset.0122, %skip_len.2129
  %add25 = add i32 %add, %12
  %conv26 = zext i32 %add25 to i64
  %13 = load ptr, ptr %to, align 4
  %arrayidx29 = getelementptr %struct.phys_sge_pairs, ptr %13, i32 0, i32 1, i32 %rem
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv26, ptr %arrayidx29, align 8
  %add30 = add i32 %offset.0122, %7
  %sub31 = sub i32 %len.0120, %7
  %inc = add i32 %j.1121, 1
  %rem32 = and i32 %inc, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem32)
  %cmp33 = icmp eq i32 %rem32, 0
  br i1 %cmp33, label %if.then35, label %while.body17.if.end37_crit_edge

while.body17.if.end37_crit_edge:                  ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then35:                                        ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %to, align 4
  %incdec.ptr = getelementptr %struct.phys_sge_pairs, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %to, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %while.body17.if.end37_crit_edge
  %tobool16.not = icmp eq i32 %sub31, 0
  br i1 %tobool16.not, label %if.end37.while.end38_crit_edge, label %if.end37.while.body17_crit_edge

if.end37.while.body17_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body17

if.end37.while.end38_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end38

while.end38:                                      ; preds = %if.end37.while.end38_crit_edge, %while.body11.while.end38_crit_edge
  %j.1.lcssa = phi i32 [ %j.0127, %while.body11.while.end38_crit_edge ], [ %inc, %if.end37.while.end38_crit_edge ]
  %17 = ptrtoint ptr %last_sg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sg.addr.2131, ptr %last_sg, align 4
  %18 = ptrtoint ptr %dma_length12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_length12, align 4
  %sub40 = sub i32 %19, %skip_len.2129
  %20 = tail call i32 @llvm.umin.i32(i32 %left_size.0128, i32 %sub40)
  %add48 = add i32 %20, %skip_len.2129
  %21 = ptrtoint ptr %last_sg_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add48, ptr %last_sg_len, align 4
  %22 = ptrtoint ptr %dma_length12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_length12, align 4
  %sub50 = sub i32 %23, %skip_len.2129
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %left_size.0128, i32 %sub50)
  %call59 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.2131) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %left_size.0128, i32 %sub50)
  %tobool7.not = icmp ule i32 %left_size.0128, %sub50
  %tobool9.not = icmp eq ptr %call59, null
  %or.cond112 = select i1 %tobool7.not, i1 true, i1 %tobool9.not
  br i1 %or.cond112, label %while.end38.while.end60_crit_edge, label %while.end38.while.body11_crit_edge

while.end38.while.body11_crit_edge:               ; preds = %while.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body11

while.end38.while.end60_crit_edge:                ; preds = %while.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end60

while.end60:                                      ; preds = %while.end38.while.end60_crit_edge, %while.cond6.preheader.while.end60_crit_edge
  %j.0.lcssa = phi i32 [ %1, %while.cond6.preheader.while.end60_crit_edge ], [ %j.1.lcssa, %while.end38.while.end60_crit_edge ]
  %25 = ptrtoint ptr %walk to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %j.0.lcssa, ptr %walk, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end60, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chcr_add_cipher_src_ent(ptr nocapture noundef %req, ptr noundef %ulptx, ptr nocapture noundef readonly %wrparam) local_unnamed_addr #0 align 64 {
entry:
  %ulp_walk = alloca %struct.ulptx_walk, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ulp_walk) #11
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %iv = getelementptr inbounds %struct.chcr_skcipher_req_ctx, ptr %__ctx.i, i32 0, i32 10
  %0 = call ptr @memcpy(ptr %ulptx, ptr %iv, i32 16)
  %add.ptr = getelementptr i8, ptr %ulptx, i32 16
  %imm = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %1 = ptrtoint ptr %imm to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %3 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %src, align 8
  %call2 = tail call i32 @sg_nents(ptr noundef %4) #11
  %bytes = getelementptr inbounds %struct.cipher_wr_param, ptr %wrparam, i32 0, i32 2
  %5 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bytes, align 4
  %processed = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %7 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %processed, align 8
  %call3 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %4, i32 noundef %call2, ptr noundef %add.ptr, i32 noundef %6, i32 noundef %8) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 5
  %10 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 4
  %11 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 3
  %12 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 2
  %13 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 1
  %14 = ptrtoint ptr %ulp_walk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %ulp_walk, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %13, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %12, align 4
  %sge.i = getelementptr i8, ptr %ulptx, i32 32
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sge.i, ptr %9, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %10, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %11, align 4
  %srcsg = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 0, i32 1
  %20 = ptrtoint ptr %srcsg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %srcsg, align 4
  %bytes4 = getelementptr inbounds %struct.cipher_wr_param, ptr %wrparam, i32 0, i32 2
  %22 = ptrtoint ptr %bytes4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytes4, align 4
  %src_ofst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %24 = ptrtoint ptr %src_ofst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_ofst, align 8
  call fastcc void @ulptx_walk_add_sg(ptr noundef nonnull %ulp_walk, ptr noundef %21, i32 noundef %23, i32 noundef %25)
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %10, align 4
  %28 = ptrtoint ptr %srcsg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %srcsg, align 4
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %11, align 4
  %31 = ptrtoint ptr %src_ofst to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %src_ofst, align 8
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %13, align 4
  %or.i = or i32 %33, -2113929216
  %34 = ptrtoint ptr %ulp_walk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ulp_walk, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i, ptr %35, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ulp_walk) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chcr_add_cipher_dst_ent(ptr nocapture noundef %req, ptr noundef %phys_cpl, ptr nocapture noundef readonly %wrparam, i16 noundef zeroext %qid) local_unnamed_addr #0 align 64 {
entry:
  %dsgl_walk = alloca %struct.dsgl_walk, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrparam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wrparam, align 4
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %4 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dsgl_walk) #11
  %6 = getelementptr inbounds %struct.dsgl_walk, ptr %dsgl_walk, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dsgl_walk, ptr %dsgl_walk, i32 0, i32 2
  %8 = getelementptr inbounds %struct.dsgl_walk, ptr %dsgl_walk, i32 0, i32 3
  %9 = getelementptr inbounds %struct.dsgl_walk, ptr %dsgl_walk, i32 0, i32 4
  %rxqidx = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 32
  %10 = getelementptr inbounds i8, ptr %dsgl_walk, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 -1, ptr %10, align 4
  %12 = ptrtoint ptr %rxqidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rxqidx, align 8
  %rxq_perchan = getelementptr i8, ptr %3, i32 132
  %14 = ptrtoint ptr %rxq_perchan to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rxq_perchan, align 4
  %div.rhs.trunc = zext i8 %15 to i16
  %div17 = udiv i16 %13, %div.rhs.trunc
  %div.zext = zext i16 %div17 to i32
  %ports = getelementptr i8, ptr %5, i32 -136
  %16 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %div.zext
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @cxgb4_port_e2cchan(ptr noundef %19) #11
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %phys_cpl, ptr %8, align 4
  %21 = ptrtoint ptr %dsgl_walk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dsgl_walk, align 4
  %add.ptr.i16 = getelementptr %struct.cpl_rx_phys_dsgl, ptr %phys_cpl, i32 1
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i16, ptr %9, align 4
  %dstsg = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %23 = ptrtoint ptr %dstsg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dstsg, align 4
  %bytes = getelementptr inbounds %struct.cipher_wr_param, ptr %wrparam, i32 0, i32 2
  %25 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bytes, align 4
  %dst_ofst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 2
  %27 = ptrtoint ptr %dst_ofst to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dst_ofst, align 4
  call fastcc void @dsgl_walk_add_sg(ptr noundef nonnull %dsgl_walk, ptr noundef %24, i32 noundef %26, i32 noundef %28)
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %7, align 4
  %31 = ptrtoint ptr %dstsg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %dstsg, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %6, align 4
  %34 = ptrtoint ptr %dst_ofst to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dst_ofst, align 4
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %8, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -805306368, ptr %36, align 4
  %38 = ptrtoint ptr %dsgl_walk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dsgl_walk, align 4
  %pcirlxorder_to_noofsgentr.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %pcirlxorder_to_noofsgentr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %pcirlxorder_to_noofsgentr.i, align 4
  %rss_hdr_int.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %36, i32 0, i32 2
  %41 = ptrtoint ptr %rss_hdr_int.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 48, ptr %rss_hdr_int.i, align 4
  %qid2.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %36, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %qid2.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %qid, ptr %qid2.i, align 2
  %hash_val.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %36, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %hash_val.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %hash_val.i, align 4
  %conv.i = trunc i32 %call6 to i8
  %channel.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %36, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %channel.i, align 1
  %bf.value.i = and i8 %conv.i, 3
  %bf.clear.i = and i8 %bf.load.i, -4
  %bf.set.i = or i8 %bf.clear.i, %bf.value.i
  store i8 %bf.set.i, ptr %channel.i, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dsgl_walk) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chcr_add_hash_src_ent(ptr nocapture noundef %req, ptr noundef %ulptx, ptr nocapture noundef readonly %param) local_unnamed_addr #0 align 64 {
entry:
  %ulp_walk = alloca %struct.ulptx_walk, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ulp_walk) #11
  %0 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 3
  %2 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 4
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %imm = getelementptr inbounds %struct.chcr_hctx_per_wr, ptr %__ctx.i, i32 0, i32 8
  %3 = ptrtoint ptr %imm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %imm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bfr_len = getelementptr inbounds %struct.hash_wr_param, ptr %param, i32 0, i32 6
  %5 = ptrtoint ptr %bfr_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bfr_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %reqbfr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %7 = ptrtoint ptr %reqbfr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reqbfr, align 8
  %9 = call ptr @memcpy(ptr %ulptx, ptr %8, i32 %6)
  %10 = ptrtoint ptr %bfr_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bfr_len, align 8
  %add.ptr = getelementptr i8, ptr %ulptx, i32 %11
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %buf.0 = phi ptr [ %add.ptr, %if.then2 ], [ %ulptx, %if.then.if.end_crit_edge ]
  %12 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__ctx.i, align 8
  %call8 = tail call i32 @sg_nents(ptr noundef %13) #11
  %sg_len = getelementptr inbounds %struct.hash_wr_param, ptr %param, i32 0, i32 5
  %14 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg_len, align 4
  %call9 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %13, i32 noundef %call8, ptr noundef %buf.0, i32 noundef %15, i32 noundef 0) #11
  br label %if.end24

if.else:                                          ; preds = %entry
  %16 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 5
  %17 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk, i32 0, i32 2
  %18 = ptrtoint ptr %ulp_walk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ulptx, ptr %ulp_walk, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %0, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %17, align 4
  %sge.i = getelementptr inbounds %struct.ulptx_sgl, ptr %ulptx, i32 0, i32 3
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sge.i, ptr %16, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %2, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %1, align 4
  %bfr_len10 = getelementptr inbounds %struct.hash_wr_param, ptr %param, i32 0, i32 6
  %24 = ptrtoint ptr %bfr_len10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bfr_len10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not = icmp eq i32 %25, 0
  br i1 %tobool11.not, label %if.else.if.end15_crit_edge, label %ulptx_walk_add_page.exit

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

ulptx_walk_add_page.exit:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dma_addr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_addr, align 8
  %len0.i = getelementptr inbounds %struct.ulptx_sgl, ptr %ulptx, i32 0, i32 1
  %28 = ptrtoint ptr %len0.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %len0.i, align 4
  %conv.i = zext i32 %27 to i64
  %addr0.i = getelementptr inbounds %struct.ulptx_sgl, ptr %ulptx, i32 0, i32 2
  %29 = ptrtoint ptr %addr0.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv.i, ptr %addr0.i, align 8
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %0, align 4
  br label %if.end15

if.end15:                                         ; preds = %ulptx_walk_add_page.exit, %if.else.if.end15_crit_edge
  %31 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__ctx.i, align 8
  %sg_len18 = getelementptr inbounds %struct.hash_wr_param, ptr %param, i32 0, i32 5
  %33 = ptrtoint ptr %sg_len18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sg_len18, align 4
  %src_ofst = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %src_ofst to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src_ofst, align 8
  call fastcc void @ulptx_walk_add_sg(ptr noundef nonnull %ulp_walk, ptr noundef %32, i32 noundef %34, i32 noundef %36)
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %39 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %__ctx.i, align 8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 4
  %42 = ptrtoint ptr %src_ofst to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %src_ofst, align 8
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %0, align 4
  %or.i = or i32 %44, -2113929216
  %45 = ptrtoint ptr %ulp_walk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ulp_walk, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i, ptr %46, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end15, %if.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ulp_walk) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chcr_hash_dma_map(ptr noundef %dev, ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  %call2 = tail call i32 @sg_nents(ptr noundef %3) #11
  %call3 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %3, i32 noundef %call2, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %is_sg_map = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %4 = ptrtoint ptr %is_sg_map to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_sg_map, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chcr_hash_dma_unmap(ptr noundef %dev, ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  %call2 = tail call i32 @sg_nents(ptr noundef %3) #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %3, i32 noundef %call2, i32 noundef 1, i32 noundef 0) #11
  %is_sg_map = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %4 = ptrtoint ptr %is_sg_map to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_sg_map, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chcr_cipher_dma_map(ptr noundef %dev, ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst, align 4
  %cmp = icmp eq ptr %1, %3
  %call = tail call i32 @sg_nents(ptr noundef %1) #11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %1, i32 noundef %call, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.err_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.err_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.else:                                          ; preds = %entry
  %call8 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %1, i32 noundef %call, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else.err_crit_edge, label %if.end11

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end11:                                         ; preds = %if.else
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %call14 = tail call i32 @sg_nents(ptr noundef %5) #11
  %call15 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %5, i32 noundef %call14, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src, align 8
  %call20 = tail call i32 @sg_nents(ptr noundef %7) #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %7, i32 noundef %call20, i32 noundef 1, i32 noundef 0) #11
  br label %err

err:                                              ; preds = %if.then17, %if.else.err_crit_edge, %if.then.err_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end11.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chcr_cipher_dma_unmap(ptr noundef %dev, ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst, align 4
  %cmp = icmp eq ptr %1, %3
  %call = tail call i32 @sg_nents(ptr noundef %1) #11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %1, i32 noundef %call, i32 noundef 0, i32 noundef 0) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %1, i32 noundef %call, i32 noundef 1, i32 noundef 0) #11
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %call8 = tail call i32 @sg_nents(ptr noundef %5) #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %5, i32 noundef %call8, i32 noundef 2, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @start_crypto() local_unnamed_addr #0 align 64 {
entry:
  %ai.i = alloca %struct.crypto_alg, align 128
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %ai.i) #11
  %0 = call ptr @memset(ptr %ai.i, i32 255, i32 512)
  %cra_driver_name90.i = getelementptr inbounds %struct.crypto_alg, ptr %ai.i, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.0151.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %is_registered.i = getelementptr [30 x %struct.chcr_alg_template], ptr @driver_algs, i32 0, i32 %i.0151.i, i32 1
  %1 = ptrtoint ptr %is_registered.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %is_registered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr [30 x %struct.chcr_alg_template], ptr @driver_algs, i32 0, i32 %i.0151.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 128
  %and.i = and i32 %4, 15
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %and.i, label %if.end.i.if.else95.i_crit_edge [
    i32 5, label %sw.bb.i
    i32 3, label %sw.bb20.i
    i32 15, label %sw.bb45.i
  ]

if.end.i.if.else95.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else95.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %alg.i = getelementptr [30 x %struct.chcr_alg_template], ptr @driver_algs, i32 0, i32 %i.0151.i, i32 3
  %cra_priority.i = getelementptr inbounds %struct.skcipher_alg, ptr %alg.i, i32 0, i32 11, i32 6
  %6 = ptrtoint ptr %cra_priority.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 500, ptr %cra_priority.i, align 32
  %cra_module.i = getelementptr inbounds %struct.skcipher_alg, ptr %alg.i, i32 0, i32 11, i32 15
  %7 = ptrtoint ptr %cra_module.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %cra_module.i, align 4
  %cra_flags.i = getelementptr inbounds %struct.skcipher_alg, ptr %alg.i, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65925, ptr %cra_flags.i, align 16
  %cra_ctxsize.i = getelementptr inbounds %struct.skcipher_alg, ptr %alg.i, i32 0, i32 11, i32 4
  %9 = ptrtoint ptr %cra_ctxsize.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 188, ptr %cra_ctxsize.i, align 8
  %cra_alignmask.i = getelementptr inbounds %struct.skcipher_alg, ptr %alg.i, i32 0, i32 11, i32 5
  %10 = ptrtoint ptr %cra_alignmask.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cra_alignmask.i, align 4
  %call.i = tail call i32 @crypto_register_skcipher(ptr noundef %alg.i) #11
  %cra_driver_name.i = getelementptr inbounds %struct.skcipher_alg, ptr %alg.i, i32 0, i32 11, i32 9
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %alg22.i = getelementptr [30 x %struct.chcr_alg_template], ptr @driver_algs, i32 0, i32 %i.0151.i, i32 3
  %cra_flags24.i = getelementptr inbounds %struct.aead_alg, ptr %alg22.i, i32 0, i32 10, i32 2
  %11 = ptrtoint ptr %cra_flags24.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65920, ptr %cra_flags24.i, align 16
  %encrypt.i = getelementptr inbounds %struct.aead_alg, ptr %alg22.i, i32 0, i32 2
  %12 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @chcr_aead_encrypt, ptr %encrypt.i, align 8
  %decrypt.i = getelementptr inbounds %struct.aead_alg, ptr %alg22.i, i32 0, i32 3
  %13 = ptrtoint ptr %decrypt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @chcr_aead_decrypt, ptr %decrypt.i, align 4
  %init.i = getelementptr inbounds %struct.aead_alg, ptr %alg22.i, i32 0, i32 4
  %14 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @chcr_aead_cra_init, ptr %init.i, align 16
  %exit.i = getelementptr inbounds %struct.aead_alg, ptr %alg22.i, i32 0, i32 5
  %15 = ptrtoint ptr %exit.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @chcr_aead_cra_exit, ptr %exit.i, align 4
  %cra_module36.i = getelementptr inbounds %struct.aead_alg, ptr %alg22.i, i32 0, i32 10, i32 15
  %16 = ptrtoint ptr %cra_module36.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cra_module36.i, align 4
  %call39.i = tail call i32 @crypto_register_aead(ptr noundef %alg22.i) #11
  %cra_driver_name43.i = getelementptr inbounds %struct.aead_alg, ptr %alg22.i, i32 0, i32 10, i32 9
  br label %sw.epilog.i

sw.bb45.i:                                        ; preds = %if.end.i
  %alg47.i = getelementptr [30 x %struct.chcr_alg_template], ptr @driver_algs, i32 0, i32 %i.0151.i, i32 3
  %update.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 1
  %17 = ptrtoint ptr %update.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @chcr_ahash_update, ptr %update.i, align 4
  %final.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 2
  %18 = ptrtoint ptr %final.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @chcr_ahash_final, ptr %final.i, align 8
  %finup.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 3
  %19 = ptrtoint ptr %finup.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @chcr_ahash_finup, ptr %finup.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 4
  %20 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @chcr_ahash_digest, ptr %digest.i, align 16
  %export.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 5
  %21 = ptrtoint ptr %export.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @chcr_ahash_export, ptr %export.i, align 4
  %import.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 6
  %22 = ptrtoint ptr %import.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @chcr_ahash_import, ptr %import.i, align 8
  %statesize.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %statesize.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 376, ptr %statesize.i, align 4
  %base49.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 11, i32 3
  %cra_priority50.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 11, i32 3, i32 6
  %24 = ptrtoint ptr %cra_priority50.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 500, ptr %cra_priority50.i, align 32
  %cra_module53.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 11, i32 3, i32 15
  %25 = ptrtoint ptr %cra_module53.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %cra_module53.i, align 4
  %cra_flags56.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 11, i32 3, i32 2
  %26 = ptrtoint ptr %cra_flags56.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 65664, ptr %cra_flags56.i, align 16
  %cra_alignmask59.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 11, i32 3, i32 5
  %27 = ptrtoint ptr %cra_alignmask59.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cra_alignmask59.i, align 4
  %cra_exit.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 11, i32 3, i32 13
  %28 = ptrtoint ptr %cra_exit.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %cra_exit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777231, i32 %4)
  %cmp64.i = icmp eq i32 %4, 16777231
  br i1 %cmp64.i, label %if.then65.i, label %if.else.i

if.then65.i:                                      ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #13
  %cra_init.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 11, i32 3, i32 12
  %29 = ptrtoint ptr %cra_init.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @chcr_hmac_cra_init, ptr %cra_init.i, align 64
  %30 = ptrtoint ptr %cra_exit.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @chcr_hmac_cra_exit, ptr %cra_exit.i, align 4
  %31 = ptrtoint ptr %alg47.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @chcr_hmac_init, ptr %alg47.i, align 128
  %setkey.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 7
  %32 = ptrtoint ptr %setkey.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @chcr_ahash_setkey, ptr %setkey.i, align 4
  br label %if.end82.i

if.else.i:                                        ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %alg47.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @chcr_sha_init, ptr %alg47.i, align 128
  %cra_init81.i = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 11, i32 3, i32 12
  %34 = ptrtoint ptr %cra_init81.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @chcr_sha_cra_init, ptr %cra_init81.i, align 64
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.else.i, %if.then65.i
  %.sink.i = phi i32 [ 332, %if.then65.i ], [ 72, %if.else.i ]
  %35 = getelementptr inbounds %struct.ahash_alg, ptr %alg47.i, i32 0, i32 11, i32 3, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink.i, ptr %35, align 8
  %call85.i = tail call i32 @crypto_register_ahash(ptr noundef %alg47.i) #11
  %37 = call ptr @memcpy(ptr %ai.i, ptr %base49.i, i32 512)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end82.i, %sw.bb20.i, %sw.bb.i
  %err.1.i = phi i32 [ %call85.i, %if.end82.i ], [ %call39.i, %sw.bb20.i ], [ %call.i, %sw.bb.i ]
  %name.1.i = phi ptr [ %cra_driver_name90.i, %if.end82.i ], [ %cra_driver_name43.i, %sw.bb20.i ], [ %cra_driver_name.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool92.not.i = icmp eq i32 %err.1.i, 0
  br i1 %tobool92.not.i, label %sw.epilog.i.if.else95.i_crit_edge, label %do.end.i

sw.epilog.i.if.else95.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else95.i

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %call94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.1.i) #14
  call fastcc void @chcr_unregister_alg() #11
  br label %chcr_register_alg.exit

if.else95.i:                                      ; preds = %sw.epilog.i.if.else95.i_crit_edge, %if.end.i.if.else95.i_crit_edge
  %38 = ptrtoint ptr %is_registered.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %is_registered.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else95.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0151.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.inc.i.chcr_register_alg.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.chcr_register_alg.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_register_alg.exit

chcr_register_alg.exit:                           ; preds = %for.inc.i.chcr_register_alg.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %err.1.i, %do.end.i ], [ 0, %for.inc.i.chcr_register_alg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %ai.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stop_crypto() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @chcr_unregister_alg()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chcr_unregister_alg() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [30 x %struct.chcr_alg_template], ptr @driver_algs, i32 0, i32 %i.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 128
  %and = and i32 %1, 15
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %and, label %for.body.for.inc_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %sw.bb8
    i32 15, label %sw.bb25
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %is_registered = getelementptr [30 x %struct.chcr_alg_template], ptr @driver_algs, i32 0, i32 %i.03, i32 1
  %3 = ptrtoint ptr %is_registered to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %sw.bb.for.inc_crit_edge, label %land.lhs.true

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %sw.bb
  %alg = getelementptr [30 x %struct.chcr_alg_template], ptr @driver_algs, i32 0, i32 %i.03, i32 3
  %cra_refcnt = getelementptr inbounds %struct.skcipher_alg, ptr %alg, i32 0, i32 11, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cra_refcnt, i32 noundef 4) #11
  %5 = ptrtoint ptr %cra_refcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %cra_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @crypto_unregister_skcipher(ptr noundef %alg) #11
  br label %for.inc.sink.split

sw.bb8:                                           ; preds = %for.body
  %is_registered10 = getelementptr [30 x %struct.chcr_alg_template], ptr @driver_algs, i32 0, i32 %i.03, i32 1
  %7 = ptrtoint ptr %is_registered10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %is_registered10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %sw.bb8.for.inc_crit_edge, label %land.lhs.true12

sw.bb8.for.inc_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true12:                                  ; preds = %sw.bb8
  %alg14 = getelementptr [30 x %struct.chcr_alg_template], ptr @driver_algs, i32 0, i32 %i.03, i32 3
  %cra_refcnt16 = getelementptr inbounds %struct.aead_alg, ptr %alg14, i32 0, i32 10, i32 7
  %call.i.i.i1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cra_refcnt16, i32 noundef 4) #11
  %9 = ptrtoint ptr %cra_refcnt16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %cra_refcnt16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp18 = icmp eq i32 %10, 1
  br i1 %cmp18, label %if.then19, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then19:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @crypto_unregister_aead(ptr noundef %alg14) #11
  br label %for.inc.sink.split

sw.bb25:                                          ; preds = %for.body
  %is_registered27 = getelementptr [30 x %struct.chcr_alg_template], ptr @driver_algs, i32 0, i32 %i.03, i32 1
  %11 = ptrtoint ptr %is_registered27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %is_registered27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool28.not = icmp eq i32 %12, 0
  br i1 %tobool28.not, label %sw.bb25.for.inc_crit_edge, label %land.lhs.true29

sw.bb25.for.inc_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true29:                                  ; preds = %sw.bb25
  %alg31 = getelementptr [30 x %struct.chcr_alg_template], ptr @driver_algs, i32 0, i32 %i.03, i32 3
  %cra_refcnt33 = getelementptr inbounds %struct.ahash_alg, ptr %alg31, i32 0, i32 11, i32 3, i32 7
  %call.i.i.i2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cra_refcnt33, i32 noundef 4) #11
  %13 = ptrtoint ptr %cra_refcnt33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %cra_refcnt33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp35 = icmp eq i32 %14, 1
  br i1 %cmp35, label %if.then36, label %land.lhs.true29.for.inc_crit_edge

land.lhs.true29.for.inc_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then36:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @crypto_unregister_ahash(ptr noundef %alg31) #11
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then36, %if.then19, %if.then
  %is_registered.sink = phi ptr [ %is_registered, %if.then ], [ %is_registered10, %if.then19 ], [ %is_registered27, %if.then36 ]
  %15 = ptrtoint ptr %is_registered.sink to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %is_registered.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true29.for.inc_crit_edge, %sw.bb25.for.inc_crit_edge, %land.lhs.true12.for.inc_crit_edge, %sw.bb8.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chcr_sg_ent_in_wr(ptr noundef %src, ptr noundef %dst, i32 noundef %space, i32 noundef %srcskip, i32 noundef %dstskip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %src, i32 0, i32 4
  %0 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %srcskip)
  %cmp = icmp eq i32 %1, %srcskip
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @sg_next(ptr noundef %src) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %srcskip.addr.0 = phi i32 [ 0, %if.then ], [ %srcskip, %entry.if.end_crit_edge ]
  %src.addr.0 = phi ptr [ %call, %if.then ], [ %src, %entry.if.end_crit_edge ]
  %dma_length1 = getelementptr inbounds %struct.scatterlist, ptr %dst, i32 0, i32 4
  %2 = ptrtoint ptr %dma_length1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_length1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %dstskip)
  %cmp2 = icmp eq i32 %3, %dstskip
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call ptr @sg_next(ptr noundef %dst) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %dstskip.addr.0 = phi i32 [ 0, %if.then3 ], [ %dstskip, %if.end.if.end5_crit_edge ]
  %dst.addr.0 = phi ptr [ %call4, %if.then3 ], [ %dst, %if.end.if.end5_crit_edge ]
  %tobool.not20 = icmp eq ptr %src.addr.0, null
  %tobool6.not21 = icmp eq ptr %dst.addr.0, null
  %or.cond22 = select i1 %tobool.not20, i1 true, i1 %tobool6.not21
  br i1 %or.cond22, label %if.end5.while.end55_crit_edge, label %if.end5.land.rhs_crit_edge

if.end5.land.rhs_crit_edge:                       ; preds = %if.end5
  br label %land.rhs

if.end5.while.end55_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end55

land.rhs:                                         ; preds = %if.end54.land.rhs_crit_edge, %if.end5.land.rhs_crit_edge
  %src.addr.131 = phi ptr [ %src.addr.2, %if.end54.land.rhs_crit_edge ], [ %src.addr.0, %if.end5.land.rhs_crit_edge ]
  %dst.addr.130 = phi ptr [ %dst.addr.2.lcssa, %if.end54.land.rhs_crit_edge ], [ %dst.addr.0, %if.end5.land.rhs_crit_edge ]
  %srcskip.addr.129 = phi i32 [ %srcskip.addr.2, %if.end54.land.rhs_crit_edge ], [ %srcskip.addr.0, %if.end5.land.rhs_crit_edge ]
  %soffset.028 = phi i32 [ %soffset.1, %if.end54.land.rhs_crit_edge ], [ 0, %if.end5.land.rhs_crit_edge ]
  %dstsg.027 = phi i32 [ %dstsg.1.lcssa, %if.end54.land.rhs_crit_edge ], [ 0, %if.end5.land.rhs_crit_edge ]
  %srcsg.026 = phi i32 [ %add, %if.end54.land.rhs_crit_edge ], [ 0, %if.end5.land.rhs_crit_edge ]
  %dstlen.025 = phi i32 [ %dstlen.1.lcssa, %if.end54.land.rhs_crit_edge ], [ 0, %if.end5.land.rhs_crit_edge ]
  %srclen.024 = phi i32 [ %add13, %if.end54.land.rhs_crit_edge ], [ 0, %if.end5.land.rhs_crit_edge ]
  %dstskip.addr.123 = phi i32 [ %dstskip.addr.2.lcssa, %if.end54.land.rhs_crit_edge ], [ %dstskip.addr.0, %if.end5.land.rhs_crit_edge ]
  %add = add i32 %srcsg.026, 1
  %arrayidx = getelementptr [33 x i32], ptr @sgl_ent_len, i32 0, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr [33 x i32], ptr @dsgl_ent_len, i32 0, i32 %dstsg.027
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  %add8 = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %space)
  %cmp9 = icmp ult i32 %add8, %space
  br i1 %cmp9, label %land.lhs.true16.preheader, label %land.rhs.while.end55_crit_edge

land.rhs.while.end55_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end55

land.lhs.true16.preheader:                        ; preds = %land.rhs
  %dma_length10 = getelementptr inbounds %struct.scatterlist, ptr %src.addr.131, i32 0, i32 4
  %8 = ptrtoint ptr %dma_length10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_length10, align 4
  %10 = add i32 %srcskip.addr.129, %soffset.028
  %sub11 = sub i32 %9, %10
  %11 = tail call i32 @llvm.umin.i32(i32 %sub11, i32 65532)
  %add13 = add i32 %11, %srclen.024
  %12 = add i32 %dstsg.027, 1
  %smax = call i32 @llvm.smax.i32(i32 %12, i32 33)
  %13 = add nsw i32 %smax, -1
  br label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end46.land.lhs.true16_crit_edge, %land.lhs.true16.preheader
  %dst.addr.28 = phi ptr [ %dst.addr.3, %if.end46.land.lhs.true16_crit_edge ], [ %dst.addr.130, %land.lhs.true16.preheader ]
  %offset.07 = phi i32 [ %offset.1, %if.end46.land.lhs.true16_crit_edge ], [ 0, %land.lhs.true16.preheader ]
  %dstsg.16 = phi i32 [ %add17, %if.end46.land.lhs.true16_crit_edge ], [ %dstsg.027, %land.lhs.true16.preheader ]
  %dstlen.15 = phi i32 [ %add39, %if.end46.land.lhs.true16_crit_edge ], [ %dstlen.025, %land.lhs.true16.preheader ]
  %dstskip.addr.24 = phi i32 [ 0, %if.end46.land.lhs.true16_crit_edge ], [ %dstskip.addr.123, %land.lhs.true16.preheader ]
  %add17 = add i32 %dstsg.16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add17)
  %cmp18 = icmp slt i32 %add17, 33
  br i1 %cmp18, label %land.rhs19, label %land.lhs.true16.while.end_crit_edge

land.lhs.true16.while.end_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs19:                                       ; preds = %land.lhs.true16
  %arrayidx22 = getelementptr [33 x i32], ptr @dsgl_ent_len, i32 0, i32 %add17
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx22, align 4
  %add23 = add i32 %15, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %space)
  %cmp24 = icmp ult i32 %add23, %space
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %dstlen.15)
  %cmp27.not = icmp sgt i32 %add13, %dstlen.15
  %or.cond1 = select i1 %cmp24, i1 %cmp27.not, i1 false
  br i1 %or.cond1, label %if.end29, label %land.rhs19.while.end_crit_edge

land.rhs19.while.end_crit_edge:                   ; preds = %land.rhs19
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end29:                                         ; preds = %land.rhs19
  %dma_length30 = getelementptr inbounds %struct.scatterlist, ptr %dst.addr.28, i32 0, i32 4
  %16 = ptrtoint ptr %dma_length30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_length30, align 4
  %18 = add i32 %offset.07, %dstskip.addr.24
  %sub32 = sub i32 %17, %18
  %19 = tail call i32 @llvm.umin.i32(i32 %sub32, i32 2048)
  %add39 = add i32 %19, %dstlen.15
  %add40 = add i32 %19, %offset.07
  %add41 = add i32 %add40, %dstskip.addr.24
  call void @__sanitizer_cov_trace_cmp4(i32 %add41, i32 %17)
  %cmp43 = icmp eq i32 %add41, %17
  br i1 %cmp43, label %if.then44, label %if.end29.if.end46_crit_edge

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then44:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = tail call ptr @sg_next(ptr noundef nonnull %dst.addr.28) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end29.if.end46_crit_edge
  %offset.1 = phi i32 [ 0, %if.then44 ], [ %add40, %if.end29.if.end46_crit_edge ]
  %dst.addr.3 = phi ptr [ %call45, %if.then44 ], [ %dst.addr.28, %if.end29.if.end46_crit_edge ]
  %tobool15.not = icmp eq ptr %dst.addr.3, null
  br i1 %tobool15.not, label %if.end46.while.end_crit_edge, label %if.end46.land.lhs.true16_crit_edge

if.end46.land.lhs.true16_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true16

if.end46.while.end_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end46.while.end_crit_edge, %land.rhs19.while.end_crit_edge, %land.lhs.true16.while.end_crit_edge
  %dstskip.addr.2.lcssa = phi i32 [ %dstskip.addr.24, %land.rhs19.while.end_crit_edge ], [ %dstskip.addr.24, %land.lhs.true16.while.end_crit_edge ], [ 0, %if.end46.while.end_crit_edge ]
  %dstlen.1.lcssa = phi i32 [ %dstlen.15, %land.rhs19.while.end_crit_edge ], [ %dstlen.15, %land.lhs.true16.while.end_crit_edge ], [ %add39, %if.end46.while.end_crit_edge ]
  %dstsg.1.lcssa = phi i32 [ %dstsg.16, %land.rhs19.while.end_crit_edge ], [ %13, %land.lhs.true16.while.end_crit_edge ], [ %add17, %if.end46.while.end_crit_edge ]
  %dst.addr.2.lcssa = phi ptr [ %dst.addr.28, %land.rhs19.while.end_crit_edge ], [ %dst.addr.28, %land.lhs.true16.while.end_crit_edge ], [ null, %if.end46.while.end_crit_edge ]
  %add48 = add i32 %11, %soffset.028
  %add49 = add i32 %add48, %srcskip.addr.129
  %20 = ptrtoint ptr %dma_length10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_length10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add49, i32 %21)
  %cmp51 = icmp eq i32 %add49, %21
  br i1 %cmp51, label %if.then52, label %while.end.if.end54_crit_edge

while.end.if.end54_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then52:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %call53 = tail call ptr @sg_next(ptr noundef nonnull %src.addr.131) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %while.end.if.end54_crit_edge
  %soffset.1 = phi i32 [ 0, %if.then52 ], [ %add48, %while.end.if.end54_crit_edge ]
  %srcskip.addr.2 = phi i32 [ 0, %if.then52 ], [ %srcskip.addr.129, %while.end.if.end54_crit_edge ]
  %src.addr.2 = phi ptr [ %call53, %if.then52 ], [ %src.addr.131, %while.end.if.end54_crit_edge ]
  %tobool.not = icmp eq ptr %src.addr.2, null
  %tobool6.not = icmp eq ptr %dst.addr.2.lcssa, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.end54.while.end55_crit_edge, label %if.end54.land.rhs_crit_edge

if.end54.land.rhs_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end54.while.end55_crit_edge:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end55

while.end55:                                      ; preds = %if.end54.while.end55_crit_edge, %land.rhs.while.end55_crit_edge, %if.end5.while.end55_crit_edge
  %srclen.0.lcssa = phi i32 [ 0, %if.end5.while.end55_crit_edge ], [ %add13, %if.end54.while.end55_crit_edge ], [ %srclen.024, %land.rhs.while.end55_crit_edge ]
  %dstlen.0.lcssa = phi i32 [ 0, %if.end5.while.end55_crit_edge ], [ %dstlen.1.lcssa, %if.end54.while.end55_crit_edge ], [ %dstlen.025, %land.rhs.while.end55_crit_edge ]
  %22 = tail call i32 @llvm.smin.i32(i32 %srclen.0.lcssa, i32 %dstlen.0.lcssa)
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_cipher_wr(ptr nocapture noundef readonly %wrparam) unnamed_addr #0 align 64 {
entry:
  %dsgl_walk.i = alloca %struct.dsgl_walk, align 4
  %ulp_walk.i = alloca %struct.ulptx_walk, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrparam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wrparam, align 4
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %4 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 6
  %flags7 = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags7, align 4
  %and = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2592, i32 3264
  %lldi.i = getelementptr i8, ptr %5, i32 -148
  %8 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lldi.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %rxqidx = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 1, i32 5, i32 32
  %12 = ptrtoint ptr %rxqidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rxqidx, align 8
  %rxq_perchan = getelementptr i8, ptr %3, i32 132
  %14 = ptrtoint ptr %rxq_perchan to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rxq_perchan, align 4
  %div.rhs.trunc = zext i8 %15 to i16
  %div287 = udiv i16 %13, %div.rhs.trunc
  %div.zext = zext i16 %div287 to i32
  %ports = getelementptr i8, ptr %5, i32 -136
  %16 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %div.zext
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call10 = tail call i32 @cxgb4_port_e2cchan(ptr noundef %19) #11
  %dstsg = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 1, i32 1
  %20 = ptrtoint ptr %dstsg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dstsg, align 4
  %bytes = getelementptr inbounds %struct.cipher_wr_param, ptr %wrparam, i32 0, i32 2
  %22 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytes, align 4
  %dst_ofst = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 1, i32 4, i32 2
  %24 = ptrtoint ptr %dst_ofst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst_ofst, align 4
  %call11 = tail call fastcc i32 @sg_nents_xlen(ptr noundef %21, i32 noundef %23, i32 noundef 2048, i32 noundef %25)
  %shr.i = lshr i32 %call11, 3
  %rem.i = and i32 %call11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp ne i32 %rem.i, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %add.i = add nuw nsw i32 %shr.i, %cond.i
  %mul.i = shl i32 %add.i, 4
  %shl.i = shl i32 %call11, 3
  %shl5.i = and i32 %shl.i, 8
  %add1.i = add i32 %shl5.i, %shl.i
  %add6.i = add i32 %add1.i, %mul.i
  %conv13 = and i32 %add6.i, 65528
  %enckey_len = getelementptr i8, ptr %3, i32 208
  %26 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enckey_len, align 4
  %add = add i32 %27, 15
  %div14260 = and i32 %add, -16
  %srcsg = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 1, i32 4, i32 0, i32 1
  %28 = ptrtoint ptr %srcsg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %srcsg, align 4
  %30 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bytes, align 4
  %src_ofst = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 1, i32 4, i32 1
  %32 = ptrtoint ptr %src_ofst to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_ofst, align 8
  %call20 = tail call fastcc i32 @sg_nents_xlen(ptr noundef %29, i32 noundef %31, i32 noundef 65532, i32 noundef %33)
  %imm = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 1, i32 4, i32 4
  %34 = ptrtoint ptr %imm to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool22.not = icmp eq i16 %35, 0
  br i1 %tobool22.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytes, align 4
  %add27 = add i32 %37, 15
  %div28 = sdiv i32 %add27, 16
  %mul29 = shl nsw i32 %div28, 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i = add i32 %call20, -1
  %mul.i262 = mul i32 %dec.i, 3
  %div4.i = lshr i32 %mul.i262, 1
  %and.i = and i32 %dec.i, 1
  %add.i263 = or i32 %and.i, 2
  %add1.i264 = add nuw i32 %add.i263, %div4.i
  %mul31 = shl i32 %add1.i264, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond32 = phi i32 [ %mul29, %cond.true ], [ %mul31, %cond.false ]
  %add18 = add i32 %conv13, %div14260
  %add33 = add i32 %add18, 143
  %add37 = add i32 %add33, %cond32
  %div38261 = and i32 %add37, -16
  %call.i = tail call ptr @__alloc_skb(i32 noundef 512, i32 noundef %cond, i32 noundef 0, i32 noundef -1) #11
  %tobool41.not = icmp eq ptr %call.i, null
  br i1 %tobool41.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !140

do.body3.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !141
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i265 = getelementptr i8, ptr %41, i32 %div38261
  store ptr %add.ptr.i.i265, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %42 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %43, %div38261
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %44 = call ptr @memset(ptr %41, i32 0, i32 %div38261)
  %shl = shl i32 %call10, 22
  %or47 = or i32 %shl, -1978531839
  %sec_cpl = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 0, i32 3
  %45 = ptrtoint ptr %sec_cpl to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or47, ptr %sec_cpl, align 8
  %46 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bytes, align 4
  %add49 = add i32 %47, 16
  %pldlen = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %pldlen to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add49, ptr %pldlen, align 4
  %aadstart_cipherstop_hi = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %aadstart_cipherstop_hi to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 544, ptr %aadstart_cipherstop_hi, align 8
  %cipherstop_lo_authinsert = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 0, i32 3, i32 3
  %50 = ptrtoint ptr %cipherstop_lo_authinsert to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %cipherstop_lo_authinsert, align 4
  %op = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 1, i32 4, i32 3
  %51 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %op, align 32
  %shl53 = shl i32 %52, 23
  %ciph_mode = getelementptr i8, ptr %3, i32 212
  %53 = ptrtoint ptr %ciph_mode to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ciph_mode, align 4
  %conv56 = zext i8 %54 to i32
  %shl57 = shl nuw nsw i32 %conv56, 18
  %or54 = or i32 %shl53, %shl57
  %or61 = or i32 %or54, 67109888
  %seqno_numivs = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 0, i32 3, i32 4
  %55 = ptrtoint ptr %seqno_numivs to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or61, ptr %seqno_numivs, align 8
  %or65 = or i32 %conv13, 16384
  %ivgen_hdrlen = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 0, i32 3, i32 5
  %56 = ptrtoint ptr %ivgen_hdrlen to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or65, ptr %ivgen_hdrlen, align 4
  %key_ctx_hdr = getelementptr i8, ptr %3, i32 204
  %57 = ptrtoint ptr %key_ctx_hdr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %key_ctx_hdr, align 4
  %key_ctx = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 0, i32 4
  %59 = ptrtoint ptr %key_ctx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %key_ctx, align 8
  %60 = load i32, ptr %op, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp = icmp eq i32 %60, 1
  br i1 %cmp, label %land.lhs.true, label %__skb_put_zero.exit.if.else_crit_edge

__skb_put_zero.exit.if.else_crit_edge:            ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %__skb_put_zero.exit
  %__crt_alg.i.i = getelementptr i8, ptr %3, i32 12
  %61 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i266 = getelementptr i8, ptr %62, i32 -256
  %63 = ptrtoint ptr %add.ptr.i266 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i266, align 128
  %and.i267 = and i32 %64, 251658240
  %65 = zext i32 %and.i267 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and.i267, label %if.then76 [
    i32 134217728, label %land.lhs.true.if.else_crit_edge
    i32 150994944, label %land.lhs.true.if.else_crit_edge288
  ]

land.lhs.true.if.else_crit_edge288:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then76:                                        ; preds = %land.lhs.true
  %66 = ptrtoint ptr %ciph_mode to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ciph_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp.i = icmp eq i8 %67, 1
  %key.i = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %rrkey.i = getelementptr i8, ptr %3, i32 281
  %68 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %enckey_len, align 4
  %70 = call ptr @memcpy(ptr %key.i, ptr %rrkey.i, i32 %69)
  br label %if.end112

if.else.i:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %key5.i = getelementptr i8, ptr %3, i32 213
  %71 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %enckey_len, align 4
  %shr.i271 = lshr i32 %72, 1
  %add.ptr.i272 = getelementptr i8, ptr %key5.i, i32 %shr.i271
  %73 = call ptr @memcpy(ptr %key.i, ptr %add.ptr.i272, i32 %shr.i271)
  %74 = load i32, ptr %enckey_len, align 4
  %shr13.i = lshr i32 %74, 1
  %add.ptr14.i = getelementptr i8, ptr %key.i, i32 %shr13.i
  %rrkey15.i = getelementptr i8, ptr %3, i32 281
  %75 = call ptr @memcpy(ptr %add.ptr14.i, ptr %rrkey15.i, i32 %shr13.i)
  br label %if.end112

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %land.lhs.true.if.else_crit_edge288, %__skb_put_zero.exit.if.else_crit_edge
  %76 = ptrtoint ptr %ciph_mode to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ciph_mode, align 4
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %77, label %if.else92 [
    i8 1, label %if.else.if.then87_crit_edge
    i8 3, label %if.else.if.then87_crit_edge289
  ]

if.else.if.then87_crit_edge289:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

if.else.if.then87_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

if.then87:                                        ; preds = %if.else.if.then87_crit_edge, %if.else.if.then87_crit_edge289
  %key = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 1
  %key89 = getelementptr i8, ptr %3, i32 213
  %79 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %enckey_len, align 4
  %81 = call ptr @memcpy(ptr %key, ptr %key89, i32 %80)
  br label %if.end112

if.else92:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %key94 = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 1
  %key96 = getelementptr i8, ptr %3, i32 213
  %82 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %enckey_len, align 4
  %shr = lshr i32 %83, 1
  %add.ptr = getelementptr i8, ptr %key96, i32 %shr
  %84 = call ptr @memcpy(ptr %key94, ptr %add.ptr, i32 %shr)
  %85 = load i32, ptr %enckey_len, align 4
  %shr105 = lshr i32 %85, 1
  %add.ptr106 = getelementptr i8, ptr %key94, i32 %shr105
  %86 = call ptr @memcpy(ptr %add.ptr106, ptr %key96, i32 %shr105)
  br label %if.end112

if.end112:                                        ; preds = %if.else92, %if.then87, %if.else.i, %if.then.i
  %add.ptr113 = getelementptr %struct.chcr_wr, ptr %41, i32 1
  %add.ptr114 = getelementptr i8, ptr %add.ptr113, i32 %div14260
  %add.ptr115 = getelementptr %struct.cpl_rx_phys_dsgl, ptr %add.ptr114, i32 1
  %add.ptr116 = getelementptr i8, ptr %add.ptr115, i32 %conv13
  %87 = ptrtoint ptr %wrparam to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wrparam, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ulp_walk.i) #11
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %88, i32 0, i32 6
  %iv.i = getelementptr inbounds %struct.chcr_skcipher_req_ctx, ptr %__ctx.i.i, i32 0, i32 10
  %89 = call ptr @memcpy(ptr %add.ptr116, ptr %iv.i, i32 16)
  %add.ptr.i273 = getelementptr i8, ptr %add.ptr116, i32 16
  %imm.i = getelementptr inbounds %struct.skcipher_request, ptr %88, i32 1, i32 4, i32 4
  %90 = ptrtoint ptr %imm.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %imm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool.not.i274 = icmp eq i16 %91, 0
  br i1 %tobool.not.i274, label %if.else.i276, label %if.then.i275

if.then.i275:                                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %88, i32 0, i32 2
  %92 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %src.i, align 8
  %call2.i = tail call i32 @sg_nents(ptr noundef %93) #11
  %94 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bytes, align 4
  %processed.i = getelementptr inbounds %struct.skcipher_request, ptr %88, i32 1, i32 2
  %96 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %processed.i, align 8
  %call3.i = tail call i32 @sg_pcopy_to_buffer(ptr noundef %93, i32 noundef %call2.i, ptr noundef %add.ptr.i273, i32 noundef %95, i32 noundef %97) #11
  br label %chcr_add_cipher_src_ent.exit

if.else.i276:                                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  %98 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk.i, i32 0, i32 5
  %99 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk.i, i32 0, i32 4
  %100 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk.i, i32 0, i32 3
  %101 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk.i, i32 0, i32 2
  %102 = getelementptr inbounds %struct.ulptx_walk, ptr %ulp_walk.i, i32 0, i32 1
  %103 = ptrtoint ptr %ulp_walk.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %add.ptr.i273, ptr %ulp_walk.i, align 4
  %104 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %102, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %101, align 4
  %sge.i.i = getelementptr i8, ptr %add.ptr116, i32 32
  %106 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %sge.i.i, ptr %98, align 4
  %107 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %99, align 4
  %108 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %100, align 4
  %srcsg.i = getelementptr inbounds %struct.skcipher_request, ptr %88, i32 1, i32 4, i32 0, i32 1
  %109 = ptrtoint ptr %srcsg.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %srcsg.i, align 4
  %111 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bytes, align 4
  %src_ofst.i = getelementptr inbounds %struct.skcipher_request, ptr %88, i32 1, i32 4, i32 1
  %113 = ptrtoint ptr %src_ofst.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %src_ofst.i, align 8
  call fastcc void @ulptx_walk_add_sg(ptr noundef nonnull %ulp_walk.i, ptr noundef %110, i32 noundef %112, i32 noundef %114) #11
  %115 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %99, align 4
  %117 = ptrtoint ptr %srcsg.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %srcsg.i, align 4
  %118 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %100, align 4
  %120 = ptrtoint ptr %src_ofst.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %src_ofst.i, align 8
  %121 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %102, align 4
  %or.i.i = or i32 %122, -2113929216
  %123 = ptrtoint ptr %ulp_walk.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ulp_walk.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or.i.i, ptr %124, align 8
  br label %chcr_add_cipher_src_ent.exit

chcr_add_cipher_src_ent.exit:                     ; preds = %if.else.i276, %if.then.i275
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ulp_walk.i) #11
  %126 = ptrtoint ptr %wrparam to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wrparam, align 4
  %qid = getelementptr inbounds %struct.cipher_wr_param, ptr %wrparam, i32 0, i32 3
  %128 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %qid, align 4
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %127, i32 0, i32 4, i32 3
  %130 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i.i = getelementptr i8, ptr %131, i32 128
  %132 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dsgl_walk.i) #11
  %134 = getelementptr inbounds %struct.dsgl_walk, ptr %dsgl_walk.i, i32 0, i32 1
  %135 = getelementptr inbounds %struct.dsgl_walk, ptr %dsgl_walk.i, i32 0, i32 2
  %136 = getelementptr inbounds %struct.dsgl_walk, ptr %dsgl_walk.i, i32 0, i32 3
  %137 = getelementptr inbounds %struct.dsgl_walk, ptr %dsgl_walk.i, i32 0, i32 4
  %rxqidx.i = getelementptr inbounds %struct.skcipher_request, ptr %127, i32 1, i32 5, i32 32
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 8)
  store i64 -1, ptr %134, align 4
  %139 = ptrtoint ptr %rxqidx.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %rxqidx.i, align 8
  %rxq_perchan.i = getelementptr i8, ptr %131, i32 132
  %141 = ptrtoint ptr %rxq_perchan.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %rxq_perchan.i, align 4
  %div.rhs.trunc.i = zext i8 %142 to i16
  %div17.i = udiv i16 %140, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div17.i to i32
  %ports.i = getelementptr i8, ptr %133, i32 -136
  %143 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %144, i32 %div.zext.i
  %145 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i, align 4
  %call6.i = tail call i32 @cxgb4_port_e2cchan(ptr noundef %146) #11
  %147 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %add.ptr114, ptr %136, align 4
  %148 = ptrtoint ptr %dsgl_walk.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %dsgl_walk.i, align 4
  %149 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr115, ptr %137, align 4
  %dstsg.i = getelementptr inbounds %struct.skcipher_request, ptr %127, i32 1, i32 1
  %150 = ptrtoint ptr %dstsg.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dstsg.i, align 4
  %152 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %bytes, align 4
  %dst_ofst.i = getelementptr inbounds %struct.skcipher_request, ptr %127, i32 1, i32 4, i32 2
  %154 = ptrtoint ptr %dst_ofst.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %dst_ofst.i, align 4
  call fastcc void @dsgl_walk_add_sg(ptr noundef nonnull %dsgl_walk.i, ptr noundef %151, i32 noundef %153, i32 noundef %155) #11
  %156 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %135, align 4
  %158 = ptrtoint ptr %dstsg.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %dstsg.i, align 4
  %159 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %134, align 4
  %161 = ptrtoint ptr %dst_ofst.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %dst_ofst.i, align 4
  %162 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %136, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 -805306368, ptr %163, align 4
  %165 = ptrtoint ptr %dsgl_walk.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %dsgl_walk.i, align 4
  %pcirlxorder_to_noofsgentr.i.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %163, i32 0, i32 1
  %167 = ptrtoint ptr %pcirlxorder_to_noofsgentr.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %pcirlxorder_to_noofsgentr.i.i, align 4
  %rss_hdr_int.i.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %163, i32 0, i32 2
  %168 = ptrtoint ptr %rss_hdr_int.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 48, ptr %rss_hdr_int.i.i, align 4
  %qid2.i.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %163, i32 0, i32 2, i32 2
  %169 = ptrtoint ptr %qid2.i.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %129, ptr %qid2.i.i, align 2
  %hash_val.i.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %163, i32 0, i32 2, i32 3
  %170 = ptrtoint ptr %hash_val.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %hash_val.i.i, align 4
  %conv.i.i = trunc i32 %call6.i to i8
  %channel.i.i = getelementptr inbounds %struct.cpl_rx_phys_dsgl, ptr %163, i32 0, i32 2, i32 1
  %171 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %bf.load.i.i = load i8, ptr %channel.i.i, align 1
  %bf.value.i.i = and i8 %conv.i.i, 3
  %bf.clear.i.i = and i8 %bf.load.i.i, -4
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.value.i.i
  store i8 %bf.set.i.i, ptr %channel.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dsgl_walk.i) #11
  %chcr_stats = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 73
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %chcr_stats, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %chcr_stats, i32 1, i32 3, i32 1) #11
  %172 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %chcr_stats, ptr %chcr_stats, i32 1, ptr elementtype(i32) %chcr_stats) #11, !srcloc !137
  %173 = ptrtoint ptr %imm to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %174)
  %tobool124.not = icmp eq i16 %174, 0
  br i1 %tobool124.not, label %chcr_add_cipher_src_ent.exit.cond.end128_crit_edge, label %cond.true125

chcr_add_cipher_src_ent.exit.cond.end128_crit_edge: ; preds = %chcr_add_cipher_src_ent.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end128

cond.true125:                                     ; preds = %chcr_add_cipher_src_ent.exit
  call void @__sanitizer_cov_trace_pc() #13
  %175 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %bytes, align 4
  br label %cond.end128

cond.end128:                                      ; preds = %cond.true125, %chcr_add_cipher_src_ent.exit.cond.end128_crit_edge
  %cond129 = phi i32 [ %176, %cond.true125 ], [ 0, %chcr_add_cipher_src_ent.exit.cond.end128_crit_edge ]
  %177 = ptrtoint ptr %wrparam to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %wrparam, align 4
  %base133 = getelementptr inbounds %struct.skcipher_request, ptr %178, i32 0, i32 4
  %179 = ptrtoint ptr %ciph_mode to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %ciph_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %180)
  %cmp138.not = icmp eq i8 %180, 1
  %181 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %178, i32 0, i32 4, i32 3
  %183 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %tfm1.i.i, align 4
  %__crt_alg.i.i279 = getelementptr inbounds %struct.crypto_tfm, ptr %184, i32 0, i32 3
  %185 = ptrtoint ptr %__crt_alg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %__crt_alg.i.i279, align 4
  %cra_flags.i.i = getelementptr inbounds %struct.crypto_alg, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %cra_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %cra_flags.i.i, align 16
  %and.i.i = and i32 %188, 15
  %189 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %and.i.i, label %sw.default.i.i [
    i32 3, label %sw.bb.i.i
    i32 5, label %sw.bb5.i.i
    i32 15, label %sw.bb15.i.i
  ]

sw.bb.i.i:                                        ; preds = %cond.end128
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %178, i32 1, i32 5
  %rxqidx3.i.i = getelementptr inbounds %struct.skcipher_request, ptr %178, i32 1, i32 5, i32 2
  br label %create_wreq.exit

sw.bb5.i.i:                                       ; preds = %cond.end128
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx11.i.i = getelementptr %struct.skcipher_request, ptr %178, i32 1, i32 5, i32 30
  %rxqidx13.i.i = getelementptr %struct.skcipher_request, ptr %178, i32 1, i32 5, i32 32
  br label %create_wreq.exit

sw.bb15.i.i:                                      ; preds = %cond.end128
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx21.i.i = getelementptr inbounds %struct.skcipher_request, ptr %178, i32 1, i32 5, i32 24
  %rxqidx23.i.i = getelementptr inbounds %struct.skcipher_request, ptr %178, i32 1, i32 5, i32 26
  br label %create_wreq.exit

sw.default.i.i:                                   ; preds = %cond.end128
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/chelsio/chcr_algo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 749, 0\0A.popsection", ""() #11, !srcloc !142
  unreachable

create_wreq.exit:                                 ; preds = %sw.bb15.i.i, %sw.bb5.i.i, %sw.bb.i.i
  %txqidx.0.in.in.i = phi ptr [ %txqidx21.i.i, %sw.bb15.i.i ], [ %txqidx11.i.i, %sw.bb5.i.i ], [ %txqidx2.i.i, %sw.bb.i.i ]
  %.sink.in.i.i = phi ptr [ %rxqidx23.i.i, %sw.bb15.i.i ], [ %rxqidx13.i.i, %sw.bb5.i.i ], [ %rxqidx3.i.i, %sw.bb.i.i ]
  %190 = ptrtoint ptr %txqidx.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %txqidx.0.in.i = load i16, ptr %txqidx.0.in.in.i, align 2
  %txqidx.0.i = zext i16 %txqidx.0.in.i to i32
  %191 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %.sink.i.i = load i16, ptr %.sink.in.i.i, align 2
  %conv24.i.i = zext i16 %.sink.i.i to i32
  %rxq_ids.i = getelementptr i8, ptr %182, i32 -124
  %192 = ptrtoint ptr %rxq_ids.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rxq_ids.i, align 4
  %arrayidx.i280 = getelementptr i16, ptr %193, i32 %conv24.i.i
  %194 = ptrtoint ptr %arrayidx.i280 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %arrayidx.i280, align 2
  %conv.i281 = zext i16 %195 to i32
  %196 = ptrtoint ptr %193 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %193, align 2
  %conv5.i = zext i16 %197 to i32
  %198 = ptrtoint ptr %rxq_perchan to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %rxq_perchan, align 4
  %div.rhs.trunc.i283 = zext i8 %199 to i16
  %div61.i = udiv i16 %.sink.i.i, %div.rhs.trunc.i283
  %div.zext.i284 = zext i16 %div61.i to i32
  %txq_perchan.i = getelementptr i8, ptr %3, i32 133
  %200 = ptrtoint ptr %txq_perchan.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %txq_perchan.i, align 1
  %div8.rhs.trunc.i = zext i8 %201 to i16
  %div862.i = udiv i16 %txqidx.0.in.i, %div8.rhs.trunc.i
  %div8.zext.i = zext i16 %div862.i to i32
  %ports.i285 = getelementptr i8, ptr %182, i32 -136
  %202 = ptrtoint ptr %ports.i285 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ports.i285, align 4
  %arrayidx10.i = getelementptr ptr, ptr %203, i32 %div.zext.i284
  %204 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx10.i, align 4
  %call11.i = tail call i32 @cxgb4_port_e2cchan(ptr noundef %205) #11
  %206 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1828716544, ptr %41, align 8
  %pld_size_hash_size.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %41, i32 0, i32 5
  %207 = ptrtoint ptr %pld_size_hash_size.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %pld_size_hash_size.i, align 4
  %div1359.i = lshr i32 %add37, 4
  %len16_pkd.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %41, i32 0, i32 1
  %208 = ptrtoint ptr %len16_pkd.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %div1359.i, ptr %len16_pkd.i, align 4
  %209 = ptrtoint ptr %base133 to i32
  %conv16.i = zext i32 %209 to i64
  %cookie.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %41, i32 0, i32 6
  %210 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 %conv16.i, ptr %cookie.i, align 8
  %shl18.i = shl i32 %call11.i, 29
  %or.i = or i32 %shl18.i, %conv.i281
  %shl21.i = select i1 %cmp138.not, i32 134217728, i32 0
  %or22.i = or i32 %or.i, %shl21.i
  %shl24.i = shl nuw nsw i32 %txqidx.0.i, 15
  %or25.i = or i32 %or22.i, %shl24.i
  %rx_chid_to_rx_q_id.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %41, i32 0, i32 3
  %211 = ptrtoint ptr %rx_chid_to_rx_q_id.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %or25.i, ptr %rx_chid_to_rx_q_id.i, align 4
  %shl27.i = shl i32 %div8.zext.i, 22
  %shl30.i = shl nuw nsw i32 %conv5.i, 4
  %or29.i = or i32 %shl27.i, %shl30.i
  %or31.i = or i32 %or29.i, 67108872
  %ulptx.i = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 0, i32 1
  %212 = ptrtoint ptr %ulptx.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %or31.i, ptr %ulptx.i, align 8
  %sub35.i = add nsw i32 %div1359.i, -2
  %len.i = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 0, i32 1, i32 1
  %213 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %sub35.i, ptr %len.i, align 4
  %or41.i = select i1 %tobool124.not, i32 -2122317824, i32 -2130706432
  %sc_imm.i = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 0, i32 2
  %214 = ptrtoint ptr %sc_imm.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %or41.i, ptr %sc_imm.i, align 8
  %add130 = add i32 %add18, 80
  %add42.i = add i32 %add130, %cond129
  %len44.i = getelementptr inbounds %struct.chcr_wr, ptr %41, i32 0, i32 2, i32 1
  %215 = ptrtoint ptr %len44.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %add42.i, ptr %len44.i, align 4
  %216 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call.i, ptr %__ctx.i, align 128
  %217 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %op, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool142.not = icmp eq i32 %218, 0
  br i1 %tobool142.not, label %create_wreq.exit.cleanup_crit_edge, label %land.lhs.true143

create_wreq.exit.cleanup_crit_edge:               ; preds = %create_wreq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true143:                                 ; preds = %create_wreq.exit
  %219 = ptrtoint ptr %ciph_mode to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %ciph_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %220)
  %cmp146 = icmp eq i8 %220, 1
  br i1 %cmp146, label %if.then148, label %land.lhs.true143.cleanup_crit_edge

land.lhs.true143.cleanup_crit_edge:               ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then148:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #13
  %221 = ptrtoint ptr %wrparam to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %wrparam, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %src, align 8
  %call152 = tail call i32 @sg_nents(ptr noundef %224) #11
  %225 = ptrtoint ptr %wrparam to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %wrparam, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %iv, align 4
  %processed = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 1, i32 2
  %229 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %processed, align 8
  %231 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %bytes, align 4
  %add155 = add i32 %230, -16
  %sub156 = add i32 %add155, %232
  %call157 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %224, i32 noundef %call152, ptr noundef %228, i32 noundef 16, i32 noundef %sub156) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then148, %land.lhs.true143.cleanup_crit_edge, %create_wreq.exit.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then148 ], [ %call.i, %land.lhs.true143.cleanup_crit_edge ], [ %call.i, %create_wreq.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %cond.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chcr_send_wr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chcr_update_tweak(ptr nocapture noundef readonly %req, ptr noundef %iv, i32 noundef %isfinal) unnamed_addr #0 align 64 {
entry:
  %aes = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes) #11
  %2 = call ptr @memset(ptr %aes, i32 255, i32 484)
  %last_req_len = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %3 = ptrtoint ptr %last_req_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_req_len, align 4
  %div52 = lshr i32 %4, 4
  %div453 = lshr i32 %4, 7
  %iv5 = getelementptr inbounds %struct.chcr_skcipher_req_ctx, ptr %__ctx.i, i32 0, i32 10
  %5 = call ptr @memcpy(ptr %iv, ptr %iv5, i32 16)
  %enckey_len = getelementptr i8, ptr %1, i32 208
  %6 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enckey_len, align 4
  %div654 = lshr i32 %7, 1
  %key7 = getelementptr i8, ptr %1, i32 213
  %add.ptr = getelementptr i8, ptr %key7, i32 %div654
  %key_ctx_hdr = getelementptr i8, ptr %1, i32 204
  %8 = ptrtoint ptr %key_ctx_hdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_ctx_hdr, align 4
  %10 = and i32 %9, 960
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %10)
  %cmp = icmp eq i32 %10, 64
  %sub = add nsw i32 %div654, -8
  %div654.sink = select i1 %cmp, i32 %sub, i32 %div654
  %call10 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %add.ptr, i32 noundef %div654.sink) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @aes_encrypt(ptr noundef nonnull %aes, ptr noundef %iv, ptr noundef %iv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %4)
  %cmp1355.not = icmp ult i32 %4, 128
  br i1 %cmp1355.not, label %if.end12.for.cond14.preheader_crit_edge, label %for.body.preheader

if.end12.for.cond14.preheader_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond14.preheader

for.body.preheader:                               ; preds = %if.end12
  %umax = call i32 @llvm.umax.i32(i32 %div453, i32 1)
  br label %for.body

for.cond14.preheader:                             ; preds = %for.body.for.cond14.preheader_crit_edge, %if.end12.for.cond14.preheader_crit_edge
  %rem = and i32 %div52, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp1557.not = icmp eq i32 %rem, 0
  br i1 %cmp1557.not, label %for.cond14.preheader.for.end19_crit_edge, label %for.body16.lr.ph

for.cond14.preheader.for.end19_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end19

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %a1.i = getelementptr inbounds %struct.le128, ptr %iv, i32 0, i32 1
  %11 = ptrtoint ptr %a1.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %a1.i.promoted = load i64, ptr %a1.i, align 8
  %12 = ptrtoint ptr %iv to i32
  call void @__asan_load8_noabort(i32 %12)
  %iv.promoted = load i64, ptr %iv, align 8
  br label %for.body16

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.056 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @gf128mul_x8_ble(ptr noundef %iv, ptr noundef %iv) #11
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.cond14.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.cond14.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond14.preheader

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body16.lr.ph
  %13 = phi i64 [ %iv.promoted, %for.body16.lr.ph ], [ %18, %for.body16.for.body16_crit_edge ]
  %14 = phi i64 [ %a1.i.promoted, %for.body16.lr.ph ], [ %17, %for.body16.for.body16_crit_edge ]
  %i.158 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc18, %for.body16.for.body16_crit_edge ]
  %15 = call i64 @llvm.bswap.i64(i64 %14) #11
  %16 = call i64 @llvm.bswap.i64(i64 %13) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %isneg.i = icmp slt i64 %15, 0
  %and.i = select i1 %isneg.i, i64 135, i64 0
  %or.i = call i64 @llvm.fshl.i64(i64 %15, i64 %16, i64 1) #11
  %17 = call i64 @llvm.bswap.i64(i64 %or.i) #11
  %shl4.i = shl i64 %16, 1
  %xor.i = xor i64 %shl4.i, %and.i
  %18 = call i64 @llvm.bswap.i64(i64 %xor.i) #11
  %inc18 = add nuw nsw i32 %i.158, 1
  %exitcond61.not = icmp eq i32 %inc18, %rem
  br i1 %exitcond61.not, label %for.cond14.for.end19_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body16

for.cond14.for.end19_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %17, ptr %a1.i, align 8
  %20 = ptrtoint ptr %iv to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %18, ptr %iv, align 8
  br label %for.end19

for.end19:                                        ; preds = %for.cond14.for.end19_crit_edge, %for.cond14.preheader.for.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isfinal)
  %tobool20.not = icmp eq i32 %isfinal, 0
  br i1 %tobool20.not, label %if.then21, label %for.end19.if.end22_crit_edge

for.end19.if.end22_crit_edge:                     ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then21:                                        ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @aes_decrypt(ptr noundef nonnull %aes, ptr noundef %iv, ptr noundef %iv) #11
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.end19.if.end22_crit_edge
  %21 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #11, !srcloc !143
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call10, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf128mul_x8_ble(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_decrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sg_nents_xlen(ptr noundef %sg, i32 noundef %reqlen, i32 noundef %entlen, i32 noundef %skip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not34 = icmp eq ptr %sg, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip)
  %tobool1.not35 = icmp eq i32 %skip, 0
  %or.cond36 = or i1 %tobool.not34, %tobool1.not35
  br i1 %or.cond36, label %entry.while.cond3.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond3.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %if.end.while.cond3.preheader_crit_edge, %while.body.while.cond3.preheader_crit_edge, %entry.while.cond3.preheader_crit_edge
  %skip_len.0.lcssa = phi i32 [ 0, %entry.while.cond3.preheader_crit_edge ], [ %skip.addr.037, %while.body.while.cond3.preheader_crit_edge ], [ 0, %if.end.while.cond3.preheader_crit_edge ]
  %sg.addr.0.lcssa = phi ptr [ %sg, %entry.while.cond3.preheader_crit_edge ], [ %sg.addr.038, %while.body.while.cond3.preheader_crit_edge ], [ %call, %if.end.while.cond3.preheader_crit_edge ]
  %tobool4.not40 = icmp eq ptr %sg.addr.0.lcssa, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reqlen)
  %tobool6.not41 = icmp eq i32 %reqlen, 0
  %or.cond3342 = or i1 %tobool4.not40, %tobool6.not41
  br i1 %or.cond3342, label %while.cond3.preheader.while.end16_crit_edge, label %while.body8.lr.ph

while.cond3.preheader.while.end16_crit_edge:      ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end16

while.body8.lr.ph:                                ; preds = %while.cond3.preheader
  %add = add i32 %entlen, -1
  %dma_length9.peel = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0.lcssa, i32 0, i32 4
  %0 = ptrtoint ptr %dma_length9.peel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_length9.peel, align 4
  %sub10.peel = sub i32 %1, %skip_len.0.lcssa
  %2 = tail call i32 @llvm.umin.i32(i32 %reqlen, i32 %sub10.peel)
  %sub12.peel = add i32 %add, %2
  %div.peel = udiv i32 %sub12.peel, %entlen
  %sub14.peel = sub i32 %reqlen, %2
  %call15.peel = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.0.lcssa) #11
  %tobool4.not.peel = icmp eq ptr %call15.peel, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.peel)
  %tobool6.not.peel = icmp eq i32 %sub14.peel, 0
  %or.cond33.peel = select i1 %tobool4.not.peel, i1 true, i1 %tobool6.not.peel
  br i1 %or.cond33.peel, label %while.body8.lr.ph.while.end16_crit_edge, label %while.body8.lr.ph.while.body8_crit_edge

while.body8.lr.ph.while.body8_crit_edge:          ; preds = %while.body8.lr.ph
  br label %while.body8

while.body8.lr.ph.while.end16_crit_edge:          ; preds = %while.body8.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end16

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %sg.addr.038 = phi ptr [ %call, %if.end.while.body_crit_edge ], [ %sg, %entry.while.body_crit_edge ]
  %skip.addr.037 = phi i32 [ %sub, %if.end.while.body_crit_edge ], [ %skip, %entry.while.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.038, i32 0, i32 4
  %3 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.addr.037, i32 %4)
  %cmp.not = icmp ult i32 %skip.addr.037, %4
  br i1 %cmp.not, label %while.body.while.cond3.preheader_crit_edge, label %if.end

while.body.while.cond3.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader

if.end:                                           ; preds = %while.body
  %sub = sub i32 %skip.addr.037, %4
  %call = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.038) #11
  %tobool.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool1.not = icmp eq i32 %sub, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.end.while.cond3.preheader_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.cond3.preheader_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader

while.body8:                                      ; preds = %while.body8.while.body8_crit_edge, %while.body8.lr.ph.while.body8_crit_edge
  %sg.addr.246 = phi ptr [ %call15, %while.body8.while.body8_crit_edge ], [ %call15.peel, %while.body8.lr.ph.while.body8_crit_edge ]
  %nents.044 = phi i32 [ %add13, %while.body8.while.body8_crit_edge ], [ %div.peel, %while.body8.lr.ph.while.body8_crit_edge ]
  %reqlen.addr.043 = phi i32 [ %sub14, %while.body8.while.body8_crit_edge ], [ %sub14.peel, %while.body8.lr.ph.while.body8_crit_edge ]
  %dma_length9 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.246, i32 0, i32 4
  %5 = ptrtoint ptr %dma_length9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_length9, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %reqlen.addr.043, i32 %6)
  %sub12 = add i32 %add, %7
  %div = udiv i32 %sub12, %entlen
  %add13 = add i32 %div, %nents.044
  %sub14 = sub i32 %reqlen.addr.043, %7
  %call15 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.246) #11
  %tobool4.not = icmp eq ptr %call15, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14)
  %tobool6.not = icmp eq i32 %sub14, 0
  %or.cond33 = select i1 %tobool4.not, i1 true, i1 %tobool6.not
  br i1 %or.cond33, label %while.body8.while.end16_crit_edge, label %while.body8.while.body8_crit_edge, !llvm.loop !144

while.body8.while.body8_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body8

while.body8.while.end16_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end16

while.end16:                                      ; preds = %while.body8.while.end16_crit_edge, %while.body8.lr.ph.while.end16_crit_edge, %while.cond3.preheader.while.end16_crit_edge
  %nents.0.lcssa = phi i32 [ 0, %while.cond3.preheader.while.end16_crit_edge ], [ %div.peel, %while.body8.lr.ph.while.end16_crit_edge ], [ %add13, %while.body8.while.end16_crit_edge ]
  ret i32 %nents.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @create_wreq(ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %chcr_req, ptr noundef %req, i32 noundef %imm, i32 noundef %hash_sz, i32 noundef %len16, i32 noundef %sc_len, i32 noundef %lcb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %tfm1.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm1.i, align 4
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i, align 4
  %cra_flags.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_flags.i, align 16
  %and.i = and i32 %7, 15
  %8 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %and.i, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 5, label %sw.bb5.i
    i32 15, label %sw.bb15.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %txqidx2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %rxqidx3.i = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i.i, i32 0, i32 8
  br label %get_qidxs.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx11.i = getelementptr i8, ptr %req, i32 182
  %rxqidx13.i = getelementptr i8, ptr %req, i32 184
  br label %get_qidxs.exit

sw.bb15.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx21.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %rxqidx23.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 10
  br label %get_qidxs.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/chelsio/chcr_algo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 749, 0\0A.popsection", ""() #11, !srcloc !142
  unreachable

get_qidxs.exit:                                   ; preds = %sw.bb15.i, %sw.bb5.i, %sw.bb.i
  %txqidx.0.in.in = phi ptr [ %txqidx21.i, %sw.bb15.i ], [ %txqidx11.i, %sw.bb5.i ], [ %txqidx2.i, %sw.bb.i ]
  %.sink.in.i = phi ptr [ %rxqidx23.i, %sw.bb15.i ], [ %rxqidx13.i, %sw.bb5.i ], [ %rxqidx3.i, %sw.bb.i ]
  %9 = ptrtoint ptr %txqidx.0.in.in to i32
  call void @__asan_load2_noabort(i32 %9)
  %txqidx.0.in = load i16, ptr %txqidx.0.in.in, align 2
  %txqidx.0 = zext i16 %txqidx.0.in to i32
  %10 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %.sink.i = load i16, ptr %.sink.in.i, align 2
  %conv24.i = zext i16 %.sink.i to i32
  %rxq_ids = getelementptr i8, ptr %1, i32 -124
  %11 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxq_ids, align 4
  %arrayidx = getelementptr i16, ptr %12, i32 %conv24.i
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %14 to i32
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %12, align 2
  %conv5 = zext i16 %16 to i32
  %rxq_perchan = getelementptr inbounds %struct.chcr_context, ptr %ctx, i32 0, i32 1
  %17 = ptrtoint ptr %rxq_perchan to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rxq_perchan, align 4
  %div.rhs.trunc = zext i8 %18 to i16
  %div61 = udiv i16 %.sink.i, %div.rhs.trunc
  %div.zext = zext i16 %div61 to i32
  %txq_perchan = getelementptr inbounds %struct.chcr_context, ptr %ctx, i32 0, i32 2
  %19 = ptrtoint ptr %txq_perchan to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %txq_perchan, align 1
  %div8.rhs.trunc = zext i8 %20 to i16
  %div862 = udiv i16 %txqidx.0.in, %div8.rhs.trunc
  %div8.zext = zext i16 %div862 to i32
  %ports = getelementptr i8, ptr %1, i32 -136
  %21 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ports, align 4
  %arrayidx10 = getelementptr ptr, ptr %22, i32 %div.zext
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call i32 @cxgb4_port_e2cchan(ptr noundef %24) #11
  %25 = ptrtoint ptr %chcr_req to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1828716544, ptr %chcr_req, align 8
  %shl = shl i32 %hash_sz, 17
  %pld_size_hash_size = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %chcr_req, i32 0, i32 5
  %26 = ptrtoint ptr %pld_size_hash_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shl, ptr %pld_size_hash_size, align 4
  %sub = add i32 %len16, 15
  %div1359 = lshr i32 %sub, 4
  %len16_pkd = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %chcr_req, i32 0, i32 1
  %27 = ptrtoint ptr %len16_pkd to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div1359, ptr %len16_pkd, align 4
  %28 = ptrtoint ptr %req to i32
  %conv16 = zext i32 %28 to i64
  %cookie = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %chcr_req, i32 0, i32 6
  %29 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv16, ptr %cookie, align 8
  %shl18 = shl i32 %call11, 29
  %or = or i32 %shl18, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lcb)
  %tobool.not = icmp eq i32 %lcb, 0
  %shl21 = select i1 %tobool.not, i32 0, i32 134217728
  %or22 = or i32 %or, %shl21
  %shl24 = shl nuw nsw i32 %txqidx.0, 15
  %or25 = or i32 %or22, %shl24
  %rx_chid_to_rx_q_id = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %chcr_req, i32 0, i32 3
  %30 = ptrtoint ptr %rx_chid_to_rx_q_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or25, ptr %rx_chid_to_rx_q_id, align 4
  %shl27 = shl i32 %div8.zext, 22
  %shl30 = shl nuw nsw i32 %conv5, 4
  %or29 = or i32 %shl27, %shl30
  %or31 = or i32 %or29, 67108872
  %ulptx = getelementptr inbounds %struct.chcr_wr, ptr %chcr_req, i32 0, i32 1
  %31 = ptrtoint ptr %ulptx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or31, ptr %ulptx, align 8
  %sub35 = add nsw i32 %div1359, -2
  %len = getelementptr inbounds %struct.chcr_wr, ptr %chcr_req, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub35, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %imm)
  %tobool37.not = icmp eq i32 %imm, 0
  %or41 = select i1 %tobool37.not, i32 -2122317824, i32 -2130706432
  %sc_imm = getelementptr inbounds %struct.chcr_wr, ptr %chcr_req, i32 0, i32 2
  %33 = ptrtoint ptr %sc_imm to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or41, ptr %sc_imm, align 8
  %add42 = add i32 %sc_len, 48
  %len44 = getelementptr inbounds %struct.chcr_wr, ptr %chcr_req, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %len44 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add42, ptr %len44, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_hash_wr(ptr noundef %req, ptr nocapture noundef readonly %param) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %flags5 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags5, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2592, i32 3264
  %lldi.i = getelementptr i8, ptr %3, i32 -148
  %6 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldi.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %rxqidx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 10
  %10 = ptrtoint ptr %rxqidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rxqidx, align 2
  %rxq_perchan = getelementptr i8, ptr %1, i32 132
  %12 = ptrtoint ptr %rxq_perchan to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rxq_perchan, align 4
  %div.rhs.trunc = zext i8 %13 to i16
  %div258 = udiv i16 %11, %div.rhs.trunc
  %div.zext = zext i16 %div258 to i32
  %ports = getelementptr i8, ptr %3, i32 -136
  %14 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %div.zext
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call9 = tail call i32 @cxgb4_port_e2cchan(ptr noundef %17) #11
  %kctx_len = getelementptr inbounds %struct.hash_wr_param, ptr %param, i32 0, i32 4
  %18 = ptrtoint ptr %kctx_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %kctx_len, align 8
  %add10 = add i32 %19, 112
  %bfr_len = getelementptr inbounds %struct.hash_wr_param, ptr %param, i32 0, i32 6
  %20 = ptrtoint ptr %bfr_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bfr_len, align 8
  %add11 = add i32 %add10, %21
  %sg_len = getelementptr inbounds %struct.hash_wr_param, ptr %param, i32 0, i32 5
  %22 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sg_len, align 4
  %add12 = add i32 %add11, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %add12)
  %cmp = icmp ult i32 %add12, 513
  %conv14 = zext i1 %cmp to i8
  %imm = getelementptr inbounds %struct.chcr_hctx_per_wr, ptr %__ctx.i, i32 0, i32 8
  %24 = ptrtoint ptr %imm to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv14, ptr %imm, align 1
  %25 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__ctx.i, align 8
  %27 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg_len, align 4
  %src_ofst = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %src_ofst to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_ofst, align 8
  %call18 = tail call fastcc i32 @sg_nents_xlen(ptr noundef %26, i32 noundef %28, i32 noundef 65532, i32 noundef %30)
  %31 = ptrtoint ptr %bfr_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bfr_len, align 8
  %33 = ptrtoint ptr %imm to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %imm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool26.not = icmp eq i8 %34, 0
  br i1 %tobool26.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sg_len, align 4
  %add29 = add i32 %32, 15
  %add30 = add i32 %add29, %36
  %div31249 = and i32 %add30, -16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool20.not = icmp ne i32 %32, 0
  %cond21 = zext i1 %tobool20.not to i32
  %add22 = add i32 %call18, -1
  %dec.i = add i32 %add22, %cond21
  %mul.i = mul i32 %dec.i, 3
  %div4.i = lshr i32 %mul.i, 1
  %and.i = and i32 %dec.i, 1
  %add.i = or i32 %and.i, 2
  %add1.i = add nuw i32 %add.i, %div4.i
  %mul33 = shl i32 %add1.i, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond34 = phi i32 [ %div31249, %cond.true ], [ %mul33, %cond.false ]
  %add35 = add i32 %19, 127
  %add39 = add i32 %add35, %cond34
  %div40248 = and i32 %add39, -16
  %call.i = tail call ptr @__alloc_skb(i32 noundef %div40248, i32 noundef %cond, i32 noundef 0, i32 noundef -1) #11
  %tobool43.not = icmp eq ptr %call.i, null
  br i1 %tobool43.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %37 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !140

do.body3.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !141
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %39 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i251 = getelementptr i8, ptr %40, i32 %div40248
  store ptr %add.ptr.i.i251, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %41 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %42, %div40248
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %43 = call ptr @memset(ptr %40, i32 0, i32 %div40248)
  %shl = shl i32 %call9, 22
  %or48 = or i32 %shl, -1978531840
  %sec_cpl = getelementptr inbounds %struct.chcr_wr, ptr %40, i32 0, i32 3
  %44 = ptrtoint ptr %sec_cpl to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or48, ptr %sec_cpl, align 8
  %45 = ptrtoint ptr %bfr_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bfr_len, align 8
  %47 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sg_len, align 4
  %add53 = add i32 %48, %46
  %pldlen = getelementptr inbounds %struct.chcr_wr, ptr %40, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %pldlen to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add53, ptr %pldlen, align 4
  %aadstart_cipherstop_hi = getelementptr inbounds %struct.chcr_wr, ptr %40, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %aadstart_cipherstop_hi to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %aadstart_cipherstop_hi, align 8
  %cipherstop_lo_authinsert = getelementptr inbounds %struct.chcr_wr, ptr %40, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %cipherstop_lo_authinsert to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 262144, ptr %cipherstop_lo_authinsert, align 4
  %52 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %param, align 8
  %shl57 = shl i32 %53, 14
  %opad_needed = getelementptr inbounds %struct.hash_wr_param, ptr %param, i32 0, i32 1
  %54 = ptrtoint ptr %opad_needed to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %opad_needed, align 4
  %shl59 = shl i32 %55, 11
  %or58 = or i32 %shl57, %shl59
  %or60 = or i32 %or58, 67108864
  %seqno_numivs = getelementptr inbounds %struct.chcr_wr, ptr %40, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %seqno_numivs to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or60, ptr %seqno_numivs, align 8
  %last = getelementptr inbounds %struct.hash_wr_param, ptr %param, i32 0, i32 3
  %57 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %last, align 4
  %shl64 = shl i32 %58, 19
  %more = getelementptr inbounds %struct.hash_wr_param, ptr %param, i32 0, i32 2
  %59 = ptrtoint ptr %more to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %more, align 8
  %shl66 = shl i32 %60, 20
  %or67 = or i32 %shl64, %shl66
  %or71 = or i32 %or67, 32768
  %ivgen_hdrlen = getelementptr inbounds %struct.chcr_wr, ptr %40, i32 0, i32 3, i32 5
  %61 = ptrtoint ptr %ivgen_hdrlen to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or71, ptr %ivgen_hdrlen, align 4
  %key_ctx = getelementptr inbounds %struct.chcr_wr, ptr %40, i32 0, i32 4
  %key = getelementptr %struct.chcr_wr, ptr %40, i32 1
  %partial_hash = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 13
  %result_size = getelementptr inbounds %struct.algo_param, ptr %param, i32 0, i32 2
  %62 = ptrtoint ptr %result_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %result_size, align 8
  %64 = call ptr @memcpy(ptr %key, ptr %partial_hash, i32 %63)
  %65 = load i32, ptr %opad_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool78.not = icmp eq i32 %65, 0
  br i1 %tobool78.not, label %__skb_put_zero.exit.if.end91_crit_edge, label %if.then79

__skb_put_zero.exit.if.end91_crit_edge:           ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then79:                                        ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %result_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %result_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %67)
  %cmp85.inv = icmp ugt i32 %67, 32
  %cond87 = select i1 %cmp85.inv, i32 64, i32 32
  %add.ptr = getelementptr i8, ptr %key, i32 %cond87
  %opad = getelementptr i8, ptr %1, i32 332
  %68 = call ptr @memcpy(ptr %add.ptr, ptr %opad, i32 %67)
  br label %if.end91

if.end91:                                         ; preds = %if.then79, %__skb_put_zero.exit.if.end91_crit_edge
  %mk_size = getelementptr inbounds %struct.algo_param, ptr %param, i32 0, i32 1
  %69 = ptrtoint ptr %mk_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mk_size, align 4
  %shl93 = shl i32 %70, 2
  %71 = ptrtoint ptr %opad_needed to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %opad_needed, align 4
  %shl97 = shl i32 %72, 11
  %73 = ptrtoint ptr %kctx_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %kctx_len, align 8
  %add101 = shl i32 %74, 20
  %75 = add i32 %add101, 16777216
  %shl102 = and i32 %75, -16777216
  %or94 = or i32 %shl93, %shl97
  %or99 = or i32 %or94, %shl102
  %or103 = or i32 %or99, 1985
  %76 = ptrtoint ptr %key_ctx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or103, ptr %key_ctx, align 8
  %scmd1 = getelementptr inbounds %struct.hash_wr_param, ptr %param, i32 0, i32 8
  %77 = ptrtoint ptr %scmd1 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %scmd1, align 8
  %scmd1106 = getelementptr inbounds %struct.chcr_wr, ptr %40, i32 0, i32 3, i32 6
  %79 = ptrtoint ptr %scmd1106 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %scmd1106, align 8
  %80 = load i32, ptr %kctx_len, align 8
  %add.ptr109 = getelementptr i8, ptr %key, i32 %80
  %add.ptr110 = getelementptr i8, ptr %add.ptr109, i32 16
  %81 = ptrtoint ptr %bfr_len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bfr_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp112.not = icmp eq i32 %82, 0
  br i1 %cmp112.not, label %if.else, label %if.then114

if.then114:                                       ; preds = %if.end91
  %83 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lldi.i, align 4
  %dev116 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  %reqbfr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %85 = ptrtoint ptr %reqbfr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reqbfr, align 8
  %call.i252 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %86) #11
  br i1 %call.i252, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then114
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !140

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev116) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44, i32 3
  %87 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %88, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %dev116 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev116, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %90, %if.end.i.i ], [ %88, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev116, ptr noundef %86, i32 noundef %82) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %91 = load ptr, ptr @mem_map, align 4
  %92 = ptrtoint ptr %86 to i32
  %sub.i = add i32 %92, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i253 = getelementptr %struct.page, ptr %91, i32 %shr.i
  %and.i254 = and i32 %92, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev116, ptr noundef %add.ptr.i253, i32 noundef %and.i254, i32 noundef %82, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %93 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %retval.0.i, ptr %dma_addr, align 8
  %94 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %lldi.i, align 4
  %dev122 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev122, i32 noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then127, label %if.end128

if.then127:                                       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #11
  br label %cleanup

if.end128:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %bfr_len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bfr_len, align 8
  %dma_len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %98 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %dma_len, align 4
  br label %if.end133

if.else:                                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %dma_addr132 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %99 = ptrtoint ptr %dma_addr132 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %dma_addr132, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.else, %if.end128
  tail call void @chcr_add_hash_src_ent(ptr noundef %req, ptr noundef %add.ptr110, ptr noundef %param)
  %100 = ptrtoint ptr %kctx_len to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %kctx_len, align 8
  %102 = ptrtoint ptr %imm to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %imm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool139.not = icmp eq i8 %103, 0
  br i1 %tobool139.not, label %if.end133.cond.end145_crit_edge, label %cond.true140

if.end133.cond.end145_crit_edge:                  ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end145

cond.true140:                                     ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sg_len, align 4
  %106 = ptrtoint ptr %bfr_len to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bfr_len, align 8
  %add143 = add i32 %107, %105
  br label %cond.end145

cond.end145:                                      ; preds = %cond.true140, %if.end133.cond.end145_crit_edge
  %cond146 = phi i32 [ %add143, %cond.true140 ], [ 0, %if.end133.cond.end145_crit_edge ]
  %digest_rqst = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 73, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %digest_rqst, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %digest_rqst, i32 1, i32 3, i32 1) #11
  %108 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %digest_rqst, ptr %digest_rqst, i32 1, ptr elementtype(i32) %digest_rqst) #11, !srcloc !137
  %109 = ptrtoint ptr %imm to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %imm, align 1
  %hash_size = getelementptr inbounds %struct.hash_wr_param, ptr %param, i32 0, i32 7
  %111 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %hash_size, align 4
  %113 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %__crt_ctx.i.i, align 4
  %115 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tfm.i, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_flags.i.i = getelementptr inbounds %struct.crypto_alg, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %cra_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cra_flags.i.i, align 16
  %and.i.i = and i32 %120, 15
  %121 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %and.i.i, label %sw.default.i.i [
    i32 3, label %sw.bb.i.i
    i32 5, label %sw.bb5.i.i
    i32 15, label %sw.bb15.i.i
  ]

sw.bb.i.i:                                        ; preds = %cond.end145
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %rxqidx3.i.i = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i, i32 0, i32 8
  br label %create_wreq.exit

sw.bb5.i.i:                                       ; preds = %cond.end145
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx11.i.i = getelementptr i8, ptr %req, i32 182
  %rxqidx13.i.i = getelementptr i8, ptr %req, i32 184
  br label %create_wreq.exit

sw.bb15.i.i:                                      ; preds = %cond.end145
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx21.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  br label %create_wreq.exit

sw.default.i.i:                                   ; preds = %cond.end145
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/chelsio/chcr_algo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 749, 0\0A.popsection", ""() #11, !srcloc !142
  unreachable

create_wreq.exit:                                 ; preds = %sw.bb15.i.i, %sw.bb5.i.i, %sw.bb.i.i
  %txqidx.0.in.in.i = phi ptr [ %txqidx21.i.i, %sw.bb15.i.i ], [ %txqidx11.i.i, %sw.bb5.i.i ], [ %txqidx2.i.i, %sw.bb.i.i ]
  %.sink.in.i.i = phi ptr [ %rxqidx, %sw.bb15.i.i ], [ %rxqidx13.i.i, %sw.bb5.i.i ], [ %rxqidx3.i.i, %sw.bb.i.i ]
  %122 = ptrtoint ptr %txqidx.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %txqidx.0.in.i = load i16, ptr %txqidx.0.in.in.i, align 2
  %txqidx.0.i = zext i16 %txqidx.0.in.i to i32
  %123 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %.sink.i.i = load i16, ptr %.sink.in.i.i, align 2
  %conv24.i.i = zext i16 %.sink.i.i to i32
  %rxq_ids.i = getelementptr i8, ptr %114, i32 -124
  %124 = ptrtoint ptr %rxq_ids.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rxq_ids.i, align 4
  %arrayidx.i = getelementptr i16, ptr %125, i32 %conv24.i.i
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %127 to i32
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %125, align 2
  %conv5.i = zext i16 %129 to i32
  %130 = ptrtoint ptr %rxq_perchan to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %rxq_perchan, align 4
  %div.rhs.trunc.i = zext i8 %131 to i16
  %div61.i = udiv i16 %.sink.i.i, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div61.i to i32
  %txq_perchan.i = getelementptr i8, ptr %1, i32 133
  %132 = ptrtoint ptr %txq_perchan.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %txq_perchan.i, align 1
  %div8.rhs.trunc.i = zext i8 %133 to i16
  %div862.i = udiv i16 %txqidx.0.in.i, %div8.rhs.trunc.i
  %div8.zext.i = zext i16 %div862.i to i32
  %ports.i = getelementptr i8, ptr %114, i32 -136
  %134 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ports.i, align 4
  %arrayidx10.i = getelementptr ptr, ptr %135, i32 %div.zext.i
  %136 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx10.i, align 4
  %call11.i = tail call i32 @cxgb4_port_e2cchan(ptr noundef %137) #11
  %138 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1828716544, ptr %40, align 8
  %shl.i = shl i32 %112, 17
  %pld_size_hash_size.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %40, i32 0, i32 5
  %139 = ptrtoint ptr %pld_size_hash_size.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %shl.i, ptr %pld_size_hash_size.i, align 4
  %div1359.i = lshr i32 %add39, 4
  %len16_pkd.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %40, i32 0, i32 1
  %140 = ptrtoint ptr %len16_pkd.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %div1359.i, ptr %len16_pkd.i, align 4
  %141 = ptrtoint ptr %req to i32
  %conv16.i = zext i32 %141 to i64
  %cookie.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %40, i32 0, i32 6
  %142 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %conv16.i, ptr %cookie.i, align 8
  %shl18.i = shl i32 %call11.i, 29
  %or.i = or i32 %shl18.i, %conv.i
  %shl24.i = shl nuw nsw i32 %txqidx.0.i, 15
  %or25.i = or i32 %or.i, %shl24.i
  %rx_chid_to_rx_q_id.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %40, i32 0, i32 3
  %143 = ptrtoint ptr %rx_chid_to_rx_q_id.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or25.i, ptr %rx_chid_to_rx_q_id.i, align 4
  %shl27.i = shl i32 %div8.zext.i, 22
  %shl30.i = shl nuw nsw i32 %conv5.i, 4
  %or29.i = or i32 %shl27.i, %shl30.i
  %or31.i = or i32 %or29.i, 67108872
  %ulptx.i = getelementptr inbounds %struct.chcr_wr, ptr %40, i32 0, i32 1
  %144 = ptrtoint ptr %ulptx.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or31.i, ptr %ulptx.i, align 8
  %sub35.i = add nsw i32 %div1359.i, -2
  %len.i = getelementptr inbounds %struct.chcr_wr, ptr %40, i32 0, i32 1, i32 1
  %145 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %sub35.i, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool37.not.i = icmp eq i8 %110, 0
  %or41.i = select i1 %tobool37.not.i, i32 -2122317824, i32 -2130706432
  %sc_imm.i = getelementptr inbounds %struct.chcr_wr, ptr %40, i32 0, i32 2
  %146 = ptrtoint ptr %sc_imm.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or41.i, ptr %sc_imm.i, align 8
  %add147 = add i32 %101, 64
  %add42.i = add i32 %add147, %cond146
  %len44.i = getelementptr inbounds %struct.chcr_wr, ptr %40, i32 0, i32 2, i32 1
  %147 = ptrtoint ptr %len44.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %add42.i, ptr %len44.i, align 4
  %skb154 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %148 = ptrtoint ptr %skb154 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call.i, ptr %skb154, align 4
  br label %cleanup

cleanup:                                          ; preds = %create_wreq.exit, %if.then127, %cond.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then127 ], [ %call.i, %create_wreq.exit ], [ inttoptr (i32 -12 to ptr), %cond.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_aead_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %2 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !146
  %6 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu4 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu4, align 4
  %ntxq = getelementptr i8, ptr %1, i32 136
  %10 = ptrtoint ptr %ntxq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntxq, align 4
  %rem = urem i32 %9, %11
  %conv = trunc i32 %rem to i16
  %txqidx = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %12 = ptrtoint ptr %txqidx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %txqidx, align 4
  %nrxq = getelementptr i8, ptr %1, i32 140
  %13 = ptrtoint ptr %nrxq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nrxq, align 4
  %rem5 = urem i32 %9, %14
  %conv6 = trunc i32 %rem5 to i16
  %rxqidx = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i, i32 0, i32 8
  %15 = ptrtoint ptr %rxqidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv6, ptr %rxqidx, align 2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !147
  %16 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i28 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i28 to ptr
  %preempt_count.i.i29 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i29, align 4
  %sub.i = add i32 %19, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i29, align 4
  %verify = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i, i32 0, i32 6
  %20 = ptrtoint ptr %verify to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %verify, align 2
  %op = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %op, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %22 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 -256
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 128
  %and.i30 = and i32 %25, 251658240
  %26 = add nsw i32 %and.i30, -67108864
  %27 = lshr exact i32 %26, 24
  %trunc = trunc i32 %27 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %trunc)
  %28 = icmp ult i8 %trunc, 10
  br i1 %28, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ashr exact i32 %26, 24
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.chcr_aead_encrypt, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %create_gcm_wr.sink = phi ptr [ %switch.load, %switch.lookup ], [ @create_gcm_wr, %entry.cleanup_crit_edge ]
  %call14 = tail call fastcc i32 @chcr_aead_op(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %create_gcm_wr.sink)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_aead_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %2 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !148
  %6 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu5 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu5, align 4
  %ntxq = getelementptr i8, ptr %1, i32 136
  %10 = ptrtoint ptr %ntxq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntxq, align 4
  %rem = urem i32 %9, %11
  %conv = trunc i32 %rem to i16
  %txqidx = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %12 = ptrtoint ptr %txqidx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %txqidx, align 4
  %nrxq = getelementptr i8, ptr %1, i32 140
  %13 = ptrtoint ptr %nrxq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nrxq, align 4
  %rem6 = urem i32 %9, %14
  %conv7 = trunc i32 %rem6 to i16
  %rxqidx = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i, i32 0, i32 8
  %15 = ptrtoint ptr %rxqidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv7, ptr %rxqidx, align 2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !149
  %16 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i40 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i40 to ptr
  %preempt_count.i.i41 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i41, align 4
  %sub.i = add i32 %19, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i41, align 4
  %mayverify = getelementptr i8, ptr %1, i32 286
  %20 = ptrtoint ptr %mayverify to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mayverify, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp = icmp eq i16 %21, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %22 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i.i, align 4
  %maxauthsize.i.i = getelementptr i8, ptr %23, i32 -100
  %24 = ptrtoint ptr %maxauthsize.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %maxauthsize.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i16 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %size.0 = phi i32 [ %25, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %26 = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i, i32 0, i32 6
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %.sink, ptr %26, align 2
  %op = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %op, align 4
  %__crt_alg.i.i42 = getelementptr i8, ptr %1, i32 12
  %29 = ptrtoint ptr %__crt_alg.i.i42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %__crt_alg.i.i42, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 -256
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 128
  %and.i43 = and i32 %32, 251658240
  %33 = add nsw i32 %and.i43, -67108864
  %34 = lshr exact i32 %33, 24
  %trunc = trunc i32 %34 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %trunc)
  %35 = icmp ult i8 %trunc, 10
  br i1 %35, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ashr exact i32 %33, 24
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.chcr_aead_decrypt, i32 0, i32 %36
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge
  %create_gcm_wr.sink = phi ptr [ %switch.load, %switch.lookup ], [ @create_gcm_wr, %if.end.cleanup_crit_edge ]
  %call19 = tail call fastcc i32 @chcr_aead_op(ptr noundef %req, i32 noundef %size.0, ptr noundef nonnull %create_gcm_wr.sink)
  ret i32 %call19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_aead_cra_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name = getelementptr i8, ptr %1, i32 40
  %call3 = tail call ptr @crypto_alloc_aead(ptr noundef %cra_name, i32 noundef 0, i32 noundef 384) #11
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 72
  %2 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %sw_cipher, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reqsize.i, align 4
  %add = add i32 %5, 128
  %6 = tail call i32 @llvm.umax.i32(i32 %add, i32 80)
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %7 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %reqsize1.i, align 4
  %8 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %call.i = tail call ptr @assign_chcr_device() #11
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev4.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev4.i, ptr %__crt_ctx.i.i.i, align 4
  %ntxq6.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %ntxq6.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ntxq6.i, align 2
  %conv.i = zext i16 %12 to i32
  %nrxq.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %nrxq.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nrxq.i, align 4
  %nchan.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %nchan.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %nchan.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %div.rhs.trunc.i = zext i8 %bf.lshr.i to i16
  %div39.i = udiv i16 %14, %div.rhs.trunc.i
  %div1640.i = udiv i16 %12, %div.rhs.trunc.i
  %ntxq17.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %16 = ptrtoint ptr %ntxq17.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %ntxq17.i, align 4
  %17 = load i16, ptr %nrxq.i, align 4
  %conv20.i = zext i16 %17 to i32
  %nrxq21.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %18 = ptrtoint ptr %nrxq21.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv20.i, ptr %nrxq21.i, align 4
  %conv22.i = trunc i16 %div39.i to i8
  %rxq_perchan23.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %19 = ptrtoint ptr %rxq_perchan23.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv22.i, ptr %rxq_perchan23.i, align 4
  %conv24.i = trunc i16 %div1640.i to i8
  %txq_perchan25.i = getelementptr inbounds %struct.chcr_context, ptr %__crt_ctx.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %txq_perchan25.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv24.i, ptr %txq_perchan25.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then2.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i ], [ -6, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chcr_aead_cra_exit(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 72
  %0 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw_cipher, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ahash_update(ptr noundef %req) #0 align 64 {
entry:
  %params = alloca %struct.hash_wr_param, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %nbytes7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbytes7, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %params) #11
  %6 = call ptr @memset(ptr %params, i32 255, i32 48)
  %7 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %10, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !150
  %11 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu9 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu9, align 4
  %ntxq = getelementptr i8, ptr %1, i32 136
  %15 = ptrtoint ptr %ntxq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ntxq, align 4
  %rem = urem i32 %14, %16
  %conv = trunc i32 %rem to i16
  %txqidx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %17 = ptrtoint ptr %txqidx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %txqidx, align 8
  %nrxq = getelementptr i8, ptr %1, i32 140
  %18 = ptrtoint ptr %nrxq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nrxq, align 4
  %rem10 = urem i32 %14, %19
  %conv11 = trunc i32 %rem10 to i16
  %rxqidx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 10
  %20 = ptrtoint ptr %rxqidx to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv11, ptr %rxqidx, align 2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !151
  %21 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i220 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i220 to ptr
  %preempt_count.i.i221 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i221 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i221, align 4
  %sub.i = add i32 %24, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i221, align 4
  %__crt_alg.i = getelementptr %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cra_blocksize.i, align 4
  %reqlen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %29 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %reqlen, align 4
  %conv18 = zext i8 %30 to i32
  %add = add i32 %5, %conv18
  %conv19 = and i32 %28, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv19)
  %cmp.not = icmp ult i32 %add, %conv19
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %rem25 = urem i32 %add, %conv19
  %conv26 = trunc i32 %rem25 to i8
  %state.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp.i = icmp eq i32 %32, 2
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end42

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %33 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %src, align 4
  %call32 = tail call i32 @sg_nents(ptr noundef %34) #11
  %reqbfr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %35 = ptrtoint ptr %reqbfr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reqbfr, align 8
  %37 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %reqlen, align 4
  %conv34 = zext i8 %38 to i32
  %add.ptr = getelementptr i8, ptr %36, i32 %conv34
  %call35 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %34, i32 noundef %call32, ptr noundef %add.ptr, i32 noundef %5, i32 noundef 0) #11
  %39 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reqlen, align 4
  %41 = trunc i32 %5 to i8
  %conv39 = add i8 %40, %41
  store i8 %conv39, ptr %reqlen, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.then
  %inflight.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !137
  %lldi = getelementptr i8, ptr %3, i32 -148
  %ports = getelementptr i8, ptr %3, i32 -136
  %43 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ports, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %txqidx, align 8
  %conv44 = zext i16 %48 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %46, i32 2304
  %49 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  %uld_txq_info.i = getelementptr inbounds %struct.adapter, ptr %50, i32 0, i32 22, i32 6
  %51 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %52, i32 1
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @local_bh_disable() #11
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %lock.i = getelementptr %struct.sge_uld_txq, ptr %56, i32 %conv44, i32 2, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %full.i = getelementptr %struct.sge_uld_txq, ptr %56, i32 %conv44, i32 5
  %57 = ptrtoint ptr %full.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %full.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.not = icmp eq i8 %58, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  tail call fastcc void @local_bh_enable() #11
  br i1 %tobool.not.i.not, label %if.end42.if.end52_crit_edge, label %land.rhs

if.end42.if.end52_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.rhs:                                         ; preds = %if.end42
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %and = and i32 %60, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %land.rhs.err_crit_edge, label %land.rhs.if.end52_crit_edge, !prof !136

land.rhs.if.end52_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.rhs.err_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end52:                                         ; preds = %land.rhs.if.end52_crit_edge, %if.end42.if.end52_crit_edge
  %61 = call ptr @memset(ptr %__ctx.i, i32 0, i32 32)
  %62 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nbytes7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i224 = icmp eq i32 %63, 0
  br i1 %tobool.not.i224, label %if.end52.if.end58_crit_edge, label %if.end.i225

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end.i225:                                      ; preds = %if.end52
  %64 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lldi, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %66 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %src.i, align 4
  %call2.i = tail call i32 @sg_nents(ptr noundef %67) #11
  %call3.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev54, ptr noundef %67, i32 noundef %call2.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i225.err_crit_edge, label %if.end6.i

if.end.i225.err_crit_edge:                        ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end6.i:                                        ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_pc() #13
  %is_sg_map.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %68 = ptrtoint ptr %is_sg_map.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %is_sg_map.i, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end6.i, %if.end52.if.end58_crit_edge
  %69 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %70, i32 -128
  %71 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i.i, align 128
  %73 = add i32 %72, -20
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 30) #11
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %74, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb5.i
    i32 7, label %sw.bb9.i
    i32 11, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %76 = ptrtoint ptr %mk_size.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %mk_size.i, align 4
  %77 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %params, align 8
  %result_size.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %78 = ptrtoint ptr %result_size.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 20, ptr %result_size.i, align 8
  br label %get_alg_config.exit

sw.bb1.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size2.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %79 = ptrtoint ptr %mk_size2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 3, ptr %mk_size2.i, align 4
  %80 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %params, align 8
  %result_size4.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %81 = ptrtoint ptr %result_size4.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 32, ptr %result_size4.i, align 8
  br label %get_alg_config.exit

sw.bb5.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size6.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %82 = ptrtoint ptr %mk_size6.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 3, ptr %mk_size6.i, align 4
  %83 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %params, align 8
  %result_size8.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %84 = ptrtoint ptr %result_size8.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 32, ptr %result_size8.i, align 8
  br label %get_alg_config.exit

sw.bb9.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size10.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %85 = ptrtoint ptr %mk_size10.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 4, ptr %mk_size10.i, align 4
  %86 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 7, ptr %params, align 8
  %result_size12.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %87 = ptrtoint ptr %result_size12.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 64, ptr %result_size12.i, align 8
  br label %get_alg_config.exit

sw.bb13.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size14.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %88 = ptrtoint ptr %mk_size14.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 4, ptr %mk_size14.i, align 4
  %89 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 8, ptr %params, align 8
  %result_size16.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %90 = ptrtoint ptr %result_size16.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 64, ptr %result_size16.i, align 8
  br label %get_alg_config.exit

do.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %get_alg_config.exit

get_alg_config.exit:                              ; preds = %do.end.i, %sw.bb13.i, %sw.bb9.i, %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %result_size = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %91 = ptrtoint ptr %result_size to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %result_size, align 8
  %add64 = add i32 %92, 15
  %div219 = and i32 %add64, -16
  %kctx_len = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 4
  %93 = ptrtoint ptr %kctx_len to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %div219, ptr %kctx_len, align 8
  %src65 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %94 = ptrtoint ptr %src65 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %src65, align 4
  %96 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %reqlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool67 = icmp ne i8 %97, 0
  %lnot.ext71 = zext i1 %tobool67 to i32
  %sub73 = sub i32 384, %div219
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %95, i32 0, i32 4
  %98 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i228 = icmp eq i32 %99, 0
  br i1 %cmp.i228, label %if.then.i, label %get_alg_config.exit.if.end.i230_crit_edge

get_alg_config.exit.if.end.i230_crit_edge:        ; preds = %get_alg_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i230

if.then.i:                                        ; preds = %get_alg_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i229 = tail call ptr @sg_next(ptr noundef %95) #11
  br label %if.end.i230

if.end.i230:                                      ; preds = %if.then.i, %get_alg_config.exit.if.end.i230_crit_edge
  %src.addr.0.i = phi ptr [ %call.i229, %if.then.i ], [ %95, %get_alg_config.exit.if.end.i230_crit_edge ]
  %tobool.not27.i = icmp eq ptr %src.addr.0.i, null
  br i1 %tobool.not27.i, label %if.end.i230.chcr_hash_ent_in_wr.exit_crit_edge, label %if.end.i230.land.rhs.i_crit_edge

if.end.i230.land.rhs.i_crit_edge:                 ; preds = %if.end.i230
  br label %land.rhs.i

if.end.i230.chcr_hash_ent_in_wr.exit_crit_edge:   ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_hash_ent_in_wr.exit

land.rhs.i:                                       ; preds = %if.end12.i.land.rhs.i_crit_edge, %if.end.i230.land.rhs.i_crit_edge
  %src.addr.132.i = phi ptr [ %src.addr.2.i, %if.end12.i.land.rhs.i_crit_edge ], [ %src.addr.0.i, %if.end.i230.land.rhs.i_crit_edge ]
  %soffset.031.i = phi i32 [ %soffset.1.i, %if.end12.i.land.rhs.i_crit_edge ], [ 0, %if.end.i230.land.rhs.i_crit_edge ]
  %srcsg.030.i = phi i32 [ %add.i231, %if.end12.i.land.rhs.i_crit_edge ], [ %lnot.ext71, %if.end.i230.land.rhs.i_crit_edge ]
  %srclen.029.i = phi i32 [ %add5.i, %if.end12.i.land.rhs.i_crit_edge ], [ 0, %if.end.i230.land.rhs.i_crit_edge ]
  %add.i231 = add i32 %srcsg.030.i, 1
  %arrayidx.i232 = getelementptr [33 x i32], ptr @sgl_ent_len, i32 0, i32 %add.i231
  %100 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i232, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %sub73)
  %cmp1.i = icmp ult i32 %101, %sub73
  br i1 %cmp1.i, label %while.body.i, label %land.rhs.i.chcr_hash_ent_in_wr.exit_crit_edge

land.rhs.i.chcr_hash_ent_in_wr.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_hash_ent_in_wr.exit

while.body.i:                                     ; preds = %land.rhs.i
  %dma_length2.i = getelementptr inbounds %struct.scatterlist, ptr %src.addr.132.i, i32 0, i32 4
  %102 = ptrtoint ptr %dma_length2.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dma_length2.i, align 4
  %sub3.i = sub i32 %103, %soffset.031.i
  %104 = tail call i32 @llvm.umin.i32(i32 %sub3.i, i32 65532) #11
  %add5.i = add i32 %104, %srclen.029.i
  %add6.i = add i32 %104, %soffset.031.i
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %add6.i)
  %cmp9.i = icmp eq i32 %103, %add6.i
  br i1 %cmp9.i, label %if.then10.i, label %while.body.i.if.end12.i_crit_edge

while.body.i.if.end12.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then10.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = tail call ptr @sg_next(ptr noundef nonnull %src.addr.132.i) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %while.body.i.if.end12.i_crit_edge
  %soffset.1.i = phi i32 [ 0, %if.then10.i ], [ %add6.i, %while.body.i.if.end12.i_crit_edge ]
  %src.addr.2.i = phi ptr [ %call11.i, %if.then10.i ], [ %src.addr.132.i, %while.body.i.if.end12.i_crit_edge ]
  %tobool.not.i233 = icmp eq ptr %src.addr.2.i, null
  br i1 %tobool.not.i233, label %if.end12.i.chcr_hash_ent_in_wr.exit_crit_edge, label %if.end12.i.land.rhs.i_crit_edge

if.end12.i.land.rhs.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

if.end12.i.chcr_hash_ent_in_wr.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_hash_ent_in_wr.exit

chcr_hash_ent_in_wr.exit:                         ; preds = %if.end12.i.chcr_hash_ent_in_wr.exit_crit_edge, %land.rhs.i.chcr_hash_ent_in_wr.exit_crit_edge, %if.end.i230.chcr_hash_ent_in_wr.exit_crit_edge
  %srclen.0.lcssa.i = phi i32 [ 0, %if.end.i230.chcr_hash_ent_in_wr.exit_crit_edge ], [ %srclen.029.i, %land.rhs.i.chcr_hash_ent_in_wr.exit_crit_edge ], [ %add5.i, %if.end12.i.chcr_hash_ent_in_wr.exit_crit_edge ]
  %sg_len = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 5
  %105 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nbytes7, align 8
  %107 = tail call i32 @llvm.umin.i32(i32 %srclen.0.lcssa.i, i32 %106)
  %108 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %reqlen, align 4
  %conv85 = zext i8 %109 to i32
  %add86 = add i32 %107, %conv85
  %rem89 = urem i32 %add86, %conv19
  %110 = add nuw nsw i32 %rem89, %conv85
  %sub93 = sub i32 %add86, %110
  %111 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %sub93, ptr %sg_len, align 4
  %opad_needed = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 1
  %112 = ptrtoint ptr %opad_needed to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %opad_needed, align 4
  %more = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 2
  %113 = ptrtoint ptr %more to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %more, align 8
  %last = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 3
  %114 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %last, align 4
  %bfr_len = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 6
  %115 = ptrtoint ptr %bfr_len to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv85, ptr %bfr_len, align 8
  %scmd1 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 8
  %116 = ptrtoint ptr %scmd1 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 0, ptr %scmd1, align 8
  %117 = ptrtoint ptr %src65 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %src65, align 4
  %119 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %__ctx.i, align 8
  %120 = ptrtoint ptr %result_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %result_size, align 8
  %hash_size = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 7
  %122 = ptrtoint ptr %hash_size to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %hash_size, align 4
  %add102 = add i32 %sub93, %conv85
  %conv103 = zext i32 %add102 to i64
  %data_len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5
  %123 = ptrtoint ptr %data_len to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %data_len, align 8
  %add104 = add i64 %124, %conv103
  store i64 %add104, ptr %data_len, align 8
  %call105 = call fastcc ptr @create_hash_wr(ptr noundef %req, ptr noundef nonnull %params)
  %cmp.i234 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i234, label %if.then107, label %if.end109

if.then107:                                       ; preds = %chcr_hash_ent_in_wr.exit
  %125 = ptrtoint ptr %call105 to i32
  %126 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nbytes7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.i236 = icmp eq i32 %127, 0
  br i1 %tobool.not.i236, label %if.then107.err_crit_edge, label %if.end.i240

if.then107.err_crit_edge:                         ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end.i240:                                      ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %lldi, align 4
  %dev140 = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  %130 = ptrtoint ptr %src65 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %src65, align 4
  %call2.i238 = tail call i32 @sg_nents(ptr noundef %131) #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev140, ptr noundef %131, i32 noundef %call2.i238, i32 noundef 1, i32 noundef 0) #11
  %is_sg_map.i239 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %132 = ptrtoint ptr %is_sg_map.i239 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %is_sg_map.i239, align 4
  br label %err

if.end109:                                        ; preds = %chcr_hash_ent_in_wr.exit
  %133 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %sg_len, align 4
  %processed = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %135 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %processed, align 4
  %add112 = add i32 %136, %134
  store i32 %add112, ptr %processed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv26)
  %tobool113.not = icmp eq i8 %conv26, 0
  br i1 %tobool113.not, label %if.end109.if.end130_crit_edge, label %do.body115

if.end109.if.end130_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

do.body115:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  %reqbfr116 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %137 = ptrtoint ptr %reqbfr116 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reqbfr116, align 8
  %skbfr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 4
  %139 = ptrtoint ptr %skbfr to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %skbfr, align 4
  store ptr %140, ptr %reqbfr116, align 8
  store ptr %138, ptr %skbfr, align 4
  %141 = ptrtoint ptr %src65 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %src65, align 4
  %call123 = tail call i32 @sg_nents(ptr noundef %142) #11
  %143 = ptrtoint ptr %reqbfr116 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %reqbfr116, align 8
  %145 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %nbytes7, align 8
  %sub128 = sub i32 %146, %rem25
  %call129 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %142, i32 noundef %call123, ptr noundef %144, i32 noundef %rem25, i32 noundef %sub128) #11
  br label %if.end130

if.end130:                                        ; preds = %do.body115, %if.end109.if.end130_crit_edge
  %147 = ptrtoint ptr %reqlen to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv26, ptr %reqlen, align 4
  %148 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ports, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %152 = getelementptr inbounds %struct.anon.49, ptr %call105, i32 0, i32 2
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %151, ptr %152, align 8
  %154 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %txqidx, align 8
  %conv.i = shl i16 %155, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call105, i32 0, i32 10
  %156 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv.i, ptr %queue_mapping1.i.i, align 8
  %call137 = tail call i32 @chcr_send_wr(ptr noundef %call105) #11
  br label %cleanup

err:                                              ; preds = %if.end.i240, %if.then107.err_crit_edge, %if.end.i225.err_crit_edge, %land.rhs.err_crit_edge
  %error.0 = phi i32 [ -28, %land.rhs.err_crit_edge ], [ -12, %if.end.i225.err_crit_edge ], [ %125, %if.then107.err_crit_edge ], [ %125, %if.end.i240 ]
  %call.i.i.i242 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %157 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !135
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end130, %if.else, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err ], [ -115, %if.end130 ], [ 0, %if.else ], [ -6, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ahash_final(ptr noundef %req) #0 align 64 {
entry:
  %params = alloca %struct.hash_wr_param, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %params) #11
  %4 = call ptr @memset(ptr %params, i32 255, i32 48)
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_ctx.i.i, align 4
  %__crt_alg.i = getelementptr %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cra_blocksize.i, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %14, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  %15 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %cpu10 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu10, align 4
  %ntxq = getelementptr i8, ptr %1, i32 136
  %19 = ptrtoint ptr %ntxq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ntxq, align 4
  %rem = urem i32 %18, %20
  %conv11 = trunc i32 %rem to i16
  %txqidx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %21 = ptrtoint ptr %txqidx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv11, ptr %txqidx, align 8
  %nrxq = getelementptr i8, ptr %1, i32 140
  %22 = ptrtoint ptr %nrxq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nrxq, align 4
  %rem12 = urem i32 %18, %23
  %conv13 = trunc i32 %rem12 to i16
  %rxqidx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 10
  %24 = ptrtoint ptr %rxqidx to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv13, ptr %rxqidx, align 2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !153
  %25 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i114 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i114 to ptr
  %preempt_count.i.i115 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i115 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i115, align 4
  %sub.i = add i32 %28, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i115, align 4
  %state.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.i = icmp eq i32 %30, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %inflight.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !137
  %32 = call ptr @memset(ptr %__ctx.i, i32 0, i32 32)
  %33 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %34, i32 -384
  %35 = ptrtoint ptr %add.ptr.i120 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i120, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777231, i32 %36)
  %cmp.i121.not = icmp eq i32 %36, 16777231
  %spec.select = zext i1 %cmp.i121.not to i32
  %37 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select, ptr %37, align 4
  %sg_len = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 5
  %39 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %sg_len, align 4
  %isfinal = getelementptr inbounds %struct.chcr_hctx_per_wr, ptr %__ctx.i, i32 0, i32 9
  %40 = ptrtoint ptr %isfinal to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %isfinal, align 2
  %41 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 -128
  %43 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i.i, align 128
  %45 = add i32 %44, -20
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 30) #11
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %46, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb5.i
    i32 7, label %sw.bb9.i
    i32 11, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %48 = ptrtoint ptr %mk_size.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %mk_size.i, align 4
  %49 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %params, align 8
  %result_size.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %50 = ptrtoint ptr %result_size.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 20, ptr %result_size.i, align 8
  br label %get_alg_config.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size2.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %51 = ptrtoint ptr %mk_size2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %mk_size2.i, align 4
  %52 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %params, align 8
  %result_size4.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %53 = ptrtoint ptr %result_size4.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 32, ptr %result_size4.i, align 8
  br label %get_alg_config.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size6.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %54 = ptrtoint ptr %mk_size6.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %mk_size6.i, align 4
  %55 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %params, align 8
  %result_size8.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %56 = ptrtoint ptr %result_size8.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 32, ptr %result_size8.i, align 8
  br label %get_alg_config.exit

sw.bb9.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size10.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %57 = ptrtoint ptr %mk_size10.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %mk_size10.i, align 4
  %58 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 7, ptr %params, align 8
  %result_size12.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %59 = ptrtoint ptr %result_size12.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 64, ptr %result_size12.i, align 8
  br label %get_alg_config.exit

sw.bb13.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size14.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %60 = ptrtoint ptr %mk_size14.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4, ptr %mk_size14.i, align 4
  %61 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 8, ptr %params, align 8
  %result_size16.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %62 = ptrtoint ptr %result_size16.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 64, ptr %result_size16.i, align 8
  br label %get_alg_config.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %get_alg_config.exit

get_alg_config.exit:                              ; preds = %do.end.i, %sw.bb13.i, %sw.bb9.i, %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %result_size = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %63 = ptrtoint ptr %result_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %result_size, align 8
  %add = add i32 %64, 15
  %div113 = and i32 %add, -16
  %kctx_len = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 4
  %65 = ptrtoint ptr %kctx_len to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div113, ptr %kctx_len, align 8
  %66 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %67, i32 -384
  %68 = ptrtoint ptr %add.ptr.i125 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i125, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777231, i32 %69)
  %cmp.i126.not = icmp eq i32 %69, 16777231
  br i1 %cmp.i126.not, label %if.then31, label %get_alg_config.exit.if.end37_crit_edge

get_alg_config.exit.if.end37_crit_edge:           ; preds = %get_alg_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then31:                                        ; preds = %get_alg_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mul34 = shl i32 %div113, 1
  %70 = ptrtoint ptr %kctx_len to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul34, ptr %kctx_len, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %get_alg_config.exit.if.end37_crit_edge
  %.sink137 = phi i32 [ 1, %if.then31 ], [ 0, %get_alg_config.exit.if.end37_crit_edge ]
  %71 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink137, ptr %37, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %72 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %result, align 8
  %reqlen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %73 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %reqlen, align 4
  %conv39 = zext i8 %74 to i32
  %bfr_len = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 6
  %75 = ptrtoint ptr %bfr_len to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv39, ptr %bfr_len, align 8
  %76 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sg_len, align 4
  %add42 = add i32 %77, %conv39
  %conv43 = zext i32 %add42 to i64
  %data_len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5
  %78 = ptrtoint ptr %data_len to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %data_len, align 8
  %add44 = add i64 %79, %conv43
  store i64 %add44, ptr %data_len, align 8
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %80 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %src, align 4
  %82 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %__ctx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp = icmp eq i8 %74, 0
  br i1 %cmp, label %if.then49, label %if.end37.if.end59_crit_edge

if.end37.if.end59_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then49:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %reqbfr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %83 = ptrtoint ptr %reqbfr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reqbfr, align 8
  %conv50 = and i32 %10, 255
  %85 = call ptr @memset(ptr %84, i32 0, i32 %conv50)
  %86 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -128, ptr %84, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv50)
  %cmp.i128 = icmp eq i32 %conv50, 64
  %shl.i = shl i64 %add44, 3
  %..i129 = select i1 %cmp.i128, i32 56, i32 120
  %add.ptr2.i = getelementptr i8, ptr %84, i32 %..i129
  %87 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %shl.i, ptr %add.ptr2.i, align 8
  %88 = ptrtoint ptr %bfr_len to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv50, ptr %bfr_len, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then49, %if.end37.if.end59_crit_edge
  %.sink139 = phi i32 [ 0, %if.then49 ], [ 1, %if.end37.if.end59_crit_edge ]
  %.sink138 = phi i32 [ 1, %if.then49 ], [ 0, %if.end37.if.end59_crit_edge ]
  %add44.sink = phi i64 [ 0, %if.then49 ], [ %add44, %if.end37.if.end59_crit_edge ]
  %89 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 3
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %.sink139, ptr %89, align 4
  %91 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 2
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %.sink138, ptr %91, align 8
  %93 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %add44.sink, ptr %93, align 8
  %95 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i.i131 = getelementptr i8, ptr %96, i32 -128
  %97 = ptrtoint ptr %add.ptr.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i.i.i131, align 128
  %hash_size = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 7
  %99 = ptrtoint ptr %hash_size to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %hash_size, align 4
  %call61 = call fastcc ptr @create_hash_wr(ptr noundef %req, ptr noundef nonnull %params)
  %cmp.i132 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %call61 to i32
  %call.i.i.i134 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %101 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !135
  br label %cleanup

if.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %reqlen to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %reqlen, align 4
  %ports = getelementptr i8, ptr %6, i32 -136
  %103 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ports, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %107 = getelementptr inbounds %struct.anon.49, ptr %call61, i32 0, i32 2
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %106, ptr %107, align 8
  %109 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %txqidx, align 8
  %conv.i = shl i16 %110, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call61, i32 0, i32 10
  %111 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv.i, ptr %queue_mapping1.i.i, align 8
  %call69 = tail call i32 @chcr_send_wr(ptr noundef %call61) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then63, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %100, %if.then63 ], [ -115, %if.end65 ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ahash_finup(ptr noundef %req) #0 align 64 {
entry:
  %params = alloca %struct.hash_wr_param, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %params) #11
  %4 = call ptr @memset(ptr %params, i32 255, i32 48)
  %5 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %8, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !154
  %9 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu8 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu8, align 4
  %ntxq = getelementptr i8, ptr %1, i32 136
  %13 = ptrtoint ptr %ntxq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ntxq, align 4
  %rem = urem i32 %12, %14
  %conv = trunc i32 %rem to i16
  %txqidx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %15 = ptrtoint ptr %txqidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %txqidx, align 8
  %nrxq = getelementptr i8, ptr %1, i32 140
  %16 = ptrtoint ptr %nrxq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nrxq, align 4
  %rem9 = urem i32 %12, %17
  %conv10 = trunc i32 %rem9 to i16
  %rxqidx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 10
  %18 = ptrtoint ptr %rxqidx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv10, ptr %rxqidx, align 2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !155
  %19 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i200 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i200 to ptr
  %preempt_count.i.i201 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i201 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i201, align 4
  %sub.i = add i32 %22, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i201, align 4
  %__crt_alg.i = getelementptr %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cra_blocksize.i, align 4
  %state.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i = icmp eq i32 %28, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %inflight.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !137
  %lldi = getelementptr i8, ptr %3, i32 -148
  %ports = getelementptr i8, ptr %3, i32 -136
  %30 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ports, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %txqidx, align 8
  %conv19 = zext i16 %35 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %33, i32 2304
  %36 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  %uld_txq_info.i = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 22, i32 6
  %38 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @local_bh_disable() #11
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %lock.i = getelementptr %struct.sge_uld_txq, ptr %43, i32 %conv19, i32 2, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %full.i = getelementptr %struct.sge_uld_txq, ptr %43, i32 %conv19, i32 5
  %44 = ptrtoint ptr %full.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %full.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.not = icmp eq i8 %45, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  tail call fastcc void @local_bh_enable() #11
  br i1 %tobool.not.i.not, label %if.end.if.end27_crit_edge, label %land.rhs

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.rhs:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %and = and i32 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %land.rhs.err_crit_edge, label %land.rhs.if.end27_crit_edge, !prof !136

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.rhs.err_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end27:                                         ; preds = %land.rhs.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %48 = call ptr @memset(ptr %__ctx.i, i32 0, i32 32)
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %49 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i204 = icmp eq i32 %50, 0
  br i1 %tobool.not.i204, label %if.end27.if.end33_crit_edge, label %if.end.i205

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end.i205:                                      ; preds = %if.end27
  %51 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lldi, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %53 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %src.i, align 4
  %call2.i = tail call i32 @sg_nents(ptr noundef %54) #11
  %call3.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev29, ptr noundef %54, i32 noundef %call2.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i205.err_crit_edge, label %if.end6.i

if.end.i205.err_crit_edge:                        ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end6.i:                                        ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #13
  %is_sg_map.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %55 = ptrtoint ptr %is_sg_map.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %is_sg_map.i, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end6.i, %if.end27.if.end33_crit_edge
  %56 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 -128
  %58 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i.i, align 128
  %60 = add i32 %59, -20
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 30) #11
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %61, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb5.i
    i32 7, label %sw.bb9.i
    i32 11, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %63 = ptrtoint ptr %mk_size.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %mk_size.i, align 4
  %64 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %params, align 8
  %result_size.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %65 = ptrtoint ptr %result_size.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 20, ptr %result_size.i, align 8
  br label %get_alg_config.exit

sw.bb1.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size2.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %66 = ptrtoint ptr %mk_size2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %mk_size2.i, align 4
  %67 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %params, align 8
  %result_size4.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %68 = ptrtoint ptr %result_size4.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 32, ptr %result_size4.i, align 8
  br label %get_alg_config.exit

sw.bb5.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size6.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %69 = ptrtoint ptr %mk_size6.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 3, ptr %mk_size6.i, align 4
  %70 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3, ptr %params, align 8
  %result_size8.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %71 = ptrtoint ptr %result_size8.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 32, ptr %result_size8.i, align 8
  br label %get_alg_config.exit

sw.bb9.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size10.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %72 = ptrtoint ptr %mk_size10.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 4, ptr %mk_size10.i, align 4
  %73 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 7, ptr %params, align 8
  %result_size12.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %74 = ptrtoint ptr %result_size12.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 64, ptr %result_size12.i, align 8
  br label %get_alg_config.exit

sw.bb13.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size14.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %75 = ptrtoint ptr %mk_size14.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %mk_size14.i, align 4
  %76 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 8, ptr %params, align 8
  %result_size16.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %77 = ptrtoint ptr %result_size16.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 64, ptr %result_size16.i, align 8
  br label %get_alg_config.exit

do.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %get_alg_config.exit

get_alg_config.exit:                              ; preds = %do.end.i, %sw.bb13.i, %sw.bb9.i, %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %result_size = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %78 = ptrtoint ptr %result_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %result_size, align 8
  %add = add i32 %79, 15
  %div198 = and i32 %add, -16
  %kctx_len = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 4
  %80 = ptrtoint ptr %kctx_len to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %div198, ptr %kctx_len, align 8
  %81 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i210 = getelementptr i8, ptr %82, i32 -384
  %83 = ptrtoint ptr %add.ptr.i210 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i210, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777231, i32 %84)
  %cmp.i211.not = icmp eq i32 %84, 16777231
  br i1 %cmp.i211.not, label %if.then41, label %get_alg_config.exit.if.end45_crit_edge

get_alg_config.exit.if.end45_crit_edge:           ; preds = %get_alg_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then41:                                        ; preds = %get_alg_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mul43 = shl i32 %div198, 1
  %85 = ptrtoint ptr %kctx_len to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %mul43, ptr %kctx_len, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %get_alg_config.exit.if.end45_crit_edge
  %.sink = phi i32 [ 1, %if.then41 ], [ 0, %get_alg_config.exit.if.end45_crit_edge ]
  %86 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %.sink, ptr %86, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %88 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %src, align 4
  %reqlen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %90 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %reqlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool46 = icmp ne i8 %91, 0
  %lnot.ext50 = zext i1 %tobool46 to i32
  %92 = ptrtoint ptr %kctx_len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %kctx_len, align 8
  %sub52 = sub i32 384, %93
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %89, i32 0, i32 4
  %94 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i212 = icmp eq i32 %95, 0
  br i1 %cmp.i212, label %if.then.i, label %if.end45.if.end.i214_crit_edge

if.end45.if.end.i214_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i214

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %call.i213 = tail call ptr @sg_next(ptr noundef %89) #11
  br label %if.end.i214

if.end.i214:                                      ; preds = %if.then.i, %if.end45.if.end.i214_crit_edge
  %src.addr.0.i = phi ptr [ %call.i213, %if.then.i ], [ %89, %if.end45.if.end.i214_crit_edge ]
  %tobool.not27.i = icmp eq ptr %src.addr.0.i, null
  br i1 %tobool.not27.i, label %if.end.i214.chcr_hash_ent_in_wr.exit_crit_edge, label %if.end.i214.land.rhs.i_crit_edge

if.end.i214.land.rhs.i_crit_edge:                 ; preds = %if.end.i214
  br label %land.rhs.i

if.end.i214.chcr_hash_ent_in_wr.exit_crit_edge:   ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_hash_ent_in_wr.exit

land.rhs.i:                                       ; preds = %if.end12.i.land.rhs.i_crit_edge, %if.end.i214.land.rhs.i_crit_edge
  %src.addr.132.i = phi ptr [ %src.addr.2.i, %if.end12.i.land.rhs.i_crit_edge ], [ %src.addr.0.i, %if.end.i214.land.rhs.i_crit_edge ]
  %soffset.031.i = phi i32 [ %soffset.1.i, %if.end12.i.land.rhs.i_crit_edge ], [ 0, %if.end.i214.land.rhs.i_crit_edge ]
  %srcsg.030.i = phi i32 [ %add.i215, %if.end12.i.land.rhs.i_crit_edge ], [ %lnot.ext50, %if.end.i214.land.rhs.i_crit_edge ]
  %srclen.029.i = phi i32 [ %add5.i, %if.end12.i.land.rhs.i_crit_edge ], [ 0, %if.end.i214.land.rhs.i_crit_edge ]
  %add.i215 = add i32 %srcsg.030.i, 1
  %arrayidx.i216 = getelementptr [33 x i32], ptr @sgl_ent_len, i32 0, i32 %add.i215
  %96 = ptrtoint ptr %arrayidx.i216 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i216, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %sub52)
  %cmp1.i = icmp ult i32 %97, %sub52
  br i1 %cmp1.i, label %while.body.i, label %land.rhs.i.chcr_hash_ent_in_wr.exit_crit_edge

land.rhs.i.chcr_hash_ent_in_wr.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_hash_ent_in_wr.exit

while.body.i:                                     ; preds = %land.rhs.i
  %dma_length2.i = getelementptr inbounds %struct.scatterlist, ptr %src.addr.132.i, i32 0, i32 4
  %98 = ptrtoint ptr %dma_length2.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dma_length2.i, align 4
  %sub3.i = sub i32 %99, %soffset.031.i
  %100 = tail call i32 @llvm.umin.i32(i32 %sub3.i, i32 65532) #11
  %add5.i = add i32 %100, %srclen.029.i
  %add6.i = add i32 %100, %soffset.031.i
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %add6.i)
  %cmp9.i = icmp eq i32 %99, %add6.i
  br i1 %cmp9.i, label %if.then10.i, label %while.body.i.if.end12.i_crit_edge

while.body.i.if.end12.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then10.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = tail call ptr @sg_next(ptr noundef nonnull %src.addr.132.i) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %while.body.i.if.end12.i_crit_edge
  %soffset.1.i = phi i32 [ 0, %if.then10.i ], [ %add6.i, %while.body.i.if.end12.i_crit_edge ]
  %src.addr.2.i = phi ptr [ %call11.i, %if.then10.i ], [ %src.addr.132.i, %while.body.i.if.end12.i_crit_edge ]
  %tobool.not.i217 = icmp eq ptr %src.addr.2.i, null
  br i1 %tobool.not.i217, label %if.end12.i.chcr_hash_ent_in_wr.exit_crit_edge, label %if.end12.i.land.rhs.i_crit_edge

if.end12.i.land.rhs.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

if.end12.i.chcr_hash_ent_in_wr.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_hash_ent_in_wr.exit

chcr_hash_ent_in_wr.exit:                         ; preds = %if.end12.i.chcr_hash_ent_in_wr.exit_crit_edge, %land.rhs.i.chcr_hash_ent_in_wr.exit_crit_edge, %if.end.i214.chcr_hash_ent_in_wr.exit_crit_edge
  %srclen.0.lcssa.i = phi i32 [ 0, %if.end.i214.chcr_hash_ent_in_wr.exit_crit_edge ], [ %srclen.029.i, %land.rhs.i.chcr_hash_ent_in_wr.exit_crit_edge ], [ %add5.i, %if.end12.i.chcr_hash_ent_in_wr.exit_crit_edge ]
  %sg_len = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 5
  %101 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %srclen.0.lcssa.i, ptr %sg_len, align 4
  %102 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %srclen.0.lcssa.i, i32 %103)
  %cmp = icmp ult i32 %srclen.0.lcssa.i, %103
  br i1 %cmp, label %if.then56, label %if.else79

if.then56:                                        ; preds = %chcr_hash_ent_in_wr.exit
  %104 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i220 = getelementptr i8, ptr %105, i32 -384
  %106 = ptrtoint ptr %add.ptr.i220 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr.i220, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777231, i32 %107)
  %cmp.i221.not = icmp eq i32 %107, 16777231
  br i1 %cmp.i221.not, label %if.then60, label %if.then56.if.end64_crit_edge

if.then56.if.end64_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then60:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %kctx_len to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %kctx_len, align 8
  %div62199 = lshr i32 %109, 1
  store i32 %div62199, ptr %kctx_len, align 8
  %110 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %86, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.then56.if.end64_crit_edge
  %last = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 3
  %111 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %last, align 4
  %more = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 2
  %112 = ptrtoint ptr %more to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %more, align 8
  %113 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %reqlen, align 4
  %conv67 = zext i8 %114 to i32
  %add68 = add i32 %srclen.0.lcssa.i, %conv67
  %conv70 = and i32 %26, 255
  %rem71 = urem i32 %add68, %conv70
  %115 = add nuw nsw i32 %rem71, %conv67
  %sub75 = sub i32 %add68, %115
  %116 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub75, ptr %sg_len, align 4
  %117 = ptrtoint ptr %result_size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %result_size, align 8
  %hash_size = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 7
  %119 = ptrtoint ptr %hash_size to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %hash_size, align 4
  br label %if.end93

if.else79:                                        ; preds = %chcr_hash_ent_in_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %last80 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 3
  %120 = ptrtoint ptr %last80 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %last80, align 4
  %more81 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 2
  %121 = ptrtoint ptr %more81 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %more81, align 8
  %122 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %103, ptr %sg_len, align 4
  %123 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i.i224 = getelementptr i8, ptr %124, i32 -128
  %125 = ptrtoint ptr %add.ptr.i.i.i224 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr.i.i.i224, align 128
  %hash_size85 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 7
  %127 = ptrtoint ptr %hash_size85 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %hash_size85, align 4
  %data_len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5
  %128 = ptrtoint ptr %data_len to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %data_len, align 8
  %130 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %reqlen, align 4
  %conv87 = zext i8 %131 to i64
  %conv90 = zext i32 %103 to i64
  %add88 = add i64 %129, %conv90
  %add91 = add i64 %add88, %conv87
  br label %if.end93

if.end93:                                         ; preds = %if.else79, %if.end64
  %add91.sink = phi i64 [ %add91, %if.else79 ], [ 0, %if.end64 ]
  %scmd192 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 8
  %132 = ptrtoint ptr %scmd192 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %add91.sink, ptr %scmd192, align 8
  %133 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %reqlen, align 4
  %conv95 = zext i8 %134 to i32
  %bfr_len = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 6
  %135 = ptrtoint ptr %bfr_len to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv95, ptr %bfr_len, align 8
  %136 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sg_len, align 4
  %add98 = add i32 %137, %conv95
  %conv99 = zext i32 %add98 to i64
  %data_len100 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5
  %138 = ptrtoint ptr %data_len100 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %data_len100, align 8
  %add101 = add i64 %139, %conv99
  store i64 %add101, ptr %data_len100, align 8
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %140 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %result, align 8
  %141 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %src, align 4
  %143 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %142, ptr %__ctx.i, align 8
  %add107 = sub nsw i32 0, %conv95
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %add107)
  %cmp108 = icmp eq i32 %103, %add107
  br i1 %cmp108, label %if.then110, label %if.end93.if.end118_crit_edge

if.end93.if.end118_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

if.then110:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %reqbfr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %144 = ptrtoint ptr %reqbfr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reqbfr, align 8
  %conv111 = and i32 %26, 255
  %146 = call ptr @memset(ptr %145, i32 0, i32 %conv111)
  %147 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 -128, ptr %145, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv111)
  %cmp.i225 = icmp eq i32 %conv111, 64
  %shl.i = shl i64 %add101, 3
  %..i226 = select i1 %cmp.i225, i32 56, i32 120
  %add.ptr2.i = getelementptr i8, ptr %145, i32 %..i226
  %148 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %shl.i, ptr %add.ptr2.i, align 8
  %last113 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 3
  %149 = ptrtoint ptr %last113 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %last113, align 4
  %more114 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 2
  %150 = ptrtoint ptr %more114 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1, ptr %more114, align 8
  %scmd1115 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 8
  %151 = ptrtoint ptr %scmd1115 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 0, ptr %scmd1115, align 8
  %152 = ptrtoint ptr %bfr_len to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv111, ptr %bfr_len, align 8
  br label %if.end118

if.end118:                                        ; preds = %if.then110, %if.end93.if.end118_crit_edge
  %call119 = call fastcc ptr @create_hash_wr(ptr noundef %req, ptr noundef nonnull %params)
  %cmp.i227 = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end118
  %153 = ptrtoint ptr %call119 to i32
  %154 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i229 = icmp eq i32 %155, 0
  br i1 %tobool.not.i229, label %if.then121.err_crit_edge, label %if.end.i233

if.then121.err_crit_edge:                         ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end.i233:                                      ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %lldi, align 4
  %dev136 = getelementptr inbounds %struct.pci_dev, ptr %157, i32 0, i32 44
  %158 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %src, align 4
  %call2.i231 = tail call i32 @sg_nents(ptr noundef %159) #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev136, ptr noundef %159, i32 noundef %call2.i231, i32 noundef 1, i32 noundef 0) #11
  %is_sg_map.i232 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %160 = ptrtoint ptr %is_sg_map.i232 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %is_sg_map.i232, align 4
  br label %err

if.end123:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %reqlen to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %reqlen, align 4
  %162 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %sg_len, align 4
  %processed = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %164 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %processed, align 4
  %add127 = add i32 %165, %163
  store i32 %add127, ptr %processed, align 4
  %166 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ports, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = getelementptr inbounds %struct.anon.49, ptr %call119, i32 0, i32 2
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %169, ptr %170, align 8
  %172 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %txqidx, align 8
  %conv.i = shl i16 %173, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call119, i32 0, i32 10
  %174 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv.i, ptr %queue_mapping1.i.i, align 8
  %call133 = tail call i32 @chcr_send_wr(ptr noundef %call119) #11
  br label %cleanup

err:                                              ; preds = %if.end.i233, %if.then121.err_crit_edge, %if.end.i205.err_crit_edge, %land.rhs.err_crit_edge
  %error.0 = phi i32 [ -28, %land.rhs.err_crit_edge ], [ -12, %if.end.i205.err_crit_edge ], [ %153, %if.then121.err_crit_edge ], [ %153, %if.end.i233 ]
  %call.i.i.i235 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %175 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !135
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end123, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err ], [ -115, %if.end123 ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ahash_digest(ptr noundef %req) #0 align 64 {
entry:
  %params = alloca %struct.hash_wr_param, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %params) #11
  %4 = call ptr @memset(ptr %params, i32 255, i32 48)
  %5 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %8, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !156
  %9 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu8 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu8, align 4
  %ntxq = getelementptr i8, ptr %1, i32 136
  %13 = ptrtoint ptr %ntxq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ntxq, align 4
  %rem = urem i32 %12, %14
  %conv = trunc i32 %rem to i16
  %txqidx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %15 = ptrtoint ptr %txqidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %txqidx, align 8
  %nrxq = getelementptr i8, ptr %1, i32 140
  %16 = ptrtoint ptr %nrxq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nrxq, align 4
  %rem9 = urem i32 %12, %17
  %conv10 = trunc i32 %rem9 to i16
  %rxqidx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 10
  %18 = ptrtoint ptr %rxqidx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv10, ptr %rxqidx, align 2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !157
  %19 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i181 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i181 to ptr
  %preempt_count.i.i182 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i182 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i182, align 4
  %sub.i = add i32 %22, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i182, align 4
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i, align 128
  %call14 = tail call i32 %24(ptr noundef %req) #11
  %__crt_alg.i = getelementptr %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cra_blocksize.i, align 4
  %state.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.i = icmp eq i32 %30, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %inflight.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !137
  %lldi = getelementptr i8, ptr %3, i32 -148
  %ports = getelementptr i8, ptr %3, i32 -136
  %32 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ports, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %txqidx, align 8
  %conv20 = zext i16 %37 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %35, i32 2304
  %38 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  %uld_txq_info.i = getelementptr inbounds %struct.adapter, ptr %39, i32 0, i32 22, i32 6
  %40 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %41, i32 1
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @local_bh_disable() #11
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %lock.i = getelementptr %struct.sge_uld_txq, ptr %45, i32 %conv20, i32 2, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %full.i = getelementptr %struct.sge_uld_txq, ptr %45, i32 %conv20, i32 5
  %46 = ptrtoint ptr %full.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %full.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.not = icmp eq i8 %47, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  tail call fastcc void @local_bh_enable() #11
  br i1 %tobool.not.i.not, label %if.end.if.end28_crit_edge, label %land.rhs

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.rhs:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %and = and i32 %49, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %land.rhs.err_crit_edge, label %land.rhs.if.end28_crit_edge, !prof !136

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.rhs.err_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end28:                                         ; preds = %land.rhs.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %50 = call ptr @memset(ptr %__ctx.i, i32 0, i32 32)
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %51 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i185 = icmp eq i32 %52, 0
  br i1 %tobool.not.i185, label %if.end28.if.end34_crit_edge, label %if.end.i186

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end.i186:                                      ; preds = %if.end28
  %53 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lldi, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %55 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %src.i, align 4
  %call2.i = tail call i32 @sg_nents(ptr noundef %56) #11
  %call3.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev30, ptr noundef %56, i32 noundef %call2.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i186.err_crit_edge, label %if.end6.i

if.end.i186.err_crit_edge:                        ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end6.i:                                        ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #13
  %is_sg_map.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %57 = ptrtoint ptr %is_sg_map.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %is_sg_map.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end6.i, %if.end28.if.end34_crit_edge
  %58 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %59, i32 -128
  %60 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i.i.i, align 128
  %62 = add i32 %61, -20
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 30) #11
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %63, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb5.i
    i32 7, label %sw.bb9.i
    i32 11, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %65 = ptrtoint ptr %mk_size.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %mk_size.i, align 4
  %66 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %params, align 8
  %result_size.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %67 = ptrtoint ptr %result_size.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 20, ptr %result_size.i, align 8
  br label %get_alg_config.exit

sw.bb1.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size2.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %68 = ptrtoint ptr %mk_size2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 3, ptr %mk_size2.i, align 4
  %69 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %params, align 8
  %result_size4.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %70 = ptrtoint ptr %result_size4.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 32, ptr %result_size4.i, align 8
  br label %get_alg_config.exit

sw.bb5.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size6.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %71 = ptrtoint ptr %mk_size6.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %mk_size6.i, align 4
  %72 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3, ptr %params, align 8
  %result_size8.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %73 = ptrtoint ptr %result_size8.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 32, ptr %result_size8.i, align 8
  br label %get_alg_config.exit

sw.bb9.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size10.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %74 = ptrtoint ptr %mk_size10.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4, ptr %mk_size10.i, align 4
  %75 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 7, ptr %params, align 8
  %result_size12.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %76 = ptrtoint ptr %result_size12.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 64, ptr %result_size12.i, align 8
  br label %get_alg_config.exit

sw.bb13.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %mk_size14.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 1
  %77 = ptrtoint ptr %mk_size14.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %mk_size14.i, align 4
  %78 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 8, ptr %params, align 8
  %result_size16.i = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %79 = ptrtoint ptr %result_size16.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 64, ptr %result_size16.i, align 8
  br label %get_alg_config.exit

do.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %get_alg_config.exit

get_alg_config.exit:                              ; preds = %do.end.i, %sw.bb13.i, %sw.bb9.i, %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %result_size = getelementptr inbounds %struct.algo_param, ptr %params, i32 0, i32 2
  %80 = ptrtoint ptr %result_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %result_size, align 8
  %add = add i32 %81, 15
  %div179 = and i32 %add, -16
  %kctx_len = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 4
  %82 = ptrtoint ptr %kctx_len to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div179, ptr %kctx_len, align 8
  %83 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i191 = getelementptr i8, ptr %84, i32 -384
  %85 = ptrtoint ptr %add.ptr.i191 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i191, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777231, i32 %86)
  %cmp.i192.not = icmp eq i32 %86, 16777231
  br i1 %cmp.i192.not, label %if.then42, label %get_alg_config.exit.if.end46_crit_edge

get_alg_config.exit.if.end46_crit_edge:           ; preds = %get_alg_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then42:                                        ; preds = %get_alg_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mul44 = shl i32 %div179, 1
  %87 = ptrtoint ptr %kctx_len to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mul44, ptr %kctx_len, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %get_alg_config.exit.if.end46_crit_edge
  %.sink = phi i32 [ 1, %if.then42 ], [ 0, %get_alg_config.exit.if.end46_crit_edge ]
  %88 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %.sink, ptr %88, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %90 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %src, align 4
  %reqlen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %92 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %reqlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool47 = icmp ne i8 %93, 0
  %lnot.ext51 = zext i1 %tobool47 to i32
  %94 = ptrtoint ptr %kctx_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %kctx_len, align 8
  %sub53 = sub i32 384, %95
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %91, i32 0, i32 4
  %96 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp.i193 = icmp eq i32 %97, 0
  br i1 %cmp.i193, label %if.then.i, label %if.end46.if.end.i195_crit_edge

if.end46.if.end.i195_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i195

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %call.i194 = tail call ptr @sg_next(ptr noundef %91) #11
  br label %if.end.i195

if.end.i195:                                      ; preds = %if.then.i, %if.end46.if.end.i195_crit_edge
  %src.addr.0.i = phi ptr [ %call.i194, %if.then.i ], [ %91, %if.end46.if.end.i195_crit_edge ]
  %tobool.not27.i = icmp eq ptr %src.addr.0.i, null
  br i1 %tobool.not27.i, label %if.end.i195.chcr_hash_ent_in_wr.exit_crit_edge, label %if.end.i195.land.rhs.i_crit_edge

if.end.i195.land.rhs.i_crit_edge:                 ; preds = %if.end.i195
  br label %land.rhs.i

if.end.i195.chcr_hash_ent_in_wr.exit_crit_edge:   ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_hash_ent_in_wr.exit

land.rhs.i:                                       ; preds = %if.end12.i.land.rhs.i_crit_edge, %if.end.i195.land.rhs.i_crit_edge
  %src.addr.132.i = phi ptr [ %src.addr.2.i, %if.end12.i.land.rhs.i_crit_edge ], [ %src.addr.0.i, %if.end.i195.land.rhs.i_crit_edge ]
  %soffset.031.i = phi i32 [ %soffset.1.i, %if.end12.i.land.rhs.i_crit_edge ], [ 0, %if.end.i195.land.rhs.i_crit_edge ]
  %srcsg.030.i = phi i32 [ %add.i196, %if.end12.i.land.rhs.i_crit_edge ], [ %lnot.ext51, %if.end.i195.land.rhs.i_crit_edge ]
  %srclen.029.i = phi i32 [ %add5.i, %if.end12.i.land.rhs.i_crit_edge ], [ 0, %if.end.i195.land.rhs.i_crit_edge ]
  %add.i196 = add i32 %srcsg.030.i, 1
  %arrayidx.i197 = getelementptr [33 x i32], ptr @sgl_ent_len, i32 0, i32 %add.i196
  %98 = ptrtoint ptr %arrayidx.i197 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i197, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %sub53)
  %cmp1.i = icmp ult i32 %99, %sub53
  br i1 %cmp1.i, label %while.body.i, label %land.rhs.i.chcr_hash_ent_in_wr.exit_crit_edge

land.rhs.i.chcr_hash_ent_in_wr.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_hash_ent_in_wr.exit

while.body.i:                                     ; preds = %land.rhs.i
  %dma_length2.i = getelementptr inbounds %struct.scatterlist, ptr %src.addr.132.i, i32 0, i32 4
  %100 = ptrtoint ptr %dma_length2.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dma_length2.i, align 4
  %sub3.i = sub i32 %101, %soffset.031.i
  %102 = tail call i32 @llvm.umin.i32(i32 %sub3.i, i32 65532) #11
  %add5.i = add i32 %102, %srclen.029.i
  %add6.i = add i32 %102, %soffset.031.i
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %add6.i)
  %cmp9.i = icmp eq i32 %101, %add6.i
  br i1 %cmp9.i, label %if.then10.i, label %while.body.i.if.end12.i_crit_edge

while.body.i.if.end12.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then10.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = tail call ptr @sg_next(ptr noundef nonnull %src.addr.132.i) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %while.body.i.if.end12.i_crit_edge
  %soffset.1.i = phi i32 [ 0, %if.then10.i ], [ %add6.i, %while.body.i.if.end12.i_crit_edge ]
  %src.addr.2.i = phi ptr [ %call11.i, %if.then10.i ], [ %src.addr.132.i, %while.body.i.if.end12.i_crit_edge ]
  %tobool.not.i198 = icmp eq ptr %src.addr.2.i, null
  br i1 %tobool.not.i198, label %if.end12.i.chcr_hash_ent_in_wr.exit_crit_edge, label %if.end12.i.land.rhs.i_crit_edge

if.end12.i.land.rhs.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

if.end12.i.chcr_hash_ent_in_wr.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_hash_ent_in_wr.exit

chcr_hash_ent_in_wr.exit:                         ; preds = %if.end12.i.chcr_hash_ent_in_wr.exit_crit_edge, %land.rhs.i.chcr_hash_ent_in_wr.exit_crit_edge, %if.end.i195.chcr_hash_ent_in_wr.exit_crit_edge
  %srclen.0.lcssa.i = phi i32 [ 0, %if.end.i195.chcr_hash_ent_in_wr.exit_crit_edge ], [ %srclen.029.i, %land.rhs.i.chcr_hash_ent_in_wr.exit_crit_edge ], [ %add5.i, %if.end12.i.chcr_hash_ent_in_wr.exit_crit_edge ]
  %sg_len = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 5
  %103 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %srclen.0.lcssa.i, ptr %sg_len, align 4
  %104 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %srclen.0.lcssa.i, i32 %105)
  %cmp = icmp ult i32 %srclen.0.lcssa.i, %105
  br i1 %cmp, label %if.then57, label %if.else74

if.then57:                                        ; preds = %chcr_hash_ent_in_wr.exit
  %106 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i201 = getelementptr i8, ptr %107, i32 -384
  %108 = ptrtoint ptr %add.ptr.i201 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr.i201, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777231, i32 %109)
  %cmp.i202.not = icmp eq i32 %109, 16777231
  br i1 %cmp.i202.not, label %if.then61, label %if.then57.if.end65_crit_edge

if.then57.if.end65_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %kctx_len to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %kctx_len, align 8
  %div63180 = lshr i32 %111, 1
  store i32 %div63180, ptr %kctx_len, align 8
  %112 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %88, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.then57.if.end65_crit_edge
  %last = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 3
  %113 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %last, align 4
  %more = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 2
  %114 = ptrtoint ptr %more to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %more, align 8
  %scmd1 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 8
  %115 = ptrtoint ptr %scmd1 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 0, ptr %scmd1, align 8
  %conv68 = and i32 %28, 255
  %rem69 = urem i32 %srclen.0.lcssa.i, %conv68
  %sub70 = sub i32 %srclen.0.lcssa.i, %rem69
  %116 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub70, ptr %sg_len, align 4
  %117 = ptrtoint ptr %result_size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %result_size, align 8
  %hash_size = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 7
  %119 = ptrtoint ptr %hash_size to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %hash_size, align 4
  br label %if.end85

if.else74:                                        ; preds = %chcr_hash_ent_in_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %105, ptr %sg_len, align 4
  %121 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i.i205 = getelementptr i8, ptr %122, i32 -128
  %123 = ptrtoint ptr %add.ptr.i.i.i205 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %add.ptr.i.i.i205, align 128
  %hash_size78 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 7
  %125 = ptrtoint ptr %hash_size78 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %hash_size78, align 4
  %last79 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 3
  %126 = ptrtoint ptr %last79 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %last79, align 4
  %more80 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 2
  %127 = ptrtoint ptr %more80 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %more80, align 8
  %conv82 = zext i32 %105 to i64
  %data_len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5
  %128 = ptrtoint ptr %data_len to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %data_len, align 8
  %add83 = add i64 %129, %conv82
  %scmd184 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 8
  %130 = ptrtoint ptr %scmd184 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %add83, ptr %scmd184, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.else74, %if.end65
  %bfr_len = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 6
  %131 = ptrtoint ptr %bfr_len to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %bfr_len, align 8
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %132 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %result, align 8
  %133 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %src, align 4
  %135 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %134, ptr %__ctx.i, align 8
  %136 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sg_len, align 4
  %conv91 = zext i32 %137 to i64
  %data_len92 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5
  %138 = ptrtoint ptr %data_len92 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %data_len92, align 8
  %add93 = add i64 %139, %conv91
  store i64 %add93, ptr %data_len92, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp95 = icmp eq i32 %105, 0
  br i1 %cmp95, label %if.then97, label %if.end85.if.end103_crit_edge

if.end85.if.end103_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then97:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %reqbfr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %140 = ptrtoint ptr %reqbfr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reqbfr, align 8
  %conv98 = and i32 %28, 255
  %142 = call ptr @memset(ptr %141, i32 0, i32 %conv98)
  %143 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -128, ptr %141, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv98)
  %cmp.i206 = icmp eq i32 %conv98, 64
  %shl.i = shl i64 %add93, 3
  %..i207 = select i1 %cmp.i206, i32 56, i32 120
  %add.ptr2.i = getelementptr i8, ptr %141, i32 %..i207
  %144 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %shl.i, ptr %add.ptr2.i, align 8
  %more100 = getelementptr inbounds %struct.hash_wr_param, ptr %params, i32 0, i32 2
  %145 = ptrtoint ptr %more100 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %more100, align 8
  %146 = ptrtoint ptr %bfr_len to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %conv98, ptr %bfr_len, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then97, %if.end85.if.end103_crit_edge
  %call104 = call fastcc ptr @create_hash_wr(ptr noundef %req, ptr noundef nonnull %params)
  %cmp.i208 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end103
  %147 = ptrtoint ptr %call104 to i32
  %148 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.not.i210 = icmp eq i32 %149, 0
  br i1 %tobool.not.i210, label %if.then106.err_crit_edge, label %if.end.i214

if.then106.err_crit_edge:                         ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end.i214:                                      ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %lldi, align 4
  %dev120 = getelementptr inbounds %struct.pci_dev, ptr %151, i32 0, i32 44
  %152 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %src, align 4
  %call2.i212 = tail call i32 @sg_nents(ptr noundef %153) #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev120, ptr noundef %153, i32 noundef %call2.i212, i32 noundef 1, i32 noundef 0) #11
  %is_sg_map.i213 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %154 = ptrtoint ptr %is_sg_map.i213 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %is_sg_map.i213, align 4
  br label %err

if.end108:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  %155 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %sg_len, align 4
  %processed = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %157 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %processed, align 4
  %add111 = add i32 %158, %156
  store i32 %add111, ptr %processed, align 4
  %159 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ports, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %163 = getelementptr inbounds %struct.anon.49, ptr %call104, i32 0, i32 2
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %162, ptr %163, align 8
  %165 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %txqidx, align 8
  %conv.i = shl i16 %166, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call104, i32 0, i32 10
  %167 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv.i, ptr %queue_mapping1.i.i, align 8
  %call117 = tail call i32 @chcr_send_wr(ptr noundef %call104) #11
  br label %cleanup

err:                                              ; preds = %if.end.i214, %if.then106.err_crit_edge, %if.end.i186.err_crit_edge, %land.rhs.err_crit_edge
  %error.0 = phi i32 [ -28, %land.rhs.err_crit_edge ], [ -12, %if.end.i186.err_crit_edge ], [ %147, %if.then106.err_crit_edge ], [ %147, %if.end.i214 ]
  %call.i.i.i216 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %168 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !135
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end108, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err ], [ -115, %if.end108 ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %params) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @chcr_ahash_export(ptr nocapture noundef readonly %areq, ptr nocapture noundef writeonly %out) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reqlen = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 12
  %0 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reqlen, align 4
  %reqlen1 = getelementptr inbounds %struct.chcr_ahash_req_ctx, ptr %out, i32 0, i32 6
  %2 = ptrtoint ptr %reqlen1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %reqlen1, align 4
  %data_len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5
  %3 = ptrtoint ptr %data_len to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %data_len, align 8
  %data_len2 = getelementptr inbounds %struct.chcr_ahash_req_ctx, ptr %out, i32 0, i32 3
  %5 = ptrtoint ptr %data_len2 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %data_len2, align 8
  %bfr1 = getelementptr inbounds %struct.chcr_ahash_req_ctx, ptr %out, i32 0, i32 8
  %reqbfr = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 3
  %6 = ptrtoint ptr %reqbfr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reqbfr, align 8
  %8 = load i8, ptr %reqlen, align 4
  %conv = zext i8 %8 to i32
  %9 = call ptr @memcpy(ptr %bfr1, ptr %7, i32 %conv)
  %partial_hash = getelementptr inbounds %struct.chcr_ahash_req_ctx, ptr %out, i32 0, i32 7
  %partial_hash5 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 13
  %10 = call ptr @memcpy(ptr %partial_hash, ptr %partial_hash5, i32 64)
  %11 = call ptr @memset(ptr %out, i32 0, i32 32)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @chcr_ahash_import(ptr noundef %areq, ptr nocapture noundef readonly %in) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %reqlen = getelementptr inbounds %struct.chcr_ahash_req_ctx, ptr %in, i32 0, i32 6
  %0 = ptrtoint ptr %reqlen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reqlen, align 4
  %reqlen1 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 12
  %2 = ptrtoint ptr %reqlen1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %reqlen1, align 4
  %data_len = getelementptr inbounds %struct.chcr_ahash_req_ctx, ptr %in, i32 0, i32 3
  %3 = ptrtoint ptr %data_len to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %data_len, align 8
  %data_len2 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5
  %5 = ptrtoint ptr %data_len2 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %data_len2, align 8
  %bfr1 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 77
  %reqbfr = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 3
  %6 = ptrtoint ptr %reqbfr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bfr1, ptr %reqbfr, align 8
  %bfr2 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 5, i32 77
  %skbfr = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 4
  %7 = ptrtoint ptr %skbfr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bfr2, ptr %skbfr, align 4
  %bfr16 = getelementptr inbounds %struct.chcr_ahash_req_ctx, ptr %in, i32 0, i32 8
  %8 = call ptr @memcpy(ptr %bfr1, ptr %bfr16, i32 128)
  %partial_hash = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 13
  %partial_hash9 = getelementptr inbounds %struct.chcr_ahash_req_ctx, ptr %in, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %partial_hash, ptr %partial_hash9, i32 64)
  %10 = call ptr @memset(ptr %__ctx.i, i32 0, i32 32)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_hmac_cra_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %hmacctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 56
  %__crt_alg.i.i = getelementptr i8, ptr %tfm, i32 12
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i.i, align 128
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %4 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 376, ptr %reqsize1.i, align 32
  %5 = add i32 %3, -20
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %6)
  %7 = icmp ult i32 %6, 12
  br i1 %7, label %switch.hole_check, label %entry.chcr_alloc_shash.exit.thread_crit_edge

entry.chcr_alloc_shash.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_alloc_shash.exit.thread

chcr_alloc_shash.exit.thread:                     ; preds = %switch.hole_check.chcr_alloc_shash.exit.thread_crit_edge, %entry.chcr_alloc_shash.exit.thread_crit_edge
  %8 = ptrtoint ptr %hmacctx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -22 to ptr), ptr %hmacctx.i, align 4
  br label %if.then

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %6 to i16
  %switch.shifted = lshr i16 2189, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.chcr_alloc_shash.exit.thread_crit_edge, label %switch.lookup

switch.hole_check.chcr_alloc_shash.exit.thread_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_alloc_shash.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x ptr], ptr @switch.table.chcr_hmac_cra_init, i32 0, i32 %6
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call9.i = tail call ptr @crypto_alloc_shash(ptr noundef nonnull %switch.load, i32 noundef 0, i32 noundef 0) #11
  %11 = ptrtoint ptr %hmacctx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i, ptr %hmacctx.i, align 4
  %cmp.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %switch.lookup.if.then_crit_edge, label %if.end

switch.lookup.if.then_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %switch.lookup.if.then_crit_edge, %chcr_alloc_shash.exit.thread
  %base_hash.0.i23 = phi ptr [ inttoptr (i32 -22 to ptr), %chcr_alloc_shash.exit.thread ], [ %call9.i, %switch.lookup.if.then_crit_edge ]
  %12 = ptrtoint ptr %base_hash.0.i23 to i32
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %13 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_ctx.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %call.i = tail call ptr @assign_chcr_device() #11
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev4.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev4.i, ptr %__crt_ctx.i, align 4
  %ntxq6.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 9
  %16 = ptrtoint ptr %ntxq6.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ntxq6.i, align 2
  %conv.i = zext i16 %17 to i32
  %nrxq.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 8
  %18 = ptrtoint ptr %nrxq.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nrxq.i, align 4
  %nchan.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 11
  %20 = ptrtoint ptr %nchan.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %nchan.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %div.rhs.trunc.i = zext i8 %bf.lshr.i to i16
  %div39.i = udiv i16 %19, %div.rhs.trunc.i
  %div1640.i = udiv i16 %17, %div.rhs.trunc.i
  %ntxq17.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %21 = ptrtoint ptr %ntxq17.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %ntxq17.i, align 4
  %22 = load i16, ptr %nrxq.i, align 4
  %conv20.i = zext i16 %22 to i32
  %nrxq21.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %23 = ptrtoint ptr %nrxq21.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv20.i, ptr %nrxq21.i, align 4
  %conv22.i = trunc i16 %div39.i to i8
  %rxq_perchan23.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %24 = ptrtoint ptr %rxq_perchan23.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv22.i, ptr %rxq_perchan23.i, align 4
  %conv24.i = trunc i16 %div1640.i to i8
  %txq_perchan25.i = getelementptr inbounds %struct.chcr_context, ptr %__crt_ctx.i, i32 0, i32 2
  %25 = ptrtoint ptr %txq_perchan25.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv24.i, ptr %txq_perchan25.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then2.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i ], [ -6, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chcr_hmac_cra_exit(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hmacctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 56
  %0 = ptrtoint ptr %hmacctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hmacctx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i.i) #11
  %2 = ptrtoint ptr %hmacctx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hmacctx.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @chcr_hmac_init(ptr noundef %areq) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 128
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i, align 4
  %data_len.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5
  %reqlen.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 12
  %8 = ptrtoint ptr %reqlen.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %reqlen.i, align 4
  %bfr1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 77
  %reqbfr.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 3
  %9 = ptrtoint ptr %reqbfr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bfr1.i, ptr %reqbfr.i, align 8
  %bfr2.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 5, i32 77
  %skbfr.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 4
  %10 = ptrtoint ptr %skbfr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bfr2.i, ptr %skbfr.i, align 4
  %partial_hash.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 13
  %11 = add i32 %5, -20
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 30) #11
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %12, label %entry.chcr_sha_init.exit_crit_edge [
    i32 0, label %for.body.preheader.i.i
    i32 2, label %for.body9.preheader.i.i
    i32 3, label %for.body22.preheader.i.i
    i32 7, label %for.body35.preheader.i.i
    i32 11, label %for.body48.preheader.i.i
  ]

entry.chcr_sha_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_sha_init.exit

for.body48.preheader.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %14 = call ptr @memcpy(ptr %partial_hash.i, ptr @chcr_sha512_init, i32 64)
  br label %chcr_sha_init.exit

for.body35.preheader.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = call ptr @memcpy(ptr %partial_hash.i, ptr @chcr_sha384_init, i32 64)
  br label %chcr_sha_init.exit

for.body22.preheader.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = call ptr @memcpy(ptr %partial_hash.i, ptr @chcr_sha256_init, i32 32)
  br label %chcr_sha_init.exit

for.body9.preheader.i.i:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %17 = call ptr @memcpy(ptr %partial_hash.i, ptr @chcr_sha224_init, i32 32)
  br label %chcr_sha_init.exit

for.body.preheader.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %18 = call ptr @memcpy(ptr %partial_hash.i, ptr @chcr_sha1_init, i32 20)
  br label %chcr_sha_init.exit

chcr_sha_init.exit:                               ; preds = %for.body.preheader.i.i, %for.body9.preheader.i.i, %for.body22.preheader.i.i, %for.body35.preheader.i.i, %for.body48.preheader.i.i, %entry.chcr_sha_init.exit_crit_edge
  %conv = zext i32 %7 to i64
  %19 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %data_len.i, align 8
  %20 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 -384
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777231, i32 %23)
  %cmp.i.not = icmp eq i32 %23, 16777231
  br i1 %cmp.i.not, label %if.then, label %chcr_sha_init.exit.if.end26_crit_edge

chcr_sha_init.exit.if.end26_crit_edge:            ; preds = %chcr_sha_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then:                                          ; preds = %chcr_sha_init.exit
  %24 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %5, label %if.else20 [
    i32 28, label %if.then11
    i32 48, label %if.then15
  ]

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %ipad = getelementptr i8, ptr %1, i32 204
  %25 = call ptr @memcpy(ptr %partial_hash.i, ptr %ipad, i32 32)
  br label %if.end26

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %ipad18 = getelementptr i8, ptr %1, i32 204
  %26 = call ptr @memcpy(ptr %partial_hash.i, ptr %ipad18, i32 64)
  br label %if.end26

if.else20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %ipad23 = getelementptr i8, ptr %1, i32 204
  %27 = call ptr @memcpy(ptr %partial_hash.i, ptr %ipad23, i32 %5)
  br label %if.end26

if.end26:                                         ; preds = %if.else20, %if.then15, %if.then11, %chcr_sha_init.exit.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ahash_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %__shash_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hmacctx.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 36
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i.i, align 128
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i, align 4
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #11
  %6 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  %7 = ptrtoint ptr %hmacctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hmacctx.i, align 4
  %9 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %__shash_desc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %keylen)
  %cmp = icmp ult i32 %5, %keylen
  %ipad = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 40
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call7 = call i32 @crypto_shash_digest(ptr noundef nonnull %__shash_desc, ptr noundef %key, i32 noundef %keylen, ptr noundef %ipad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then.if.end11_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = call ptr @memcpy(ptr %ipad, ptr %key, i32 %keylen)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then.if.end11_crit_edge
  %keylen.addr.0 = phi i32 [ %keylen, %if.else ], [ %3, %if.then.if.end11_crit_edge ]
  %ipad12 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 40
  %add.ptr = getelementptr i8, ptr %ipad12, i32 %keylen.addr.0
  %sub = sub i32 %5, %keylen.addr.0
  %11 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %opad = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 60
  %12 = call ptr @memcpy(ptr %opad, ptr %ipad12, i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1789.not = icmp ult i32 %5, 4
  br i1 %cmp1789.not, label %if.end11.if.end29_crit_edge, label %for.body.preheader

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

for.body.preheader:                               ; preds = %if.end11
  %div88 = lshr i32 %5, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.090 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add.ptr19 = getelementptr i32, ptr %ipad12, i32 %i.090
  %13 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr19, align 4
  %xor = xor i32 %14, 909522486
  store i32 %xor, ptr %add.ptr19, align 4
  %add.ptr21 = getelementptr i32, ptr %opad, i32 %i.090
  %15 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr21, align 4
  %xor22 = xor i32 %16, 1549556828
  store i32 %xor22, ptr %add.ptr21, align 4
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, %div88
  br i1 %exitcond.not, label %for.body.if.end29_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end29:                                         ; preds = %for.body.if.end29_crit_edge, %if.end11.if.end29_crit_edge
  %call34 = call fastcc i32 @chcr_compute_partial_hash(ptr noundef nonnull %__shash_desc, ptr noundef %ipad12, ptr noundef %ipad12, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = call fastcc i32 @chcr_compute_partial_hash(ptr noundef nonnull %__shash_desc, ptr noundef %opad, ptr noundef %opad, i32 noundef %3)
  br label %out

out:                                              ; preds = %if.end37, %if.end29.out_crit_edge, %if.then.out_crit_edge
  %err.0 = phi i32 [ %call7, %if.then.out_crit_edge ], [ %call34, %if.end29.out_crit_edge ], [ %call44, %if.end37 ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #11
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @chcr_sha_init(ptr noundef %areq) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 128
  %data_len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5
  %6 = ptrtoint ptr %data_len to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %data_len, align 8
  %reqlen = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 12
  %7 = ptrtoint ptr %reqlen to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %reqlen, align 4
  %bfr1 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 77
  %reqbfr = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 3
  %8 = ptrtoint ptr %reqbfr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bfr1, ptr %reqbfr, align 8
  %bfr2 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 5, i32 77
  %skbfr = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 4
  %9 = ptrtoint ptr %skbfr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bfr2, ptr %skbfr, align 4
  %partial_hash = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 13
  %10 = add i32 %5, -20
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 30) #11
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %11, label %entry.copy_hash_init_values.exit_crit_edge [
    i32 0, label %for.body.preheader.i
    i32 2, label %for.body9.preheader.i
    i32 3, label %for.body22.preheader.i
    i32 7, label %for.body35.preheader.i
    i32 11, label %for.body48.preheader.i
  ]

entry.copy_hash_init_values.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_hash_init_values.exit

for.body48.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = call ptr @memcpy(ptr %partial_hash, ptr @chcr_sha512_init, i32 64)
  br label %copy_hash_init_values.exit

for.body35.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %14 = call ptr @memcpy(ptr %partial_hash, ptr @chcr_sha384_init, i32 64)
  br label %copy_hash_init_values.exit

for.body22.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = call ptr @memcpy(ptr %partial_hash, ptr @chcr_sha256_init, i32 32)
  br label %copy_hash_init_values.exit

for.body9.preheader.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = call ptr @memcpy(ptr %partial_hash, ptr @chcr_sha224_init, i32 32)
  br label %copy_hash_init_values.exit

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %17 = call ptr @memcpy(ptr %partial_hash, ptr @chcr_sha1_init, i32 20)
  br label %copy_hash_init_values.exit

copy_hash_init_values.exit:                       ; preds = %for.body.preheader.i, %for.body9.preheader.i, %for.body22.preheader.i, %for.body35.preheader.i, %for.body48.preheader.i, %entry.copy_hash_init_values.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_sha_cra_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 376, ptr %reqsize1.i, align 32
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %1 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_ctx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.chcr_device_init.exit_crit_edge

entry.chcr_device_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_device_init.exit

if.then.i:                                        ; preds = %entry
  %call.i = tail call ptr @assign_chcr_device() #11
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  br label %chcr_device_init.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev4.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev4.i, ptr %__crt_ctx.i, align 4
  %ntxq6.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 9
  %4 = ptrtoint ptr %ntxq6.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ntxq6.i, align 2
  %conv.i = zext i16 %5 to i32
  %nrxq.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %nrxq.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nrxq.i, align 4
  %nchan.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 11
  %8 = ptrtoint ptr %nchan.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %nchan.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %div.rhs.trunc.i = zext i8 %bf.lshr.i to i16
  %div39.i = udiv i16 %7, %div.rhs.trunc.i
  %div1640.i = udiv i16 %5, %div.rhs.trunc.i
  %ntxq17.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %9 = ptrtoint ptr %ntxq17.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %ntxq17.i, align 4
  %10 = load i16, ptr %nrxq.i, align 4
  %conv20.i = zext i16 %10 to i32
  %nrxq21.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %11 = ptrtoint ptr %nrxq21.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv20.i, ptr %nrxq21.i, align 4
  %conv22.i = trunc i16 %div39.i to i8
  %rxq_perchan23.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %12 = ptrtoint ptr %rxq_perchan23.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv22.i, ptr %rxq_perchan23.i, align 4
  %conv24.i = trunc i16 %div1640.i to i8
  %txq_perchan25.i = getelementptr inbounds %struct.chcr_context, ptr %__crt_ctx.i, i32 0, i32 2
  %13 = ptrtoint ptr %txq_perchan25.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv24.i, ptr %txq_perchan25.i, align 1
  br label %chcr_device_init.exit

chcr_device_init.exit:                            ; preds = %if.end.i, %if.then2.i, %entry.chcr_device_init.exit_crit_edge
  %err.0.i = phi i32 [ 0, %entry.chcr_device_init.exit_crit_edge ], [ 0, %if.end.i ], [ -6, %if.then2.i ]
  ret i32 %err.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_aes_cbc_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ablkctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 68
  %0 = ptrtoint ptr %ablkctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ablkctx.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i.i, align 128
  %and.i.i.i = and i32 %3, -1048321
  store i32 %and.i.i.i, ptr %base.i.i.i, align 128
  %4 = load ptr, ptr %ablkctx.i.i, align 4
  %base.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i, align 128
  %and.i = and i32 %6, 1048320
  %base.i.i8.i = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i8.i, align 128
  %or.i.i.i = or i32 %8, %and.i
  store i32 %or.i.i.i, ptr %base.i.i8.i, align 128
  %9 = load ptr, ptr %ablkctx.i.i, align 4
  %call4.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %9, ptr noundef %key, i32 noundef %keylen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %badkey_err

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %keylen)
  %switch.selectcmp.i = icmp eq i32 %keylen, 24
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %keylen)
  %switch.selectcmp11.i = icmp eq i32 %keylen, 32
  %switch.select12.i = select i1 %switch.selectcmp11.i, i32 2, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %switch.select12.i)
  %cmp = icmp eq i32 %switch.select12.i, 1
  %key4 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 81
  %10 = call ptr @memcpy(ptr %key4, ptr %key, i32 %keylen)
  %enckey_len = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 76
  %11 = ptrtoint ptr %enckey_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %keylen, ptr %enckey_len, align 4
  %rrkey = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 2, i32 4, i32 9
  %shl = shl i32 %keylen, 3
  tail call fastcc void @get_aes_decrypt_key(ptr noundef %rrkey, ptr noundef %key4, i32 noundef %shl)
  %add = add i32 %keylen, 16
  %conv8 = select i1 %cmp, i32 8, i32 0
  %add9 = add i32 %add, %conv8
  %shl10 = shl nuw nsw i32 %switch.select12.i, 6
  %12 = shl i32 %add9, 20
  %shl15 = and i32 %12, -16777216
  %or14 = or i32 %shl15, %shl10
  %or16 = or i32 %or14, 1085
  %key_ctx_hdr = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 72
  %13 = ptrtoint ptr %key_ctx_hdr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or16, ptr %key_ctx_hdr, align 4
  %ciph_mode = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 80
  %14 = ptrtoint ptr %ciph_mode to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %ciph_mode, align 4
  br label %cleanup

badkey_err:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %enckey_len17 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 76
  %15 = ptrtoint ptr %enckey_len17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %enckey_len17, align 4
  br label %cleanup

cleanup:                                          ; preds = %badkey_err, %if.end
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_aes_encrypt(ptr noundef %req) #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #11
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %skb, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %8, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !158
  %9 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu8 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu8, align 4
  %ntxq = getelementptr i8, ptr %1, i32 136
  %13 = ptrtoint ptr %ntxq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ntxq, align 4
  %rem = urem i32 %12, %14
  %conv = trunc i32 %rem to i16
  %txqidx = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 30
  %15 = ptrtoint ptr %txqidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %txqidx, align 2
  %nrxq = getelementptr i8, ptr %1, i32 140
  %16 = ptrtoint ptr %nrxq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nrxq, align 4
  %rem9 = urem i32 %12, %17
  %conv10 = trunc i32 %rem9 to i16
  %rxqidx = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 32
  %18 = ptrtoint ptr %rxqidx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv10, ptr %rxqidx, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !159
  %19 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i75 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i75 to ptr
  %preempt_count.i.i76 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i76 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i76, align 4
  %sub.i = add i32 %22, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i76, align 4
  %state.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i = icmp eq i32 %24, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %inflight.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !137
  %ports = getelementptr i8, ptr %3, i32 -136
  %26 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ports, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %txqidx, align 2
  %conv16 = zext i16 %31 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i32 2304
  %32 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  %uld_txq_info.i = getelementptr inbounds %struct.adapter, ptr %33, i32 0, i32 22, i32 6
  %34 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @local_bh_disable() #11
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %lock.i = getelementptr %struct.sge_uld_txq, ptr %39, i32 %conv16, i32 2, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %full.i = getelementptr %struct.sge_uld_txq, ptr %39, i32 %conv16, i32 5
  %40 = ptrtoint ptr %full.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %full.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.not = icmp eq i8 %41, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  tail call fastcc void @local_bh_enable() #11
  br i1 %tobool.not.i.not, label %if.end.if.end24_crit_edge, label %land.rhs

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.rhs:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %and = and i32 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.then23, label %land.rhs.if.end24_crit_edge, !prof !136

land.rhs.if.end24_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !135
  br label %cleanup

if.end24:                                         ; preds = %land.rhs.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %rxq_ids = getelementptr i8, ptr %3, i32 -124
  %45 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rxq_ids, align 4
  %47 = ptrtoint ptr %rxqidx to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rxqidx, align 8
  %idxprom = zext i16 %48 to i32
  %arrayidx27 = getelementptr i16, ptr %46, i32 %idxprom
  %49 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx27, align 2
  %call28 = call fastcc i32 @process_cipher(ptr noundef %req, i16 noundef zeroext %50, ptr noundef nonnull %skb, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end24
  %51 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %skb, align 4
  %tobool30.not = icmp eq ptr %52, null
  br i1 %tobool30.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end32

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false
  %53 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ports, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = getelementptr inbounds %struct.anon.49, ptr %52, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %57, align 8
  %59 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %txqidx, align 2
  %conv.i = shl i16 %60, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 10
  %61 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i, ptr %queue_mapping1.i.i, align 8
  %call38 = tail call i32 @chcr_send_wr(ptr noundef nonnull %52) #11
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %62 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %63, i32 -256
  %64 = ptrtoint ptr %add.ptr.i81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i81, align 128
  %and.i82 = and i32 %65, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 184549376, i32 %and.i82)
  %cmp = icmp eq i32 %and.i82, 184549376
  br i1 %cmp, label %land.lhs.true, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end32
  %flags42 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %66 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %67)
  %cmp43 = icmp eq i32 %67, 512
  br i1 %cmp43, label %if.then45, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %partial_req = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4
  %68 = ptrtoint ptr %partial_req to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %partial_req, align 16
  %cbc_aes_aio_done = getelementptr i8, ptr %1, i32 144
  tail call void @wait_for_completion(ptr noundef %cbc_aes_aio_done) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %land.lhs.true.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %if.then23 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call28, %if.end24.cleanup_crit_edge ], [ -115, %if.then45 ], [ -115, %land.lhs.true.cleanup_crit_edge ], [ -115, %if.end32.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_aes_decrypt(ptr noundef %req) #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #11
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %skb, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %8, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !160
  %9 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu8 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu8, align 4
  %ntxq = getelementptr i8, ptr %1, i32 136
  %13 = ptrtoint ptr %ntxq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ntxq, align 4
  %rem = urem i32 %12, %14
  %conv = trunc i32 %rem to i16
  %txqidx = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 30
  %15 = ptrtoint ptr %txqidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %txqidx, align 2
  %nrxq = getelementptr i8, ptr %1, i32 140
  %16 = ptrtoint ptr %nrxq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nrxq, align 4
  %rem9 = urem i32 %12, %17
  %conv10 = trunc i32 %rem9 to i16
  %rxqidx = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 32
  %18 = ptrtoint ptr %rxqidx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv10, ptr %rxqidx, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !161
  %19 = tail call i32 @llvm.read_register.i32(metadata !125) #11
  %and.i.i.i61 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i61 to ptr
  %preempt_count.i.i62 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i62, align 4
  %sub.i = add i32 %22, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i62, align 4
  %state.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i = icmp eq i32 %24, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %inflight.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !137
  %ports = getelementptr i8, ptr %3, i32 -136
  %26 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ports, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %txqidx, align 2
  %conv16 = zext i16 %31 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i32 2304
  %32 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  %uld_txq_info.i = getelementptr inbounds %struct.adapter, ptr %33, i32 0, i32 22, i32 6
  %34 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @local_bh_disable() #11
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %lock.i = getelementptr %struct.sge_uld_txq, ptr %39, i32 %conv16, i32 2, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %full.i = getelementptr %struct.sge_uld_txq, ptr %39, i32 %conv16, i32 5
  %40 = ptrtoint ptr %full.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %full.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.not = icmp eq i8 %41, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  tail call fastcc void @local_bh_enable() #11
  br i1 %tobool.not.i.not, label %if.end.if.end24_crit_edge, label %land.rhs

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.rhs:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %and = and i32 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.if.end24_crit_edge, !prof !136

land.rhs.if.end24_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %land.rhs.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %rxq_ids = getelementptr i8, ptr %3, i32 -124
  %44 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rxq_ids, align 4
  %46 = ptrtoint ptr %rxqidx to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rxqidx, align 8
  %idxprom = zext i16 %47 to i32
  %arrayidx27 = getelementptr i16, ptr %45, i32 %idxprom
  %48 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx27, align 2
  %call28 = call fastcc i32 @process_cipher(ptr noundef %req, i16 noundef zeroext %49, ptr noundef nonnull %skb, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end24
  %50 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skb, align 4
  %tobool30.not = icmp eq ptr %51, null
  br i1 %tobool30.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end32

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ports, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = getelementptr inbounds %struct.anon.49, ptr %51, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %56, align 8
  %58 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %txqidx, align 2
  %conv.i = shl i16 %59, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 10
  %60 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i, ptr %queue_mapping1.i.i, align 8
  %call38 = tail call i32 @chcr_send_wr(ptr noundef nonnull %51) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %lor.lhs.false.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end32 ], [ -28, %land.rhs.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call28, %if.end24.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_init_tfm(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %ablkctx.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 68
  %cra_name = getelementptr i8, ptr %1, i32 40
  %call3 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name, i32 noundef 0, i32 noundef 256) #11
  %2 = ptrtoint ptr %ablkctx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %ablkctx.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %cra_name) #14
  %3 = ptrtoint ptr %ablkctx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ablkctx.i, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %cbc_aes_aio_done = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %6 = ptrtoint ptr %cbc_aes_aio_done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cbc_aes_aio_done, align 4
  %wait.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #11
  %7 = ptrtoint ptr %ablkctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ablkctx.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 128
  %add = add i32 %10, 256
  %11 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %tfm, align 128
  %12 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %call.i = tail call ptr @assign_chcr_device() #11
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev4.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev4.i, ptr %__crt_ctx.i.i, align 4
  %ntxq6.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 9
  %15 = ptrtoint ptr %ntxq6.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ntxq6.i, align 2
  %conv.i = zext i16 %16 to i32
  %nrxq.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %nrxq.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nrxq.i, align 4
  %nchan.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 11
  %19 = ptrtoint ptr %nchan.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %nchan.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %div.rhs.trunc.i = zext i8 %bf.lshr.i to i16
  %div39.i = udiv i16 %18, %div.rhs.trunc.i
  %div1640.i = udiv i16 %16, %div.rhs.trunc.i
  %ntxq17.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %20 = ptrtoint ptr %ntxq17.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %ntxq17.i, align 4
  %21 = load i16, ptr %nrxq.i, align 4
  %conv20.i = zext i16 %21 to i32
  %nrxq21.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %22 = ptrtoint ptr %nrxq21.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv20.i, ptr %nrxq21.i, align 4
  %conv22.i = trunc i16 %div39.i to i8
  %rxq_perchan23.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %23 = ptrtoint ptr %rxq_perchan23.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv22.i, ptr %rxq_perchan23.i, align 4
  %conv24.i = trunc i16 %div1640.i to i8
  %txq_perchan25.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 1
  %24 = ptrtoint ptr %txq_perchan25.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv24.i, ptr %txq_perchan25.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then2.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i ], [ -6, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chcr_exit_tfm(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ablkctx.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 68
  %0 = ptrtoint ptr %ablkctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ablkctx.i, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_aes_xts_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %key_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ablkctx.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 68
  %0 = ptrtoint ptr %ablkctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ablkctx.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i.i, align 128
  %and.i.i.i = and i32 %3, -1048321
  store i32 %and.i.i.i, ptr %base.i.i.i, align 128
  %4 = load ptr, ptr %ablkctx.i, align 4
  %base.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i, align 128
  %and.i = and i32 %6, 1048320
  %base.i.i8.i = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i8.i, align 128
  %or.i.i.i = or i32 %8, %and.i
  store i32 %or.i.i.i, ptr %base.i.i8.i, align 128
  %9 = load ptr, ptr %ablkctx.i, align 4
  %call4.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %9, ptr noundef %key, i32 noundef %key_len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %badkey_err

if.end:                                           ; preds = %entry
  %key3 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 81
  %10 = call ptr @memcpy(ptr %key3, ptr %key, i32 %key_len)
  %enckey_len = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 76
  %11 = ptrtoint ptr %enckey_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %key_len, ptr %enckey_len, align 4
  %rrkey = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 2, i32 4, i32 9
  %shl = shl i32 %key_len, 2
  tail call fastcc void @get_aes_decrypt_key(ptr noundef %rrkey, ptr noundef %key3, i32 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %key_len)
  %cmp = icmp eq i32 %key_len, 48
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 113
  %add.ptr17 = getelementptr %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 105
  %12 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr17, i32 24)
  %13 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %add.ptr17, align 1
  %add.ptr23 = getelementptr %struct.ablk_ctx, ptr %ablkctx.i, i32 0, i32 4, i32 56
  %14 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %add.ptr23, align 1
  %15 = ptrtoint ptr %enckey_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %enckey_len, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %key_len)
  %cmp27 = icmp eq i32 %key_len, 32
  %or34 = select i1 %cmp27, i32 5181, i32 5309
  %add = shl i32 %key_len, 20
  %16 = add i32 %add, 16777216
  %shl36 = and i32 %16, -16777216
  %or37 = or i32 %shl36, %or34
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then8
  %or37.sink = phi i32 [ 83891325, %if.then8 ], [ %or37, %if.else ]
  %17 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 72
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or37.sink, ptr %17, align 4
  %ciph_mode = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 80
  %19 = ptrtoint ptr %ciph_mode to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %ciph_mode, align 4
  br label %cleanup

badkey_err:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %enckey_len40 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 76
  %20 = ptrtoint ptr %enckey_len40 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %enckey_len40, align 4
  br label %cleanup

cleanup:                                          ; preds = %badkey_err, %if.end39
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_aes_ctr_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ablkctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 68
  %0 = ptrtoint ptr %ablkctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ablkctx.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i.i, align 128
  %and.i.i.i = and i32 %3, -1048321
  store i32 %and.i.i.i, ptr %base.i.i.i, align 128
  %4 = load ptr, ptr %ablkctx.i.i, align 4
  %base.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i, align 128
  %and.i = and i32 %6, 1048320
  %base.i.i8.i = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i8.i, align 128
  %or.i.i.i = or i32 %8, %and.i
  store i32 %or.i.i.i, ptr %base.i.i8.i, align 128
  %9 = load ptr, ptr %ablkctx.i.i, align 4
  %call4.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %9, ptr noundef %key, i32 noundef %keylen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %keylen)
  %switch.selectcmp.i = icmp eq i32 %keylen, 24
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %keylen)
  %switch.selectcmp11.i = icmp eq i32 %keylen, 32
  %switch.select12.i = select i1 %switch.selectcmp11.i, i32 2, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %switch.select12.i)
  %cmp = icmp eq i32 %switch.select12.i, 1
  %key4 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 81
  %10 = call ptr @memcpy(ptr %key4, ptr %key, i32 %keylen)
  %add = add i32 %keylen, 16
  %conv5 = select i1 %cmp, i32 8, i32 0
  %add6 = add i32 %add, %conv5
  %shl = shl nuw nsw i32 %switch.select12.i, 6
  %11 = shl i32 %add6, 20
  %shl11 = and i32 %11, -16777216
  %or10 = or i32 %shl11, %shl
  %or12 = or i32 %or10, 1085
  %key_ctx_hdr = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 72
  %12 = ptrtoint ptr %key_ctx_hdr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or12, ptr %key_ctx_hdr, align 4
  %ciph_mode = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 80
  %13 = ptrtoint ptr %ciph_mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %ciph_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %.sink = phi i32 [ %keylen, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %14 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 76
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %14, align 4
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_aes_rfc3686_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nonce = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 2, i32 4, i32 5
  %sub = add i32 %keylen, -4
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %add.ptr, align 1
  %2 = ptrtoint ptr %nonce to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %nonce, align 1
  %ablkctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 68
  %3 = ptrtoint ptr %ablkctx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ablkctx.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i.i, align 128
  %and.i.i.i = and i32 %6, -1048321
  store i32 %and.i.i.i, ptr %base.i.i.i, align 128
  %7 = load ptr, ptr %ablkctx.i.i, align 4
  %base.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 128
  %and.i = and i32 %9, 1048320
  %base.i.i8.i = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %base.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i8.i, align 128
  %or.i.i.i = or i32 %11, %and.i
  store i32 %or.i.i.i, ptr %base.i.i8.i, align 128
  %12 = load ptr, ptr %ablkctx.i.i, align 4
  %call4.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %12, ptr noundef %key, i32 noundef %sub) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end5, label %badkey_err

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub)
  %switch.selectcmp.i = icmp eq i32 %sub, 24
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %switch.selectcmp11.i = icmp eq i32 %sub, 32
  %switch.select12.i = select i1 %switch.selectcmp11.i, i32 2, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %switch.select12.i)
  %cmp7 = icmp eq i32 %switch.select12.i, 1
  %key8 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 81
  %13 = call ptr @memcpy(ptr %key8, ptr %key, i32 %sub)
  %enckey_len = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 76
  %14 = ptrtoint ptr %enckey_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %enckey_len, align 4
  %add = add i32 %keylen, 12
  %conv10 = select i1 %cmp7, i32 8, i32 0
  %add11 = add i32 %add, %conv10
  %shl = shl nuw nsw i32 %switch.select12.i, 6
  %15 = shl i32 %add11, 20
  %shl16 = and i32 %15, -16777216
  %or15 = or i32 %shl16, %shl
  %or17 = or i32 %or15, 1085
  %key_ctx_hdr = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 72
  %16 = ptrtoint ptr %key_ctx_hdr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or17, ptr %key_ctx_hdr, align 4
  %ciph_mode = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 80
  %17 = ptrtoint ptr %ciph_mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %ciph_mode, align 4
  br label %cleanup

badkey_err:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %enckey_len18 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 76
  %18 = ptrtoint ptr %enckey_len18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %enckey_len18, align 4
  br label %cleanup

cleanup:                                          ; preds = %badkey_err, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %badkey_err ], [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_rfc3686_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %ablkctx.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 68
  %call3 = tail call ptr @crypto_alloc_skcipher(ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 256) #11
  %2 = ptrtoint ptr %ablkctx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %ablkctx.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cra_name = getelementptr i8, ptr %1, i32 40
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %cra_name) #14
  %3 = ptrtoint ptr %ablkctx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ablkctx.i, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call3, align 128
  %add = add i32 %7, 256
  %8 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %tfm, align 128
  %9 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %call.i = tail call ptr @assign_chcr_device() #11
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev4.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev4.i, ptr %__crt_ctx.i.i, align 4
  %ntxq6.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 9
  %12 = ptrtoint ptr %ntxq6.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ntxq6.i, align 2
  %conv.i = zext i16 %13 to i32
  %nrxq.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 8
  %14 = ptrtoint ptr %nrxq.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nrxq.i, align 4
  %nchan.i = getelementptr inbounds %struct.uld_ctx, ptr %call.i, i32 0, i32 1, i32 11
  %16 = ptrtoint ptr %nchan.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %nchan.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %div.rhs.trunc.i = zext i8 %bf.lshr.i to i16
  %div39.i = udiv i16 %15, %div.rhs.trunc.i
  %div1640.i = udiv i16 %13, %div.rhs.trunc.i
  %ntxq17.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %17 = ptrtoint ptr %ntxq17.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.i, ptr %ntxq17.i, align 4
  %18 = load i16, ptr %nrxq.i, align 4
  %conv20.i = zext i16 %18 to i32
  %nrxq21.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %19 = ptrtoint ptr %nrxq21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv20.i, ptr %nrxq21.i, align 4
  %conv22.i = trunc i16 %div39.i to i8
  %rxq_perchan23.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %20 = ptrtoint ptr %rxq_perchan23.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv22.i, ptr %rxq_perchan23.i, align 4
  %conv24.i = trunc i16 %div1640.i to i8
  %txq_perchan25.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 1
  %21 = ptrtoint ptr %txq_perchan25.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv24.i, ptr %txq_perchan25.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then2.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i ], [ -6, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_gcm_setkey(ptr noundef %aead, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %aes = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aeadctx.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 64
  %gcm.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 3, i32 4, i32 16
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes) #11
  %0 = call ptr @memset(ptr %aes, i32 255, i32 484)
  %enckey_len = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 68
  %1 = ptrtoint ptr %enckey_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %enckey_len, align 4
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 72
  %2 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw_cipher, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %5, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %6 = load ptr, ptr %sw_cipher, align 4
  %base.i.i78 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3
  %7 = ptrtoint ptr %base.i.i78 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i78, align 128
  %and = and i32 %8, 1048320
  %base.i.i79 = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %base.i.i79 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i.i79, align 128
  %or.i.i = or i32 %10, %and
  store i32 %or.i.i, ptr %base.i.i79, align 128
  %11 = load ptr, ptr %sw_cipher, align 4
  %call6 = tail call i32 @crypto_aead_setkey(ptr noundef %11, ptr noundef %key, i32 noundef %keylen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 -256
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 128
  %and.i = and i32 %15, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %keylen)
  %cmp8 = icmp ugt i32 %keylen, 3
  %or.cond = and i1 %cmp8, %cmp
  br i1 %or.cond, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %keylen, -4
  %salt = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 76
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %add.ptr, align 1
  %18 = ptrtoint ptr %salt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %salt, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %keylen.addr.0 = phi i32 [ %sub, %if.then9 ], [ %keylen, %if.end.if.end10_crit_edge ]
  %19 = zext i32 %keylen.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %keylen.addr.0, label %do.end [
    i32 16, label %if.end10.if.end22_crit_edge
    i32 24, label %if.then14
    i32 32, label %if.then17
  ]

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %keylen.addr.0) #14
  br label %out

if.end22:                                         ; preds = %if.then17, %if.then14, %if.end10.if.end22_crit_edge
  %ck_size.0 = phi i32 [ 1089, %if.then14 ], [ 1153, %if.then17 ], [ 1025, %if.end10.if.end22_crit_edge ]
  %key23 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 80
  %20 = call ptr @memcpy(ptr %key23, ptr %key, i32 %keylen.addr.0)
  %21 = ptrtoint ptr %enckey_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %keylen.addr.0, ptr %enckey_len, align 4
  %22 = shl nuw nsw i32 %keylen.addr.0, 20
  %23 = add nuw nsw i32 %22, 49283072
  %shl34 = and i32 %23, -16777216
  %or35 = or i32 %ck_size.0, %shl34
  %24 = ptrtoint ptr %aeadctx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or35, ptr %aeadctx.i, align 4
  %call36 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %key, i32 noundef %keylen.addr.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %enckey_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %enckey_len, align 4
  br label %out

if.end40:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %26 = call ptr @memset(ptr %gcm.i, i32 0, i32 16)
  call void @aes_encrypt(ptr noundef nonnull %aes, ptr noundef %gcm.i, ptr noundef %gcm.i) #11
  %27 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #11, !srcloc !143
  br label %out

out:                                              ; preds = %if.end40, %if.then38, %do.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call6, %entry.out_crit_edge ], [ %call36, %if.then38 ], [ 0, %if.end40 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_gcm_setauthsize(ptr nocapture noundef %tfm, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 7953, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [13 x i16], ptr @switch.table.chcr_gcm_setauthsize, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.gep32 = getelementptr inbounds [13 x i16], ptr @switch.table.chcr_gcm_setauthsize.51, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep32 to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load33 = load i16, ptr %switch.gep32, align 2
  %hmac_ctrl15 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 12
  %4 = ptrtoint ptr %hmac_ctrl15 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %switch.load, ptr %hmac_ctrl15, align 4
  %mayverify16 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 14
  %5 = ptrtoint ptr %mayverify16 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %switch.load33, ptr %mayverify16, align 2
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 72
  %6 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_cipher, align 4
  %call17 = tail call i32 @crypto_aead_setauthsize(ptr noundef %7, i32 noundef %authsize) #11
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_4106_4309_setauthsize(ptr nocapture noundef %tfm, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %authsize, label %entry.cleanup_crit_edge [
    i32 8, label %entry.sw.epilog_crit_edge
    i32 12, label %sw.bb2
    i32 16, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i16 [ 1, %sw.bb5 ], [ 3, %sw.bb2 ], [ 7, %entry.sw.epilog_crit_edge ]
  %hmac_ctrl6 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 12
  %1 = ptrtoint ptr %hmac_ctrl6 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %.sink, ptr %hmac_ctrl6, align 4
  %mayverify7 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 14
  %2 = ptrtoint ptr %mayverify7 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %mayverify7, align 2
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 72
  %3 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw_cipher, align 4
  %call8 = tail call i32 @crypto_aead_setauthsize(ptr noundef %4, i32 noundef %authsize) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_aead_ccm_setkey(ptr nocapture noundef %aead, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 72
  %0 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw_cipher, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %3, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %4 = load ptr, ptr %sw_cipher, align 4
  %base.i.i15 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3
  %5 = ptrtoint ptr %base.i.i15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i15, align 128
  %and = and i32 %6, 1048320
  %base.i.i16 = getelementptr inbounds %struct.crypto_aead, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i16, align 128
  %or.i.i = or i32 %8, %and
  store i32 %or.i.i, ptr %base.i.i16, align 128
  %9 = load ptr, ptr %sw_cipher, align 4
  %call5 = tail call i32 @crypto_aead_setkey(ptr noundef %9, ptr noundef %key, i32 noundef %keylen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %aeadctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 64
  %add.i = shl i32 %keylen, 21
  %10 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %keylen, label %if.end.chcr_ccm_common_setkey.exit_crit_edge [
    i32 16, label %if.end.if.end11.i_crit_edge
    i32 24, label %if.then5.i
    i32 32, label %if.then8.i
  ]

if.end.if.end11.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.end.chcr_ccm_common_setkey.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %chcr_ccm_common_setkey.exit

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.then5.i, %if.end.if.end11.i_crit_edge
  %ck_size.0.i = phi i32 [ 65, %if.then5.i ], [ 129, %if.then8.i ], [ 1, %if.end.if.end11.i_crit_edge ]
  %mk_size.0.i = phi i32 [ 8, %if.then5.i ], [ 12, %if.then8.i ], [ 0, %if.end.if.end11.i_crit_edge ]
  %11 = add nuw nsw i32 %add.i, 31457280
  %shr.i = and i32 %11, -33554432
  %or14.i = or i32 %shr.i, %ck_size.0.i
  %shl18.i = or i32 %or14.i, %mk_size.0.i
  %or19.i = or i32 %shl18.i, 16778240
  %12 = ptrtoint ptr %aeadctx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or19.i, ptr %aeadctx.i.i, align 4
  %key20.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 80
  %13 = call ptr @memcpy(ptr %key20.i, ptr %key, i32 %keylen)
  br label %chcr_ccm_common_setkey.exit

chcr_ccm_common_setkey.exit:                      ; preds = %if.end11.i, %if.end.chcr_ccm_common_setkey.exit_crit_edge
  %keylen.sink.i = phi i32 [ %keylen, %if.end11.i ], [ 0, %if.end.chcr_ccm_common_setkey.exit_crit_edge ]
  %retval.0.i = phi i32 [ 0, %if.end11.i ], [ -22, %if.end.chcr_ccm_common_setkey.exit_crit_edge ]
  %enckey_len21.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 68
  %14 = ptrtoint ptr %enckey_len21.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %keylen.sink.i, ptr %enckey_len21.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %chcr_ccm_common_setkey.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %chcr_ccm_common_setkey.exit ], [ %call5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_ccm_setauthsize(ptr nocapture noundef %tfm, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 5461, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [13 x i16], ptr @switch.table.chcr_ccm_setauthsize, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load = load i16, ptr %switch.gep, align 2
  %hmac_ctrl18 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 12
  %3 = ptrtoint ptr %hmac_ctrl18 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %switch.load, ptr %hmac_ctrl18, align 4
  %mayverify19 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 14
  %4 = ptrtoint ptr %mayverify19 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %mayverify19, align 2
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 72
  %5 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw_cipher, align 4
  %call20 = tail call i32 @crypto_aead_setauthsize(ptr noundef %6, i32 noundef %authsize) #11
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_aead_rfc4309_setkey(ptr nocapture noundef %aead, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 3
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 72
  %0 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw_cipher, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %3, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %4 = load ptr, ptr %sw_cipher, align 4
  %base.i.i23 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3
  %5 = ptrtoint ptr %base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i23, align 128
  %and = and i32 %6, 1048320
  %base.i.i24 = getelementptr inbounds %struct.crypto_aead, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %base.i.i24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i24, align 128
  %or.i.i = or i32 %8, %and
  store i32 %or.i.i, ptr %base.i.i24, align 128
  %9 = load ptr, ptr %sw_cipher, align 4
  %call5 = tail call i32 @crypto_aead_setkey(ptr noundef %9, ptr noundef %key, i32 noundef %keylen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %sub = add i32 %keylen, -3
  %salt = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 76
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %10 = call ptr @memcpy(ptr %salt, ptr %add.ptr, i32 3)
  %aeadctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 64
  %add.i = shl i32 %sub, 21
  %11 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %keylen, label %if.end7.cleanup.sink.split_crit_edge [
    i32 19, label %if.end7.if.end11.i_crit_edge
    i32 27, label %if.then5.i
    i32 35, label %if.then8.i
  ]

if.end7.if.end11.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then5.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.then5.i, %if.end7.if.end11.i_crit_edge
  %ck_size.0.i = phi i32 [ 65, %if.then5.i ], [ 129, %if.then8.i ], [ 1, %if.end7.if.end11.i_crit_edge ]
  %mk_size.0.i = phi i32 [ 8, %if.then5.i ], [ 12, %if.then8.i ], [ 0, %if.end7.if.end11.i_crit_edge ]
  %12 = add nuw nsw i32 %add.i, 31457280
  %shr.i = and i32 %12, -33554432
  %or14.i = or i32 %shr.i, %ck_size.0.i
  %shl18.i = or i32 %or14.i, %mk_size.0.i
  %or19.i = or i32 %shl18.i, 16778240
  %13 = ptrtoint ptr %aeadctx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or19.i, ptr %aeadctx.i.i, align 4
  %key20.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 80
  %14 = call ptr @memcpy(ptr %key20.i, ptr %key, i32 %sub)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end11.i, %if.end7.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %keylen.sink.i.sink = phi i32 [ 0, %entry.cleanup.sink.split_crit_edge ], [ %sub, %if.end11.i ], [ 0, %if.end7.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ 0, %if.end11.i ], [ -22, %if.end7.cleanup.sink.split_crit_edge ]
  %enckey_len21.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 68
  %15 = ptrtoint ptr %enckey_len21.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %keylen.sink.i.sink, ptr %enckey_len21.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_authenc_setkey(ptr noundef %authenc, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %keys = alloca %struct.crypto_authenc_keys, align 4
  %pad = alloca [128 x i8], align 1
  %__shash_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aeadctx.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 64
  %authenc.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 3, i32 4, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #11
  %0 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %1 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 2
  %2 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3, i32 3
  %3 = call ptr @memset(ptr %keys, i32 255, i32 16)
  %4 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i, align 4
  %maxauthsize = getelementptr i8, ptr %5, i32 -100
  %6 = ptrtoint ptr %maxauthsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxauthsize, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pad) #11
  %8 = call ptr @memset(ptr %pad, i32 0, i32 128)
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 72
  %9 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sw_cipher, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %12, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %13 = load ptr, ptr %sw_cipher, align 4
  %base.i.i233 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3
  %14 = ptrtoint ptr %base.i.i233 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base.i.i233, align 128
  %and = and i32 %15, 1048320
  %base.i.i234 = getelementptr inbounds %struct.crypto_aead, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %base.i.i234 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i.i234, align 128
  %or.i.i = or i32 %17, %and
  store i32 %or.i.i, ptr %base.i.i234, align 128
  %18 = load ptr, ptr %sw_cipher, align 4
  %call8 = tail call i32 @crypto_aead_setkey(ptr noundef %18, ptr noundef %key, i32 noundef %keylen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call9 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %keys, ptr noundef %key, i32 noundef %keylen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end11, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %if.end
  %19 = add i32 %7, -20
  %20 = call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %20)
  %21 = icmp ult i32 %20, 12
  br i1 %21, label %switch.hole_check, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.end11.do.end_crit_edge
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %out

switch.hole_check:                                ; preds = %if.end11
  %switch.maskindex = trunc i32 %20 to i16
  %switch.shifted = lshr i16 2189, %switch.maskindex
  %22 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %switch.lobit.not = icmp eq i16 %22, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.chcr_authenc_setkey, i32 0, i32 %20
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep260 = getelementptr inbounds [12 x i32], ptr @switch.table.chcr_authenc_setkey.52, i32 0, i32 %20
  %24 = ptrtoint ptr %switch.gep260 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load261 = load i32, ptr %switch.gep260, align 4
  %switch.gep262 = getelementptr inbounds [12 x i8], ptr @switch.table.chcr_authenc_setkey.53, i32 0, i32 %20
  %25 = ptrtoint ptr %switch.gep262 to i32
  call void @__asan_load1_noabort(i32 %25)
  %switch.load263 = load i8, ptr %switch.gep262, align 1
  %26 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i235 = getelementptr i8, ptr %27, i32 -256
  %28 = ptrtoint ptr %add.ptr.i235 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i235, align 128
  %and.i = and i32 %29, 251658240
  %30 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %and.i, label %if.end27thread-pre-split [
    i32 201326592, label %switch.lookup.if.then20_crit_edge
    i32 218103808, label %switch.lookup.if.then20_crit_edge272
  ]

switch.lookup.if.then20_crit_edge272:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

switch.lookup.if.then20_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then20:                                        ; preds = %switch.lookup.if.then20_crit_edge, %switch.lookup.if.then20_crit_edge272
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp21 = icmp ult i32 %32, 4
  br i1 %cmp21, label %if.then20.out_crit_edge, label %if.end23

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %nonce = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 3, i32 4, i32 8
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %0, align 4
  %sub = add i32 %32, -4
  %add.ptr = getelementptr i8, ptr %34, i32 %sub
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %add.ptr, align 1
  %37 = ptrtoint ptr %nonce to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %nonce, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %2, align 4
  br label %if.end27

if.end27thread-pre-split:                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load i32, ptr %2, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27thread-pre-split, %if.end23
  %40 = phi i32 [ %.pr, %if.end27thread-pre-split ], [ %sub, %if.end23 ]
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %40, label %do.end41 [
    i32 16, label %if.end27.if.end46_crit_edge
    i32 24, label %if.then33
    i32 32, label %if.then37
  ]

if.end27.if.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then37:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.end41:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  br label %out

if.end46:                                         ; preds = %if.then37, %if.then33, %if.end27.if.end46_crit_edge
  %ck_size.0 = phi i32 [ 65, %if.then33 ], [ 129, %if.then37 ], [ 1, %if.end27.if.end46_crit_edge ]
  %key47 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 80
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %0, align 4
  %44 = call ptr @memcpy(ptr %key47, ptr %43, i32 %40)
  %enckey_len = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 68
  %45 = ptrtoint ptr %enckey_len to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %40, ptr %enckey_len, align 4
  %46 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %and.i, label %if.end46.if.end60_crit_edge [
    i32 67108864, label %if.end46.if.then55_crit_edge
    i32 117440512, label %if.end46.if.then55_crit_edge273
  ]

if.end46.if.then55_crit_edge273:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

if.end46.if.then55_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then55:                                        ; preds = %if.end46.if.then55_crit_edge, %if.end46.if.then55_crit_edge273
  %shl = shl nuw nsw i32 %40, 3
  call fastcc void @get_aes_decrypt_key(ptr noundef %authenc.i, ptr noundef %key47, i32 noundef %shl)
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end46.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %20)
  %47 = icmp ult i32 %20, 12
  br i1 %47, label %switch.hole_check265, label %if.end60.do.end66_crit_edge

if.end60.do.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end66

switch.hole_check265:                             ; preds = %if.end60
  %switch.maskindex267 = trunc i32 %20 to i16
  %switch.shifted268 = lshr i16 2189, %switch.maskindex267
  %48 = and i16 %switch.shifted268, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %switch.lobit269.not = icmp eq i16 %48, 0
  br i1 %switch.lobit269.not, label %switch.hole_check265.do.end66_crit_edge, label %switch.lookup266

switch.hole_check265.do.end66_crit_edge:          ; preds = %switch.hole_check265
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end66

switch.lookup266:                                 ; preds = %switch.hole_check265
  %switch.gep270 = getelementptr inbounds [12 x ptr], ptr @switch.table.chcr_authenc_setkey.54, i32 0, i32 %20
  %49 = ptrtoint ptr %switch.gep270 to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load271 = load ptr, ptr %switch.gep270, align 4
  %call9.i = call ptr @crypto_alloc_shash(ptr noundef nonnull %switch.load271, i32 noundef 0, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %switch.lookup266.do.end66_crit_edge, label %if.end69

switch.lookup266.do.end66_crit_edge:              ; preds = %switch.lookup266
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end66

do.end66:                                         ; preds = %switch.lookup266.do.end66_crit_edge, %switch.hole_check265.do.end66_crit_edge, %if.end60.do.end66_crit_edge
  %base_hash.0.i253 = phi ptr [ %call9.i, %switch.lookup266.do.end66_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end60.do.end66_crit_edge ], [ inttoptr (i32 -22 to ptr), %switch.hole_check265.do.end66_crit_edge ]
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #14
  br label %out

if.end69:                                         ; preds = %switch.lookup266
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #11
  %50 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  %51 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call9.i, ptr %__shash_desc, align 8
  %__crt_alg.i.i236 = getelementptr inbounds %struct.crypto_shash, ptr %call9.i, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %__crt_alg.i.i236 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__crt_alg.i.i236, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cra_blocksize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %7)
  %cmp73 = icmp eq i32 %7, 20
  %cond = select i1 %cmp73, i32 12, i32 0
  %h_iopad = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 3, i32 4, i32 48
  %add.ptr75 = getelementptr i8, ptr %h_iopad, i32 %switch.load
  %add.ptr76 = getelementptr i8, ptr %add.ptr75, i32 %cond
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %55)
  %cmp77 = icmp ugt i32 %57, %55
  %58 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %keys, align 4
  br i1 %cmp77, label %if.then78, label %if.else90

if.then78:                                        ; preds = %if.end69
  %call80 = call i32 @crypto_shash_digest(ptr noundef nonnull %__shash_desc, ptr noundef %59, i32 noundef %57, ptr noundef %add.ptr76) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end88, label %do.end85

do.end85:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #14
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #11
  br label %out

if.end88:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %7, ptr %1, align 4
  br label %if.end93

if.else90:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %61 = call ptr @memcpy(ptr %add.ptr76, ptr %59, i32 %57)
  br label %if.end93

if.end93:                                         ; preds = %if.else90, %if.end88
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %1, align 4
  %add.ptr96 = getelementptr i8, ptr %pad, i32 %63
  %sub98 = sub i32 %55, %63
  %64 = call ptr @memset(ptr %add.ptr96, i32 0, i32 %sub98)
  %65 = call ptr @memcpy(ptr %pad, ptr %add.ptr76, i32 %63)
  %shr = lshr i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %cmp101254.not = icmp ult i32 %55, 4
  br i1 %cmp101254.not, label %if.end93.for.end_crit_edge, label %for.body.preheader

if.end93.for.end_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end93
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0255 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add.ptr103 = getelementptr i32, ptr %pad, i32 %i.0255
  %66 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr103, align 4
  %xor = xor i32 %67, 909522486
  store i32 %xor, ptr %add.ptr103, align 4
  %inc = add nuw nsw i32 %i.0255, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end93.for.end_crit_edge
  %call107 = call fastcc i32 @chcr_compute_partial_hash(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %pad, ptr noundef %h_iopad, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end110:                                        ; preds = %for.end
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %1, align 4
  %add.ptr113 = getelementptr i8, ptr %pad, i32 %69
  %sub115 = sub i32 %55, %69
  %70 = call ptr @memset(ptr %add.ptr113, i32 0, i32 %sub115)
  %71 = call ptr @memcpy(ptr %pad, ptr %add.ptr76, i32 %69)
  br i1 %cmp101254.not, label %if.end110.for.end127_crit_edge, label %for.body121.preheader

if.end110.for.end127_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end127

for.body121.preheader:                            ; preds = %if.end110
  %umax258 = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body121

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %for.body121.preheader
  %i.1257 = phi i32 [ %inc126, %for.body121.for.body121_crit_edge ], [ 0, %for.body121.preheader ]
  %add.ptr123 = getelementptr i32, ptr %pad, i32 %i.1257
  %72 = ptrtoint ptr %add.ptr123 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr123, align 4
  %xor124 = xor i32 %73, 1549556828
  store i32 %xor124, ptr %add.ptr123, align 4
  %inc126 = add nuw nsw i32 %i.1257, 1
  %exitcond259.not = icmp eq i32 %inc126, %umax258
  br i1 %exitcond259.not, label %for.body121.for.end127_crit_edge, label %for.body121.for.body121_crit_edge

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body121

for.body121.for.end127_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end127

for.end127:                                       ; preds = %for.body121.for.end127_crit_edge, %if.end110.for.end127_crit_edge
  %call129 = call fastcc i32 @chcr_compute_partial_hash(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %pad, ptr noundef %add.ptr76, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %for.end127.cleanup_crit_edge

for.end127.cleanup_crit_edge:                     ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end132:                                        ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %2, align 4
  %76 = add i32 %75, 31
  %add140 = and i32 %76, 4080
  %add142 = add nuw nsw i32 %switch.load, %cond
  %mul143 = shl nuw nsw i32 %add142, 1
  %add144 = add nuw nsw i32 %add140, %mul143
  %77 = shl i32 %add144, 20
  %shl152 = and i32 %77, -16777216
  %or150 = or i32 %switch.load261, %ck_size.0
  %or153 = or i32 %or150, %shl152
  %78 = ptrtoint ptr %aeadctx.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or153, ptr %aeadctx.i, align 4
  %auth_mode155 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 2, i32 2, i32 56
  %79 = ptrtoint ptr %auth_mode155 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %switch.load263, ptr %auth_mode155, align 1
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call9.i, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call9.i, ptr noundef %base.i.i.i) #11
  %80 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #11, !srcloc !143
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #11
  br label %cleanup161

cleanup:                                          ; preds = %for.end127.cleanup_crit_edge, %for.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #11
  br label %out

out:                                              ; preds = %cleanup, %do.end85, %do.end66, %do.end41, %if.then20.out_crit_edge, %do.end, %if.end.out_crit_edge, %entry.out_crit_edge
  %base_hash.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %if.then20.out_crit_edge ], [ %base_hash.0.i253, %do.end66 ], [ %call9.i, %cleanup ], [ inttoptr (i32 -22 to ptr), %do.end41 ], [ %call9.i, %do.end85 ]
  %enckey_len157 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 68
  %81 = ptrtoint ptr %enckey_len157 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %enckey_len157, align 4
  %82 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #11, !srcloc !143
  %cmp.i237 = icmp ugt ptr %base_hash.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %out.cleanup161_crit_edge, label %if.then159

out.cleanup161_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup161

if.then159:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i238 = getelementptr inbounds %struct.crypto_shash, ptr %base_hash.0, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %base_hash.0, ptr noundef %base.i.i.i238) #11
  br label %cleanup161

cleanup161:                                       ; preds = %if.then159, %out.cleanup161_crit_edge, %if.end132
  %retval.1 = phi i32 [ 0, %if.end132 ], [ -22, %if.then159 ], [ -22, %out.cleanup161_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pad) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_authenc_setauthsize(ptr nocapture noundef %tfm, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %maxauthsize.i.i = getelementptr i8, ptr %1, i32 -100
  %2 = ptrtoint ptr %maxauthsize.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxauthsize.i.i, align 4
  %4 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %authsize, label %if.else22 [
    i32 4, label %if.then
    i32 6, label %if.then4
    i32 10, label %if.then9
    i32 12, label %if.then14
    i32 14, label %if.then19
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hmac_ctrl = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 12
  %5 = ptrtoint ptr %hmac_ctrl to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4, ptr %hmac_ctrl, align 4
  %mayverify = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 14
  %6 = ptrtoint ptr %mayverify to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %mayverify, align 2
  br label %if.end40

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hmac_ctrl5 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 12
  %7 = ptrtoint ptr %hmac_ctrl5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 5, ptr %hmac_ctrl5, align 4
  %mayverify6 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 14
  %8 = ptrtoint ptr %mayverify6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %mayverify6, align 2
  br label %if.end40

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hmac_ctrl10 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 12
  %9 = ptrtoint ptr %hmac_ctrl10 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %hmac_ctrl10, align 4
  %mayverify11 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 14
  %10 = ptrtoint ptr %mayverify11 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %mayverify11, align 2
  br label %if.end40

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hmac_ctrl15 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 12
  %11 = ptrtoint ptr %hmac_ctrl15 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 3, ptr %hmac_ctrl15, align 4
  %mayverify16 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 14
  %12 = ptrtoint ptr %mayverify16 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %mayverify16, align 2
  br label %if.end40

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hmac_ctrl20 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 12
  %13 = ptrtoint ptr %hmac_ctrl20 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 6, ptr %hmac_ctrl20, align 4
  %mayverify21 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 14
  %14 = ptrtoint ptr %mayverify21 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %mayverify21, align 2
  br label %if.end40

if.else22:                                        ; preds = %entry
  %shr = lshr i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %authsize)
  %cmp23 = icmp eq i32 %shr, %authsize
  br i1 %cmp23, label %if.then24, label %if.else27

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #13
  %hmac_ctrl25 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 12
  %15 = ptrtoint ptr %hmac_ctrl25 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 7, ptr %hmac_ctrl25, align 4
  %mayverify26 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 14
  %16 = ptrtoint ptr %mayverify26 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %mayverify26, align 2
  br label %if.end40

if.else27:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %authsize)
  %cmp28 = icmp eq i32 %3, %authsize
  %hmac_ctrl30 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 12
  %17 = ptrtoint ptr %hmac_ctrl30 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %hmac_ctrl30, align 4
  %mayverify31 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 14
  br i1 %cmp28, label %if.then29, label %if.else32

if.then29:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %mayverify31 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %mayverify31, align 2
  br label %if.end40

if.else32:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %mayverify31 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %mayverify31, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.else32, %if.then29, %if.then24, %if.then19, %if.then14, %if.then9, %if.then4, %if.then
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 72
  %20 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw_cipher, align 4
  %call41 = tail call i32 @crypto_aead_setauthsize(ptr noundef %21, i32 noundef %authsize) #11
  ret i32 %call41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_aead_digest_null_setkey(ptr nocapture noundef %authenc, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %keys = alloca %struct.crypto_authenc_keys, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aeadctx.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 64
  %authenc.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 3, i32 4, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #11
  %0 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %1 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 72
  %2 = call ptr @memset(ptr %keys, i32 255, i32 16)
  %3 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw_cipher, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %6, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %7 = load ptr, ptr %sw_cipher, align 4
  %base.i.i91 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3
  %8 = ptrtoint ptr %base.i.i91 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i91, align 128
  %and = and i32 %9, 1048320
  %base.i.i92 = getelementptr inbounds %struct.crypto_aead, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %base.i.i92 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i92, align 128
  %or.i.i = or i32 %11, %and
  store i32 %or.i.i, ptr %base.i.i92, align 128
  %12 = load ptr, ptr %sw_cipher, align 4
  %call6 = tail call i32 @crypto_aead_setkey(ptr noundef %12, ptr noundef %key, i32 noundef %keylen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call7 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %keys, ptr noundef %key, i32 noundef %keylen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.end9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9:                                          ; preds = %if.end
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 -256
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 128
  %and.i = and i32 %16, 251658240
  %17 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %and.i, label %if.end20thread-pre-split [
    i32 201326592, label %if.end9.if.then13_crit_edge
    i32 218103808, label %if.end9.if.then13_crit_edge93
  ]

if.end9.if.then13_crit_edge93:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.end9.if.then13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13:                                        ; preds = %if.end9.if.then13_crit_edge, %if.end9.if.then13_crit_edge93
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp14 = icmp ult i32 %19, 4
  br i1 %cmp14, label %if.then13.out_crit_edge, label %if.end16

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end16:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %nonce = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 3, i32 4, i32 8
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 4
  %sub = add i32 %19, -4
  %add.ptr = getelementptr i8, ptr %21, i32 %sub
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %add.ptr, align 1
  %24 = ptrtoint ptr %nonce to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %nonce, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %1, align 4
  br label %if.end20

if.end20thread-pre-split:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %1, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20thread-pre-split, %if.end16
  %27 = phi i32 [ %.pr, %if.end20thread-pre-split ], [ %sub, %if.end16 ]
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %27, label %do.end [
    i32 16, label %if.end20.if.end36_crit_edge
    i32 24, label %if.then26
    i32 32, label %if.then30
  ]

if.end20.if.end36_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then30:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %27) #14
  br label %out

if.end36:                                         ; preds = %if.then30, %if.then26, %if.end20.if.end36_crit_edge
  %ck_size.0 = phi i32 [ 1149, %if.then26 ], [ 1213, %if.then30 ], [ 1085, %if.end20.if.end36_crit_edge ]
  %key37 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 80
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %0, align 4
  %31 = call ptr @memcpy(ptr %key37, ptr %30, i32 %27)
  %enckey_len = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 68
  %32 = ptrtoint ptr %enckey_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %enckey_len, align 4
  %33 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %and.i, label %if.end36.if.end50_crit_edge [
    i32 67108864, label %if.end36.if.then45_crit_edge
    i32 117440512, label %if.end36.if.then45_crit_edge94
  ]

if.end36.if.then45_crit_edge94:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

if.end36.if.then45_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

if.end36.if.end50_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then45:                                        ; preds = %if.end36.if.then45_crit_edge, %if.end36.if.then45_crit_edge94
  %shl = shl nuw nsw i32 %27, 3
  call fastcc void @get_aes_decrypt_key(ptr noundef %authenc.i, ptr noundef %key37, i32 noundef %shl)
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end36.if.end50_crit_edge
  %34 = shl nuw nsw i32 %27, 20
  %35 = add nuw nsw i32 %34, 32505856
  %shl60 = and i32 %35, -16777216
  %or61 = or i32 %ck_size.0, %shl60
  %36 = ptrtoint ptr %aeadctx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or61, ptr %aeadctx.i, align 4
  %auth_mode = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 2, i32 2, i32 56
  %37 = ptrtoint ptr %auth_mode to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %auth_mode, align 1
  %38 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #11, !srcloc !143
  br label %cleanup

out:                                              ; preds = %do.end, %if.then13.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %enckey_len62 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 68
  %39 = ptrtoint ptr %enckey_len62 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %enckey_len62, align 4
  %40 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #11, !srcloc !143
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end50
  %retval.0 = phi i32 [ -22, %out ], [ 0, %if.end50 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_authenc_null_setauthsize(ptr nocapture noundef %tfm, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hmac_ctrl = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 12
  %0 = ptrtoint ptr %hmac_ctrl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %hmac_ctrl, align 4
  %mayverify = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 14
  %1 = ptrtoint ptr %mayverify to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %mayverify, align 2
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 72
  %2 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw_cipher, align 4
  %call2 = tail call i32 @crypto_aead_setauthsize(ptr noundef %3, i32 noundef %authsize) #11
  ret i32 %call2
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_aes_decrypt_key(ptr nocapture noundef writeonly %dec_key, ptr nocapture noundef readonly %key, i32 noundef %keylength) unnamed_addr #10 align 64 {
entry:
  %w_ring = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %w_ring) #11
  %0 = call ptr @memset(ptr %w_ring, i32 255, i32 32)
  %1 = zext i32 %keylength to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %keylength, label %entry.cleanup_crit_edge [
    i32 128, label %entry.while.body.preheader_crit_edge
    i32 192, label %sw.bb1
    i32 256, label %sw.bb2
  ]

entry.while.body.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

while.body.preheader:                             ; preds = %sw.bb2, %sw.bb1, %entry.while.body.preheader_crit_edge
  %nr.0 = phi i32 [ 60, %sw.bb2 ], [ 52, %sw.bb1 ], [ 44, %entry.while.body.preheader_crit_edge ]
  %cmp18 = phi i1 [ true, %sw.bb2 ], [ false, %sw.bb1 ], [ false, %entry.while.body.preheader_crit_edge ]
  %exitcond119.not.3 = phi i1 [ false, %sw.bb2 ], [ false, %sw.bb1 ], [ true, %entry.while.body.preheader_crit_edge ]
  %exitcond119.not.5 = phi i1 [ false, %sw.bb2 ], [ true, %sw.bb1 ], [ false, %entry.while.body.preheader_crit_edge ]
  %nk.0 = phi i32 [ 8, %sw.bb2 ], [ 6, %sw.bb1 ], [ 4, %entry.while.body.preheader_crit_edge ]
  %2 = shl nuw nsw i32 %nk.0, 2
  %3 = call ptr @memcpy(ptr %w_ring, ptr %key, i32 %2)
  %sub = add nsw i32 %nk.0, -1
  %arrayidx6 = getelementptr [8 x i32], ptr %w_ring, i32 0, i32 %sub
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6, align 4
  %6 = sub nuw nsw i32 %nr.0, %nk.0
  br label %while.body

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %while.body.preheader
  %i.1115 = phi i32 [ %inc33, %if.end25.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %temp.0114 = phi i32 [ %xor29, %if.end25.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %i.1115.frozen = freeze i32 %i.1115
  %div.udiv = udiv i32 %i.1115.frozen, %nk.0
  %7 = mul i32 %div.udiv, %nk.0
  %rem.urem.decomposed = sub i32 %i.1115.frozen, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.urem.decomposed)
  %tobool.not = icmp eq i32 %rem.urem.decomposed, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %or = tail call i32 @llvm.fshl.i32(i32 %temp.0114, i32 %temp.0114, i32 8)
  %bytes.sroa.0.0.extract.shift.i = lshr i32 %or, 24
  %bytes.sroa.7.0.extract.shift.i = lshr i32 %or, 16
  %bytes.sroa.10.0.extract.shift.i = lshr i32 %or, 8
  %arrayidx2.i = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %bytes.sroa.0.0.extract.shift.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.i, align 1
  %idxprom5.i = and i32 %bytes.sroa.7.0.extract.shift.i, 255
  %arrayidx6.i = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %idxprom5.i
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6.i, align 1
  %idxprom9.i = and i32 %bytes.sroa.10.0.extract.shift.i, 255
  %arrayidx10.i = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %idxprom9.i
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10.i, align 1
  %idxprom13.i = and i32 %or, 255
  %arrayidx14.i = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %idxprom13.i
  %14 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14.i, align 1
  %bytes.sroa.13.0.insert.ext.i = zext i8 %15 to i32
  %bytes.sroa.10.0.insert.ext.i = zext i8 %13 to i32
  %bytes.sroa.10.0.insert.shift.i = shl nuw nsw i32 %bytes.sroa.10.0.insert.ext.i, 8
  %bytes.sroa.7.0.insert.ext.i = zext i8 %11 to i32
  %bytes.sroa.7.0.insert.shift.i = shl nuw nsw i32 %bytes.sroa.7.0.insert.ext.i, 16
  %bytes.sroa.0.0.insert.ext.i = zext i8 %9 to i32
  %bytes.sroa.0.0.insert.shift.i = shl nuw i32 %bytes.sroa.0.0.insert.ext.i, 24
  %bytes.sroa.10.0.insert.insert.i = or i32 %bytes.sroa.7.0.insert.shift.i, %bytes.sroa.0.0.insert.shift.i
  %bytes.sroa.7.0.insert.insert.i = or i32 %bytes.sroa.10.0.insert.insert.i, %bytes.sroa.13.0.insert.ext.i
  %bytes.sroa.0.0.insert.insert.i = or i32 %bytes.sroa.7.0.insert.insert.i, %bytes.sroa.10.0.insert.shift.i
  %arrayidx16 = getelementptr [11 x i32], ptr @round_constant, i32 0, i32 %div.udiv
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx16, align 4
  %xor = xor i32 %bytes.sroa.0.0.insert.insert.i, %17
  br label %if.end25

if.else:                                          ; preds = %while.body
  %18 = and i32 %i.1115, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp21 = icmp eq i32 %18, 0
  %or.cond = select i1 %cmp18, i1 %cmp21, i1 false
  br i1 %or.cond, label %if.then23, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %bytes.sroa.0.0.extract.shift.i92 = lshr i32 %temp.0114, 24
  %bytes.sroa.7.0.extract.shift.i93 = lshr i32 %temp.0114, 16
  %bytes.sroa.10.0.extract.shift.i94 = lshr i32 %temp.0114, 8
  %arrayidx2.i95 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %bytes.sroa.0.0.extract.shift.i92
  %19 = ptrtoint ptr %arrayidx2.i95 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx2.i95, align 1
  %idxprom5.i96 = and i32 %bytes.sroa.7.0.extract.shift.i93, 255
  %arrayidx6.i97 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %idxprom5.i96
  %21 = ptrtoint ptr %arrayidx6.i97 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx6.i97, align 1
  %idxprom9.i98 = and i32 %bytes.sroa.10.0.extract.shift.i94, 255
  %arrayidx10.i99 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %idxprom9.i98
  %23 = ptrtoint ptr %arrayidx10.i99 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx10.i99, align 1
  %idxprom13.i100 = and i32 %temp.0114, 255
  %arrayidx14.i101 = getelementptr [256 x i8], ptr @aes_sbox, i32 0, i32 %idxprom13.i100
  %25 = ptrtoint ptr %arrayidx14.i101 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx14.i101, align 1
  %bytes.sroa.13.0.insert.ext.i102 = zext i8 %26 to i32
  %bytes.sroa.10.0.insert.ext.i103 = zext i8 %24 to i32
  %bytes.sroa.10.0.insert.shift.i104 = shl nuw nsw i32 %bytes.sroa.10.0.insert.ext.i103, 8
  %bytes.sroa.7.0.insert.ext.i105 = zext i8 %22 to i32
  %bytes.sroa.7.0.insert.shift.i106 = shl nuw nsw i32 %bytes.sroa.7.0.insert.ext.i105, 16
  %bytes.sroa.0.0.insert.ext.i107 = zext i8 %20 to i32
  %bytes.sroa.0.0.insert.shift.i108 = shl nuw i32 %bytes.sroa.0.0.insert.ext.i107, 24
  %bytes.sroa.10.0.insert.insert.i109 = or i32 %bytes.sroa.7.0.insert.shift.i106, %bytes.sroa.0.0.insert.shift.i108
  %bytes.sroa.7.0.insert.insert.i110 = or i32 %bytes.sroa.10.0.insert.insert.i109, %bytes.sroa.13.0.insert.ext.i102
  %bytes.sroa.0.0.insert.insert.i111 = or i32 %bytes.sroa.7.0.insert.insert.i110, %bytes.sroa.10.0.insert.shift.i104
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.else.if.end25_crit_edge, %if.then
  %temp.1 = phi i32 [ %bytes.sroa.0.0.insert.insert.i111, %if.then23 ], [ %temp.0114, %if.else.if.end25_crit_edge ], [ %xor, %if.then ]
  %arrayidx28 = getelementptr [8 x i32], ptr %w_ring, i32 0, i32 %rem.urem.decomposed
  %27 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx28, align 4
  %xor29 = xor i32 %28, %temp.1
  store i32 %xor29, ptr %arrayidx28, align 4
  %inc33 = add nuw nsw i32 %i.1115, 1
  %exitcond.not = icmp eq i32 %inc33, %6
  br i1 %exitcond.not, label %for.body40, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

for.body40:                                       ; preds = %if.end25
  %phi.bo = add nsw i32 %6, -1
  %rem35 = srem i32 %phi.bo, %nk.0
  %arrayidx41 = getelementptr [8 x i32], ptr %w_ring, i32 0, i32 %rem35
  %29 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx41, align 4
  %31 = ptrtoint ptr %dec_key to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %dec_key, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem35)
  %cmp45.inv = icmp sgt i32 %rem35, 0
  %add49 = select i1 %cmp45.inv, i32 0, i32 %nk.0
  %dec44 = add nsw i32 %rem35, -1
  %spec.select = add nsw i32 %add49, %dec44
  %arrayidx41.1 = getelementptr [8 x i32], ptr %w_ring, i32 0, i32 %spec.select
  %32 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx41.1, align 4
  %arrayidx43.1 = getelementptr i8, ptr %dec_key, i32 4
  %34 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %arrayidx43.1, align 1
  %dec44.1 = add i32 %spec.select, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec44.1)
  %cmp45.1 = icmp slt i32 %dec44.1, 0
  %add49.1 = select i1 %cmp45.1, i32 %nk.0, i32 0
  %spec.select.1 = add i32 %add49.1, %dec44.1
  %arrayidx41.2 = getelementptr [8 x i32], ptr %w_ring, i32 0, i32 %spec.select.1
  %35 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx41.2, align 4
  %arrayidx43.2 = getelementptr i8, ptr %dec_key, i32 8
  %37 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %arrayidx43.2, align 1
  %dec44.2 = add i32 %spec.select.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec44.2)
  %cmp45.2 = icmp slt i32 %dec44.2, 0
  %add49.2 = select i1 %cmp45.2, i32 %nk.0, i32 0
  %spec.select.2 = add i32 %add49.2, %dec44.2
  %arrayidx41.3 = getelementptr [8 x i32], ptr %w_ring, i32 0, i32 %spec.select.2
  %38 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx41.3, align 4
  %arrayidx43.3 = getelementptr i8, ptr %dec_key, i32 12
  %40 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %arrayidx43.3, align 1
  br i1 %exitcond119.not.3, label %for.body40.cleanup_crit_edge, label %for.body40.4

for.body40.cleanup_crit_edge:                     ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body40.4:                                     ; preds = %for.body40
  %dec44.3 = add i32 %spec.select.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec44.3)
  %cmp45.3 = icmp slt i32 %dec44.3, 0
  %add49.3 = select i1 %cmp45.3, i32 %nk.0, i32 0
  %spec.select.3 = add i32 %add49.3, %dec44.3
  %arrayidx41.4 = getelementptr [8 x i32], ptr %w_ring, i32 0, i32 %spec.select.3
  %41 = ptrtoint ptr %arrayidx41.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx41.4, align 4
  %arrayidx43.4 = getelementptr i8, ptr %dec_key, i32 16
  %43 = ptrtoint ptr %arrayidx43.4 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %arrayidx43.4, align 1
  %dec44.4 = add i32 %spec.select.3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec44.4)
  %cmp45.4 = icmp slt i32 %dec44.4, 0
  %add49.4 = select i1 %cmp45.4, i32 %nk.0, i32 0
  %spec.select.4 = add i32 %add49.4, %dec44.4
  %arrayidx41.5 = getelementptr [8 x i32], ptr %w_ring, i32 0, i32 %spec.select.4
  %44 = ptrtoint ptr %arrayidx41.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx41.5, align 4
  %arrayidx43.5 = getelementptr i8, ptr %dec_key, i32 20
  %46 = ptrtoint ptr %arrayidx43.5 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %arrayidx43.5, align 1
  br i1 %exitcond119.not.5, label %for.body40.4.cleanup_crit_edge, label %for.body40.6

for.body40.4.cleanup_crit_edge:                   ; preds = %for.body40.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body40.6:                                     ; preds = %for.body40.4
  call void @__sanitizer_cov_trace_pc() #13
  %dec44.5 = add i32 %spec.select.4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec44.5)
  %cmp45.5 = icmp slt i32 %dec44.5, 0
  %add49.5 = select i1 %cmp45.5, i32 %nk.0, i32 0
  %spec.select.5 = add i32 %add49.5, %dec44.5
  %arrayidx41.6 = getelementptr [8 x i32], ptr %w_ring, i32 0, i32 %spec.select.5
  %47 = ptrtoint ptr %arrayidx41.6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx41.6, align 4
  %arrayidx43.6 = getelementptr i8, ptr %dec_key, i32 24
  %49 = ptrtoint ptr %arrayidx43.6 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %arrayidx43.6, align 1
  %dec44.6 = add i32 %spec.select.5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec44.6)
  %cmp45.6 = icmp slt i32 %dec44.6, 0
  %add49.6 = select i1 %cmp45.6, i32 %nk.0, i32 0
  %spec.select.6 = add i32 %add49.6, %dec44.6
  %arrayidx41.7 = getelementptr [8 x i32], ptr %w_ring, i32 0, i32 %spec.select.6
  %50 = ptrtoint ptr %arrayidx41.7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx41.7, align 4
  %arrayidx43.7 = getelementptr i8, ptr %dec_key, i32 28
  %52 = ptrtoint ptr %arrayidx43.7 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %arrayidx43.7, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.body40.6, %for.body40.4.cleanup_crit_edge, %for.body40.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %w_ring) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_cipher(ptr noundef %req, i16 noundef zeroext %qid, ptr nocapture noundef %skb, i16 noundef zeroext %op_type) unnamed_addr #0 align 64 {
entry:
  %wrparam = alloca %struct.cipher_wr_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %3, i32 -100
  %4 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i, align 4
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %ablkctx.i = getelementptr i8, ptr %1, i32 200
  %6 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %lldi.i = getelementptr i8, ptr %7, i32 -148
  %8 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lldi.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrparam) #11
  %12 = getelementptr inbounds i8, ptr %wrparam, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 12)
  %processed = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %14 = ptrtoint ptr %processed to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %processed, align 8
  %partial_req = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4
  %15 = ptrtoint ptr %partial_req to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %partial_req, align 16
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iv, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 -256
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 128
  %and.i = and i32 %21, 251658240
  %enckey_len = getelementptr i8, ptr %1, i32 208
  %22 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enckey_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp8 = icmp ugt i32 %5, 16
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.end.if.then15_crit_edge, label %lor.lhs.false9

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

lor.lhs.false9:                                   ; preds = %if.end
  %24 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp10 = icmp eq i32 %25, 0
  br i1 %cmp10, label %lor.lhs.false9.if.then15_crit_edge, label %lor.lhs.false11

lor.lhs.false9.if.then15_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 3
  %26 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cra_blocksize.i.i, align 4
  %rem = urem i32 %25, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool14.not = icmp eq i32 %rem, 0
  br i1 %tobool14.not, label %if.end32, label %lor.lhs.false11.if.then15_crit_edge

lor.lhs.false11.if.then15_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false11.if.then15_crit_edge, %lor.lhs.false9.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %28 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp17 = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %and.i)
  %cmp18.not = icmp eq i32 %and.i, 167772160
  %or.cond255 = select i1 %cmp17, i1 true, i1 %cmp18.not
  br i1 %or.cond255, label %if.else, label %if.then15.fallback_crit_edge

if.then15.fallback_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %fallback

if.else:                                          ; preds = %if.then15
  %cra_blocksize.i.i261 = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 3
  %30 = ptrtoint ptr %cra_blocksize.i.i261 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cra_blocksize.i.i261, align 4
  %rem22 = urem i32 %29, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem22)
  %tobool23.not = icmp ne i32 %rem22, 0
  %or.cond256 = select i1 %tobool23.not, i1 %cmp18.not, i1 false
  br i1 %or.cond256, label %if.else.fallback_crit_edge, label %do.end

if.else.fallback_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %fallback

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %23, i32 noundef %29, i32 noundef %5) #14
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false11
  %32 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %lldi = getelementptr i8, ptr %33, i32 -148
  %34 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lldi, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %call36 = tail call i32 @chcr_cipher_dma_map(ptr noundef %dev35, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %36 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %37)
  %cmp41 = icmp ult i32 %37, 352
  br i1 %cmp41, label %if.end62, label %if.end62.thread

if.end62.thread:                                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %38 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %38, align 4
  br label %if.then65

if.end62:                                         ; preds = %if.end39
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %40 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst, align 4
  %call44 = tail call fastcc i32 @sg_nents_xlen(ptr noundef %41, i32 noundef %37, i32 noundef 2048, i32 noundef 0)
  %shr.i = lshr i32 %call44, 3
  %rem.i = and i32 %call44, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp ne i32 %rem.i, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %add.i = add nuw nsw i32 %shr.i, %cond.i
  %mul.i = shl i32 %add.i, 4
  %shl.i = shl i32 %call44, 3
  %shl5.i = and i32 %shl.i, 8
  %add1.i = add i32 %shl5.i, %shl.i
  %add6.i = add i32 %add1.i, %mul.i
  %conv = and i32 %add6.i, 65528
  %42 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %enckey_len, align 4
  %44 = add i32 %43, 111
  %add48 = and i32 %44, -16
  %45 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %req, align 128
  %add49 = add i32 %46, 48
  %add52 = add i32 %add49, %add48
  %add54 = add i32 %add52, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %add54)
  %cmp55 = icmp ult i32 %add54, 513
  %conv57 = zext i1 %cmp55 to i16
  %47 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv57, ptr %47, align 4
  br i1 %cmp55, label %if.else84, label %if.end62.if.then65_crit_edge

if.end62.if.then65_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65

if.then65:                                        ; preds = %if.end62.if.then65_crit_edge, %if.end62.thread
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %49 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %src, align 8
  %dst66 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %51 = ptrtoint ptr %dst66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dst66, align 4
  %53 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %enckey_len, align 4
  %sub68 = sub i32 368, %54
  %call69 = tail call fastcc i32 @chcr_sg_ent_in_wr(ptr noundef %50, ptr noundef %52, i32 noundef %sub68, i32 noundef 0, i32 noundef 0)
  %55 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %processed, align 8
  %add71 = add i32 %56, %call69
  %57 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add71, i32 %58)
  %cmp73.not = icmp ult i32 %add71, %58
  br i1 %cmp73.not, label %if.else79, label %if.then75

if.then75:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %sub78 = sub i32 %58, %56
  br label %if.end86

if.else79:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %rem81 = srem i32 %call69, 16
  %sub82 = sub i32 %call69, %rem81
  br label %if.end86

if.else84:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %req, align 128
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.else79, %if.then75
  %bytes.0 = phi i32 [ %60, %if.else84 ], [ %sub78, %if.then75 ], [ %sub82, %if.else79 ]
  %61 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %and.i, label %if.end86.if.else108_crit_edge [
    i32 134217728, label %if.end92.thread
    i32 150994944, label %if.then95
  ]

if.end86.if.else108_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else108

if.end92.thread:                                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iv, align 4
  %incdec.ptr.i = getelementptr i8, ptr %63, i32 12
  %64 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %incdec.ptr.i, align 4
  %neg.i = xor i32 %65, -1
  %div7.i = lshr i32 %bytes.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i, i32 %neg.i)
  %cmp.not.not.i = icmp ugt i32 %div7.i, %neg.i
  %add.i264 = shl i32 %neg.i, 4
  %mul.i265 = add i32 %add.i264, 16
  %bytes.addr.0.i = select i1 %cmp.not.not.i, i32 %mul.i265, i32 %bytes.0
  br label %if.else108

if.then95:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %iv96 = getelementptr inbounds %struct.chcr_skcipher_req_ctx, ptr %__ctx.i, i32 0, i32 10
  %nonce = getelementptr i8, ptr %1, i32 277
  %66 = ptrtoint ptr %nonce to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %nonce, align 1
  %68 = ptrtoint ptr %iv96 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %iv96, align 2
  %add.ptr = getelementptr %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 2
  %69 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iv, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 8)
  %72 = load i64, ptr %70, align 1
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 %72, ptr %add.ptr, align 1
  %add.ptr104 = getelementptr %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 10
  %74 = ptrtoint ptr %add.ptr104 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %add.ptr104, align 4
  %init_iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 14
  %75 = call ptr @memcpy(ptr %init_iv, ptr %iv96, i32 16)
  br label %if.end115

if.else108:                                       ; preds = %if.end92.thread, %if.end86.if.else108_crit_edge
  %bytes.1275 = phi i32 [ %bytes.addr.0.i, %if.end92.thread ], [ %bytes.0, %if.end86.if.else108_crit_edge ]
  %iv109 = getelementptr inbounds %struct.chcr_skcipher_req_ctx, ptr %__ctx.i, i32 0, i32 10
  %76 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %iv, align 4
  %78 = call ptr @memcpy(ptr %iv109, ptr %77, i32 16)
  %init_iv112 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 14
  %79 = call ptr @memcpy(ptr %init_iv112, ptr %77, i32 16)
  br label %if.end115

if.end115:                                        ; preds = %if.else108, %if.then95
  %bytes.1274 = phi i32 [ %bytes.1275, %if.else108 ], [ %bytes.0, %if.then95 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.1274)
  %cmp116 = icmp eq i32 %bytes.1274, 0
  br i1 %cmp116, label %if.then120, label %if.end133, !prof !136

if.then120:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %lldi123 = getelementptr i8, ptr %81, i32 -148
  %82 = ptrtoint ptr %lldi123 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %lldi123, align 4
  %dev125 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  tail call void @chcr_cipher_dma_unmap(ptr noundef %dev125, ptr noundef %req)
  br label %fallback

fallback:                                         ; preds = %if.then120, %if.else.fallback_crit_edge, %if.then15.fallback_crit_edge
  %fallback126 = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 73, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fallback126, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %fallback126, i32 1, i32 3, i32 1) #11
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fallback126, ptr %fallback126, i32 1, ptr elementtype(i32) %fallback126) #11, !srcloc !137
  %85 = ptrtoint ptr %ablkctx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ablkctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %and.i)
  %cmp127 = icmp eq i32 %and.i, 150994944
  br i1 %cmp127, label %cond.true, label %cond.false

cond.true:                                        ; preds = %fallback
  call void @__sanitizer_cov_trace_pc() #13
  %iv129 = getelementptr inbounds %struct.chcr_skcipher_req_ctx, ptr %__ctx.i, i32 0, i32 10
  br label %cond.end

cond.false:                                       ; preds = %fallback
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %iv, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %iv129, %cond.true ], [ %88, %cond.false ]
  %fallback_req.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %86, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %89 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %90 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %92 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %94 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %96 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %97 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %95, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %98 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %91, ptr %flags4.i.i, align 4
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %99 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %101 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dst.i, align 4
  %103 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %req, align 128
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %105 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %100, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %106 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %102, ptr %dst2.i.i, align 4
  %107 = ptrtoint ptr %fallback_req.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %104, ptr %fallback_req.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %108 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %cond, ptr %iv4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %op_type)
  %tobool.not.i268 = icmp eq i16 %op_type, 0
  br i1 %tobool.not.i268, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req.i) #11
  br label %cleanup

cond.false.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req.i) #11
  br label %cleanup

if.end133:                                        ; preds = %if.end115
  %conv134 = zext i16 %op_type to i32
  %op = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %109 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv134, ptr %op, align 32
  %src135 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %110 = ptrtoint ptr %src135 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %src135, align 8
  %srcsg = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 0, i32 1
  %112 = ptrtoint ptr %srcsg to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %srcsg, align 4
  %dst136 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %113 = ptrtoint ptr %dst136 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dst136, align 4
  %dstsg = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %115 = ptrtoint ptr %dstsg to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %dstsg, align 4
  %src_ofst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %116 = ptrtoint ptr %src_ofst to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %src_ofst, align 8
  %dst_ofst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 2
  %117 = ptrtoint ptr %dst_ofst to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %dst_ofst, align 4
  %qid137 = getelementptr inbounds %struct.cipher_wr_param, ptr %wrparam, i32 0, i32 3
  %118 = ptrtoint ptr %qid137 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %qid, ptr %qid137, align 4
  %119 = ptrtoint ptr %wrparam to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %req, ptr %wrparam, align 4
  %bytes139 = getelementptr inbounds %struct.cipher_wr_param, ptr %wrparam, i32 0, i32 2
  %120 = ptrtoint ptr %bytes139 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %bytes.1274, ptr %bytes139, align 4
  %call140 = call fastcc ptr @create_cipher_wr(ptr noundef nonnull %wrparam)
  %121 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call140, ptr %skb, align 4
  %cmp.i = icmp ugt ptr %call140, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then142, label %if.end144

if.then142:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %call140 to i32
  %123 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %lldi157 = getelementptr i8, ptr %124, i32 -148
  %125 = ptrtoint ptr %lldi157 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %lldi157, align 4
  %dev159 = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 44
  tail call void @chcr_cipher_dma_unmap(ptr noundef %dev159, ptr noundef %req)
  br label %cleanup

if.end144:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  %127 = ptrtoint ptr %processed to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %bytes.1274, ptr %processed, align 8
  %last_req_len = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %128 = ptrtoint ptr %last_req_len to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %bytes.1274, ptr %last_req_len, align 4
  %129 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %bytes.1274)
  %tobool149 = icmp ne i32 %130, %bytes.1274
  %lnot.ext153 = zext i1 %tobool149 to i32
  %131 = ptrtoint ptr %partial_req to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %lnot.ext153, ptr %partial_req, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end144, %if.then142, %cond.false.i, %cond.true.i, %if.end32.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end144 ], [ -22, %do.end ], [ %call36, %if.end32.cleanup_crit_edge ], [ %122, %if.then142 ], [ -22, %entry.cleanup_crit_edge ], [ %call6.i, %cond.true.i ], [ %call8.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrparam) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @assign_chcr_device() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chcr_compute_partial_hash(ptr noundef %desc, ptr noundef %iopad, ptr nocapture noundef writeonly %result_hash, i32 noundef %digest_size) unnamed_addr #0 align 64 {
entry:
  %sha1_st = alloca %struct.sha1_state, align 8
  %sha256_st = alloca %struct.sha256_state, align 8
  %sha512_st = alloca %struct.sha512_state, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %sha1_st) #11
  %0 = call ptr @memset(ptr %sha1_st, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %sha256_st) #11
  %1 = call ptr @memset(ptr %sha256_st, i32 255, i32 104)
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %sha512_st) #11
  %2 = call ptr @memset(ptr %sha512_st, i32 255, i32 208)
  %3 = add i32 %digest_size, -20
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 30)
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %4, label %if.else79 [
    i32 0, label %if.then
    i32 2, label %if.then9
    i32 3, label %if.then27
    i32 7, label %if.then45
    i32 11, label %if.then63
  ]

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.then.cond.end6_crit_edge

if.then.cond.end6_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end6

crypto_shash_init.exit:                           ; preds = %if.then
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 -256
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %13(ptr noundef %desc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %cond.false, label %crypto_shash_init.exit.cond.end6_crit_edge

crypto_shash_init.exit.cond.end6_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end6

cond.false:                                       ; preds = %crypto_shash_init.exit
  %call1 = tail call i32 @crypto_shash_update(ptr noundef %desc, ptr noundef %iopad, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cond.false4, label %cond.false.cond.end6_crit_edge

cond.false.cond.end6_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end6

cond.false4:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i112 = getelementptr inbounds %struct.crypto_shash, ptr %15, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %__crt_alg.i.i112 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i.i112, align 4
  %export.i = getelementptr i8, ptr %17, i32 -236
  %18 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %export.i, align 4
  %call1.i = call i32 %19(ptr noundef %desc, ptr noundef nonnull %sha1_st) #11
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false4, %cond.false.cond.end6_crit_edge, %crypto_shash_init.exit.cond.end6_crit_edge, %if.then.cond.end6_crit_edge
  %cond7 = phi i32 [ %call3.i, %crypto_shash_init.exit.cond.end6_crit_edge ], [ %call1.i, %cond.false4 ], [ %call1, %cond.false.cond.end6_crit_edge ], [ -126, %if.then.cond.end6_crit_edge ]
  %20 = call ptr @memcpy(ptr %result_hash, ptr %sha1_st, i32 20)
  br label %if.end84

if.then9:                                         ; preds = %entry
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc, align 8
  %base.i.i.i113 = getelementptr inbounds %struct.crypto_shash, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %base.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base.i.i.i113, align 128
  %and.i114 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %tobool.not.i115 = icmp eq i32 %and.i114, 0
  br i1 %tobool.not.i115, label %crypto_shash_init.exit121, label %if.then9.cond.end21_crit_edge

if.then9.cond.end21_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end21

crypto_shash_init.exit121:                        ; preds = %if.then9
  %__crt_alg.i.i116 = getelementptr inbounds %struct.crypto_shash, ptr %22, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %__crt_alg.i.i116 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_alg.i.i116, align 4
  %add.ptr.i.i.i117 = getelementptr i8, ptr %26, i32 -256
  %27 = ptrtoint ptr %add.ptr.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i.i.i117, align 128
  %call3.i118 = tail call i32 %28(ptr noundef %desc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i118)
  %tobool11.not = icmp eq i32 %call3.i118, 0
  br i1 %tobool11.not, label %cond.false13, label %crypto_shash_init.exit121.cond.end21_crit_edge

crypto_shash_init.exit121.cond.end21_crit_edge:   ; preds = %crypto_shash_init.exit121
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end21

cond.false13:                                     ; preds = %crypto_shash_init.exit121
  %call14 = tail call i32 @crypto_shash_update(ptr noundef %desc, ptr noundef %iopad, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cond.false17, label %cond.false13.cond.end21_crit_edge

cond.false13.cond.end21_crit_edge:                ; preds = %cond.false13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end21

cond.false17:                                     ; preds = %cond.false13
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i122 = getelementptr inbounds %struct.crypto_shash, ptr %30, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %__crt_alg.i.i122 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_alg.i.i122, align 4
  %export.i123 = getelementptr i8, ptr %32, i32 -236
  %33 = ptrtoint ptr %export.i123 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %export.i123, align 4
  %call1.i124 = call i32 %34(ptr noundef %desc, ptr noundef nonnull %sha256_st) #11
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false17, %cond.false13.cond.end21_crit_edge, %crypto_shash_init.exit121.cond.end21_crit_edge, %if.then9.cond.end21_crit_edge
  %cond22 = phi i32 [ %call3.i118, %crypto_shash_init.exit121.cond.end21_crit_edge ], [ %call1.i124, %cond.false17 ], [ %call14, %cond.false13.cond.end21_crit_edge ], [ -126, %if.then9.cond.end21_crit_edge ]
  %35 = call ptr @memcpy(ptr %result_hash, ptr %sha256_st, i32 32)
  br label %if.end84

if.then27:                                        ; preds = %entry
  %36 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc, align 8
  %base.i.i.i125 = getelementptr inbounds %struct.crypto_shash, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %base.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base.i.i.i125, align 128
  %and.i126 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool.not.i127 = icmp eq i32 %and.i126, 0
  br i1 %tobool.not.i127, label %crypto_shash_init.exit133, label %if.then27.cond.end39_crit_edge

if.then27.cond.end39_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end39

crypto_shash_init.exit133:                        ; preds = %if.then27
  %__crt_alg.i.i128 = getelementptr inbounds %struct.crypto_shash, ptr %37, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %__crt_alg.i.i128 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__crt_alg.i.i128, align 4
  %add.ptr.i.i.i129 = getelementptr i8, ptr %41, i32 -256
  %42 = ptrtoint ptr %add.ptr.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i.i.i129, align 128
  %call3.i130 = tail call i32 %43(ptr noundef %desc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i130)
  %tobool29.not = icmp eq i32 %call3.i130, 0
  br i1 %tobool29.not, label %cond.false31, label %crypto_shash_init.exit133.cond.end39_crit_edge

crypto_shash_init.exit133.cond.end39_crit_edge:   ; preds = %crypto_shash_init.exit133
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end39

cond.false31:                                     ; preds = %crypto_shash_init.exit133
  %call32 = tail call i32 @crypto_shash_update(ptr noundef %desc, ptr noundef %iopad, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cond.false35, label %cond.false31.cond.end39_crit_edge

cond.false31.cond.end39_crit_edge:                ; preds = %cond.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end39

cond.false35:                                     ; preds = %cond.false31
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i134 = getelementptr inbounds %struct.crypto_shash, ptr %45, i32 0, i32 2, i32 3
  %46 = ptrtoint ptr %__crt_alg.i.i134 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__crt_alg.i.i134, align 4
  %export.i135 = getelementptr i8, ptr %47, i32 -236
  %48 = ptrtoint ptr %export.i135 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %export.i135, align 4
  %call1.i136 = call i32 %49(ptr noundef %desc, ptr noundef nonnull %sha256_st) #11
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false35, %cond.false31.cond.end39_crit_edge, %crypto_shash_init.exit133.cond.end39_crit_edge, %if.then27.cond.end39_crit_edge
  %cond40 = phi i32 [ %call3.i130, %crypto_shash_init.exit133.cond.end39_crit_edge ], [ %call1.i136, %cond.false35 ], [ %call32, %cond.false31.cond.end39_crit_edge ], [ -126, %if.then27.cond.end39_crit_edge ]
  %50 = call ptr @memcpy(ptr %result_hash, ptr %sha256_st, i32 32)
  br label %if.end84

if.then45:                                        ; preds = %entry
  %51 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %desc, align 8
  %base.i.i.i137 = getelementptr inbounds %struct.crypto_shash, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %base.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base.i.i.i137, align 128
  %and.i138 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.not.i139 = icmp eq i32 %and.i138, 0
  br i1 %tobool.not.i139, label %crypto_shash_init.exit145, label %if.then45.cond.end57_crit_edge

if.then45.cond.end57_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end57

crypto_shash_init.exit145:                        ; preds = %if.then45
  %__crt_alg.i.i140 = getelementptr inbounds %struct.crypto_shash, ptr %52, i32 0, i32 2, i32 3
  %55 = ptrtoint ptr %__crt_alg.i.i140 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %__crt_alg.i.i140, align 4
  %add.ptr.i.i.i141 = getelementptr i8, ptr %56, i32 -256
  %57 = ptrtoint ptr %add.ptr.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i.i.i141, align 128
  %call3.i142 = tail call i32 %58(ptr noundef %desc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i142)
  %tobool47.not = icmp eq i32 %call3.i142, 0
  br i1 %tobool47.not, label %cond.false49, label %crypto_shash_init.exit145.cond.end57_crit_edge

crypto_shash_init.exit145.cond.end57_crit_edge:   ; preds = %crypto_shash_init.exit145
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end57

cond.false49:                                     ; preds = %crypto_shash_init.exit145
  %call50 = tail call i32 @crypto_shash_update(ptr noundef %desc, ptr noundef %iopad, i32 noundef 128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cond.false53, label %cond.false49.cond.end57_crit_edge

cond.false49.cond.end57_crit_edge:                ; preds = %cond.false49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end57

cond.false53:                                     ; preds = %cond.false49
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i146 = getelementptr inbounds %struct.crypto_shash, ptr %60, i32 0, i32 2, i32 3
  %61 = ptrtoint ptr %__crt_alg.i.i146 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %__crt_alg.i.i146, align 4
  %export.i147 = getelementptr i8, ptr %62, i32 -236
  %63 = ptrtoint ptr %export.i147 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %export.i147, align 4
  %call1.i148 = call i32 %64(ptr noundef %desc, ptr noundef nonnull %sha512_st) #11
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false53, %cond.false49.cond.end57_crit_edge, %crypto_shash_init.exit145.cond.end57_crit_edge, %if.then45.cond.end57_crit_edge
  %cond58 = phi i32 [ %call3.i142, %crypto_shash_init.exit145.cond.end57_crit_edge ], [ %call1.i148, %cond.false53 ], [ %call50, %cond.false49.cond.end57_crit_edge ], [ -126, %if.then45.cond.end57_crit_edge ]
  %65 = call ptr @memcpy(ptr %result_hash, ptr %sha512_st, i32 64)
  br label %if.end84

if.then63:                                        ; preds = %entry
  %66 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %desc, align 8
  %base.i.i.i149 = getelementptr inbounds %struct.crypto_shash, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %base.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %base.i.i.i149, align 128
  %and.i150 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool.not.i151 = icmp eq i32 %and.i150, 0
  br i1 %tobool.not.i151, label %crypto_shash_init.exit157, label %if.then63.cond.end75_crit_edge

if.then63.cond.end75_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end75

crypto_shash_init.exit157:                        ; preds = %if.then63
  %__crt_alg.i.i152 = getelementptr inbounds %struct.crypto_shash, ptr %67, i32 0, i32 2, i32 3
  %70 = ptrtoint ptr %__crt_alg.i.i152 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %__crt_alg.i.i152, align 4
  %add.ptr.i.i.i153 = getelementptr i8, ptr %71, i32 -256
  %72 = ptrtoint ptr %add.ptr.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i.i.i153, align 128
  %call3.i154 = tail call i32 %73(ptr noundef %desc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i154)
  %tobool65.not = icmp eq i32 %call3.i154, 0
  br i1 %tobool65.not, label %cond.false67, label %crypto_shash_init.exit157.cond.end75_crit_edge

crypto_shash_init.exit157.cond.end75_crit_edge:   ; preds = %crypto_shash_init.exit157
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end75

cond.false67:                                     ; preds = %crypto_shash_init.exit157
  %call68 = tail call i32 @crypto_shash_update(ptr noundef %desc, ptr noundef %iopad, i32 noundef 128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %cond.false71, label %cond.false67.cond.end75_crit_edge

cond.false67.cond.end75_crit_edge:                ; preds = %cond.false67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end75

cond.false71:                                     ; preds = %cond.false67
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i158 = getelementptr inbounds %struct.crypto_shash, ptr %75, i32 0, i32 2, i32 3
  %76 = ptrtoint ptr %__crt_alg.i.i158 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %__crt_alg.i.i158, align 4
  %export.i159 = getelementptr i8, ptr %77, i32 -236
  %78 = ptrtoint ptr %export.i159 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %export.i159, align 4
  %call1.i160 = call i32 %79(ptr noundef %desc, ptr noundef nonnull %sha512_st) #11
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false71, %cond.false67.cond.end75_crit_edge, %crypto_shash_init.exit157.cond.end75_crit_edge, %if.then63.cond.end75_crit_edge
  %cond76 = phi i32 [ %call3.i154, %crypto_shash_init.exit157.cond.end75_crit_edge ], [ %call1.i160, %cond.false71 ], [ %call68, %cond.false67.cond.end75_crit_edge ], [ -126, %if.then63.cond.end75_crit_edge ]
  %80 = call ptr @memcpy(ptr %result_hash, ptr %sha512_st, i32 64)
  br label %if.end84

if.else79:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %digest_size) #14
  br label %if.end84

if.end84:                                         ; preds = %if.else79, %cond.end75, %cond.end57, %cond.end39, %cond.end21, %cond.end6
  %error.0 = phi i32 [ %cond7, %cond.end6 ], [ %cond22, %cond.end21 ], [ %cond40, %cond.end39 ], [ %cond58, %cond.end57 ], [ %cond76, %cond.end75 ], [ -22, %if.else79 ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %sha512_st) #11
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %sha256_st) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %sha1_st) #11
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chcr_aead_op(ptr noundef %req, i32 noundef %size, ptr nocapture noundef readonly %create_wr_fn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %op = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op, align 4
  %conv = trunc i32 %7 to i16
  %8 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i, align 16
  %sw_cipher.i = getelementptr i8, ptr %9, i32 208
  %10 = ptrtoint ptr %sw_cipher.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw_cipher.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %11, i32 0, i32 3
  store ptr %base.i.i.i, ptr %op, align 16
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %13, ptr %flags4.i.i, align 4
  %src.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %21 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src.i, align 4
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %23 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst.i, align 8
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %25 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cryptlen.i, align 4
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %27 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iv.i, align 32
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %29 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %22, ptr %src1.i.i, align 4
  %dst2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %30 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %dst2.i.i, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %31 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %26, ptr %cryptlen3.i.i, align 4
  %iv4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %32 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %iv4.i.i, align 32
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %33 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %assoclen.i, align 8
  %assoclen1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %35 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %assoclen1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not.i = icmp eq i16 %conv, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #11
  br label %cleanup

cond.false.i:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %inflight.i = getelementptr inbounds %struct.chcr_dev, ptr %3, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !137
  %ports = getelementptr i8, ptr %3, i32 -136
  %37 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ports, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %txqidx = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %41 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %txqidx, align 4
  %conv11 = zext i16 %42 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %40, i32 2304
  %43 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  %uld_txq_info.i = getelementptr inbounds %struct.adapter, ptr %44, i32 0, i32 22, i32 6
  %45 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %46, i32 1
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @local_bh_disable() #11
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %lock.i = getelementptr %struct.sge_uld_txq, ptr %50, i32 %conv11, i32 2, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %full.i = getelementptr %struct.sge_uld_txq, ptr %50, i32 %conv11, i32 5
  %51 = ptrtoint ptr %full.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %full.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i70.not = icmp eq i8 %52, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  tail call fastcc void @local_bh_enable() #11
  br i1 %tobool.not.i70.not, label %if.end10.if.end16_crit_edge, label %land.lhs.true

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end10
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags, align 4
  %and = and i32 %54, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !135
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %56 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %57, i32 -256
  %58 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i73, align 128
  %and.i = and i32 %59, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 33554432
  br i1 %cmp, label %land.lhs.true19, label %if.end16.if.end30_crit_edge

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true19:                                  ; preds = %if.end16
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %60 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %assoclen, align 8
  %62 = add i32 %61, -16
  %switch.and.i = and i32 %62, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %land.lhs.true19.if.end30_crit_edge, label %do.end26

land.lhs.true19.if.end30_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

do.end26:                                         ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %61) #14
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true19.if.end30_crit_edge, %if.end16.if.end30_crit_edge
  %rxq_ids = getelementptr i8, ptr %3, i32 -124
  %63 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rxq_ids, align 4
  %rxqidx = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i, i32 0, i32 8
  %65 = ptrtoint ptr %rxqidx to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rxqidx, align 2
  %idxprom = zext i16 %66 to i32
  %arrayidx32 = getelementptr i16, ptr %64, i32 %idxprom
  %67 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx32, align 2
  %call33 = tail call ptr %create_wr_fn(ptr noundef %req, i16 noundef zeroext %68, i32 noundef %size) #11, !callees !162
  %tobool.not.i74 = icmp eq ptr %call33, null
  %cmp.i75 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  %spec.select.i76 = or i1 %tobool.not.i74, %cmp.i75
  br i1 %spec.select.i76, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inflight.i, i32 1, i32 3, i32 1) #11
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight.i, ptr %inflight.i, i32 1, ptr elementtype(i32) %inflight.i) #11, !srcloc !135
  %70 = ptrtoint ptr %call33 to i32
  %spec.select.i79 = select i1 %cmp.i75, i32 %70, i32 0
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ports, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %75 = getelementptr inbounds %struct.anon.49, ptr %call33, i32 0, i32 2
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %74, ptr %75, align 8
  %77 = ptrtoint ptr %txqidx to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %txqidx, align 4
  %conv.i = shl i16 %78, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call33, i32 0, i32 10
  %79 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i, ptr %queue_mapping1.i.i, align 8
  %call43 = tail call i32 @chcr_send_wr(ptr noundef nonnull %call33) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then35, %do.end26, %if.then15, %cond.false.i, %cond.true.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end26 ], [ %spec.select.i79, %if.then35 ], [ -115, %if.end37 ], [ -28, %if.then15 ], [ -6, %do.end ], [ %call6.i, %cond.true.i ], [ %call7.i, %cond.false.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @create_authenc_wr(ptr noundef %req, i16 noundef zeroext %qid, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %aeadctx.i = getelementptr i8, ptr %1, i32 200
  %authenc.i = getelementptr i8, ptr %1, i32 288
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i404 = getelementptr i8, ptr %5, i32 -256
  %6 = ptrtoint ptr %add.ptr.i404 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i404, align 128
  %and.i = and i32 %7, 251658240
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 128
  %flags8 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags8, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2592, i32 3264
  %lldi.i = getelementptr i8, ptr %3, i32 -148
  %12 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lldi.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %rxqidx = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i, i32 0, i32 8
  %16 = ptrtoint ptr %rxqidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rxqidx, align 2
  %rxq_perchan = getelementptr i8, ptr %1, i32 132
  %18 = ptrtoint ptr %rxq_perchan to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rxq_perchan, align 4
  %div.rhs.trunc = zext i8 %19 to i16
  %div476 = udiv i16 %17, %div.rhs.trunc
  %div.zext = zext i16 %div476 to i32
  %ports = getelementptr i8, ptr %3, i32 -136
  %20 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %div.zext
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %call11 = tail call i32 @cxgb4_port_e2cchan(ptr noundef %23) #11
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %24 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cryptlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %b0_len = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %b0_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %b0_len, align 4
  %27 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i.i = getelementptr i8, ptr %28, i32 128
  %enckey_len.i = getelementptr i8, ptr %28, i32 204
  %29 = ptrtoint ptr %enckey_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %enckey_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 -128
  %31 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i.i, align 128
  %op.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp ne i32 %34, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %32)
  %cmp5.i = icmp ult i32 %25, %32
  %or.cond477 = select i1 %tobool.not.i, i1 %cmp5.i, i1 false
  br i1 %or.cond477, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %35 = ptrtoint ptr %b0_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %b0_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool8.not.i = icmp eq i32 %36, 0
  %add.ptr.i405 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 6
  %spec.select.i = select i1 %tobool8.not.i, ptr null, ptr %add.ptr.i405
  %37 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 32
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %spec.select.i, ptr %37, align 4
  %39 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  %lldi.i406 = getelementptr i8, ptr %40, i32 -148
  %41 = ptrtoint ptr %lldi.i406 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lldi.i406, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %conv.i = trunc i32 %34 to i16
  %call15.i = tail call i32 @chcr_aead_dma_map(ptr noundef %dev.i, ptr noundef %req, i16 noundef zeroext %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end17, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %and.i)
  %switch.selectcmp.case1 = icmp eq i32 %and.i, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103808, i32 %and.i)
  %switch.selectcmp.case2 = icmp eq i32 %and.i, 218103808
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %43 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dst, align 8
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %45 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %assoclen, align 8
  %47 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cryptlen, align 4
  %add = add i32 %48, %46
  %49 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool25.not = icmp eq i32 %50, 0
  %sub = sub i32 0, %9
  %cond26 = select i1 %tobool25.not, i32 %9, i32 %sub
  %add27 = add i32 %add, %cond26
  %tobool4.not40.i = icmp eq ptr %44, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add27)
  %tobool6.not41.i = icmp eq i32 %add27, 0
  %or.cond3342.i = or i1 %tobool4.not40.i, %tobool6.not41.i
  br i1 %or.cond3342.i, label %if.end17.sg_nents_xlen.exit_crit_edge, label %while.body8.lr.ph.i

if.end17.sg_nents_xlen.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit

while.body8.lr.ph.i:                              ; preds = %if.end17
  %dma_length9.peel.i = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 4
  %51 = ptrtoint ptr %dma_length9.peel.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_length9.peel.i, align 4
  %53 = tail call i32 @llvm.umin.i32(i32 %add27, i32 %52) #11
  %sub12.peel.i = add i32 %53, 2047
  %div.peel.i478 = lshr i32 %sub12.peel.i, 11
  %sub14.peel.i = sub i32 %add27, %53
  %call15.peel.i = tail call ptr @sg_next(ptr noundef nonnull %44) #11
  %tobool4.not.peel.i = icmp eq ptr %call15.peel.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.peel.i)
  %tobool6.not.peel.i = icmp eq i32 %sub14.peel.i, 0
  %or.cond33.peel.i = select i1 %tobool4.not.peel.i, i1 true, i1 %tobool6.not.peel.i
  br i1 %or.cond33.peel.i, label %while.body8.lr.ph.i.sg_nents_xlen.exit_crit_edge, label %while.body8.lr.ph.i.while.body8.i_crit_edge

while.body8.lr.ph.i.while.body8.i_crit_edge:      ; preds = %while.body8.lr.ph.i
  br label %while.body8.i

while.body8.lr.ph.i.sg_nents_xlen.exit_crit_edge: ; preds = %while.body8.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit

while.body8.i:                                    ; preds = %while.body8.i.while.body8.i_crit_edge, %while.body8.lr.ph.i.while.body8.i_crit_edge
  %sg.addr.246.i = phi ptr [ %call15.i407, %while.body8.i.while.body8.i_crit_edge ], [ %call15.peel.i, %while.body8.lr.ph.i.while.body8.i_crit_edge ]
  %nents.044.i = phi i32 [ %add13.i, %while.body8.i.while.body8.i_crit_edge ], [ %div.peel.i478, %while.body8.lr.ph.i.while.body8.i_crit_edge ]
  %reqlen.addr.043.i = phi i32 [ %sub14.i, %while.body8.i.while.body8.i_crit_edge ], [ %sub14.peel.i, %while.body8.lr.ph.i.while.body8.i_crit_edge ]
  %dma_length9.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.246.i, i32 0, i32 4
  %54 = ptrtoint ptr %dma_length9.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_length9.i, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %reqlen.addr.043.i, i32 %55) #11
  %sub12.i = add i32 %56, 2047
  %div.i479 = lshr i32 %sub12.i, 11
  %add13.i = add i32 %div.i479, %nents.044.i
  %sub14.i = sub i32 %reqlen.addr.043.i, %56
  %call15.i407 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.246.i) #11
  %tobool4.not.i = icmp eq ptr %call15.i407, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.i)
  %tobool6.not.i = icmp eq i32 %sub14.i, 0
  %or.cond33.i = select i1 %tobool4.not.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond33.i, label %while.body8.i.sg_nents_xlen.exit_crit_edge, label %while.body8.i.while.body8.i_crit_edge, !llvm.loop !144

while.body8.i.while.body8.i_crit_edge:            ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body8.i

while.body8.i.sg_nents_xlen.exit_crit_edge:       ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit

sg_nents_xlen.exit:                               ; preds = %while.body8.i.sg_nents_xlen.exit_crit_edge, %while.body8.lr.ph.i.sg_nents_xlen.exit_crit_edge, %if.end17.sg_nents_xlen.exit_crit_edge
  %nents.0.lcssa.i = phi i32 [ 0, %if.end17.sg_nents_xlen.exit_crit_edge ], [ %div.peel.i478, %while.body8.lr.ph.i.sg_nents_xlen.exit_crit_edge ], [ %add13.i, %while.body8.i.sg_nents_xlen.exit_crit_edge ]
  %add29 = add i32 %nents.0.lcssa.i, 1
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %57 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %src, align 4
  %59 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %assoclen, align 8
  %61 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cryptlen, align 4
  %add32 = add i32 %62, %60
  %tobool4.not40.i409 = icmp eq ptr %58, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add32)
  %tobool6.not41.i410 = icmp eq i32 %add32, 0
  %or.cond3342.i411 = or i1 %tobool4.not40.i409, %tobool6.not41.i410
  br i1 %or.cond3342.i411, label %sg_nents_xlen.exit.sg_nents_xlen.exit435_crit_edge, label %while.body8.lr.ph.i420

sg_nents_xlen.exit.sg_nents_xlen.exit435_crit_edge: ; preds = %sg_nents_xlen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit435

while.body8.lr.ph.i420:                           ; preds = %sg_nents_xlen.exit
  %dma_length9.peel.i412 = getelementptr inbounds %struct.scatterlist, ptr %58, i32 0, i32 4
  %63 = ptrtoint ptr %dma_length9.peel.i412 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_length9.peel.i412, align 4
  %65 = tail call i32 @llvm.umin.i32(i32 %add32, i32 %64) #11
  %sub12.peel.i413 = add i32 %65, 65531
  %div.peel.i414 = udiv i32 %sub12.peel.i413, 65532
  %sub14.peel.i415 = sub i32 %add32, %65
  %call15.peel.i416 = tail call ptr @sg_next(ptr noundef nonnull %58) #11
  %tobool4.not.peel.i417 = icmp eq ptr %call15.peel.i416, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.peel.i415)
  %tobool6.not.peel.i418 = icmp eq i32 %sub14.peel.i415, 0
  %or.cond33.peel.i419 = select i1 %tobool4.not.peel.i417, i1 true, i1 %tobool6.not.peel.i418
  br i1 %or.cond33.peel.i419, label %while.body8.lr.ph.i420.sg_nents_xlen.exit435_crit_edge, label %while.body8.lr.ph.i420.while.body8.i433_crit_edge

while.body8.lr.ph.i420.while.body8.i433_crit_edge: ; preds = %while.body8.lr.ph.i420
  br label %while.body8.i433

while.body8.lr.ph.i420.sg_nents_xlen.exit435_crit_edge: ; preds = %while.body8.lr.ph.i420
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit435

while.body8.i433:                                 ; preds = %while.body8.i433.while.body8.i433_crit_edge, %while.body8.lr.ph.i420.while.body8.i433_crit_edge
  %sg.addr.246.i421 = phi ptr [ %call15.i429, %while.body8.i433.while.body8.i433_crit_edge ], [ %call15.peel.i416, %while.body8.lr.ph.i420.while.body8.i433_crit_edge ]
  %nents.044.i422 = phi i32 [ %add13.i427, %while.body8.i433.while.body8.i433_crit_edge ], [ %div.peel.i414, %while.body8.lr.ph.i420.while.body8.i433_crit_edge ]
  %reqlen.addr.043.i423 = phi i32 [ %sub14.i428, %while.body8.i433.while.body8.i433_crit_edge ], [ %sub14.peel.i415, %while.body8.lr.ph.i420.while.body8.i433_crit_edge ]
  %dma_length9.i424 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.246.i421, i32 0, i32 4
  %66 = ptrtoint ptr %dma_length9.i424 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_length9.i424, align 4
  %68 = tail call i32 @llvm.umin.i32(i32 %reqlen.addr.043.i423, i32 %67) #11
  %sub12.i425 = add i32 %68, 65531
  %div.i426 = udiv i32 %sub12.i425, 65532
  %add13.i427 = add i32 %div.i426, %nents.044.i422
  %sub14.i428 = sub i32 %reqlen.addr.043.i423, %68
  %call15.i429 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.246.i421) #11
  %tobool4.not.i430 = icmp eq ptr %call15.i429, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.i428)
  %tobool6.not.i431 = icmp eq i32 %sub14.i428, 0
  %or.cond33.i432 = select i1 %tobool4.not.i430, i1 true, i1 %tobool6.not.i431
  br i1 %or.cond33.i432, label %while.body8.i433.sg_nents_xlen.exit435_crit_edge, label %while.body8.i433.while.body8.i433_crit_edge, !llvm.loop !144

while.body8.i433.while.body8.i433_crit_edge:      ; preds = %while.body8.i433
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body8.i433

while.body8.i433.sg_nents_xlen.exit435_crit_edge: ; preds = %while.body8.i433
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit435

sg_nents_xlen.exit435:                            ; preds = %while.body8.i433.sg_nents_xlen.exit435_crit_edge, %while.body8.lr.ph.i420.sg_nents_xlen.exit435_crit_edge, %sg_nents_xlen.exit.sg_nents_xlen.exit435_crit_edge
  %nents.0.lcssa.i434 = phi i32 [ 0, %sg_nents_xlen.exit.sg_nents_xlen.exit435_crit_edge ], [ %div.peel.i414, %while.body8.lr.ph.i420.sg_nents_xlen.exit435_crit_edge ], [ %add13.i427, %while.body8.i433.sg_nents_xlen.exit435_crit_edge ]
  %shr.i = lshr i32 %add29, 3
  %rem.i = and i32 %add29, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i436 = icmp ne i32 %rem.i, 0
  %cond.i = zext i1 %tobool.not.i436 to i32
  %add.i = add nuw nsw i32 %shr.i, %cond.i
  %mul.i = shl i32 %add.i, 4
  %shl.i = shl i32 %add29, 3
  %shl5.i = and i32 %shl.i, 8
  %add1.i = add i32 %shl5.i, %shl.i
  %add6.i = add i32 %add1.i, %mul.i
  %conv35 = and i32 %add6.i, 65528
  %69 = ptrtoint ptr %aeadctx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %aeadctx.i, align 4
  %71 = lshr i32 %70, 20
  %shl = and i32 %71, 4080
  %sub37 = add nsw i32 %shl, -16
  %add39 = add nuw nsw i32 %conv35, 112
  %add41 = add nuw nsw i32 %add39, %shl
  %72 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %assoclen, align 8
  %74 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cryptlen, align 4
  %add43 = add i32 %75, %73
  %add45 = add i32 %add43, %add41
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add45)
  %cmp46 = icmp ult i32 %add45, 512
  %conv48 = zext i1 %cmp46 to i16
  %imm = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %76 = ptrtoint ptr %imm to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv48, ptr %imm, align 4
  br i1 %cmp46, label %cond.true52, label %cond.false59

cond.true52:                                      ; preds = %sg_nents_xlen.exit435
  call void @__sanitizer_cov_trace_pc() #13
  %add57 = add i32 %add43, 15
  %div58400 = and i32 %add57, -16
  br label %cond.end62

cond.false59:                                     ; preds = %sg_nents_xlen.exit435
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i = add i32 %nents.0.lcssa.i434, -1
  %mul.i438 = mul i32 %dec.i, 3
  %div4.i = lshr i32 %mul.i438, 1
  %and.i439 = and i32 %dec.i, 1
  %add.i440 = or i32 %and.i439, 2
  %add1.i441 = add nuw i32 %add.i440, %div4.i
  %mul61 = shl i32 %add1.i441, 3
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false59, %cond.true52
  %cond63 = phi i32 [ %div58400, %cond.true52 ], [ %mul61, %cond.false59 ]
  %add64 = add nuw nsw i32 %add41, 15
  %add68 = add i32 %add64, %cond63
  %div69397 = and i32 %add68, -16
  %77 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %op.i, align 4
  %conv72 = trunc i32 %78 to i16
  %79 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i.i443 = getelementptr i8, ptr %80, i32 -128
  %81 = ptrtoint ptr %add.ptr.i.i.i443 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i.i.i443, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv72)
  %tobool.not.i445 = icmp eq i16 %conv72, 0
  %spec.select.i446 = select i1 %tobool.not.i445, i32 0, i32 %82
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %spec.select.i446)
  %cmp.i447 = icmp eq i32 %75, %spec.select.i446
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add29)
  %cmp3.i = icmp sgt i32 %add29, 32
  %or.cond.i = or i1 %cmp3.i, %cmp.i447
  br i1 %or.cond.i, label %cond.end62.if.then75_crit_edge, label %chcr_aead_need_fallback.exit

cond.end62.if.then75_crit_edge:                   ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then75

chcr_aead_need_fallback.exit:                     ; preds = %cond.end62
  call void @__sanitizer_cov_trace_const_cmp4(i32 496, i32 %73)
  %cmp6.i = icmp ult i32 %73, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %div69397)
  %cmp9.i = icmp slt i32 %div69397, 513
  %tobool74.not = and i1 %cmp6.i, %cmp9.i
  br i1 %tobool74.not, label %if.end80, label %chcr_aead_need_fallback.exit.if.then75_crit_edge

chcr_aead_need_fallback.exit.if.then75_crit_edge: ; preds = %chcr_aead_need_fallback.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then75

if.then75:                                        ; preds = %chcr_aead_need_fallback.exit.if.then75_crit_edge, %cond.end62.if.then75_crit_edge
  %fallback = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 73, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fallback, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %fallback, i32 1, i32 3, i32 1) #11
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fallback, ptr %fallback, i32 1, ptr elementtype(i32) %fallback) #11, !srcloc !137
  %84 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i.i450 = getelementptr i8, ptr %85, i32 128
  %86 = ptrtoint ptr %__crt_ctx.i.i.i.i450 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %__crt_ctx.i.i.i.i450, align 4
  %lldi.i451 = getelementptr i8, ptr %87, i32 -148
  %88 = ptrtoint ptr %lldi.i451 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lldi.i451, align 4
  %dev.i452 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  %90 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %op.i, align 4
  %conv.i454 = trunc i32 %91 to i16
  tail call void @chcr_aead_dma_unmap(ptr noundef %dev.i452, ptr noundef %req, i16 noundef zeroext %conv.i454) #11
  %92 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %op.i, align 4
  %conv77 = trunc i32 %93 to i16
  %94 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tfm.i, align 16
  %sw_cipher.i = getelementptr i8, ptr %95, i32 208
  %96 = ptrtoint ptr %sw_cipher.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sw_cipher.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %97, i32 0, i32 3
  store ptr %base.i.i.i, ptr %op.i, align 16
  %98 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags8, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %100 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %102 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %104 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %complete.i.i, align 8
  %105 = ptrtoint ptr %b0_len to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %103, ptr %b0_len, align 4
  %106 = ptrtoint ptr %imm to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %99, ptr %imm, align 4
  %107 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %src, align 4
  %109 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dst, align 8
  %111 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cryptlen, align 4
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %113 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %iv.i, align 32
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %115 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %108, ptr %src1.i.i, align 4
  %dst2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %116 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %110, ptr %dst2.i.i, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %117 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %112, ptr %cryptlen3.i.i, align 4
  %iv4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %118 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %114, ptr %iv4.i.i, align 32
  %119 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %assoclen, align 8
  %assoclen1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %121 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %assoclen1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv77)
  %tobool.not.i458 = icmp eq i16 %conv77, 0
  br i1 %tobool.not.i458, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #11
  br label %chcr_aead_fallback.exit

cond.false.i:                                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #11
  br label %chcr_aead_fallback.exit

chcr_aead_fallback.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i459 = phi i32 [ %call6.i, %cond.true.i ], [ %call7.i, %cond.false.i ]
  %122 = inttoptr i32 %cond.i459 to ptr
  br label %cleanup

if.end80:                                         ; preds = %chcr_aead_need_fallback.exit
  %call.i = tail call ptr @__alloc_skb(i32 noundef %div69397, i32 noundef %cond, i32 noundef 0, i32 noundef -1) #11
  %tobool82.not = icmp eq ptr %call.i, null
  br i1 %tobool82.not, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i.i461 = getelementptr i8, ptr %124, i32 128
  %125 = ptrtoint ptr %__crt_ctx.i.i.i.i461 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %__crt_ctx.i.i.i.i461, align 4
  %lldi.i462 = getelementptr i8, ptr %126, i32 -148
  %127 = ptrtoint ptr %lldi.i462 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %lldi.i462, align 4
  %dev.i463 = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  %129 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %op.i, align 4
  %conv.i465 = trunc i32 %130 to i16
  tail call void @chcr_aead_dma_unmap(ptr noundef %dev.i463, ptr noundef %req, i16 noundef zeroext %conv.i465) #11
  br label %cleanup

if.end84:                                         ; preds = %if.end80
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %131 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.i.not.i.i = icmp eq i32 %132, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !140

do.body3.i.i:                                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !141
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end84
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %133 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i466 = getelementptr i8, ptr %134, i32 %div69397
  store ptr %add.ptr.i.i466, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %135 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %136, %div69397
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %137 = call ptr @memset(ptr %134, i32 0, i32 %div69397)
  %138 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp87 = icmp eq i32 %139, 0
  %spec.select = select i1 %cmp87, i32 0, i32 %9
  %shl93 = shl i32 %call11, 22
  %or98 = or i32 %shl93, -1978531839
  %sec_cpl = getelementptr inbounds %struct.chcr_wr, ptr %134, i32 0, i32 3
  %140 = ptrtoint ptr %sec_cpl to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %or98, ptr %sec_cpl, align 8
  %141 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %assoclen, align 8
  %add100 = add i32 %142, 16
  %143 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cryptlen, align 4
  %add102 = add i32 %add100, %144
  %pldlen = getelementptr inbounds %struct.chcr_wr, ptr %134, i32 0, i32 3, i32 1
  %145 = ptrtoint ptr %pldlen to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %add102, ptr %pldlen, align 4
  %cond105 = select i1 %switch.selectcmp, i32 0, i32 285212672
  %146 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %and.i, label %cond.false109 [
    i32 218103808, label %__skb_put_zero.exit.cond.end112_crit_edge
    i32 117440512, label %__skb_put_zero.exit.cond.end112_crit_edge480
  ]

__skb_put_zero.exit.cond.end112_crit_edge480:     ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end112

__skb_put_zero.exit.cond.end112_crit_edge:        ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end112

cond.false109:                                    ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %assoclen, align 8
  %add111 = shl i32 %148, 15
  %phi.bo = add i32 %add111, 524288
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false109, %__skb_put_zero.exit.cond.end112_crit_edge, %__skb_put_zero.exit.cond.end112_crit_edge480
  %cond113 = phi i32 [ %phi.bo, %cond.false109 ], [ 0, %__skb_put_zero.exit.cond.end112_crit_edge ], [ 0, %__skb_put_zero.exit.cond.end112_crit_edge480 ]
  %149 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %assoclen, align 8
  %add118 = shl i32 %150, 5
  %shl119 = add i32 %add118, 544
  %and121 = lshr i32 %spec.select, 4
  %shr122 = and i32 %and121, 31
  %or115 = or i32 %shr122, %cond105
  %or120 = or i32 %or115, %cond113
  %or124 = or i32 %or120, %shl119
  %aadstart_cipherstop_hi = getelementptr inbounds %struct.chcr_wr, ptr %134, i32 0, i32 3, i32 2
  %151 = ptrtoint ptr %aadstart_cipherstop_hi to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %or124, ptr %aadstart_cipherstop_hi, align 8
  %shl127 = shl i32 %spec.select, 28
  %152 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %and.i, label %cond.false130 [
    i32 218103808, label %cond.end112.cond.end134_crit_edge
    i32 117440512, label %cond.end112.cond.end134_crit_edge481
  ]

cond.end112.cond.end134_crit_edge481:             ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end134

cond.end112.cond.end134_crit_edge:                ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end134

cond.false130:                                    ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %assoclen, align 8
  %add133 = shl i32 %154, 18
  %phi.bo398 = add i32 %add133, 4456448
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false130, %cond.end112.cond.end134_crit_edge, %cond.end112.cond.end134_crit_edge481
  %cond135 = phi i32 [ %phi.bo398, %cond.false130 ], [ 0, %cond.end112.cond.end134_crit_edge ], [ 0, %cond.end112.cond.end134_crit_edge481 ]
  %shl138 = shl i32 %spec.select, 9
  %or137 = or i32 %shl127, %spec.select
  %or139 = or i32 %or137, %shl138
  %or141 = or i32 %or139, %cond135
  %cipherstop_lo_authinsert = getelementptr inbounds %struct.chcr_wr, ptr %134, i32 0, i32 3, i32 3
  %155 = ptrtoint ptr %cipherstop_lo_authinsert to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or141, ptr %cipherstop_lo_authinsert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %and.i)
  %cmp146 = icmp eq i32 %and.i, 201326592
  %or.cond = or i1 %switch.selectcmp.case2, %cmp146
  %temp.0 = select i1 %or.cond, i32 786432, i32 262144
  %156 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %op.i, align 4
  %shl151 = shl i32 %157, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp154 = icmp eq i32 %157, 0
  %shl157 = select i1 %cmp154, i32 4194304, i32 0
  %or152 = or i32 %shl157, %shl151
  %or158 = or i32 %or152, %temp.0
  %auth_mode = getelementptr i8, ptr %1, i32 448
  %158 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %auth_mode, align 1
  %conv161 = zext i8 %159 to i32
  %shl162 = shl nuw nsw i32 %conv161, 14
  %hmac_ctrl = getelementptr i8, ptr %1, i32 284
  %160 = ptrtoint ptr %hmac_ctrl to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %hmac_ctrl, align 4
  %conv164 = zext i16 %161 to i32
  %shl165 = shl nuw nsw i32 %conv164, 11
  %or160 = or i32 %shl162, %or158
  %or163 = or i32 %or160, %shl165
  %or167 = or i32 %or163, 67109888
  %seqno_numivs = getelementptr inbounds %struct.chcr_wr, ptr %134, i32 0, i32 3, i32 4
  %162 = ptrtoint ptr %seqno_numivs to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %or167, ptr %seqno_numivs, align 8
  %or171 = or i32 %conv35, 131072
  %ivgen_hdrlen = getelementptr inbounds %struct.chcr_wr, ptr %134, i32 0, i32 3, i32 5
  %163 = ptrtoint ptr %ivgen_hdrlen to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %or171, ptr %ivgen_hdrlen, align 4
  %164 = ptrtoint ptr %aeadctx.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %aeadctx.i, align 4
  %key_ctx = getelementptr inbounds %struct.chcr_wr, ptr %134, i32 0, i32 4
  %166 = ptrtoint ptr %key_ctx to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %key_ctx, align 8
  %167 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp175 = icmp eq i32 %168, 0
  %or.cond401 = select i1 %cmp175, i1 true, i1 %cmp146
  %brmerge = select i1 %or.cond401, i1 true, i1 %switch.selectcmp.case2
  %key = getelementptr inbounds %struct.chcr_wr, ptr %134, i32 1
  br i1 %brmerge, label %if.then183, label %if.else187

if.then183:                                       ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #13
  %key185 = getelementptr i8, ptr %1, i32 216
  %enckey_len = getelementptr i8, ptr %1, i32 204
  %169 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %enckey_len, align 4
  %171 = call ptr @memcpy(ptr %key, ptr %key185, i32 %170)
  br label %if.end193

if.else187:                                       ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #13
  %enckey_len192 = getelementptr i8, ptr %1, i32 204
  %172 = ptrtoint ptr %enckey_len192 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %enckey_len192, align 4
  %174 = call ptr @memcpy(ptr %key, ptr %authenc.i, i32 %173)
  br label %if.end193

if.end193:                                        ; preds = %if.else187, %if.then183
  %key195 = getelementptr %struct.chcr_wr, ptr %134, i32 1
  %enckey_len199 = getelementptr i8, ptr %1, i32 204
  %175 = ptrtoint ptr %enckey_len199 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %enckey_len199, align 4
  %add201 = add i32 %176, 15
  %div202399 = and i32 %add201, -16
  %add.ptr = getelementptr i8, ptr %key195, i32 %div202399
  %h_iopad = getelementptr i8, ptr %1, i32 320
  %sub212 = sub i32 %sub37, %div202399
  %177 = call ptr @memcpy(ptr %add.ptr, ptr %h_iopad, i32 %sub212)
  %add.ptr214 = getelementptr i8, ptr %key195, i32 %sub37
  %add.ptr215 = getelementptr %struct.cpl_rx_phys_dsgl, ptr %add.ptr214, i32 1
  %add.ptr216 = getelementptr i8, ptr %add.ptr215, i32 %conv35
  %add.ptr217 = getelementptr i8, ptr %add.ptr216, i32 16
  %178 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %and.i, label %if.else228 [
    i32 218103808, label %if.end193.if.then223_crit_edge
    i32 201326592, label %if.end193.if.then223_crit_edge482
  ]

if.end193.if.then223_crit_edge482:                ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then223

if.end193.if.then223_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then223

if.then223:                                       ; preds = %if.end193.if.then223_crit_edge, %if.end193.if.then223_crit_edge482
  %nonce = getelementptr i8, ptr %1, i32 280
  %179 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %nonce, align 4
  %181 = ptrtoint ptr %add.ptr216 to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 %180, ptr %add.ptr216, align 1
  %add.ptr225 = getelementptr i8, ptr %add.ptr216, i32 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %182 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %iv, align 32
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_loadN_noabort(i32 %184, i32 8)
  %185 = load i64, ptr %183, align 1
  %186 = ptrtoint ptr %add.ptr225 to i32
  call void @__asan_storeN_noabort(i32 %186, i32 8)
  store i64 %185, ptr %add.ptr225, align 1
  %add.ptr227 = getelementptr i8, ptr %add.ptr225, i32 8
  %187 = ptrtoint ptr %add.ptr227 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 1, ptr %add.ptr227, align 4
  br label %if.end230

if.else228:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  %iv229 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %188 = ptrtoint ptr %iv229 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %iv229, align 32
  %190 = call ptr @memcpy(ptr %add.ptr216, ptr %189, i32 16)
  br label %if.end230

if.end230:                                        ; preds = %if.else228, %if.then223
  tail call void @chcr_add_aead_dst_ent(ptr noundef %req, ptr noundef %add.ptr214, i16 noundef zeroext %qid)
  tail call void @chcr_add_aead_src_ent(ptr noundef %req, ptr noundef %add.ptr217)
  %chcr_stats231 = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 73
  %call.i.i403 = tail call zeroext i1 @__kasan_check_write(ptr noundef %chcr_stats231, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %chcr_stats231, i32 1, i32 3, i32 1) #11
  %191 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %chcr_stats231, ptr %chcr_stats231, i32 1, ptr elementtype(i32) %chcr_stats231) #11, !srcloc !137
  %192 = ptrtoint ptr %imm to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %193)
  %tobool237.not = icmp eq i16 %193, 0
  br i1 %tobool237.not, label %if.end230.cond.end243_crit_edge, label %cond.true238

if.end230.cond.end243_crit_edge:                  ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end243

cond.true238:                                     ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  %194 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %assoclen, align 8
  %196 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cryptlen, align 4
  %add241 = add i32 %197, %195
  br label %cond.end243

cond.end243:                                      ; preds = %cond.true238, %if.end230.cond.end243_crit_edge
  %cond244 = phi i32 [ %add241, %cond.true238 ], [ 0, %if.end230.cond.end243_crit_edge ]
  %198 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %200 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %tfm.i, align 4
  %__crt_alg.i.i469 = getelementptr inbounds %struct.crypto_tfm, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %__crt_alg.i.i469 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %__crt_alg.i.i469, align 4
  %cra_flags.i.i = getelementptr inbounds %struct.crypto_alg, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %cra_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %cra_flags.i.i, align 16
  %and.i.i = and i32 %205, 15
  %206 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %and.i.i, label %sw.default.i.i [
    i32 3, label %sw.bb.i.i
    i32 5, label %sw.bb5.i.i
    i32 15, label %sw.bb15.i.i
  ]

sw.bb.i.i:                                        ; preds = %cond.end243
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  br label %create_wreq.exit

sw.bb5.i.i:                                       ; preds = %cond.end243
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx11.i.i = getelementptr i8, ptr %req, i32 182
  %rxqidx13.i.i = getelementptr i8, ptr %req, i32 184
  br label %create_wreq.exit

sw.bb15.i.i:                                      ; preds = %cond.end243
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx21.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %rxqidx23.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 10
  br label %create_wreq.exit

sw.default.i.i:                                   ; preds = %cond.end243
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/chelsio/chcr_algo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 749, 0\0A.popsection", ""() #11, !srcloc !142
  unreachable

create_wreq.exit:                                 ; preds = %sw.bb15.i.i, %sw.bb5.i.i, %sw.bb.i.i
  %txqidx.0.in.in.i = phi ptr [ %txqidx21.i.i, %sw.bb15.i.i ], [ %txqidx11.i.i, %sw.bb5.i.i ], [ %txqidx2.i.i, %sw.bb.i.i ]
  %.sink.in.i.i = phi ptr [ %rxqidx23.i.i, %sw.bb15.i.i ], [ %rxqidx13.i.i, %sw.bb5.i.i ], [ %rxqidx, %sw.bb.i.i ]
  %207 = ptrtoint ptr %txqidx.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %txqidx.0.in.i = load i16, ptr %txqidx.0.in.in.i, align 2
  %txqidx.0.i = zext i16 %txqidx.0.in.i to i32
  %208 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %.sink.i.i = load i16, ptr %.sink.in.i.i, align 2
  %conv24.i.i = zext i16 %.sink.i.i to i32
  %rxq_ids.i = getelementptr i8, ptr %199, i32 -124
  %209 = ptrtoint ptr %rxq_ids.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rxq_ids.i, align 4
  %arrayidx.i = getelementptr i16, ptr %210, i32 %conv24.i.i
  %211 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %arrayidx.i, align 2
  %conv.i470 = zext i16 %212 to i32
  %213 = ptrtoint ptr %210 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %210, align 2
  %conv5.i = zext i16 %214 to i32
  %215 = ptrtoint ptr %rxq_perchan to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %rxq_perchan, align 4
  %div.rhs.trunc.i = zext i8 %216 to i16
  %div61.i = udiv i16 %.sink.i.i, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div61.i to i32
  %txq_perchan.i = getelementptr i8, ptr %1, i32 133
  %217 = ptrtoint ptr %txq_perchan.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %txq_perchan.i, align 1
  %div8.rhs.trunc.i = zext i8 %218 to i16
  %div862.i = udiv i16 %txqidx.0.in.i, %div8.rhs.trunc.i
  %div8.zext.i = zext i16 %div862.i to i32
  %ports.i = getelementptr i8, ptr %199, i32 -136
  %219 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ports.i, align 4
  %arrayidx10.i = getelementptr ptr, ptr %220, i32 %div.zext.i
  %221 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx10.i, align 4
  %call11.i = tail call i32 @cxgb4_port_e2cchan(ptr noundef %222) #11
  %223 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 1828716544, ptr %134, align 8
  %shl.i471 = shl i32 %size, 17
  %pld_size_hash_size.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %134, i32 0, i32 5
  %224 = ptrtoint ptr %pld_size_hash_size.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %shl.i471, ptr %pld_size_hash_size.i, align 4
  %div1359.i = lshr i32 %add68, 4
  %len16_pkd.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %134, i32 0, i32 1
  %225 = ptrtoint ptr %len16_pkd.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %div1359.i, ptr %len16_pkd.i, align 4
  %226 = ptrtoint ptr %req to i32
  %conv16.i = zext i32 %226 to i64
  %cookie.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %134, i32 0, i32 6
  %227 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %conv16.i, ptr %cookie.i, align 8
  %shl18.i = shl i32 %call11.i, 29
  %or.i = or i32 %shl18.i, %conv.i470
  %shl24.i = shl nuw nsw i32 %txqidx.0.i, 15
  %or25.i = or i32 %or.i, %shl24.i
  %rx_chid_to_rx_q_id.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %134, i32 0, i32 3
  %228 = ptrtoint ptr %rx_chid_to_rx_q_id.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %or25.i, ptr %rx_chid_to_rx_q_id.i, align 4
  %shl27.i = shl i32 %div8.zext.i, 22
  %shl30.i = shl nuw nsw i32 %conv5.i, 4
  %or29.i = or i32 %shl27.i, %shl30.i
  %or31.i = or i32 %or29.i, 67108872
  %ulptx.i = getelementptr inbounds %struct.chcr_wr, ptr %134, i32 0, i32 1
  %229 = ptrtoint ptr %ulptx.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %or31.i, ptr %ulptx.i, align 8
  %sub35.i = add nsw i32 %div1359.i, -2
  %len.i = getelementptr inbounds %struct.chcr_wr, ptr %134, i32 0, i32 1, i32 1
  %230 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %sub35.i, ptr %len.i, align 4
  %or41.i = select i1 %tobool237.not, i32 -2122317824, i32 -2130706432
  %sc_imm.i = getelementptr inbounds %struct.chcr_wr, ptr %134, i32 0, i32 2
  %231 = ptrtoint ptr %sc_imm.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %or41.i, ptr %sc_imm.i, align 8
  %add234 = add nuw nsw i32 %conv35, 80
  %add245 = add nsw i32 %add234, %sub37
  %add42.i = add i32 %add245, %cond244
  %len44.i = getelementptr inbounds %struct.chcr_wr, ptr %134, i32 0, i32 2, i32 1
  %232 = ptrtoint ptr %len44.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %add42.i, ptr %len44.i, align 4
  %233 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %call.i, ptr %__ctx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %create_wreq.exit, %if.then83, %chcr_aead_fallback.exit, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %122, %chcr_aead_fallback.exit ], [ %call.i, %create_wreq.exit ], [ inttoptr (i32 -12 to ptr), %if.then83 ], [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @create_aead_ccm_wr(ptr noundef %req, i16 noundef zeroext %qid, i32 noundef %size) #0 align 64 {
entry:
  %data.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %aeadctx.i = getelementptr i8, ptr %1, i32 200
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %assoclen4 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %assoclen4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %assoclen4, align 8
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 128
  %flags6 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags6, align 4
  %and = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2592, i32 3264
  %8 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %lldi.i = getelementptr i8, ptr %9, i32 -148
  %10 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lldi.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %14 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 -256
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 128
  %and.i = and i32 %17, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 100663296
  %sub = add i32 %3, -8
  %spec.select = select i1 %cmp, i32 %sub, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool10.not = icmp eq i32 %spec.select, 0
  %add = select i1 %tobool10.not, i32 16, i32 18
  %b0_len = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %b0_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %b0_len, align 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i, align 128
  %enckey_len.i = getelementptr i8, ptr %1, i32 204
  %21 = ptrtoint ptr %enckey_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enckey_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %op.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %25 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cryptlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %20)
  %cmp5.i = icmp ult i32 %26, %20
  br i1 %cmp5.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %27 = ptrtoint ptr %b0_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %b0_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool8.not.i = icmp eq i32 %28, 0
  %add.ptr.i271 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 6
  %spec.select.i = select i1 %tobool8.not.i, ptr null, ptr %add.ptr.i271
  %29 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 32
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %spec.select.i, ptr %29, align 4
  %31 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %lldi.i272 = getelementptr i8, ptr %32, i32 -148
  %33 = ptrtoint ptr %lldi.i272 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lldi.i272, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %conv.i = trunc i32 %24 to i16
  %call15.i = tail call i32 @chcr_aead_dma_map(ptr noundef %dev.i, ptr noundef %req, i16 noundef zeroext %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end16, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end7.i
  br i1 %cmp, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end16
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %35 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iv.i, align 32
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  %39 = add i8 %38, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %39)
  %40 = icmp ult i8 %39, 7
  br i1 %40, label %if.then.i.if.end20_crit_edge, label %do.end.i

if.then.i.if.end20_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #14
  br label %err

if.else.i:                                        ; preds = %if.end16
  %41 = ptrtoint ptr %assoclen4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %assoclen4, align 8
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %42, label %do.end8.i [
    i32 16, label %if.else.i.if.end20_crit_edge
    i32 20, label %if.else.i.if.end20_crit_edge376
  ]

if.else.i.if.end20_crit_edge376:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else.i.if.end20_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.end8.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %42) #14
  br label %err

if.end20:                                         ; preds = %if.else.i.if.end20_crit_edge, %if.else.i.if.end20_crit_edge376, %if.then.i.if.end20_crit_edge
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %44 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dst, align 8
  %46 = ptrtoint ptr %assoclen4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %assoclen4, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %48 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cryptlen, align 4
  %add22 = add i32 %49, %47
  %50 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool24.not = icmp eq i32 %51, 0
  %sub25 = sub i32 0, %5
  %cond26 = select i1 %tobool24.not, i32 %5, i32 %sub25
  %add27 = add i32 %add22, %cond26
  %tobool4.not40.i = icmp eq ptr %45, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add27)
  %tobool6.not41.i = icmp eq i32 %add27, 0
  %or.cond3342.i = or i1 %tobool4.not40.i, %tobool6.not41.i
  br i1 %or.cond3342.i, label %if.end20.sg_nents_xlen.exit_crit_edge, label %while.body8.lr.ph.i

if.end20.sg_nents_xlen.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit

while.body8.lr.ph.i:                              ; preds = %if.end20
  %dma_length9.peel.i = getelementptr inbounds %struct.scatterlist, ptr %45, i32 0, i32 4
  %52 = ptrtoint ptr %dma_length9.peel.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_length9.peel.i, align 4
  %54 = tail call i32 @llvm.umin.i32(i32 %add27, i32 %53) #11
  %sub12.peel.i = add i32 %54, 2047
  %div.peel.i374 = lshr i32 %sub12.peel.i, 11
  %sub14.peel.i = sub i32 %add27, %54
  %call15.peel.i = tail call ptr @sg_next(ptr noundef nonnull %45) #11
  %tobool4.not.peel.i = icmp eq ptr %call15.peel.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.peel.i)
  %tobool6.not.peel.i = icmp eq i32 %sub14.peel.i, 0
  %or.cond33.peel.i = select i1 %tobool4.not.peel.i, i1 true, i1 %tobool6.not.peel.i
  br i1 %or.cond33.peel.i, label %while.body8.lr.ph.i.sg_nents_xlen.exit_crit_edge, label %while.body8.lr.ph.i.while.body8.i_crit_edge

while.body8.lr.ph.i.while.body8.i_crit_edge:      ; preds = %while.body8.lr.ph.i
  br label %while.body8.i

while.body8.lr.ph.i.sg_nents_xlen.exit_crit_edge: ; preds = %while.body8.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit

while.body8.i:                                    ; preds = %while.body8.i.while.body8.i_crit_edge, %while.body8.lr.ph.i.while.body8.i_crit_edge
  %sg.addr.246.i = phi ptr [ %call15.i274, %while.body8.i.while.body8.i_crit_edge ], [ %call15.peel.i, %while.body8.lr.ph.i.while.body8.i_crit_edge ]
  %nents.044.i = phi i32 [ %add13.i, %while.body8.i.while.body8.i_crit_edge ], [ %div.peel.i374, %while.body8.lr.ph.i.while.body8.i_crit_edge ]
  %reqlen.addr.043.i = phi i32 [ %sub14.i, %while.body8.i.while.body8.i_crit_edge ], [ %sub14.peel.i, %while.body8.lr.ph.i.while.body8.i_crit_edge ]
  %dma_length9.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.246.i, i32 0, i32 4
  %55 = ptrtoint ptr %dma_length9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_length9.i, align 4
  %57 = tail call i32 @llvm.umin.i32(i32 %reqlen.addr.043.i, i32 %56) #11
  %sub12.i = add i32 %57, 2047
  %div.i375 = lshr i32 %sub12.i, 11
  %add13.i = add i32 %div.i375, %nents.044.i
  %sub14.i = sub i32 %reqlen.addr.043.i, %57
  %call15.i274 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.246.i) #11
  %tobool4.not.i = icmp eq ptr %call15.i274, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.i)
  %tobool6.not.i = icmp eq i32 %sub14.i, 0
  %or.cond33.i = select i1 %tobool4.not.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond33.i, label %while.body8.i.sg_nents_xlen.exit_crit_edge, label %while.body8.i.while.body8.i_crit_edge, !llvm.loop !144

while.body8.i.while.body8.i_crit_edge:            ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body8.i

while.body8.i.sg_nents_xlen.exit_crit_edge:       ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit

sg_nents_xlen.exit:                               ; preds = %while.body8.i.sg_nents_xlen.exit_crit_edge, %while.body8.lr.ph.i.sg_nents_xlen.exit_crit_edge, %if.end20.sg_nents_xlen.exit_crit_edge
  %nents.0.lcssa.i = phi i32 [ 0, %if.end20.sg_nents_xlen.exit_crit_edge ], [ %div.peel.i374, %while.body8.lr.ph.i.sg_nents_xlen.exit_crit_edge ], [ %add13.i, %while.body8.i.sg_nents_xlen.exit_crit_edge ]
  %add29 = add i32 %nents.0.lcssa.i, 1
  %shr.i = lshr i32 %add29, 3
  %rem.i = and i32 %add29, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i275 = icmp ne i32 %rem.i, 0
  %cond.i = zext i1 %tobool.not.i275 to i32
  %add.i = add nuw nsw i32 %shr.i, %cond.i
  %mul.i = shl i32 %add.i, 4
  %shl.i = shl i32 %add29, 3
  %shl5.i = and i32 %shl.i, 8
  %add1.i = add i32 %shl5.i, %shl.i
  %add6.i = add i32 %add1.i, %mul.i
  %conv31 = and i32 %add6.i, 65528
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %58 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %src, align 4
  %60 = ptrtoint ptr %assoclen4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %assoclen4, align 8
  %62 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cryptlen, align 4
  %add34 = add i32 %63, %61
  %tobool4.not40.i278 = icmp eq ptr %59, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add34)
  %tobool6.not41.i279 = icmp eq i32 %add34, 0
  %or.cond3342.i280 = or i1 %tobool4.not40.i278, %tobool6.not41.i279
  br i1 %or.cond3342.i280, label %sg_nents_xlen.exit.sg_nents_xlen.exit304_crit_edge, label %while.body8.lr.ph.i289

sg_nents_xlen.exit.sg_nents_xlen.exit304_crit_edge: ; preds = %sg_nents_xlen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit304

while.body8.lr.ph.i289:                           ; preds = %sg_nents_xlen.exit
  %dma_length9.peel.i281 = getelementptr inbounds %struct.scatterlist, ptr %59, i32 0, i32 4
  %64 = ptrtoint ptr %dma_length9.peel.i281 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_length9.peel.i281, align 4
  %66 = tail call i32 @llvm.umin.i32(i32 %add34, i32 %65) #11
  %sub12.peel.i282 = add i32 %66, 65531
  %div.peel.i283 = udiv i32 %sub12.peel.i282, 65532
  %sub14.peel.i284 = sub i32 %add34, %66
  %call15.peel.i285 = tail call ptr @sg_next(ptr noundef nonnull %59) #11
  %tobool4.not.peel.i286 = icmp eq ptr %call15.peel.i285, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.peel.i284)
  %tobool6.not.peel.i287 = icmp eq i32 %sub14.peel.i284, 0
  %or.cond33.peel.i288 = select i1 %tobool4.not.peel.i286, i1 true, i1 %tobool6.not.peel.i287
  br i1 %or.cond33.peel.i288, label %while.body8.lr.ph.i289.sg_nents_xlen.exit304_crit_edge, label %while.body8.lr.ph.i289.while.body8.i302_crit_edge

while.body8.lr.ph.i289.while.body8.i302_crit_edge: ; preds = %while.body8.lr.ph.i289
  br label %while.body8.i302

while.body8.lr.ph.i289.sg_nents_xlen.exit304_crit_edge: ; preds = %while.body8.lr.ph.i289
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit304

while.body8.i302:                                 ; preds = %while.body8.i302.while.body8.i302_crit_edge, %while.body8.lr.ph.i289.while.body8.i302_crit_edge
  %sg.addr.246.i290 = phi ptr [ %call15.i298, %while.body8.i302.while.body8.i302_crit_edge ], [ %call15.peel.i285, %while.body8.lr.ph.i289.while.body8.i302_crit_edge ]
  %nents.044.i291 = phi i32 [ %add13.i296, %while.body8.i302.while.body8.i302_crit_edge ], [ %div.peel.i283, %while.body8.lr.ph.i289.while.body8.i302_crit_edge ]
  %reqlen.addr.043.i292 = phi i32 [ %sub14.i297, %while.body8.i302.while.body8.i302_crit_edge ], [ %sub14.peel.i284, %while.body8.lr.ph.i289.while.body8.i302_crit_edge ]
  %dma_length9.i293 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.246.i290, i32 0, i32 4
  %67 = ptrtoint ptr %dma_length9.i293 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_length9.i293, align 4
  %69 = tail call i32 @llvm.umin.i32(i32 %reqlen.addr.043.i292, i32 %68) #11
  %sub12.i294 = add i32 %69, 65531
  %div.i295 = udiv i32 %sub12.i294, 65532
  %add13.i296 = add i32 %div.i295, %nents.044.i291
  %sub14.i297 = sub i32 %reqlen.addr.043.i292, %69
  %call15.i298 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.246.i290) #11
  %tobool4.not.i299 = icmp eq ptr %call15.i298, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.i297)
  %tobool6.not.i300 = icmp eq i32 %sub14.i297, 0
  %or.cond33.i301 = select i1 %tobool4.not.i299, i1 true, i1 %tobool6.not.i300
  br i1 %or.cond33.i301, label %while.body8.i302.sg_nents_xlen.exit304_crit_edge, label %while.body8.i302.while.body8.i302_crit_edge, !llvm.loop !144

while.body8.i302.while.body8.i302_crit_edge:      ; preds = %while.body8.i302
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body8.i302

while.body8.i302.sg_nents_xlen.exit304_crit_edge: ; preds = %while.body8.i302
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit304

sg_nents_xlen.exit304:                            ; preds = %while.body8.i302.sg_nents_xlen.exit304_crit_edge, %while.body8.lr.ph.i289.sg_nents_xlen.exit304_crit_edge, %sg_nents_xlen.exit.sg_nents_xlen.exit304_crit_edge
  %nents.0.lcssa.i303 = phi i32 [ 0, %sg_nents_xlen.exit.sg_nents_xlen.exit304_crit_edge ], [ %div.peel.i283, %while.body8.lr.ph.i289.sg_nents_xlen.exit304_crit_edge ], [ %add13.i296, %while.body8.i302.sg_nents_xlen.exit304_crit_edge ]
  %70 = ptrtoint ptr %enckey_len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %enckey_len.i, align 4
  %add38 = shl i32 %71, 1
  %div265 = add i32 %add38, 30
  %mul39 = and i32 %div265, -32
  %add41 = add i32 %mul39, %conv31
  %add43 = add i32 %add41, 128
  %72 = ptrtoint ptr %assoclen4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %assoclen4, align 8
  %74 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cryptlen, align 4
  %76 = ptrtoint ptr %b0_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %b0_len, align 4
  %add45 = add i32 %75, %73
  %add47 = add i32 %add45, %77
  %add49 = add i32 %add47, %add43
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %add49)
  %cmp50 = icmp ult i32 %add49, 513
  %conv52 = zext i1 %cmp50 to i16
  %imm = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %78 = ptrtoint ptr %imm to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv52, ptr %imm, align 4
  br i1 %cmp50, label %cond.true56, label %cond.false68

cond.true56:                                      ; preds = %sg_nents_xlen.exit304
  call void @__sanitizer_cov_trace_pc() #13
  %add63 = add i32 %add45, 15
  %add65 = add i32 %add63, %77
  %div66268 = and i32 %add65, -16
  br label %cond.end71

cond.false68:                                     ; preds = %sg_nents_xlen.exit304
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i305 = mul i32 %nents.0.lcssa.i303, 3
  %div4.i = lshr i32 %mul.i305, 1
  %and.i306 = and i32 %nents.0.lcssa.i303, 1
  %add.i307 = or i32 %and.i306, 2
  %add1.i308 = add nuw i32 %add.i307, %div4.i
  %mul70 = shl i32 %add1.i308, 3
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false68, %cond.true56
  %cond72 = phi i32 [ %div66268, %cond.true56 ], [ %mul70, %cond.false68 ]
  %add73 = add i32 %add41, 143
  %add77 = add i32 %add73, %cond72
  %div78266 = and i32 %add77, -16
  %79 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %op.i, align 4
  %conv83 = trunc i32 %80 to i16
  %81 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i.i310 = getelementptr i8, ptr %82, i32 -128
  %83 = ptrtoint ptr %add.ptr.i.i.i310 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i.i310, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv83)
  %tobool.not.i312 = icmp eq i16 %conv83, 0
  %spec.select.i313 = select i1 %tobool.not.i312, i32 0, i32 %84
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %spec.select.i313)
  %cmp.i314 = icmp eq i32 %75, %spec.select.i313
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add29)
  %cmp3.i = icmp sgt i32 %add29, 32
  %or.cond.i = or i1 %cmp3.i, %cmp.i314
  br i1 %or.cond.i, label %cond.end71.if.then86_crit_edge, label %chcr_aead_need_fallback.exit

cond.end71.if.then86_crit_edge:                   ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

chcr_aead_need_fallback.exit:                     ; preds = %cond.end71
  %sub81 = sub i32 495, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %sub81)
  %cmp6.i = icmp ule i32 %73, %sub81
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %div78266)
  %cmp9.i = icmp slt i32 %div78266, 513
  %tobool85.not = and i1 %cmp6.i, %cmp9.i
  br i1 %tobool85.not, label %if.end91, label %chcr_aead_need_fallback.exit.if.then86_crit_edge

chcr_aead_need_fallback.exit.if.then86_crit_edge: ; preds = %chcr_aead_need_fallback.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

if.then86:                                        ; preds = %chcr_aead_need_fallback.exit.if.then86_crit_edge, %cond.end71.if.then86_crit_edge
  %fallback = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 73, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fallback, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %fallback, i32 1, i32 3, i32 1) #11
  %85 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fallback, ptr %fallback, i32 1, ptr elementtype(i32) %fallback) #11, !srcloc !137
  %86 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i.i318 = getelementptr i8, ptr %87, i32 128
  %88 = ptrtoint ptr %__crt_ctx.i.i.i.i318 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %__crt_ctx.i.i.i.i318, align 4
  %lldi.i319 = getelementptr i8, ptr %89, i32 -148
  %90 = ptrtoint ptr %lldi.i319 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lldi.i319, align 4
  %dev.i320 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %92 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %op.i, align 4
  %conv.i322 = trunc i32 %93 to i16
  tail call void @chcr_aead_dma_unmap(ptr noundef %dev.i320, ptr noundef %req, i16 noundef zeroext %conv.i322) #11
  %94 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %op.i, align 4
  %conv88 = trunc i32 %95 to i16
  %96 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tfm.i, align 16
  %sw_cipher.i = getelementptr i8, ptr %97, i32 208
  %98 = ptrtoint ptr %sw_cipher.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sw_cipher.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %99, i32 0, i32 3
  store ptr %base.i.i.i, ptr %op.i, align 16
  %100 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags6, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %102 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %104 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %106 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %complete.i.i, align 8
  %107 = ptrtoint ptr %b0_len to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %105, ptr %b0_len, align 4
  %108 = ptrtoint ptr %imm to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %101, ptr %imm, align 4
  %109 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %src, align 4
  %111 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dst, align 8
  %113 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cryptlen, align 4
  %iv.i325 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %115 = ptrtoint ptr %iv.i325 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %iv.i325, align 32
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %117 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %110, ptr %src1.i.i, align 4
  %dst2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %118 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %112, ptr %dst2.i.i, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %119 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %114, ptr %cryptlen3.i.i, align 4
  %iv4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %120 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %116, ptr %iv4.i.i, align 32
  %121 = ptrtoint ptr %assoclen4 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %assoclen4, align 8
  %assoclen1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %123 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %assoclen1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv88)
  %tobool.not.i327 = icmp eq i16 %conv88, 0
  br i1 %tobool.not.i327, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #11
  br label %chcr_aead_fallback.exit

cond.false.i:                                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #11
  br label %chcr_aead_fallback.exit

chcr_aead_fallback.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i328 = phi i32 [ %call6.i, %cond.true.i ], [ %call7.i, %cond.false.i ]
  %124 = inttoptr i32 %cond.i328 to ptr
  br label %cleanup

if.end91:                                         ; preds = %chcr_aead_need_fallback.exit
  %call.i = tail call ptr @__alloc_skb(i32 noundef %div78266, i32 noundef %cond, i32 noundef 0, i32 noundef -1) #11
  %tobool93.not = icmp eq ptr %call.i, null
  br i1 %tobool93.not, label %if.end91.err_crit_edge, label %if.end95

if.end91.err_crit_edge:                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end95:                                         ; preds = %if.end91
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %125 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.i.not.i.i = icmp eq i32 %126, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !140

do.body3.i.i:                                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !141
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end95
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %127 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i329 = getelementptr i8, ptr %128, i32 %div78266
  store ptr %add.ptr.i.i329, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %129 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %130, %div78266
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %131 = call ptr @memset(ptr %128, i32 0, i32 %div78266)
  %sec_cpl = getelementptr inbounds %struct.chcr_wr, ptr %128, i32 0, i32 3
  %132 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %op.i, align 4
  %conv98 = trunc i32 %133 to i16
  %134 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i.i331 = getelementptr i8, ptr %135, i32 -128
  %__crt_ctx.i.i.i.i332 = getelementptr i8, ptr %135, i32 128
  %136 = ptrtoint ptr %__crt_ctx.i.i.i.i332 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %__crt_ctx.i.i.i.i332, align 4
  %rxqidx.i = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i, i32 0, i32 8
  %138 = ptrtoint ptr %rxqidx.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %rxqidx.i, align 2
  %rxq_perchan.i = getelementptr i8, ptr %135, i32 132
  %140 = ptrtoint ptr %rxq_perchan.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %rxq_perchan.i, align 4
  %div.rhs.trunc.i = zext i8 %141 to i16
  %div114.i = udiv i16 %139, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div114.i to i32
  %ports.i = getelementptr i8, ptr %137, i32 -136
  %142 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %143, i32 %div.zext.i
  %144 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i, align 4
  %call6.i334 = tail call i32 @cxgb4_port_e2cchan(ptr noundef %145) #11
  %__crt_alg.i.i.i = getelementptr i8, ptr %135, i32 12
  %146 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %147, i32 -256
  %148 = ptrtoint ptr %add.ptr.i113.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %add.ptr.i113.i, align 128
  %and.i.i = and i32 %149, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %and.i.i)
  %cmp.i335 = icmp eq i32 %and.i.i, 100663296
  %150 = ptrtoint ptr %assoclen4 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %assoclen4, align 8
  %sub.i = add i32 %151, -8
  %assoclen.0.i = select i1 %cmp.i335, i32 %sub.i, i32 %151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %assoclen.0.i)
  %tobool.not.i336 = icmp eq i32 %assoclen.0.i, 0
  %add.i337 = select i1 %tobool.not.i336, i32 16, i32 18
  %152 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cryptlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool11.not.i = icmp eq i32 %153, 0
  %add14.i = add nuw nsw i32 %add.i337, 17
  %add15.i = add i32 %add14.i, %151
  %cond16.i = select i1 %tobool11.not.i, i32 0, i32 %add15.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv98)
  %cmp18.i = icmp eq i16 %conv98, 1
  br i1 %cmp18.i, label %if.then20.i, label %__skb_put_zero.exit.if.end29.i_crit_edge

__skb_put_zero.exit.if.end29.i_crit_edge:         ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.then20.i:                                      ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  %154 = ptrtoint ptr %add.ptr.i.i.i331 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %add.ptr.i.i.i331, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %153)
  %cmp23.not.i = icmp eq i32 %155, %153
  %phi.bo.i = shl i32 %155, 9
  %spec.select.i340 = select i1 %cmp23.not.i, i32 0, i32 %phi.bo.i
  %spec.select115.i = select i1 %cmp23.not.i, i32 0, i32 %cond16.i
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then20.i, %__skb_put_zero.exit.if.end29.i_crit_edge
  %tag_offset.0.i = phi i32 [ 0, %__skb_put_zero.exit.if.end29.i_crit_edge ], [ %spec.select.i340, %if.then20.i ]
  %auth_offset.0.i = phi i32 [ %cond16.i, %__skb_put_zero.exit.if.end29.i_crit_edge ], [ %spec.select115.i, %if.then20.i ]
  %shl.i341 = shl i32 %call6.i334, 22
  %or34.i = or i32 %shl.i341, -1978531839
  %156 = ptrtoint ptr %sec_cpl to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or34.i, ptr %sec_cpl, align 8
  %157 = ptrtoint ptr %assoclen4 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %assoclen4, align 8
  %159 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cryptlen, align 4
  %add36.i = add nuw nsw i32 %add.i337, 16
  %add38.i = add i32 %158, %add36.i
  %add39.i = add i32 %add38.i, %160
  %pldlen.i = getelementptr inbounds %struct.chcr_wr, ptr %128, i32 0, i32 3, i32 1
  %161 = ptrtoint ptr %pldlen.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add39.i, ptr %pldlen.i, align 4
  %add41.i = add i32 %add36.i, %assoclen.0.i
  %shl42.i = shl i32 %add41.i, 15
  %162 = load i32, ptr %assoclen4, align 8
  %add47.i = add i32 %add14.i, %162
  %shl48.i = shl i32 %add47.i, 5
  %or43.i = or i32 %shl42.i, %shl48.i
  %or49.i = or i32 %or43.i, 285212672
  %aadstart_cipherstop_hi.i = getelementptr inbounds %struct.chcr_wr, ptr %128, i32 0, i32 3, i32 2
  %163 = ptrtoint ptr %aadstart_cipherstop_hi.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %or49.i, ptr %aadstart_cipherstop_hi.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv98)
  %cmp56.i = icmp eq i16 %conv98, 0
  br i1 %cmp56.i, label %if.end29.i.fill_sec_cpl_for_aead.exit_crit_edge, label %cond.false59.i

if.end29.i.fill_sec_cpl_for_aead.exit_crit_edge:  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill_sec_cpl_for_aead.exit

cond.false59.i:                                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %164 = ptrtoint ptr %add.ptr.i.i.i331 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %add.ptr.i.i.i331, align 128
  br label %fill_sec_cpl_for_aead.exit

fill_sec_cpl_for_aead.exit:                       ; preds = %cond.false59.i, %if.end29.i.fill_sec_cpl_for_aead.exit_crit_edge
  %shl72.i = phi i32 [ 0, %if.end29.i.fill_sec_cpl_for_aead.exit_crit_edge ], [ 4194304, %cond.false59.i ]
  %cond62.i = phi i32 [ 0, %if.end29.i.fill_sec_cpl_for_aead.exit_crit_edge ], [ %165, %cond.false59.i ]
  %shl51.i = shl i32 %auth_offset.0.i, 18
  %or54.i = or i32 %shl51.i, %tag_offset.0.i
  %or64.i = or i32 %or54.i, %cond62.i
  %cipherstop_lo_authinsert.i = getelementptr inbounds %struct.chcr_wr, ptr %128, i32 0, i32 3, i32 3
  %166 = ptrtoint ptr %cipherstop_lo_authinsert.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %or64.i, ptr %cipherstop_lo_authinsert.i, align 4
  %shl66.i = shl i32 %133, 23
  %or67.i = or i32 %shl72.i, %shl66.i
  %hmac_ctrl.i = getelementptr i8, ptr %135, i32 284
  %167 = ptrtoint ptr %hmac_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %hmac_ctrl.i, align 4
  %conv78.i = zext i16 %168 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 11
  %or77.i = or i32 %or67.i, %shl79.i
  %or81.i = or i32 %or77.i, 69092352
  %seqno_numivs.i = getelementptr inbounds %struct.chcr_wr, ptr %128, i32 0, i32 3, i32 4
  %169 = ptrtoint ptr %seqno_numivs.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %or81.i, ptr %seqno_numivs.i, align 8
  %or84.i = or i32 %conv31, 131072
  %ivgen_hdrlen.i = getelementptr inbounds %struct.chcr_wr, ptr %128, i32 0, i32 3, i32 5
  %170 = ptrtoint ptr %ivgen_hdrlen.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or84.i, ptr %ivgen_hdrlen.i, align 4
  %171 = ptrtoint ptr %aeadctx.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %aeadctx.i, align 4
  %key_ctx = getelementptr inbounds %struct.chcr_wr, ptr %128, i32 0, i32 4
  %173 = ptrtoint ptr %key_ctx to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %key_ctx, align 8
  %key = getelementptr %struct.chcr_wr, ptr %128, i32 1
  %key100 = getelementptr i8, ptr %1, i32 216
  %174 = ptrtoint ptr %enckey_len.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %enckey_len.i, align 4
  %176 = call ptr @memcpy(ptr %key, ptr %key100, i32 %175)
  %177 = load i32, ptr %enckey_len.i, align 4
  %add110 = add i32 %177, 15
  %div111267 = and i32 %add110, -16
  %add.ptr = getelementptr i8, ptr %key, i32 %div111267
  %178 = call ptr @memcpy(ptr %add.ptr, ptr %key100, i32 %177)
  %add.ptr117 = getelementptr i8, ptr %key, i32 %mul39
  %add.ptr118 = getelementptr %struct.cpl_rx_phys_dsgl, ptr %add.ptr117, i32 1
  %add.ptr119 = getelementptr i8, ptr %add.ptr118, i32 %conv31
  %179 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %op.i, align 4
  %conv122 = trunc i32 %180 to i16
  br i1 %cmp, label %if.then.i346, label %if.else.i347

if.then.i346:                                     ; preds = %fill_sec_cpl_for_aead.exit
  call void @__sanitizer_cov_trace_pc() #13
  %181 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %tfm.i, align 16
  %183 = ptrtoint ptr %add.ptr119 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 3, ptr %add.ptr119, align 1
  %add.ptr.i344 = getelementptr i8, ptr %add.ptr119, i32 1
  %salt.i = getelementptr i8, ptr %182, i32 212
  %184 = call ptr @memcpy(ptr %add.ptr.i344, ptr %salt.i, i32 3)
  %add.ptr5.i = getelementptr i8, ptr %add.ptr119, i32 4
  %iv.i345 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %185 = ptrtoint ptr %iv.i345 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %iv.i345, align 32
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 8)
  %188 = load i64, ptr %186, align 1
  %189 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_storeN_noabort(i32 %189, i32 8)
  store i64 %188, ptr %add.ptr5.i, align 1
  %add.ptr6.i = getelementptr i8, ptr %add.ptr119, i32 12
  %190 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_storeN_noabort(i32 %190, i32 4)
  store i32 0, ptr %add.ptr6.i, align 1
  br label %if.end.i349

if.else.i347:                                     ; preds = %fill_sec_cpl_for_aead.exit
  call void @__sanitizer_cov_trace_pc() #13
  %iv7.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %191 = ptrtoint ptr %iv7.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %iv7.i, align 32
  %193 = call ptr @memcpy(ptr %add.ptr119, ptr %192, i32 16)
  br label %if.end.i349

if.end.i349:                                      ; preds = %if.else.i347, %if.then.i346
  br i1 %tobool10.not, label %if.end.i349.if.end10.i_crit_edge, label %if.then8.i

if.end.i349.if.end10.i_crit_edge:                 ; preds = %if.end.i349
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i349
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i350 = trunc i32 %spec.select to i16
  %194 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %29, align 4
  %arrayidx9.i = getelementptr i8, ptr %195, i32 16
  %196 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_storeN_noabort(i32 %196, i32 2)
  store i16 %conv.i350, ptr %arrayidx9.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i349.if.end10.i_crit_edge
  %197 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %198, i32 -128
  %199 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %29, align 4
  %201 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %203 = call ptr @memcpy(ptr %200, ptr %add.ptr119, i32 16)
  %204 = ptrtoint ptr %200 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %200, align 1
  %call2.tr.i.i = trunc i32 %202 to i8
  %206 = shl i8 %call2.tr.i.i, 2
  %207 = add i8 %206, -8
  %208 = and i8 %207, -8
  %conv4.i.i = or i8 %208, %205
  store i8 %conv4.i.i, ptr %200, align 1
  %209 = ptrtoint ptr %assoclen4 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %assoclen4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool.not.i.i = icmp eq i32 %210, 0
  br i1 %tobool.not.i.i, label %if.end10.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end10.i.if.end.i.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %211 = or i8 %conv4.i.i, 64
  %212 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %200, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end10.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv122)
  %cmp.i.i = icmp eq i16 %conv122, 1
  %213 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %cryptlen, align 4
  %sub11.i.i = select i1 %cmp.i.i, i32 %202, i32 0
  %cond.i.i = sub i32 %214, %sub11.i.i
  %add.ptr.i.i351 = getelementptr i8, ptr %200, i32 16
  %conv.i.i = zext i8 %205 to i32
  %idx.neg.i.i = xor i32 %conv.i.i, -1
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i351, i32 %idx.neg.i.i
  %add.i.i352 = add nuw nsw i32 %conv.i.i, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i.i) #11
  %215 = call ptr @memset(ptr %add.ptr8.i.i, i32 0, i32 %add.i.i352)
  %add.ptr.i.i31.i = getelementptr i8, ptr %add.ptr8.i.i, i32 %add.i.i352
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %205)
  %cmp.i.i.i = icmp ugt i8 %205, 2
  br i1 %cmp.i.i.i, label %if.end.i.i.if.end126_crit_edge, label %if.else.i.i.i

if.end.i.i.if.end126_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.else.i.i.i:                                    ; preds = %if.end.i.i
  %mul.i.i.i = shl nuw nsw i32 %add.i.i352, 3
  %shl.i.i.i = shl nuw nsw i32 1, %mul.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i.i, i32 %cond.i.i)
  %cmp1.i.i.i = icmp ult i32 %shl.i.i.i, %cond.i.i
  br i1 %cmp1.i.i.i, label %dstmap_fail, label %if.else.i.i.i.if.end126_crit_edge

if.else.i.i.i.if.end126_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.end126:                                        ; preds = %if.else.i.i.i.if.end126_crit_edge, %if.end.i.i.if.end126_crit_edge
  %csize.addr.0.i.i.i = phi i32 [ %add.i.i352, %if.else.i.i.i.if.end126_crit_edge ], [ 4, %if.end.i.i.if.end126_crit_edge ]
  %216 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %cond.i.i, ptr %data.i.i.i, align 4
  %idx.neg.i.i.i = sub nsw i32 0, %csize.addr.0.i.i.i
  %add.ptr4.i.i.i = getelementptr i8, ptr %add.ptr.i.i31.i, i32 %idx.neg.i.i.i
  %add.ptr5.i.i.i = getelementptr inbounds i8, ptr %data.i.i.i, i32 4
  %add.ptr7.i.i.i = getelementptr i8, ptr %add.ptr5.i.i.i, i32 %idx.neg.i.i.i
  %217 = call ptr @memcpy(ptr %add.ptr4.i.i.i, ptr %add.ptr7.i.i.i, i32 %csize.addr.0.i.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i.i) #11
  %add.ptr12.i368 = getelementptr i8, ptr %add.ptr119, i32 15
  %218 = ptrtoint ptr %add.ptr119 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %add.ptr119, align 1
  %conv14.i369 = zext i8 %219 to i32
  %idx.neg.i370 = sub nsw i32 0, %conv14.i369
  %add.ptr15.i371 = getelementptr i8, ptr %add.ptr12.i368, i32 %idx.neg.i370
  %add.i353372 = add nuw nsw i32 %conv14.i369, 1
  %220 = call ptr @memset(ptr %add.ptr15.i371, i32 0, i32 %add.i353372)
  %add.ptr120 = getelementptr i8, ptr %add.ptr119, i32 16
  tail call void @chcr_add_aead_dst_ent(ptr noundef %req, ptr noundef %add.ptr117, i16 noundef zeroext %qid)
  tail call void @chcr_add_aead_src_ent(ptr noundef %req, ptr noundef %add.ptr120)
  %aead_rqst = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 73, i32 2
  %call.i.i269 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aead_rqst, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %aead_rqst, i32 1, i32 3, i32 1) #11
  %221 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aead_rqst, ptr %aead_rqst, i32 1, ptr elementtype(i32) %aead_rqst) #11, !srcloc !137
  %add129 = add nuw nsw i32 %conv31, 32
  %add130 = add i32 %add129, %mul39
  %222 = ptrtoint ptr %imm to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %223)
  %tobool133.not = icmp eq i16 %223, 0
  br i1 %tobool133.not, label %if.end126.cond.end141_crit_edge, label %cond.true134

if.end126.cond.end141_crit_edge:                  ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end141

cond.true134:                                     ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  %224 = ptrtoint ptr %assoclen4 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %assoclen4, align 8
  %226 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %cryptlen, align 4
  %add137 = add i32 %227, %225
  %228 = ptrtoint ptr %b0_len to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %b0_len, align 4
  %add139 = add i32 %add137, %229
  br label %cond.end141

cond.end141:                                      ; preds = %cond.true134, %if.end126.cond.end141_crit_edge
  %cond142 = phi i32 [ %add139, %cond.true134 ], [ 0, %if.end126.cond.end141_crit_edge ]
  %add143 = add i32 %add130, %cond142
  %conv147 = zext i16 %223 to i32
  tail call fastcc void @create_wreq(ptr noundef %__crt_ctx.i.i.i, ptr noundef %128, ptr noundef %req, i32 noundef %conv147, i32 noundef 0, i32 noundef %div78266, i32 noundef %add143, i32 noundef 0)
  %230 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call.i, ptr %__ctx.i, align 4
  br label %cleanup

dstmap_fail:                                      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i.i) #11
  %add.ptr12.i = getelementptr i8, ptr %add.ptr119, i32 15
  %231 = ptrtoint ptr %add.ptr119 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %add.ptr119, align 1
  %conv14.i = zext i8 %232 to i32
  %idx.neg.i = sub nsw i32 0, %conv14.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr12.i, i32 %idx.neg.i
  %add.i353 = add nuw nsw i32 %conv14.i, 1
  %233 = call ptr @memset(ptr %add.ptr15.i, i32 0, i32 %add.i353)
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #11
  br label %err

err:                                              ; preds = %dstmap_fail, %if.end91.err_crit_edge, %do.end8.i, %do.end.i
  %error.0 = phi ptr [ inttoptr (i32 -75 to ptr), %dstmap_fail ], [ inttoptr (i32 -12 to ptr), %if.end91.err_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -22 to ptr), %do.end8.i ]
  %234 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i.i356 = getelementptr i8, ptr %235, i32 128
  %236 = ptrtoint ptr %__crt_ctx.i.i.i.i356 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %__crt_ctx.i.i.i.i356, align 4
  %lldi.i357 = getelementptr i8, ptr %237, i32 -148
  %238 = ptrtoint ptr %lldi.i357 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %lldi.i357, align 4
  %dev.i358 = getelementptr inbounds %struct.pci_dev, ptr %239, i32 0, i32 44
  %240 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %op.i, align 4
  %conv.i360 = trunc i32 %241 to i16
  tail call void @chcr_aead_dma_unmap(ptr noundef %dev.i358, ptr noundef %req, i16 noundef zeroext %conv.i360) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %cond.end141, %chcr_aead_fallback.exit, %if.end7.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %error.0, %err ], [ %124, %chcr_aead_fallback.exit ], [ %call.i, %cond.end141 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @create_gcm_wr(ptr noundef %req, i16 noundef zeroext %qid, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %aeadctx.i = getelementptr i8, ptr %1, i32 200
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %assoclen5 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %assoclen5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %assoclen5, align 8
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 128
  %flags7 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %8 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags7, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2592, i32 3264
  %lldi.i = getelementptr i8, ptr %3, i32 -148
  %10 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lldi.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %rxqidx = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i, i32 0, i32 8
  %14 = ptrtoint ptr %rxqidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rxqidx, align 2
  %rxq_perchan = getelementptr i8, ptr %1, i32 132
  %16 = ptrtoint ptr %rxq_perchan to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rxq_perchan, align 4
  %div.rhs.trunc = zext i8 %17 to i16
  %div413 = udiv i16 %15, %div.rhs.trunc
  %div.zext = zext i16 %div413 to i32
  %ports = getelementptr i8, ptr %3, i32 -136
  %18 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %19, i32 %div.zext
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call10 = tail call i32 @cxgb4_port_e2cchan(ptr noundef %21) #11
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %22 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i337 = getelementptr i8, ptr %23, i32 -256
  %24 = ptrtoint ptr %add.ptr.i337 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i337, align 128
  %and.i = and i32 %25, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 33554432
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %assoclen5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assoclen5, align 8
  %sub = add i32 %27, -8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %assoclen.0 = phi i32 [ %sub, %if.then ], [ %5, %entry.if.end_crit_edge ]
  %b0_len = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %b0_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %b0_len, align 4
  %29 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 -128
  %__crt_ctx.i.i.i.i = getelementptr i8, ptr %30, i32 128
  %31 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i.i, align 128
  %enckey_len.i = getelementptr i8, ptr %30, i32 204
  %33 = ptrtoint ptr %enckey_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %enckey_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i = icmp eq i32 %34, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %op.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %37 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cryptlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %32)
  %cmp5.i = icmp ult i32 %38, %32
  br i1 %cmp5.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %39 = ptrtoint ptr %b0_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %b0_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool8.not.i = icmp eq i32 %40, 0
  %add.ptr.i338 = getelementptr %struct.aead_request, ptr %req, i32 1, i32 6
  %spec.select.i = select i1 %tobool8.not.i, ptr null, ptr %add.ptr.i338
  %41 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 32
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %spec.select.i, ptr %41, align 4
  %43 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  %lldi.i339 = getelementptr i8, ptr %44, i32 -148
  %45 = ptrtoint ptr %lldi.i339 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lldi.i339, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %conv.i = trunc i32 %36 to i16
  %call15.i = tail call i32 @chcr_aead_dma_map(ptr noundef %dev.i, ptr noundef %req, i16 noundef zeroext %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end7.i
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %47 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dst, align 8
  %49 = ptrtoint ptr %assoclen5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %assoclen5, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %51 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cryptlen, align 4
  %add = add i32 %52, %50
  %53 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool20.not = icmp eq i32 %54, 0
  %sub21 = sub i32 0, %7
  %cond22 = select i1 %tobool20.not, i32 %7, i32 %sub21
  %add23 = add i32 %add, %cond22
  %tobool4.not40.i = icmp eq ptr %48, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add23)
  %tobool6.not41.i = icmp eq i32 %add23, 0
  %or.cond3342.i = or i1 %tobool4.not40.i, %tobool6.not41.i
  br i1 %or.cond3342.i, label %if.end18.sg_nents_xlen.exit_crit_edge, label %while.body8.lr.ph.i

if.end18.sg_nents_xlen.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit

while.body8.lr.ph.i:                              ; preds = %if.end18
  %dma_length9.peel.i = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 4
  %55 = ptrtoint ptr %dma_length9.peel.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_length9.peel.i, align 4
  %57 = tail call i32 @llvm.umin.i32(i32 %add23, i32 %56) #11
  %sub12.peel.i = add i32 %57, 2047
  %div.peel.i414 = lshr i32 %sub12.peel.i, 11
  %sub14.peel.i = sub i32 %add23, %57
  %call15.peel.i = tail call ptr @sg_next(ptr noundef nonnull %48) #11
  %tobool4.not.peel.i = icmp eq ptr %call15.peel.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.peel.i)
  %tobool6.not.peel.i = icmp eq i32 %sub14.peel.i, 0
  %or.cond33.peel.i = select i1 %tobool4.not.peel.i, i1 true, i1 %tobool6.not.peel.i
  br i1 %or.cond33.peel.i, label %while.body8.lr.ph.i.sg_nents_xlen.exit_crit_edge, label %while.body8.lr.ph.i.while.body8.i_crit_edge

while.body8.lr.ph.i.while.body8.i_crit_edge:      ; preds = %while.body8.lr.ph.i
  br label %while.body8.i

while.body8.lr.ph.i.sg_nents_xlen.exit_crit_edge: ; preds = %while.body8.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit

while.body8.i:                                    ; preds = %while.body8.i.while.body8.i_crit_edge, %while.body8.lr.ph.i.while.body8.i_crit_edge
  %sg.addr.246.i = phi ptr [ %call15.i340, %while.body8.i.while.body8.i_crit_edge ], [ %call15.peel.i, %while.body8.lr.ph.i.while.body8.i_crit_edge ]
  %nents.044.i = phi i32 [ %add13.i, %while.body8.i.while.body8.i_crit_edge ], [ %div.peel.i414, %while.body8.lr.ph.i.while.body8.i_crit_edge ]
  %reqlen.addr.043.i = phi i32 [ %sub14.i, %while.body8.i.while.body8.i_crit_edge ], [ %sub14.peel.i, %while.body8.lr.ph.i.while.body8.i_crit_edge ]
  %dma_length9.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.246.i, i32 0, i32 4
  %58 = ptrtoint ptr %dma_length9.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_length9.i, align 4
  %60 = tail call i32 @llvm.umin.i32(i32 %reqlen.addr.043.i, i32 %59) #11
  %sub12.i = add i32 %60, 2047
  %div.i415 = lshr i32 %sub12.i, 11
  %add13.i = add i32 %div.i415, %nents.044.i
  %sub14.i = sub i32 %reqlen.addr.043.i, %60
  %call15.i340 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.246.i) #11
  %tobool4.not.i = icmp eq ptr %call15.i340, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.i)
  %tobool6.not.i = icmp eq i32 %sub14.i, 0
  %or.cond33.i = select i1 %tobool4.not.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond33.i, label %while.body8.i.sg_nents_xlen.exit_crit_edge, label %while.body8.i.while.body8.i_crit_edge, !llvm.loop !144

while.body8.i.while.body8.i_crit_edge:            ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body8.i

while.body8.i.sg_nents_xlen.exit_crit_edge:       ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit

sg_nents_xlen.exit:                               ; preds = %while.body8.i.sg_nents_xlen.exit_crit_edge, %while.body8.lr.ph.i.sg_nents_xlen.exit_crit_edge, %if.end18.sg_nents_xlen.exit_crit_edge
  %nents.0.lcssa.i = phi i32 [ 0, %if.end18.sg_nents_xlen.exit_crit_edge ], [ %div.peel.i414, %while.body8.lr.ph.i.sg_nents_xlen.exit_crit_edge ], [ %add13.i, %while.body8.i.sg_nents_xlen.exit_crit_edge ]
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %61 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %src, align 4
  %63 = ptrtoint ptr %assoclen5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %assoclen5, align 8
  %65 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cryptlen, align 4
  %add27 = add i32 %66, %64
  %tobool4.not40.i342 = icmp eq ptr %62, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add27)
  %tobool6.not41.i343 = icmp eq i32 %add27, 0
  %or.cond3342.i344 = or i1 %tobool4.not40.i342, %tobool6.not41.i343
  br i1 %or.cond3342.i344, label %sg_nents_xlen.exit.sg_nents_xlen.exit368_crit_edge, label %while.body8.lr.ph.i353

sg_nents_xlen.exit.sg_nents_xlen.exit368_crit_edge: ; preds = %sg_nents_xlen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit368

while.body8.lr.ph.i353:                           ; preds = %sg_nents_xlen.exit
  %dma_length9.peel.i345 = getelementptr inbounds %struct.scatterlist, ptr %62, i32 0, i32 4
  %67 = ptrtoint ptr %dma_length9.peel.i345 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_length9.peel.i345, align 4
  %69 = tail call i32 @llvm.umin.i32(i32 %add27, i32 %68) #11
  %sub12.peel.i346 = add i32 %69, 65531
  %div.peel.i347 = udiv i32 %sub12.peel.i346, 65532
  %sub14.peel.i348 = sub i32 %add27, %69
  %call15.peel.i349 = tail call ptr @sg_next(ptr noundef nonnull %62) #11
  %tobool4.not.peel.i350 = icmp eq ptr %call15.peel.i349, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.peel.i348)
  %tobool6.not.peel.i351 = icmp eq i32 %sub14.peel.i348, 0
  %or.cond33.peel.i352 = select i1 %tobool4.not.peel.i350, i1 true, i1 %tobool6.not.peel.i351
  br i1 %or.cond33.peel.i352, label %while.body8.lr.ph.i353.sg_nents_xlen.exit368_crit_edge, label %while.body8.lr.ph.i353.while.body8.i366_crit_edge

while.body8.lr.ph.i353.while.body8.i366_crit_edge: ; preds = %while.body8.lr.ph.i353
  br label %while.body8.i366

while.body8.lr.ph.i353.sg_nents_xlen.exit368_crit_edge: ; preds = %while.body8.lr.ph.i353
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit368

while.body8.i366:                                 ; preds = %while.body8.i366.while.body8.i366_crit_edge, %while.body8.lr.ph.i353.while.body8.i366_crit_edge
  %sg.addr.246.i354 = phi ptr [ %call15.i362, %while.body8.i366.while.body8.i366_crit_edge ], [ %call15.peel.i349, %while.body8.lr.ph.i353.while.body8.i366_crit_edge ]
  %nents.044.i355 = phi i32 [ %add13.i360, %while.body8.i366.while.body8.i366_crit_edge ], [ %div.peel.i347, %while.body8.lr.ph.i353.while.body8.i366_crit_edge ]
  %reqlen.addr.043.i356 = phi i32 [ %sub14.i361, %while.body8.i366.while.body8.i366_crit_edge ], [ %sub14.peel.i348, %while.body8.lr.ph.i353.while.body8.i366_crit_edge ]
  %dma_length9.i357 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.246.i354, i32 0, i32 4
  %70 = ptrtoint ptr %dma_length9.i357 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_length9.i357, align 4
  %72 = tail call i32 @llvm.umin.i32(i32 %reqlen.addr.043.i356, i32 %71) #11
  %sub12.i358 = add i32 %72, 65531
  %div.i359 = udiv i32 %sub12.i358, 65532
  %add13.i360 = add i32 %div.i359, %nents.044.i355
  %sub14.i361 = sub i32 %reqlen.addr.043.i356, %72
  %call15.i362 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.246.i354) #11
  %tobool4.not.i363 = icmp eq ptr %call15.i362, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.i361)
  %tobool6.not.i364 = icmp eq i32 %sub14.i361, 0
  %or.cond33.i365 = select i1 %tobool4.not.i363, i1 true, i1 %tobool6.not.i364
  br i1 %or.cond33.i365, label %while.body8.i366.sg_nents_xlen.exit368_crit_edge, label %while.body8.i366.while.body8.i366_crit_edge, !llvm.loop !144

while.body8.i366.while.body8.i366_crit_edge:      ; preds = %while.body8.i366
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body8.i366

while.body8.i366.sg_nents_xlen.exit368_crit_edge: ; preds = %while.body8.i366
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_nents_xlen.exit368

sg_nents_xlen.exit368:                            ; preds = %while.body8.i366.sg_nents_xlen.exit368_crit_edge, %while.body8.lr.ph.i353.sg_nents_xlen.exit368_crit_edge, %sg_nents_xlen.exit.sg_nents_xlen.exit368_crit_edge
  %nents.0.lcssa.i367 = phi i32 [ 0, %sg_nents_xlen.exit.sg_nents_xlen.exit368_crit_edge ], [ %div.peel.i347, %while.body8.lr.ph.i353.sg_nents_xlen.exit368_crit_edge ], [ %add13.i360, %while.body8.i366.sg_nents_xlen.exit368_crit_edge ]
  %add29 = add i32 %nents.0.lcssa.i, 1
  %shr.i = lshr i32 %add29, 3
  %rem.i = and i32 %add29, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i369 = icmp ne i32 %rem.i, 0
  %cond.i = zext i1 %tobool.not.i369 to i32
  %add.i = add nuw nsw i32 %shr.i, %cond.i
  %mul.i = shl i32 %add.i, 4
  %shl.i = shl i32 %add29, 3
  %shl5.i = and i32 %shl.i, 8
  %add1.i = add i32 %shl5.i, %shl.i
  %add6.i = add i32 %add1.i, %mul.i
  %conv31 = and i32 %add6.i, 65528
  %enckey_len = getelementptr i8, ptr %1, i32 204
  %73 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %enckey_len, align 4
  %75 = add i32 %74, 31
  %add35 = and i32 %75, -16
  %add37 = add i32 %add35, %conv31
  %add39 = add i32 %add37, 128
  %76 = ptrtoint ptr %assoclen5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %assoclen5, align 8
  %78 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cryptlen, align 4
  %add41 = add i32 %79, %77
  %add43 = add i32 %add41, %add39
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %add43)
  %cmp44 = icmp ult i32 %add43, 513
  %conv46 = zext i1 %cmp44 to i16
  %imm = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %80 = ptrtoint ptr %imm to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv46, ptr %imm, align 4
  br i1 %cmp44, label %cond.true50, label %cond.false60

cond.true50:                                      ; preds = %sg_nents_xlen.exit368
  call void @__sanitizer_cov_trace_pc() #13
  %add57 = add i32 %add41, 15
  %div58335 = and i32 %add57, -16
  br label %cond.end63

cond.false60:                                     ; preds = %sg_nents_xlen.exit368
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i = add i32 %nents.0.lcssa.i367, -1
  %mul.i371 = mul i32 %dec.i, 3
  %div4.i = lshr i32 %mul.i371, 1
  %and.i372 = and i32 %dec.i, 1
  %add.i373 = or i32 %and.i372, 2
  %add1.i374 = add nuw i32 %add.i373, %div4.i
  %mul62 = shl i32 %add1.i374, 3
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false60, %cond.true50
  %cond64 = phi i32 [ %div58335, %cond.true50 ], [ %mul62, %cond.false60 ]
  %add65 = add i32 %add37, 143
  %add69 = add i32 %add65, %cond64
  %div70333 = and i32 %add69, -16
  %81 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %op.i, align 4
  %conv73 = trunc i32 %82 to i16
  %83 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i.i376 = getelementptr i8, ptr %84, i32 -128
  %85 = ptrtoint ptr %add.ptr.i.i.i376 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i.i.i376, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv73)
  %tobool.not.i378 = icmp eq i16 %conv73, 0
  %spec.select.i379 = select i1 %tobool.not.i378, i32 0, i32 %86
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %spec.select.i379)
  %cmp.i380 = icmp eq i32 %79, %spec.select.i379
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add29)
  %cmp3.i = icmp sgt i32 %add29, 32
  %or.cond.i = or i1 %cmp3.i, %cmp.i380
  br i1 %or.cond.i, label %cond.end63.if.then76_crit_edge, label %chcr_aead_need_fallback.exit

cond.end63.if.then76_crit_edge:                   ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

chcr_aead_need_fallback.exit:                     ; preds = %cond.end63
  call void @__sanitizer_cov_trace_const_cmp4(i32 496, i32 %77)
  %cmp6.i = icmp ult i32 %77, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %div70333)
  %cmp9.i = icmp slt i32 %div70333, 513
  %tobool75.not = and i1 %cmp6.i, %cmp9.i
  br i1 %tobool75.not, label %if.end81, label %chcr_aead_need_fallback.exit.if.then76_crit_edge

chcr_aead_need_fallback.exit.if.then76_crit_edge: ; preds = %chcr_aead_need_fallback.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

if.then76:                                        ; preds = %chcr_aead_need_fallback.exit.if.then76_crit_edge, %cond.end63.if.then76_crit_edge
  %fallback = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 73, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fallback, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %fallback, i32 1, i32 3, i32 1) #11
  %87 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fallback, ptr %fallback, i32 1, ptr elementtype(i32) %fallback) #11, !srcloc !137
  %88 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i.i383 = getelementptr i8, ptr %89, i32 128
  %90 = ptrtoint ptr %__crt_ctx.i.i.i.i383 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %__crt_ctx.i.i.i.i383, align 4
  %lldi.i384 = getelementptr i8, ptr %91, i32 -148
  %92 = ptrtoint ptr %lldi.i384 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %lldi.i384, align 4
  %dev.i385 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %94 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %op.i, align 4
  %conv.i387 = trunc i32 %95 to i16
  tail call void @chcr_aead_dma_unmap(ptr noundef %dev.i385, ptr noundef %req, i16 noundef zeroext %conv.i387) #11
  %96 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %op.i, align 4
  %conv78 = trunc i32 %97 to i16
  %98 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tfm.i, align 16
  %sw_cipher.i = getelementptr i8, ptr %99, i32 208
  %100 = ptrtoint ptr %sw_cipher.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sw_cipher.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %101, i32 0, i32 3
  store ptr %base.i.i.i, ptr %op.i, align 16
  %102 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags7, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %104 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %106 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %108 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %complete.i.i, align 8
  %109 = ptrtoint ptr %b0_len to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %107, ptr %b0_len, align 4
  %110 = ptrtoint ptr %imm to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %103, ptr %imm, align 4
  %111 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %src, align 4
  %113 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dst, align 8
  %115 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cryptlen, align 4
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %117 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %iv.i, align 32
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %119 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %112, ptr %src1.i.i, align 4
  %dst2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %120 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %114, ptr %dst2.i.i, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %121 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %116, ptr %cryptlen3.i.i, align 4
  %iv4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %122 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %118, ptr %iv4.i.i, align 32
  %123 = ptrtoint ptr %assoclen5 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %assoclen5, align 8
  %assoclen1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %125 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %assoclen1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv78)
  %tobool.not.i391 = icmp eq i16 %conv78, 0
  br i1 %tobool.not.i391, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #11
  br label %chcr_aead_fallback.exit

cond.false.i:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #11
  br label %chcr_aead_fallback.exit

chcr_aead_fallback.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i392 = phi i32 [ %call6.i, %cond.true.i ], [ %call7.i, %cond.false.i ]
  %126 = inttoptr i32 %cond.i392 to ptr
  br label %cleanup

if.end81:                                         ; preds = %chcr_aead_need_fallback.exit
  %call.i = tail call ptr @__alloc_skb(i32 noundef %div70333, i32 noundef %cond, i32 noundef 0, i32 noundef -1) #11
  %tobool83.not = icmp eq ptr %call.i, null
  br i1 %tobool83.not, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %127 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i.i394 = getelementptr i8, ptr %128, i32 128
  %129 = ptrtoint ptr %__crt_ctx.i.i.i.i394 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %__crt_ctx.i.i.i.i394, align 4
  %lldi.i395 = getelementptr i8, ptr %130, i32 -148
  %131 = ptrtoint ptr %lldi.i395 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %lldi.i395, align 4
  %dev.i396 = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 44
  %133 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %op.i, align 4
  %conv.i398 = trunc i32 %134 to i16
  tail call void @chcr_aead_dma_unmap(ptr noundef %dev.i396, ptr noundef %req, i16 noundef zeroext %conv.i398) #11
  br label %cleanup

if.end85:                                         ; preds = %if.end81
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %135 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.i.not.i.i = icmp eq i32 %136, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !140

do.body3.i.i:                                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !141
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end85
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %137 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i399 = getelementptr i8, ptr %138, i32 %div70333
  store ptr %add.ptr.i.i399, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %139 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %140, %div70333
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %141 = call ptr @memset(ptr %138, i32 0, i32 %div70333)
  %142 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp88 = icmp eq i32 %143, 0
  %spec.select = select i1 %cmp88, i32 0, i32 %7
  %shl = shl i32 %call10, 22
  %or98 = or i32 %shl, -1978531839
  %sec_cpl = getelementptr inbounds %struct.chcr_wr, ptr %138, i32 0, i32 3
  %144 = ptrtoint ptr %sec_cpl to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or98, ptr %sec_cpl, align 8
  %145 = ptrtoint ptr %assoclen5 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %assoclen5, align 8
  %add100 = add i32 %146, 16
  %147 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cryptlen, align 4
  %add102 = add i32 %add100, %148
  %pldlen = getelementptr inbounds %struct.chcr_wr, ptr %138, i32 0, i32 3, i32 1
  %149 = ptrtoint ptr %pldlen to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %add102, ptr %pldlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %assoclen.0)
  %tobool104.not = icmp eq i32 %assoclen.0, 0
  %add109 = shl i32 %assoclen.0, 15
  %phi.bo = add i32 %add109, 524288
  %150 = or i32 %phi.bo, 285212672
  %or114 = select i1 %tobool104.not, i32 0, i32 %150
  %151 = ptrtoint ptr %assoclen5 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %assoclen5, align 8
  %add117 = shl i32 %152, 5
  %shl118 = add i32 %add117, 544
  %or119 = or i32 %shl118, %or114
  %aadstart_cipherstop_hi = getelementptr inbounds %struct.chcr_wr, ptr %138, i32 0, i32 3, i32 2
  %153 = ptrtoint ptr %aadstart_cipherstop_hi to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or119, ptr %aadstart_cipherstop_hi, align 8
  %154 = load i32, ptr %assoclen5, align 8
  %add124 = shl i32 %154, 18
  %shl125 = add i32 %add124, 4456448
  %shl127 = shl i32 %spec.select, 9
  %or128 = or i32 %shl127, %spec.select
  %or130 = or i32 %or128, %shl125
  %cipherstop_lo_authinsert = getelementptr inbounds %struct.chcr_wr, ptr %138, i32 0, i32 3, i32 3
  %155 = ptrtoint ptr %cipherstop_lo_authinsert to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or130, ptr %cipherstop_lo_authinsert, align 4
  %156 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %op.i, align 4
  %shl133 = shl i32 %157, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp136 = icmp eq i32 %157, 0
  %shl139 = select i1 %cmp136, i32 4194304, i32 0
  %or134 = or i32 %shl139, %shl133
  %hmac_ctrl = getelementptr i8, ptr %1, i32 284
  %158 = ptrtoint ptr %hmac_ctrl to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %hmac_ctrl, align 4
  %conv143 = zext i16 %159 to i32
  %shl144 = shl nuw nsw i32 %conv143, 11
  %or142 = or i32 %shl144, %or134
  %or146 = or i32 %or142, 67699712
  %seqno_numivs = getelementptr inbounds %struct.chcr_wr, ptr %138, i32 0, i32 3, i32 4
  %160 = ptrtoint ptr %seqno_numivs to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %or146, ptr %seqno_numivs, align 8
  %or150 = or i32 %conv31, 131072
  %ivgen_hdrlen = getelementptr inbounds %struct.chcr_wr, ptr %138, i32 0, i32 3, i32 5
  %161 = ptrtoint ptr %ivgen_hdrlen to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %or150, ptr %ivgen_hdrlen, align 4
  %162 = ptrtoint ptr %aeadctx.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %aeadctx.i, align 4
  %key_ctx = getelementptr inbounds %struct.chcr_wr, ptr %138, i32 0, i32 4
  %164 = ptrtoint ptr %key_ctx to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %key_ctx, align 8
  %key = getelementptr inbounds %struct.chcr_wr, ptr %138, i32 1
  %key153 = getelementptr i8, ptr %1, i32 216
  %165 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %enckey_len, align 4
  %167 = call ptr @memcpy(ptr %key, ptr %key153, i32 %166)
  %168 = load i32, ptr %enckey_len, align 4
  %add163 = add i32 %168, 15
  %div164334 = and i32 %add163, -16
  %add.ptr = getelementptr i8, ptr %key, i32 %div164334
  %gcm.i = getelementptr i8, ptr %1, i32 288
  %169 = call ptr @memcpy(ptr %add.ptr, ptr %gcm.i, i32 16)
  %add.ptr169 = getelementptr i8, ptr %key, i32 %add35
  %add.ptr170 = getelementptr %struct.cpl_rx_phys_dsgl, ptr %add.ptr169, i32 1
  %add.ptr171 = getelementptr i8, ptr %add.ptr170, i32 %conv31
  %170 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i401 = getelementptr i8, ptr %171, i32 -256
  %172 = ptrtoint ptr %add.ptr.i401 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr.i401, align 128
  %and.i402 = and i32 %173, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and.i402)
  %cmp173 = icmp eq i32 %and.i402, 33554432
  br i1 %cmp173, label %if.then175, label %if.else

if.then175:                                       ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  %salt = getelementptr i8, ptr %1, i32 212
  %174 = ptrtoint ptr %salt to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %salt, align 4
  %176 = ptrtoint ptr %add.ptr171 to i32
  call void @__asan_storeN_noabort(i32 %176, i32 4)
  store i32 %175, ptr %add.ptr171, align 1
  %add.ptr177 = getelementptr i8, ptr %add.ptr171, i32 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %177 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %iv, align 32
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 8)
  %180 = load i64, ptr %178, align 1
  %181 = ptrtoint ptr %add.ptr177 to i32
  call void @__asan_storeN_noabort(i32 %181, i32 8)
  store i64 %180, ptr %add.ptr177, align 1
  br label %if.end179

if.else:                                          ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  %iv178 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %182 = ptrtoint ptr %iv178 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %iv178, align 32
  %184 = call ptr @memcpy(ptr %add.ptr171, ptr %183, i32 12)
  br label %if.end179

if.end179:                                        ; preds = %if.else, %if.then175
  %arrayidx180 = getelementptr i8, ptr %add.ptr171, i32 12
  %185 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_storeN_noabort(i32 %185, i32 4)
  store i32 1, ptr %arrayidx180, align 1
  %add.ptr181 = getelementptr i8, ptr %add.ptr171, i32 16
  tail call void @chcr_add_aead_dst_ent(ptr noundef %req, ptr noundef %add.ptr169, i16 noundef zeroext %qid)
  tail call void @chcr_add_aead_src_ent(ptr noundef %req, ptr noundef %add.ptr181)
  %aead_rqst = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 73, i32 2
  %call.i.i336 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aead_rqst, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %aead_rqst, i32 1, i32 3, i32 1) #11
  %186 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aead_rqst, ptr %aead_rqst, i32 1, ptr elementtype(i32) %aead_rqst) #11, !srcloc !137
  %187 = ptrtoint ptr %imm to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %188)
  %tobool188.not = icmp eq i16 %188, 0
  br i1 %tobool188.not, label %if.end179.cond.end194_crit_edge, label %cond.true189

if.end179.cond.end194_crit_edge:                  ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end194

cond.true189:                                     ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  %189 = ptrtoint ptr %assoclen5 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %assoclen5, align 8
  %191 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cryptlen, align 4
  %add192 = add i32 %192, %190
  br label %cond.end194

cond.end194:                                      ; preds = %cond.true189, %if.end179.cond.end194_crit_edge
  %cond195 = phi i32 [ %add192, %cond.true189 ], [ 0, %if.end179.cond.end194_crit_edge ]
  %verify = getelementptr inbounds %struct.chcr_aead_reqctx, ptr %__ctx.i, i32 0, i32 6
  %193 = ptrtoint ptr %verify to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %verify, align 2
  %195 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %197 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %tfm.i, align 4
  %__crt_alg.i.i405 = getelementptr inbounds %struct.crypto_tfm, ptr %198, i32 0, i32 3
  %199 = ptrtoint ptr %__crt_alg.i.i405 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %__crt_alg.i.i405, align 4
  %cra_flags.i.i = getelementptr inbounds %struct.crypto_alg, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %cra_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %cra_flags.i.i, align 16
  %and.i.i = and i32 %202, 15
  %203 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %203, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %and.i.i, label %sw.default.i.i [
    i32 3, label %sw.bb.i.i
    i32 5, label %sw.bb5.i.i
    i32 15, label %sw.bb15.i.i
  ]

sw.bb.i.i:                                        ; preds = %cond.end194
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  br label %create_wreq.exit

sw.bb5.i.i:                                       ; preds = %cond.end194
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx11.i.i = getelementptr i8, ptr %req, i32 182
  %rxqidx13.i.i = getelementptr i8, ptr %req, i32 184
  br label %create_wreq.exit

sw.bb15.i.i:                                      ; preds = %cond.end194
  call void @__sanitizer_cov_trace_pc() #13
  %txqidx21.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %rxqidx23.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 10
  br label %create_wreq.exit

sw.default.i.i:                                   ; preds = %cond.end194
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/chelsio/chcr_algo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 749, 0\0A.popsection", ""() #11, !srcloc !142
  unreachable

create_wreq.exit:                                 ; preds = %sw.bb15.i.i, %sw.bb5.i.i, %sw.bb.i.i
  %txqidx.0.in.in.i = phi ptr [ %txqidx21.i.i, %sw.bb15.i.i ], [ %txqidx11.i.i, %sw.bb5.i.i ], [ %txqidx2.i.i, %sw.bb.i.i ]
  %.sink.in.i.i = phi ptr [ %rxqidx23.i.i, %sw.bb15.i.i ], [ %rxqidx13.i.i, %sw.bb5.i.i ], [ %rxqidx, %sw.bb.i.i ]
  %204 = ptrtoint ptr %txqidx.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %txqidx.0.in.i = load i16, ptr %txqidx.0.in.in.i, align 2
  %txqidx.0.i = zext i16 %txqidx.0.in.i to i32
  %205 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %.sink.i.i = load i16, ptr %.sink.in.i.i, align 2
  %conv24.i.i = zext i16 %.sink.i.i to i32
  %rxq_ids.i = getelementptr i8, ptr %196, i32 -124
  %206 = ptrtoint ptr %rxq_ids.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rxq_ids.i, align 4
  %arrayidx.i = getelementptr i16, ptr %207, i32 %conv24.i.i
  %208 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %arrayidx.i, align 2
  %conv.i406 = zext i16 %209 to i32
  %210 = ptrtoint ptr %207 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %207, align 2
  %conv5.i = zext i16 %211 to i32
  %212 = ptrtoint ptr %rxq_perchan to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %rxq_perchan, align 4
  %div.rhs.trunc.i = zext i8 %213 to i16
  %div61.i = udiv i16 %.sink.i.i, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div61.i to i32
  %txq_perchan.i = getelementptr i8, ptr %1, i32 133
  %214 = ptrtoint ptr %txq_perchan.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %txq_perchan.i, align 1
  %div8.rhs.trunc.i = zext i8 %215 to i16
  %div862.i = udiv i16 %txqidx.0.in.i, %div8.rhs.trunc.i
  %div8.zext.i = zext i16 %div862.i to i32
  %ports.i = getelementptr i8, ptr %196, i32 -136
  %216 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ports.i, align 4
  %arrayidx10.i = getelementptr ptr, ptr %217, i32 %div.zext.i
  %218 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx10.i, align 4
  %call11.i = tail call i32 @cxgb4_port_e2cchan(ptr noundef %219) #11
  %220 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 1828716544, ptr %138, align 8
  %shl.i407 = shl i32 %size, 17
  %pld_size_hash_size.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %138, i32 0, i32 5
  %221 = ptrtoint ptr %pld_size_hash_size.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %shl.i407, ptr %pld_size_hash_size.i, align 4
  %div1359.i = lshr i32 %add69, 4
  %len16_pkd.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %138, i32 0, i32 1
  %222 = ptrtoint ptr %len16_pkd.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %div1359.i, ptr %len16_pkd.i, align 4
  %223 = ptrtoint ptr %req to i32
  %conv16.i = zext i32 %223 to i64
  %cookie.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %138, i32 0, i32 6
  %224 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %conv16.i, ptr %cookie.i, align 8
  %shl18.i = shl i32 %call11.i, 29
  %or.i = or i32 %shl18.i, %conv.i406
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %tobool.not.i408 = icmp eq i16 %194, 0
  %shl21.i = select i1 %tobool.not.i408, i32 0, i32 134217728
  %or22.i = or i32 %or.i, %shl21.i
  %shl24.i = shl nuw nsw i32 %txqidx.0.i, 15
  %or25.i = or i32 %or22.i, %shl24.i
  %rx_chid_to_rx_q_id.i = getelementptr inbounds %struct.fw_crypto_lookaside_wr, ptr %138, i32 0, i32 3
  %225 = ptrtoint ptr %rx_chid_to_rx_q_id.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %or25.i, ptr %rx_chid_to_rx_q_id.i, align 4
  %shl27.i = shl i32 %div8.zext.i, 22
  %shl30.i = shl nuw nsw i32 %conv5.i, 4
  %or29.i = or i32 %shl27.i, %shl30.i
  %or31.i = or i32 %or29.i, 67108872
  %ulptx.i = getelementptr inbounds %struct.chcr_wr, ptr %138, i32 0, i32 1
  %226 = ptrtoint ptr %ulptx.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %or31.i, ptr %ulptx.i, align 8
  %sub35.i = add nsw i32 %div1359.i, -2
  %len.i = getelementptr inbounds %struct.chcr_wr, ptr %138, i32 0, i32 1, i32 1
  %227 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %sub35.i, ptr %len.i, align 4
  %or41.i = select i1 %tobool188.not, i32 -2122317824, i32 -2130706432
  %sc_imm.i = getelementptr inbounds %struct.chcr_wr, ptr %138, i32 0, i32 2
  %228 = ptrtoint ptr %sc_imm.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %or41.i, ptr %sc_imm.i, align 8
  %add196 = add i32 %add37, 80
  %add42.i = add i32 %add196, %cond195
  %len44.i = getelementptr inbounds %struct.chcr_wr, ptr %138, i32 0, i32 2, i32 1
  %229 = ptrtoint ptr %len44.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %add42.i, ptr %len44.i, align 4
  %230 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call.i, ptr %__ctx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %create_wreq.exit, %if.then84, %chcr_aead_fallback.exit, %if.end7.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %126, %chcr_aead_fallback.exit ], [ %call.i, %create_wreq.exit ], [ inttoptr (i32 -12 to ptr), %if.then84 ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !119, !121, !123}
!llvm.named.register.sp = !{!125}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 1214, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @chcr_handle_cipher_resp._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @chcr_handle_cipher_resp._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @sgl_ent_len, !7, !"sgl_ent_len", i1 false, i1 false}
!7 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 76, i32 21}
!8 = !{ptr @dsgl_ent_len, !9, !"dsgl_ent_len", i1 false, i1 false}
!9 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 83, i32 21}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 1544, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @get_alg_config._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @get_alg_config._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 528, i32 2}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 4499, i32 4}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @chcr_register_alg._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @chcr_register_alg._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @driver_algs, !27, !"driver_algs", i1 false, i1 false}
!27 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 3850, i32 33}
!28 = !{ptr @aes_sbox, !29, !"aes_sbox", i1 false, i1 false}
!29 = !{!"../drivers/crypto/chelsio/chcr_algo.h", i32 371, i32 17}
!30 = !{ptr @round_constant, !31, !"round_constant", i1 false, i1 false}
!31 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 90, i32 12}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 1269, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @process_cipher._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @process_cipher._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 1475, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @chcr_init_tfm._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @chcr_init_tfm._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @init_completion.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/completion.h", i32 87, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 1450, i32 4}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @chcr_device_init._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @chcr_device_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 1494, i32 45}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 1497, i32 3}
!54 = !{ptr @chcr_rfc3686_init._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @chcr_rfc3686_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 3515, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @chcr_gcm_setkey._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @chcr_gcm_setkey._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 3572, i32 3}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @chcr_authenc_setkey._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @chcr_authenc_setkey._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 3591, i32 3}
!68 = !{ptr @chcr_authenc_setkey._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @chcr_authenc_setkey._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 3609, i32 3}
!72 = !{ptr @chcr_authenc_setkey._entry.27, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @chcr_authenc_setkey._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @chcr_authenc_setkey._entry.30, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 3625, i32 5}
!76 = !{ptr @chcr_authenc_setkey._entry_ptr.31, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 286, i32 34}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 289, i32 34}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 292, i32 34}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 295, i32 34}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 298, i32 34}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 344, i32 3}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @chcr_compute_partial_hash._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @chcr_compute_partial_hash._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 3710, i32 3}
!94 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @chcr_aead_digest_null_setkey._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @chcr_aead_digest_null_setkey._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 3746, i32 3}
!99 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @chcr_aead_op._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @chcr_aead_op._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 3766, i32 3}
!104 = !{ptr @chcr_aead_op._entry.43, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @chcr_aead_op._entry_ptr.45, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 3020, i32 4}
!108 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @aead_ccm_validate_input._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @aead_ccm_validate_input._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/crypto/chelsio/chcr_algo.c", i32 3025, i32 4}
!113 = !{ptr @aead_ccm_validate_input._entry.48, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @aead_ccm_validate_input._entry_ptr.50, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @chcr_sha384_init, !116, !"chcr_sha384_init", i1 false, i1 false}
!116 = !{!"../drivers/crypto/chelsio/chcr_algo.h", i32 317, i32 18}
!117 = !{ptr @chcr_sha512_init, !118, !"chcr_sha512_init", i1 false, i1 false}
!118 = !{!"../drivers/crypto/chelsio/chcr_algo.h", i32 322, i32 18}
!119 = !{ptr @chcr_sha1_init, !120, !"chcr_sha1_init", i1 false, i1 false}
!120 = !{!"../drivers/crypto/chelsio/chcr_algo.h", i32 303, i32 18}
!121 = !{ptr @chcr_sha224_init, !122, !"chcr_sha224_init", i1 false, i1 false}
!122 = !{!"../drivers/crypto/chelsio/chcr_algo.h", i32 307, i32 18}
!123 = !{ptr @chcr_sha256_init, !124, !"chcr_sha256_init", i1 false, i1 false}
!124 = !{!"../drivers/crypto/chelsio/chcr_algo.h", i32 312, i32 18}
!125 = !{!"sp"}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{i64 2148340539, i64 2148340565, i64 2148340594, i64 2148340628, i64 2148340659, i64 2148340682}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{i64 2148338074, i64 2148338100, i64 2148338129, i64 2148338163, i64 2148338194, i64 2148338217}
!138 = !{i64 2160459605}
!139 = !{i64 2160459772}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{i64 2154721436, i64 2154721924, i64 2154721473, i64 2154721529, i64 2154721563, i64 2154721587, i64 2154721628, i64 2154721649, i64 2154721677, i64 2154721711}
!142 = !{i64 2160418279, i64 2160418778, i64 2160418316, i64 2160418372, i64 2160418406, i64 2160418430, i64 2160418471, i64 2160418492, i64 2160418520, i64 2160418554}
!143 = !{i64 2149138897}
!144 = distinct !{!144, !145}
!145 = !{!"llvm.loop.peeled.count", i32 1}
!146 = !{i64 2160513631}
!147 = !{i64 2160513798}
!148 = !{i64 2160514108}
!149 = !{i64 2160514275}
!150 = !{i64 2160455908}
!151 = !{i64 2160456075}
!152 = !{i64 2160457141}
!153 = !{i64 2160457308}
!154 = !{i64 2160457679}
!155 = !{i64 2160457846}
!156 = !{i64 2160458660}
!157 = !{i64 2160458827}
!158 = !{i64 2160439657}
!159 = !{i64 2160439824}
!160 = !{i64 2160440254}
!161 = !{i64 2160440421}
!162 = !{ptr @create_aead_ccm_wr, ptr @create_authenc_wr, ptr @create_gcm_wr}
