; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.xfrmdev_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ipsec_uld_ctx = type { %struct.list_head, %struct.cxgb4_lld_info }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.171, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.171 = type { ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.199, i32 }
%union.anon.199 = type { ptr }
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
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.204, i32, i32, i8, i8 }
%struct.anon.204 = type { i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.117, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.118, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.118 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.ipsec_sa_entry = type { i32, i16, i16, i32, i32, i32, i32, [4 x i8], [64 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tx_sw_desc = type { ptr, [18 x i32] }
%struct.tx_desc = type { [8 x i64] }
%struct.fw_ulptx_wr = type { i32, i32, i64 }
%struct.chcr_ipsec_wr = type { %struct.fw_ulptx_wr, %struct.chcr_ipsec_req }
%struct.chcr_ipsec_req = type { %struct.ulp_txpkt, %struct.ulptx_idata, %struct.cpl_tx_sec_pdu, %struct._key_ctx }
%struct.ulp_txpkt = type { i32, i32 }
%struct.ulptx_idata = type { i32, i32 }
%struct.cpl_tx_sec_pdu = type { i32, i32, i32, i32, i32, i32, i64 }
%struct._key_ctx = type { i32, [4 x i8], i64, [0 x i8] }
%struct.cpl_tx_pkt_core = type { i32, i16, i16, i64 }
%struct.ip_esp_hdr = type { i32, i32, [0 x i8] }
%struct.chcr_ipsec_aadiv = type { i32, [8 x i8], [8 x i8] }
%struct.xfrm_algo_aead = type { [64 x i8], i32, i32, [0 x i8] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.110 }
%union.anon.110 = type { [4 x i32] }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }

@dev_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dev_mutex, i64 52), ptr getelementptr (i8, ptr @dev_mutex, i64 52) }, ptr @dev_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@uld_ctx_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @uld_ctx_list, ptr @uld_ctx_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_ch_ipsec__684_816_ch_ipsec_init6 = internal global ptr @ch_ipsec_init, section ".initcall6.init", align 4
@__exitcall_ch_ipsec_exit = internal global ptr @ch_ipsec_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description685 = internal constant [64 x i8] c"ch_ipsec.description=Crypto IPSEC for Chelsio Terminator cards.\00", section ".modinfo", align 1
@__UNIQUE_ID_file686 = internal constant [75 x i8] c"ch_ipsec.file=drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/ch_ipsec\00", section ".modinfo", align 1
@__UNIQUE_ID_license687 = internal constant [21 x i8] c"ch_ipsec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author688 = internal constant [39 x i8] c"ch_ipsec.author=Chelsio Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_version689 = internal constant [28 x i8] c"ch_ipsec.version=1.0.0.0-ko\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ch_ipsec\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1.0.0.0-ko\00", [21 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dev_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev_mutex\00", [22 x i8] zeroinitializer }, align 32
@ch_ipsec_uld_info = internal global { %struct.cxgb4_uld_info, [56 x i8] } { %struct.cxgb4_uld_info { [16 x i8] c"ch_ipsec\00\00\00\00\00\00\00\00", ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, ptr @ch_ipsec_uld_add, ptr null, ptr @ch_ipsec_uld_state_change, ptr null, ptr null, ptr null, ptr @ch_ipsec_xmit, ptr null, ptr @ch_ipsec_xfrmdev_ops }, [56 x i8] zeroinitializer }, align 32
@ch_ipsec_xfrmdev_ops = internal constant { %struct.xfrmdev_ops, [44 x i8] } { %struct.xfrmdev_ops { ptr @ch_ipsec_xfrm_add_state, ptr @ch_ipsec_xfrm_del_state, ptr @ch_ipsec_xfrm_free_state, ptr @ch_ipsec_offload_ok, ptr @ch_ipsec_advance_esn_state }, [44 x i8] zeroinitializer }, align 32
@ch_ipsec_uld_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ch_ipsec_uld_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ch_ipsec: %s - version %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ch_ipsec_uld_add\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c\00", [63 x i8] zeroinitializer }, align 32
@ch_ipsec_uld_add._entry_ptr = internal global ptr @ch_ipsec_uld_add._entry, section ".printk_index", align 4
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Chelsio T6 Crypto Ipsec offload Driver\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ch_ipsec_uld_state_change.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.7, ptr @.str.10, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ch_ipsec_uld_state_change\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"new_state %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ch_ipsec: new_state %u\0A\00", [40 x i8] zeroinitializer }, align 32
@ch_ipsec_uld_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.7, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016ch_ipsec: %s: Up\0A\00", [44 x i8] zeroinitializer }, align 32
@ch_ipsec_uld_state_change._entry_ptr = internal global ptr @ch_ipsec_uld_state_change._entry, section ".printk_index", align 4
@ch_ipsec_uld_state_change._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.7, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016ch_ipsec: %s: Down\0A\00", [42 x i8] zeroinitializer }, align 32
@ch_ipsec_uld_state_change._entry_ptr.15 = internal global ptr @ch_ipsec_uld_state_change._entry.13, section ".printk_index", align 4
@ch_ipsec_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.7, i32 745, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: Tx ring %u full while queue awake! cred:%d %d %d flits:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ch_ipsec_xmit\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ch_ipsec_xmit._entry_ptr = internal global ptr @ch_ipsec_xmit._entry, section ".printk_index", align 4
@ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug672 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.21, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ch_ipsec_xfrm_add_state\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot offload authenticated xfrm states\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ch_ipsec: Cannot offload authenticated xfrm states\0A\00", [44 x i8] zeroinitializer }, align 32
@ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug673 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.23, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot offload compressed xfrm states\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ch_ipsec: Cannot offload compressed xfrm states\0A\00", [47 x i8] zeroinitializer }, align 32
@ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug674 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.25, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Only IPv4/6 xfrm state offloaded\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ch_ipsec: Only IPv4/6 xfrm state offloaded\0A\00", [52 x i8] zeroinitializer }, align 32
@ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug675 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.27, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Only transport and tunnel xfrm offload\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ch_ipsec: Only transport and tunnel xfrm offload\0A\00", [46 x i8] zeroinitializer }, align 32
@ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.29, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Only ESP xfrm state offloaded\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ch_ipsec: Only ESP xfrm state offloaded\0A\00", [55 x i8] zeroinitializer }, align 32
@ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.31, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Encapsulated xfrm state not offloaded\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ch_ipsec: Encapsulated xfrm state not offloaded\0A\00", [47 x i8] zeroinitializer }, align 32
@ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.33, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot offload xfrm states without aead\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ch_ipsec: Cannot offload xfrm states without aead\0A\00", [45 x i8] zeroinitializer }, align 32
@ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.35, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Cannot offload xfrm states with AEAD ICV length other than 96b & 128b\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"ch_ipsec: Cannot offload xfrm states with AEAD ICV length other than 96b & 128b\0A\00", [47 x i8] zeroinitializer }, align 32
@ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.37, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"cannot offload xfrm states with AEAD key length other than 128/256 bit\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"ch_ipsec: cannot offload xfrm states with AEAD key length other than 128/256 bit\0A\00", [46 x i8] zeroinitializer }, align 32
@ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.39, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot offload xfrm states with tfc padding\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ch_ipsec: Cannot offload xfrm states with tfc padding\0A\00", [41 x i8] zeroinitializer }, align 32
@ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.41, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot offload xfrm states without geniv\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ch_ipsec: Cannot offload xfrm states without geniv\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"seqiv\00", [26 x i8] zeroinitializer }, align 32
@ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.44, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Cannot offload xfrm states with geniv other than seqiv\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ch_ipsec: Cannot offload xfrm states with geniv other than seqiv\0A\00", [62 x i8] zeroinitializer }, align 32
@ch_ipsec_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ch_ipsec: GCM: Invalid key length %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ch_ipsec_setkey\00", [16 x i8] zeroinitializer }, align 32
@ch_ipsec_setkey._entry_ptr = internal global ptr @ch_ipsec_setkey._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 96, i64 128]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 160, i64 288]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.53 = private unnamed_addr constant [10 x i8] c"dev_mutex\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"uld_ctx_list\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 73, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 822, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 74, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"ch_ipsec_uld_info\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 93, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"ch_ipsec_xfrmdev_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 85, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 105, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 121, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 124, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 132, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 742, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 235, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 239, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 244, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 249, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 253, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 257, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 261, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 266, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 271, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 275, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 279, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 282, i32 23 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 283, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [68 x i8] c"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 188, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author688, ptr @__UNIQUE_ID_description685, ptr @__UNIQUE_ID_file686, ptr @__UNIQUE_ID_license687, ptr @__UNIQUE_ID_version689, ptr @__exitcall_ch_ipsec_exit, ptr @__initcall__kmod_ch_ipsec__684_816_ch_ipsec_init6, ptr @__modver_attr, ptr @ch_ipsec_exit, ptr @ch_ipsec_setkey._entry, ptr @ch_ipsec_setkey._entry_ptr, ptr @ch_ipsec_uld_add._entry, ptr @ch_ipsec_uld_add._entry_ptr, ptr @ch_ipsec_uld_state_change._entry, ptr @ch_ipsec_uld_state_change._entry.13, ptr @ch_ipsec_uld_state_change._entry_ptr, ptr @ch_ipsec_uld_state_change._entry_ptr.15, ptr @ch_ipsec_xmit._entry, ptr @ch_ipsec_xmit._entry_ptr, ptr @dev_mutex, ptr @uld_ctx_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ch_ipsec_uld_info, ptr @ch_ipsec_xfrmdev_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uld_ctx_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_ipsec_uld_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_ipsec_xfrmdev_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_ipsec_uld_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_ipsec_uld_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_ipsec_uld_state_change._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_ipsec_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_ipsec_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ch_ipsec_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @dev_mutex, i32 noundef 0) #9
  %0 = load ptr, ptr @uld_ctx_list, align 4
  %cmp.not20 = icmp eq ptr %0, @uld_ctx_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %u_ctx.021 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %u_ctx.021 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.0 = load ptr, ptr %u_ctx.021, align 4
  %lldi = getelementptr inbounds %struct.ipsec_uld_ctx, ptr %u_ctx.021, i32 0, i32 1
  %2 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldi, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %ch_ipsec_stats = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 75
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ch_ipsec_stats, i32 noundef 4) #9
  %6 = ptrtoint ptr %ch_ipsec_stats to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %ch_ipsec_stats, align 4
  %call.i.i19 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %u_ctx.021) #9
  br i1 %call.i.i19, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %u_ctx.021, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %u_ctx.021 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %u_ctx.021, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %u_ctx.021 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %u_ctx.021, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %u_ctx.021, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %u_ctx.021) #9
  %cmp.not = icmp eq ptr %tmp.0, @uld_ctx_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dev_mutex) #9
  %call13 = tail call i32 @cxgb4_unregister_uld(i32 noundef 5) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_unregister_uld(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_ipsec_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cxgb4_register_uld(i32 noundef 5, ptr noundef nonnull @ch_ipsec_uld_info) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_register_uld(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ch_ipsec_uld_add(ptr nocapture noundef readonly %infop) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b20 = load i1, ptr @ch_ipsec_uld_add.__already_done, align 1
  br i1 %.b20, label %entry.if.end_crit_edge, label %if.then, !prof !120

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ch_ipsec_uld_add.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 156) #13
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end.out_crit_edge, label %if.end16

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lldi = getelementptr inbounds %struct.ipsec_uld_ctx, ptr %call7.i.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %lldi, ptr %infop, i32 148)
  br label %out

out:                                              ; preds = %if.end16, %if.end.out_crit_edge
  %u_ctx.0 = phi ptr [ %call7.i.i, %if.end16 ], [ inttoptr (i32 -12 to ptr), %if.end.out_crit_edge ]
  ret ptr %u_ctx.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_ipsec_uld_state_change(ptr noundef %handle, i32 noundef %new_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_uld_state_change.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_uld_state_change, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !121

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_uld_state_change.__UNIQUE_ID_ddebug671, ptr noundef nonnull @.str.11, i32 noundef %new_state) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %new_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %new_state, label %do.end.sw.epilog_crit_edge [
    i32 0, label %do.end5
    i32 1, label %do.end.do.end13_crit_edge
    i32 2, label %do.end.do.end13_crit_edge34
    i32 3, label %do.end.do.end13_crit_edge35
  ]

do.end.do.end13_crit_edge35:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end.do.end13_crit_edge34:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end.do.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end5:                                          ; preds = %do.end
  %lldi = getelementptr inbounds %struct.ipsec_uld_ctx, ptr %handle, i32 0, i32 1
  %1 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lldi, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end5.pci_name.exit_crit_edge

do.end5.pci_name.exit_crit_edge:                  ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end5.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %do.end5.pci_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @dev_mutex, i32 noundef 0) #9
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @uld_ctx_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %handle, ptr noundef %7, ptr noundef nonnull @uld_ctx_list) #9
  br i1 %call.i.i, label %if.end.i.i24, label %pci_name.exit.list_add_tail.exit_crit_edge

pci_name.exit.list_add_tail.exit_crit_edge:       ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i24:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
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

list_add_tail.exit:                               ; preds = %if.end.i.i24, %pci_name.exit.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dev_mutex) #9
  br label %sw.epilog

do.end13:                                         ; preds = %do.end.do.end13_crit_edge, %do.end.do.end13_crit_edge34, %do.end.do.end13_crit_edge35
  %lldi15 = getelementptr inbounds %struct.ipsec_uld_ctx, ptr %handle, i32 0, i32 1
  %11 = ptrtoint ptr %lldi15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lldi15, align 4
  %init_name.i.i25 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i25, align 8
  %tobool.not.i.i26 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i26, label %if.end.i.i28, label %do.end13.pci_name.exit30_crit_edge

do.end13.pci_name.exit30_crit_edge:               ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit30

if.end.i.i28:                                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i27 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %15 = ptrtoint ptr %dev.i27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i27, align 4
  br label %pci_name.exit30

pci_name.exit30:                                  ; preds = %if.end.i.i28, %do.end13.pci_name.exit30_crit_edge
  %retval.0.i.i29 = phi ptr [ %16, %if.end.i.i28 ], [ %14, %do.end13.pci_name.exit30_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %retval.0.i.i29) #12
  %call.i.i31 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %handle) #9
  br i1 %call.i.i31, label %if.end.i.i32, label %pci_name.exit30.list_del.exit_crit_edge

pci_name.exit30.list_del.exit_crit_edge:          ; preds = %pci_name.exit30
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i32:                                     ; preds = %pci_name.exit30
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %handle, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handle, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i32, %pci_name.exit30.list_del.exit_crit_edge
  %23 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %handle, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %handle, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %list_del.exit, %list_add_tail.exit, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_ipsec_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %xfrm_input_state.exit, label %xfrm_input_state.exit.thread

xfrm_input_state.exit:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 0)
  %3 = load i32, ptr null, align 2147483648
  %sub.i = add i32 %3, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr null, i32 0, i32 2, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %5, i32 0, i32 41, i32 3
  %6 = ptrtoint ptr %offload_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offload_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %xfrm_input_state.exit.cleanup_crit_edge, label %xfrm_input_state.exit.skb_sec_path.exit_crit_edge

xfrm_input_state.exit.skb_sec_path.exit_crit_edge: ; preds = %xfrm_input_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_sec_path.exit

xfrm_input_state.exit.cleanup_crit_edge:          ; preds = %xfrm_input_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

xfrm_input_state.exit.thread:                     ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %8 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %11 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %shl.i.i.i
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i, align 4
  %sub.i207 = add i32 %13, -1
  %arrayidx.i208 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 2, i32 %sub.i207
  %14 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i208, align 4
  %offload_handle209 = getelementptr inbounds %struct.xfrm_state, ptr %15, i32 0, i32 41, i32 3
  %16 = ptrtoint ptr %offload_handle209 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offload_handle209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not210 = icmp eq i32 %17, 0
  br i1 %tobool.not210, label %xfrm_input_state.exit.thread.cleanup_crit_edge, label %if.then.i.i

xfrm_input_state.exit.thread.cleanup_crit_edge:   ; preds = %xfrm_input_state.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i:                                      ; preds = %xfrm_input_state.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %21 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %shl.i.i
  br label %skb_sec_path.exit

skb_sec_path.exit:                                ; preds = %if.then.i.i, %xfrm_input_state.exit.skb_sec_path.exit_crit_edge
  %.in = phi i32 [ %17, %if.then.i.i ], [ %7, %xfrm_input_state.exit.skb_sec_path.exit_crit_edge ]
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ null, %xfrm_input_state.exit.skb_sec_path.exit_crit_edge ]
  %22 = inttoptr i32 %.in to ptr
  %23 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %retval.0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.not = icmp eq i32 %24, 1
  br i1 %cmp.not, label %if.end5, label %skb_sec_path.exit.out_free_crit_edge

skb_sec_path.exit.out_free_crit_edge:             ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

out_free:                                         ; preds = %if.then46, %skb_sec_path.exit.out_free_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

if.end5:                                          ; preds = %skb_sec_path.exit
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %27 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %queue_mapping, align 8
  %conv = zext i16 %28 to i32
  %sge = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 22
  %first_qset = getelementptr i8, ptr %dev, i32 2329
  %29 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %first_qset, align 1
  %conv7 = zext i8 %30 to i32
  %add = add nuw nsw i32 %conv7, %conv
  %arrayidx = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add
  tail call void @cxgb4_reclaim_completed_tx(ptr noundef %26, ptr noundef %arrayidx, i1 noundef zeroext true) #9
  %kctx_len1.i = getelementptr inbounds %struct.ipsec_sa_entry, ptr %22, i32 0, i32 4
  %31 = ptrtoint ptr %kctx_len1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %kctx_len1.i, align 4
  %esn.i.i = getelementptr inbounds %struct.ipsec_sa_entry, ptr %22, i32 0, i32 1
  %33 = ptrtoint ptr %esn.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %esn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i.i = icmp eq i16 %34, 0
  %spec.select.v.i.i = select i1 %tobool.not.i.i, i32 112, i32 144
  %spec.select.i.i = add i32 %spec.select.v.i.i, %32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %35 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i.i, align 4
  %sub.i.i = sub i32 256, %spec.select.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %sub.i.i)
  %cmp.not.i.i = icmp ugt i32 %36, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool2.not25.i = icmp eq i32 %spec.select.i.i, 0
  %tobool2.not.i = or i1 %tobool2.not25.i, %cmp.not.i.i
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %36, 7
  %sub.i171 = add i32 %add.i, %spec.select.i.i
  %div24.i = lshr i32 %sub.i171, 3
  br label %calc_tx_sec_flits.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %cond.i = select i1 %tobool.not.i.i, i32 0, i32 32
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %37 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nr_frags.i, align 2
  %conv5.i = zext i8 %40 to i32
  %mul.i.i = mul nuw nsw i32 %conv5.i, 3
  %div4.i.i = lshr i32 %mul.i.i, 1
  %and.i.i = and i32 %conv5.i, 1
  %add9.i = add i32 %32, 96
  %add10.i = add i32 %add9.i, %cond.i
  %div1123.i = lshr i32 %add10.i, 3
  %add.i.i = add nuw nsw i32 %div1123.i, 2
  %add1.i.i = add nuw nsw i32 %add.i.i, %and.i.i
  %add12.i = add nuw nsw i32 %add1.i.i, %div4.i.i
  br label %calc_tx_sec_flits.exit

calc_tx_sec_flits.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %add12.i, %if.end.i ], [ %div24.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %retval.0.i)
  %cmp.i = icmp ugt i32 %retval.0.i, 64
  br i1 %cmp.i, label %do.end.i, label %calc_tx_sec_flits.exit.flits_to_desc.exit_crit_edge, !prof !122

calc_tx_sec_flits.exit.flits_to_desc.exit_crit_edge: ; preds = %calc_tx_sec_flits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %flits_to_desc.exit

do.end.i:                                         ; preds = %calc_tx_sec_flits.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 678, i32 noundef 9, ptr noundef null) #9
  br label %flits_to_desc.exit

flits_to_desc.exit:                               ; preds = %do.end.i, %calc_tx_sec_flits.exit.flits_to_desc.exit_crit_edge
  %sub.i172 = add nuw nsw i32 %retval.0.i, 7
  %div21.i = lshr i32 %sub.i172, 3
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 2
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i, align 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %45 = xor i32 %44, -1
  %sub1.i = sub i32 %42, %div21.i
  %sub = add i32 %sub1.i, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp13 = icmp slt i32 %sub, 0
  br i1 %cmp13, label %if.then17, label %if.end20, !prof !122

if.then17:                                        ; preds = %flits_to_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %txq.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add, i32 1
  %46 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %txq.i, align 4
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %47, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %stops.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 5
  %48 = ptrtoint ptr %stops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stops.i, align 4
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr %stops.i, align 4
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 4
  %50 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev_dev, align 16
  %52 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i, align 4
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %56 = xor i32 %55, -1
  %sub1.i175 = add i32 %53, %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.16, ptr noundef %dev, i32 noundef %conv, i32 noundef %sub, i32 noundef %div21.i, i32 noundef %sub1.i175, i32 noundef %retval.0.i) #12
  br label %cleanup

if.end20:                                         ; preds = %flits_to_desc.exit
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 4
  %57 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pidx, align 16
  %add22 = add nsw i32 %div21.i, -1
  %sub23 = add i32 %add22, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %42)
  %cmp25.not = icmp ult i32 %sub23, %42
  %sub30 = select i1 %cmp25.not, i32 0, i32 %42
  %spec.select = sub i32 %sub23, %sub30
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 9
  %59 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sdesc, align 4
  %arrayidx33 = getelementptr %struct.tx_sw_desc, ptr %60, i32 %spec.select
  br i1 %tobool2.not.i, label %land.lhs.true, label %if.end20.if.end49_crit_edge

if.end20.if.end49_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end20
  %pdev_dev35 = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 4
  %61 = ptrtoint ptr %pdev_dev35 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev_dev35, align 16
  %addr = getelementptr %struct.tx_sw_desc, ptr %60, i32 %spec.select, i32 1
  %call37 = tail call i32 @cxgb4_map_skb(ptr noundef %62, ptr noundef %skb, ptr noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then46, label %land.lhs.true.if.end49_crit_edge, !prof !122

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %63 = call ptr @memset(ptr %addr, i32 0, i32 72)
  %mapping_err = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add, i32 9
  %64 = ptrtoint ptr %mapping_err to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mapping_err, align 8
  %inc = add i32 %65, 1
  store i32 %inc, ptr %mapping_err, align 8
  br label %out_free

if.end49:                                         ; preds = %land.lhs.true.if.end49_crit_edge, %if.end20.if.end49_crit_edge
  %desc = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 8
  %66 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %desc, align 32
  %68 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pidx, align 16
  %arrayidx53 = getelementptr %struct.tx_desc, ptr %67, i32 %69
  %add.ptr = getelementptr i64, ptr %arrayidx53, i32 %retval.0.i
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 8
  %72 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %queue_mapping, align 8
  %conv.i = zext i16 %73 to i32
  %sge.i = getelementptr inbounds %struct.adapter, ptr %71, i32 0, i32 22
  %74 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %first_qset, align 1
  %conv2.i = zext i8 %75 to i32
  %add.i177 = add nuw nsw i32 %conv2.i, %conv.i
  %arrayidx.i178 = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i, i32 0, i32 %add.i177
  %76 = ptrtoint ptr %kctx_len1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %kctx_len1.i, align 4
  %cntxt_id.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx.i178, i32 0, i32 7
  %78 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cntxt_id.i, align 4
  %ch_ipsec_stats.i = getelementptr inbounds %struct.adapter, ptr %71, i32 0, i32 75
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ch_ipsec_stats.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ch_ipsec_stats.i, i32 1, i32 3, i32 1) #9
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ch_ipsec_stats.i, ptr %ch_ipsec_stats.i, i32 1, ptr elementtype(i32) %ch_ipsec_stats.i) #9, !srcloc !123
  %81 = ptrtoint ptr %kctx_len1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %kctx_len1.i, align 4
  %83 = ptrtoint ptr %esn.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %esn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool.not.i.i.i = icmp eq i16 %84, 0
  %spec.select.v.i.i.i = select i1 %tobool.not.i.i.i, i32 112, i32 144
  %spec.select.i.i.i = add i32 %spec.select.v.i.i.i, %82
  %85 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len.i.i, align 4
  %sub.i.i.i = sub i32 256, %spec.select.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %sub.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %86, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i)
  %tobool2.not25.i.i = icmp eq i32 %spec.select.i.i.i, 0
  %tobool2.not.i.i = or i1 %tobool2.not25.i.i, %cmp.not.i.i.i
  br i1 %tobool2.not.i.i, label %calc_tx_sec_flits.exit.thread.i, label %if.then9.i

calc_tx_sec_flits.exit.thread.i:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %cond.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 32
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %87 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %nr_frags.i.i, align 2
  %conv5.i.i = zext i8 %90 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv5.i.i, 3
  %div4.i.i.i = lshr i32 %mul.i.i.i, 1
  %and.i.i.i = and i32 %conv5.i.i, 1
  %add9.i.i = add i32 %82, 96
  %add10.i.i = add i32 %add9.i.i, %cond.i.i
  %div1123.i.i = lshr i32 %add10.i.i, 3
  %add.i.i.i = add nuw nsw i32 %div1123.i.i, 2
  %add1.i.i.i = add nuw nsw i32 %add.i.i.i, %and.i.i.i
  %add12.i.i = add nuw nsw i32 %add1.i.i.i, %div4.i.i.i
  %spec.select236.i = select i1 %tobool.not.i.i.i, i32 131072, i32 147456
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i179 = add i32 %86, 7
  %sub.i.i180 = add i32 %add.i.i179, %spec.select.i.i.i
  %div24.i.i = lshr i32 %sub.i.i180, 3
  %spec.select.i = select i1 %tobool.not.i.i.i, i32 131072, i32 147456
  %conv10.i = trunc i32 %86 to i16
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %calc_tx_sec_flits.exit.thread.i
  %spec.select239.i = phi i32 [ %spec.select.i, %if.then9.i ], [ %spec.select236.i, %calc_tx_sec_flits.exit.thread.i ]
  %div184238.in.in.i = phi i32 [ %div24.i.i, %if.then9.i ], [ %add12.i.i, %calc_tx_sec_flits.exit.thread.i ]
  %immdatalen.0.i = phi i16 [ %conv10.i, %if.then9.i ], [ 0, %calc_tx_sec_flits.exit.thread.i ]
  %div184238.in.i = add nuw nsw i32 %div184238.in.in.i, 1
  %div184238.i = lshr i32 %div184238.in.i, 1
  br i1 %tobool.not.i.i.i, label %if.end11.i.if.end18.i_crit_edge, label %if.then14.i

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %91 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i.not.i = icmp eq i32 %92, 0
  %spec.select189.i = select i1 %tobool.i.not.i, i32 -2122317824, i32 -2130706432
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end18.i_crit_edge
  %sc_more.0.i = phi i32 [ -2130706432, %if.end11.i.if.end18.i_crit_edge ], [ %spec.select189.i, %if.then14.i ]
  %esnlen.0.i = phi i32 [ 0, %if.end11.i.if.end18.i_crit_edge ], [ 20, %if.then14.i ]
  %93 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 67108864, ptr %arrayidx53, align 8
  %conv19.i = and i32 %div184238.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp.i181 = icmp ult i32 %sub, 5
  br i1 %cmp.i181, label %if.then23.i, label %if.end18.i.if.end28.i_crit_edge, !prof !122

if.end18.i.if.end28.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %txq.i182 = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i, i32 0, i32 %add.i177, i32 1
  %94 = ptrtoint ptr %txq.i182 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %txq.i182, align 4
  %state.i.i183 = getelementptr inbounds %struct.netdev_queue, ptr %95, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i183) #9
  %stops.i184 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx.i178, i32 0, i32 5
  %96 = ptrtoint ptr %stops.i184 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %stops.i184, align 4
  %inc.i185 = add i32 %97, 1
  store i32 %inc.i185, ptr %stops.i184, align 4
  %dbqt.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i, i32 0, i32 %add.i177, i32 3
  %98 = ptrtoint ptr %dbqt.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %dbqt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool25.not.i = icmp eq i8 %99, 0
  %or.i = or i32 %conv19.i, -1073741824
  %spec.select190.i = select i1 %tobool25.not.i, i32 %or.i, i32 %conv19.i
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then23.i, %if.end18.i.if.end28.i_crit_edge
  %wr_mid.0.i = phi i32 [ %conv19.i, %if.end18.i.if.end28.i_crit_edge ], [ %spec.select190.i, %if.then23.i ]
  %or29.i = or i32 %wr_mid.0.i, 268435456
  %flowid_len16.i = getelementptr inbounds %struct.fw_ulptx_wr, ptr %arrayidx53, i32 0, i32 1
  %100 = ptrtoint ptr %flowid_len16.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or29.i, ptr %flowid_len16.i, align 4
  %port_id.i = getelementptr i8, ptr %dev, i32 2325
  %101 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %port_id.i, align 1
  %conv31.i = zext i8 %102 to i32
  %shl32.i = shl nuw nsw i32 %conv31.i, 22
  %shl35.i = shl i32 %79, 4
  %or34.i = or i32 %shl35.i, %shl32.i
  %or36.i = or i32 %or34.i, 67108872
  %req.i = getelementptr inbounds %struct.chcr_ipsec_wr, ptr %arrayidx53, i32 0, i32 1
  %103 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or36.i, ptr %req.i, align 8
  %sub38.i = add nsw i32 %conv19.i, -1
  %len41.i = getelementptr inbounds %struct.chcr_ipsec_wr, ptr %arrayidx53, i32 0, i32 1, i32 0, i32 1
  %104 = ptrtoint ptr %len41.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub38.i, ptr %len41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %immdatalen.0.i)
  %tobool42.not.i = icmp eq i16 %immdatalen.0.i, 0
  %spec.select191.i = select i1 %tobool42.not.i, i32 -2122317824, i32 %sc_more.0.i
  %sc_imm.i = getelementptr inbounds %struct.chcr_ipsec_wr, ptr %arrayidx53, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %sc_imm.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %spec.select191.i, ptr %sc_imm.i, align 8
  %add49.i = add i32 %77, 64
  %narrow.i = select i1 %tobool.not.i.i.i, i16 %immdatalen.0.i, i16 0
  %cond.i186 = zext i16 %narrow.i to i32
  %add50.i = add i32 %add49.i, %cond.i186
  %add53.i = add i32 %add50.i, %esnlen.0.i
  %len56.i = getelementptr inbounds %struct.chcr_ipsec_wr, ptr %arrayidx53, i32 0, i32 1, i32 1, i32 1
  %106 = ptrtoint ptr %len56.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add53.i, ptr %len56.i, align 4
  %107 = ptrtoint ptr %esn.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %esn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool59.not.i = icmp eq i16 %108, 0
  br i1 %tobool59.not.i, label %cond.false61.i, label %if.end28.i.cond.end65.i_crit_edge

if.end28.i.cond.end65.i_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end65.i

cond.false61.i:                                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %109 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %111 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i187 = zext i16 %112 to i32
  %add.ptr.i.i.i188 = getelementptr i8, ptr %110, i32 %conv.i.i.i187
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %113 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i188 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %114 to i32
  %sub.ptr.sub.i.i = sub i32 9, %sub.ptr.rhs.cast.i.i
  %add64.i = add i32 %sub.ptr.sub.i.i, %sub.ptr.lhs.cast.i.i
  %phi.bo186.i = or i32 %add64.i, -1979579392
  br label %cond.end65.i

cond.end65.i:                                     ; preds = %cond.false61.i, %if.end28.i.cond.end65.i_crit_edge
  %cond66.i = phi i32 [ %phi.bo186.i, %cond.false61.i ], [ -1979579379, %if.end28.i.cond.end65.i_crit_edge ]
  %sec_cpl.i = getelementptr inbounds %struct.chcr_ipsec_wr, ptr %arrayidx53, i32 0, i32 1, i32 2
  %115 = ptrtoint ptr %sec_cpl.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %cond66.i, ptr %sec_cpl.i, align 8
  %116 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len.i.i, align 4
  %add71.i = add i32 %117, %esnlen.0.i
  %pldlen.i = getelementptr inbounds %struct.chcr_ipsec_wr, ptr %arrayidx53, i32 0, i32 1, i32 2, i32 1
  %118 = ptrtoint ptr %pldlen.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %add71.i, ptr %pldlen.i, align 4
  %119 = ptrtoint ptr %esn.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %esn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool76.not.i = icmp eq i16 %120, 0
  br i1 %tobool76.not.i, label %cond.false87.i, label %cond.end65.i.cond.end90.i_crit_edge

cond.end65.i.cond.end90.i_crit_edge:              ; preds = %cond.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end90.i

cond.false87.i:                                   ; preds = %cond.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  %head.i.i193.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %121 = ptrtoint ptr %head.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %head.i.i193.i, align 8
  %transport_header.i.i194.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %123 = ptrtoint ptr %transport_header.i.i194.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %transport_header.i.i194.i, align 2
  %conv.i.i195.i = zext i16 %124 to i32
  %add.ptr.i.i196.i = getelementptr i8, ptr %122, i32 %conv.i.i195.i
  %data.i197.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %125 = ptrtoint ptr %data.i197.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i197.i, align 4
  %sub.ptr.lhs.cast.i198.i = ptrtoint ptr %add.ptr.i.i196.i to i32
  %sub.ptr.rhs.cast.i199.i = ptrtoint ptr %126 to i32
  %sub.ptr.sub.i200.i = sub i32 %sub.ptr.lhs.cast.i198.i, %sub.ptr.rhs.cast.i199.i
  %add80.i = shl i32 %sub.ptr.sub.i200.i, 24
  %phi.bo187.i = add i32 %add80.i, 16777216
  %add89.i = shl i32 %sub.ptr.sub.i200.i, 15
  %phi.bo188.i = add i32 %add89.i, 262144
  %127 = or i32 %phi.bo188.i, %phi.bo187.i
  br label %cond.end90.i

cond.end90.i:                                     ; preds = %cond.false87.i, %cond.end65.i.cond.end90.i_crit_edge
  %spec.select192.i = phi i32 [ %esnlen.0.i, %cond.end65.i.cond.end90.i_crit_edge ], [ 0, %cond.false87.i ]
  %or106.i = phi i32 [ 17170432, %cond.end65.i.cond.end90.i_crit_edge ], [ %127, %cond.false87.i ]
  %head.i.i209.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %128 = ptrtoint ptr %head.i.i209.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %head.i.i209.i, align 8
  %transport_header.i.i210.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %130 = ptrtoint ptr %transport_header.i.i210.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %transport_header.i.i210.i, align 2
  %conv.i.i211.i = zext i16 %131 to i32
  %add.ptr.i.i212.i = getelementptr i8, ptr %129, i32 %conv.i.i211.i
  %data.i213.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %132 = ptrtoint ptr %data.i213.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i213.i, align 4
  %sub.ptr.lhs.cast.i214.i = ptrtoint ptr %add.ptr.i.i212.i to i32
  %sub.ptr.rhs.cast.i215.i = ptrtoint ptr %133 to i32
  %sub.ptr.sub.i216.i = add nuw nsw i32 %spec.select192.i, 17
  %add95.i = sub i32 %sub.ptr.sub.i216.i, %sub.ptr.rhs.cast.i215.i
  %add103.i = add i32 %add95.i, %sub.ptr.lhs.cast.i214.i
  %shl107.i = shl i32 %add103.i, 5
  %or108.i = or i32 %shl107.i, %or106.i
  %aadstart_cipherstop_hi.i = getelementptr inbounds %struct.chcr_ipsec_wr, ptr %arrayidx53, i32 0, i32 1, i32 2, i32 2
  %134 = ptrtoint ptr %aadstart_cipherstop_hi.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %or108.i, ptr %aadstart_cipherstop_hi.i, align 8
  %shl112.i = shl i32 %add103.i, 18
  %authsize.i = getelementptr inbounds %struct.ipsec_sa_entry, ptr %22, i32 0, i32 5
  %135 = ptrtoint ptr %authsize.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %authsize.i, align 4
  %shl114.i = shl i32 %136, 9
  %or115.i = or i32 %shl114.i, %136
  %or118.i = or i32 %or115.i, %shl112.i
  %cipherstop_lo_authinsert.i = getelementptr inbounds %struct.chcr_ipsec_wr, ptr %arrayidx53, i32 0, i32 1, i32 2, i32 3
  %137 = ptrtoint ptr %cipherstop_lo_authinsert.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or118.i, ptr %cipherstop_lo_authinsert.i, align 4
  %138 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %22, align 4
  %shl121.i = shl i32 %139, 11
  %or124.i = or i32 %shl121.i, 71893504
  %seqno_numivs.i = getelementptr inbounds %struct.chcr_ipsec_wr, ptr %arrayidx53, i32 0, i32 1, i32 2, i32 4
  %140 = ptrtoint ptr %seqno_numivs.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %or124.i, ptr %seqno_numivs.i, align 8
  %ivgen_hdrlen.i = getelementptr inbounds %struct.chcr_ipsec_wr, ptr %arrayidx53, i32 0, i32 1, i32 2, i32 5
  %141 = ptrtoint ptr %ivgen_hdrlen.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %spec.select239.i, ptr %ivgen_hdrlen.i, align 4
  %add.ptr.i189 = getelementptr i8, ptr %arrayidx53, i32 64
  %142 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %add.ptr.i, align 8
  %144 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %queue_mapping, align 8
  %conv.i.i190 = zext i16 %145 to i32
  %sge.i.i = getelementptr inbounds %struct.adapter, ptr %143, i32 0, i32 22
  %146 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %first_qset, align 1
  %conv1.i.i = zext i8 %147 to i32
  %add.i219.i = add nuw nsw i32 %conv1.i.i, %conv.i.i190
  %arrayidx.i.i191 = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i.i, i32 0, i32 %add.i219.i
  %148 = ptrtoint ptr %kctx_len1.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %kctx_len1.i, align 4
  %stat.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx.i.i191, i32 0, i32 10
  %150 = ptrtoint ptr %stat.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %stat.i.i, align 8
  %sub.ptr.lhs.cast.i220.i = ptrtoint ptr %151 to i32
  %sub.ptr.rhs.cast.i221.i = ptrtoint ptr %add.ptr.i189 to i32
  %sub.ptr.sub.i222.i = sub i32 %sub.ptr.lhs.cast.i220.i, %sub.ptr.rhs.cast.i221.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i222.i)
  %tobool.not.i.i192 = icmp eq i32 %sub.ptr.sub.i222.i, 0
  br i1 %tobool.not.i.i192, label %if.then.i223.i, label %cond.end90.i.if.end.i226.i_crit_edge

cond.end90.i.if.end.i226.i_crit_edge:             ; preds = %cond.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i226.i

if.then.i223.i:                                   ; preds = %cond.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  %desc.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx.i.i191, i32 0, i32 8
  %152 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %desc.i.i, align 32
  %size.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx.i.i191, i32 0, i32 2
  %154 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %size.i.i, align 8
  %mul.i.i193 = shl i32 %155, 6
  br label %if.end.i226.i

if.end.i226.i:                                    ; preds = %if.then.i223.i, %cond.end90.i.if.end.i226.i_crit_edge
  %left.0.i.i = phi i32 [ %sub.ptr.sub.i222.i, %cond.end90.i.if.end.i226.i_crit_edge ], [ %mul.i.i193, %if.then.i223.i ]
  %pos.addr.0.i.i = phi ptr [ %add.ptr.i189, %cond.end90.i.if.end.i226.i_crit_edge ], [ %153, %if.then.i223.i ]
  %key_ctx_hdr.i.i = getelementptr inbounds %struct.ipsec_sa_entry, ptr %22, i32 0, i32 6
  %156 = ptrtoint ptr %key_ctx_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %key_ctx_hdr.i.i, align 4
  %158 = ptrtoint ptr %pos.addr.0.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %pos.addr.0.i.i, align 8
  %salt.i.i = getelementptr inbounds %struct._key_ctx, ptr %pos.addr.0.i.i, i32 0, i32 1
  %salt5.i.i = getelementptr inbounds %struct.ipsec_sa_entry, ptr %22, i32 0, i32 7
  %159 = ptrtoint ptr %salt5.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %salt5.i.i, align 4
  %161 = ptrtoint ptr %salt.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %salt.i.i, align 4
  %add.ptr.i224.i = getelementptr i8, ptr %pos.addr.0.i.i, i32 16
  %sub.i225.i = add i32 %left.0.i.i, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %sub.i225.i)
  %cmp.not.i.i194 = icmp sgt i32 %149, %sub.i225.i
  %key15.i.i = getelementptr inbounds %struct.ipsec_sa_entry, ptr %22, i32 0, i32 8
  br i1 %cmp.not.i.i194, label %if.else.i.i, label %if.then10.i.i, !prof !122

if.then10.i.i:                                    ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = call ptr @memcpy(ptr %add.ptr.i224.i, ptr %key15.i.i, i32 %149)
  %add.ptr14.i.i = getelementptr i8, ptr %add.ptr.i224.i, i32 %149
  br label %if.end27.i.i

if.else.i.i:                                      ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #11
  %163 = call ptr @memcpy(ptr %add.ptr.i224.i, ptr %key15.i.i, i32 %sub.i225.i)
  %desc18.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx.i.i191, i32 0, i32 8
  %164 = ptrtoint ptr %desc18.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %desc18.i.i, align 32
  %add.ptr21.i.i = getelementptr i8, ptr %key15.i.i, i32 %sub.i225.i
  %sub22.i.i = sub i32 %149, %sub.i225.i
  %166 = call ptr @memcpy(ptr %165, ptr %add.ptr21.i.i, i32 %sub22.i.i)
  %167 = load ptr, ptr %desc18.i.i, align 32
  %add.ptr26.i.i = getelementptr i8, ptr %167, i32 %sub22.i.i
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.else.i.i, %if.then10.i.i
  %pos.addr.1.i.i = phi ptr [ %add.ptr14.i.i, %if.then10.i.i ], [ %add.ptr26.i.i, %if.else.i.i ]
  %168 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %add.ptr.i, align 8
  %170 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %queue_mapping, align 8
  %conv.i.i227.i = zext i16 %171 to i32
  %sge.i.i.i = getelementptr inbounds %struct.adapter, ptr %169, i32 0, i32 22
  %172 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %first_qset, align 1
  %conv1.i.i.i = zext i8 %173 to i32
  %add.i.i228.i = add nuw nsw i32 %conv1.i.i.i, %conv.i.i227.i
  %arrayidx.i.i.i195 = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i.i.i, i32 0, i32 %add.i.i228.i
  %stat.i.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx.i.i.i195, i32 0, i32 10
  %174 = ptrtoint ptr %stat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %stat.i.i.i, align 8
  %tobool.not.i.i229.i = icmp eq ptr %175, %pos.addr.1.i.i
  br i1 %tobool.not.i.i229.i, label %if.then.i.i.i196, label %if.end27.i.i.if.end.i.i.i_crit_edge

if.end27.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i196:                                 ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %desc.i.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx.i.i.i195, i32 0, i32 8
  %176 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %desc.i.i.i, align 32
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i196, %if.end27.i.i.if.end.i.i.i_crit_edge
  %pos.addr.0.i.i.i = phi ptr [ %pos.addr.1.i.i, %if.end27.i.i.if.end.i.i.i_crit_edge ], [ %177, %if.then.i.i.i196 ]
  %tx_chan.i.i.i = getelementptr i8, ptr %dev, i32 2326
  %178 = ptrtoint ptr %tx_chan.i.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %tx_chan.i.i.i, align 2
  %conv4.i.i.i = zext i8 %179 to i32
  %shl.i.i.i197 = shl nuw nsw i32 %conv4.i.i.i, 16
  %pf.i.i.i = getelementptr inbounds %struct.adapter, ptr %169, i32 0, i32 7
  %180 = ptrtoint ptr %pf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %pf.i.i.i, align 4
  %shl5.i.i.i = shl i32 %181, 8
  %or.i.i.i = or i32 %shl.i.i.i197, %shl5.i.i.i
  %or6.i.i.i = or i32 %or.i.i.i, -301989888
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %182 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %bf.load.i.i.i = load i32, ptr %vlan_present.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i.i)
  %tobool7.not.i.i.i = icmp sgt i32 %bf.load.i.i.i, -1
  br i1 %tobool7.not.i.i.i, label %if.end.i.i.i.if.end13.i.i.i_crit_edge, label %if.then8.i.i.i

if.end.i.i.i.if.end13.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_ins.i.i.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i.i.i, i32 0, i32 %add.i.i228.i, i32 8
  %183 = ptrtoint ptr %vlan_ins.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %vlan_ins.i.i.i, align 4
  %inc.i.i.i = add i32 %184, 1
  store i32 %inc.i.i.i, ptr %vlan_ins.i.i.i, align 4
  %vlan_tci.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %185 = ptrtoint ptr %vlan_tci.i.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %vlan_tci.i.i.i, align 2
  %conv9.i.i.i = zext i16 %186 to i64
  %shl10.i.i.i = shl nuw nsw i64 %conv9.i.i.i, 44
  %or12.i.i.i = or i64 %shl10.i.i.i, -3458764513820540928
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then8.i.i.i, %if.end.i.i.i.if.end13.i.i.i_crit_edge
  %cntrl.0.i.i.i = phi i64 [ %or12.i.i.i, %if.then8.i.i.i ], [ -4611686018427387904, %if.end.i.i.i.if.end13.i.i.i_crit_edge ]
  %187 = ptrtoint ptr %pos.addr.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %or6.i.i.i, ptr %pos.addr.0.i.i.i, align 8
  %pack.i.i.i = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %pos.addr.0.i.i.i, i32 0, i32 1
  %188 = ptrtoint ptr %pack.i.i.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 0, ptr %pack.i.i.i, align 4
  %189 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %len.i.i, align 4
  %conv15.i.i.i = trunc i32 %190 to i16
  %len16.i.i.i = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %pos.addr.0.i.i.i, i32 0, i32 2
  %191 = ptrtoint ptr %len16.i.i.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv15.i.i.i, ptr %len16.i.i.i, align 2
  %ctrl1.i.i.i = getelementptr inbounds %struct.cpl_tx_pkt_core, ptr %pos.addr.0.i.i.i, i32 0, i32 3
  %192 = ptrtoint ptr %ctrl1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 %cntrl.0.i.i.i, ptr %ctrl1.i.i.i, align 8
  %add.ptr.i60.i.i = getelementptr i8, ptr %pos.addr.0.i.i.i, i32 16
  %193 = ptrtoint ptr %esn.i.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %esn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %tobool17.not.i.i.i = icmp eq i16 %194, 0
  br i1 %tobool17.not.i.i.i, label %if.end13.i.i.i.ch_ipsec_crypto_wreq.exit_crit_edge, label %if.then18.i.i.i

if.end13.i.i.i.ch_ipsec_crypto_wreq.exit_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ch_ipsec_crypto_wreq.exit

if.then18.i.i.i:                                  ; preds = %if.end13.i.i.i
  %195 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %add.ptr.i, align 8
  %197 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %queue_mapping, align 8
  %conv.i.i.i.i = zext i16 %198 to i32
  %sge.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %196, i32 0, i32 22
  %199 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %first_qset, align 1
  %conv1.i.i.i.i = zext i8 %200 to i32
  %add.i.i.i.i = add nuw nsw i32 %conv1.i.i.i.i, %conv.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i.i.i.i, i32 0, i32 %add.i.i.i.i
  %stat.i.i.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx.i.i.i.i, i32 0, i32 10
  %201 = ptrtoint ptr %stat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %stat.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %202, %add.ptr.i60.i.i
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.then18.i.i.i.if.end.i.i.i.i_crit_edge

if.then18.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %desc.i.i.i.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx.i.i.i.i, i32 0, i32 8
  %203 = ptrtoint ptr %desc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %desc.i.i.i.i, align 32
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %if.then18.i.i.i.if.end.i.i.i.i_crit_edge
  %pos.addr.0.i.i.i.i = phi ptr [ %add.ptr.i60.i.i, %if.then18.i.i.i.if.end.i.i.i.i_crit_edge ], [ %204, %if.then.i.i.i.i ]
  %205 = call ptr @memset(ptr %pos.addr.0.i.i.i.i, i32 0, i32 32)
  %206 = ptrtoint ptr %head.i.i209.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %head.i.i209.i, align 8
  %208 = ptrtoint ptr %transport_header.i.i210.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %transport_header.i.i210.i, align 2
  %conv.i.i.i.i.i = zext i16 %209 to i32
  %add.ptr.i44.i.i.i.i = getelementptr i8, ptr %207, i32 %conv.i.i.i.i.i
  %210 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %212 = and i8 %211, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool.i.not.i.i.i.i.i.i.i = icmp eq i8 %212, 0
  br i1 %tobool.i.not.i.i.i.i.i.i.i, label %if.end.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge, label %skb_sec_path.exit.i.i.i.i.i

if.end.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm_offload.exit.i.i.i.i

skb_sec_path.exit.i.i.i.i.i:                      ; preds = %if.end.i.i.i.i
  %extensions.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %213 = ptrtoint ptr %extensions.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %extensions.i.i.i.i.i.i.i, align 8
  %arrayidx.i.i.i.i.i.i.i = getelementptr %struct.skb_ext, ptr %214, i32 0, i32 1, i32 1
  %215 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx.i.i.i.i.i.i.i, align 1
  %conv.i.i.i.i.i.i.i = zext i8 %216 to i32
  %shl.i.i.i.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i.i.i, 3
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %214, i32 %shl.i.i.i.i.i.i.i
  %tobool.not.i.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %skb_sec_path.exit.i.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

skb_sec_path.exit.i.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge: ; preds = %skb_sec_path.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm_offload.exit.i.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %skb_sec_path.exit.i.i.i.i.i
  %olen.i.i.i.i.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i.i.i.i, i32 0, i32 1
  %217 = ptrtoint ptr %olen.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %olen.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %218, 0
  br i1 %tobool1.not.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge, label %lor.lhs.false2.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm_offload.exit.i.i.i.i

lor.lhs.false2.i.i.i.i.i:                         ; preds = %lor.lhs.false.i.i.i.i.i
  %219 = ptrtoint ptr %add.ptr.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %add.ptr.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %220, i32 %218)
  %cmp.not.i.i.i.i.i = icmp eq i32 %220, %218
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %lor.lhs.false2.i.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge

lor.lhs.false2.i.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm_offload.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %lor.lhs.false2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i.i = add i32 %218, -1
  %arrayidx.i.i.i.i.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i.i.i.i, i32 0, i32 3, i32 %sub.i.i.i.i.i
  br label %xfrm_offload.exit.i.i.i.i

xfrm_offload.exit.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i, %lor.lhs.false2.i.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge, %skb_sec_path.exit.i.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge, %if.end.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %arrayidx.i.i.i.i.i, %if.end.i.i.i.i.i ], [ null, %lor.lhs.false2.i.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge ], [ null, %lor.lhs.false.i.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge ], [ null, %skb_sec_path.exit.i.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge ], [ null, %if.end.i.i.i.i.xfrm_offload.exit.i.i.i.i_crit_edge ]
  %221 = ptrtoint ptr %add.ptr.i44.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %add.ptr.i44.i.i.i.i, align 4
  %223 = ptrtoint ptr %pos.addr.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %pos.addr.0.i.i.i.i, align 4
  %seq_no.i.i.i.i = getelementptr inbounds %struct.ip_esp_hdr, ptr %add.ptr.i44.i.i.i.i, i32 0, i32 1
  %224 = ptrtoint ptr %seq_no.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %seq_no.i.i.i.i, align 4
  %conv8.i.i.i.i = zext i32 %225 to i64
  %hi.i.i.i.i = getelementptr inbounds %struct.anon.204, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %226 = ptrtoint ptr %hi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %hi.i.i.i.i, align 4
  %conv9.i.i.i.i = zext i32 %227 to i64
  %shl.i.i.i.i = shl nuw i64 %conv9.i.i.i.i, 32
  %add10.i.i.i.i = or i64 %shl.i.i.i.i, %conv8.i.i.i.i
  %seq_no11.i.i.i.i = getelementptr inbounds %struct.chcr_ipsec_aadiv, ptr %pos.addr.0.i.i.i.i, i32 0, i32 1
  %228 = ptrtoint ptr %seq_no11.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %228, i32 8)
  store i64 %add10.i.i.i.i, ptr %seq_no11.i.i.i.i, align 4
  %229 = ptrtoint ptr %head.i.i209.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %head.i.i209.i, align 8
  %231 = ptrtoint ptr %transport_header.i.i210.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %transport_header.i.i210.i, align 2
  %conv.i51.i.i.i.i = zext i16 %232 to i32
  %add.ptr.i52.i.i.i.i = getelementptr i8, ptr %230, i32 %conv.i51.i.i.i.i
  %add.ptr13.i.i.i.i = getelementptr i8, ptr %add.ptr.i52.i.i.i.i, i32 8
  %iv14.i.i.i.i = getelementptr inbounds %struct.chcr_ipsec_aadiv, ptr %pos.addr.0.i.i.i.i, i32 0, i32 2
  %233 = ptrtoint ptr %add.ptr13.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %233, i32 8)
  %234 = load i64, ptr %add.ptr13.i.i.i.i, align 1
  %235 = ptrtoint ptr %iv14.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %235, i32 8)
  store i64 %234, ptr %iv14.i.i.i.i, align 4
  %236 = ptrtoint ptr %kctx_len1.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %kctx_len1.i, align 4
  %238 = ptrtoint ptr %esn.i.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %esn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %239)
  %tobool.not.i53.i.i.i.i = icmp eq i16 %239, 0
  %spec.select.v.i.i.i.i.i = select i1 %tobool.not.i53.i.i.i.i, i32 112, i32 144
  %spec.select.i.i.i.i.i = add i32 %spec.select.v.i.i.i.i.i, %237
  %240 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %len.i.i, align 4
  %sub.i54.i.i.i.i = sub i32 256, %spec.select.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %241, i32 %sub.i54.i.i.i.i)
  %cmp.not.i55.i.i.i.i = icmp ugt i32 %241, %sub.i54.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i.i.i)
  %tobool17.not57.i.i.i.i = icmp eq i32 %spec.select.i.i.i.i.i, 0
  %tobool17.not.i.i.i.i = or i1 %tobool17.not57.i.i.i.i, %cmp.not.i55.i.i.i.i
  br i1 %tobool17.not.i.i.i.i, label %xfrm_offload.exit.i.i.i.i.copy_esn_pktxt.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

xfrm_offload.exit.i.i.i.i.copy_esn_pktxt.exit.i.i.i_crit_edge: ; preds = %xfrm_offload.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_esn_pktxt.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %xfrm_offload.exit.i.i.i.i
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %242 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool.i.not.i.i.i.i = icmp eq i32 %243, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.then19.i.i.i.i, label %land.lhs.true.i.i.i.i.copy_esn_pktxt.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.copy_esn_pktxt.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_esn_pktxt.exit.i.i.i

if.then19.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr20.i.i.i.i = getelementptr i8, ptr %pos.addr.0.i.i.i.i, i32 24
  %244 = ptrtoint ptr %add.ptr20.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 -2130706432, ptr %add.ptr20.i.i.i.i, align 4
  %245 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %len.i.i, align 4
  %len22.i.i.i.i = getelementptr i8, ptr %pos.addr.0.i.i.i.i, i32 28
  %247 = ptrtoint ptr %len22.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %len22.i.i.i.i, align 4
  br label %copy_esn_pktxt.exit.i.i.i

copy_esn_pktxt.exit.i.i.i:                        ; preds = %if.then19.i.i.i.i, %land.lhs.true.i.i.i.i.copy_esn_pktxt.exit.i.i.i_crit_edge, %xfrm_offload.exit.i.i.i.i.copy_esn_pktxt.exit.i.i.i_crit_edge
  %add.ptr24.i.i.i.i = getelementptr i8, ptr %pos.addr.0.i.i.i.i, i32 32
  br label %ch_ipsec_crypto_wreq.exit

ch_ipsec_crypto_wreq.exit:                        ; preds = %copy_esn_pktxt.exit.i.i.i, %if.end13.i.i.i.ch_ipsec_crypto_wreq.exit_crit_edge
  %pos.addr.1.i.i.i = phi ptr [ %add.ptr24.i.i.i.i, %copy_esn_pktxt.exit.i.i.i ], [ %add.ptr.i60.i.i, %if.end13.i.i.i.ch_ipsec_crypto_wreq.exit_crit_edge ]
  %cmp55 = icmp ugt ptr %arrayidx53, %pos.addr.1.i.i.i
  br i1 %cmp55, label %if.then57, label %ch_ipsec_crypto_wreq.exit.if.end62_crit_edge

ch_ipsec_crypto_wreq.exit.if.end62_crit_edge:     ; preds = %ch_ipsec_crypto_wreq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then57:                                        ; preds = %ch_ipsec_crypto_wreq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %stat = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 10
  %248 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %stat, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %249 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %250 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %desc, align 32
  %add.ptr61 = getelementptr i8, ptr %251, i32 %sub.ptr.sub
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %ch_ipsec_crypto_wreq.exit.if.end62_crit_edge
  %end.0 = phi ptr [ %add.ptr61, %if.then57 ], [ %add.ptr, %ch_ipsec_crypto_wreq.exit.if.end62_crit_edge ]
  %stat64 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 10
  %252 = ptrtoint ptr %stat64 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %stat64, align 8
  %cmp65 = icmp eq ptr %pos.addr.1.i.i.i, %253
  br i1 %cmp65, label %if.then67, label %if.end62.if.end78_crit_edge

if.end62.if.end78_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast70 = ptrtoint ptr %end.0 to i32
  %sub.ptr.rhs.cast71 = ptrtoint ptr %pos.addr.1.i.i.i to i32
  %sub.ptr.sub72 = sub i32 %sub.ptr.lhs.cast70, %sub.ptr.rhs.cast71
  %254 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %desc, align 32
  %add.ptr75 = getelementptr i8, ptr %255, i32 %sub.ptr.sub72
  br label %if.end78

if.end78:                                         ; preds = %if.then67, %if.end62.if.end78_crit_edge
  %pos.0 = phi ptr [ %255, %if.then67 ], [ %pos.addr.1.i.i.i, %if.end62.if.end78_crit_edge ]
  %end.1 = phi ptr [ %add.ptr75, %if.then67 ], [ %end.0, %if.end62.if.end78_crit_edge ]
  br i1 %tobool2.not.i, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cxgb4_inline_tx_skb(ptr noundef %skb, ptr noundef %arrayidx, ptr noundef %pos.0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #9
  br label %if.end86

if.else:                                          ; preds = %if.end78
  %addr83 = getelementptr %struct.tx_sw_desc, ptr %60, i32 %spec.select, i32 1
  tail call void @cxgb4_write_sgl(ptr noundef %skb, ptr noundef %arrayidx, ptr noundef %pos.0, ptr noundef %end.1, i32 noundef 0, ptr noundef %addr83) #9
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %256 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %257, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i198

if.then.i198:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %257(ptr noundef %skb) #9
  %258 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %destructor.i, align 4
  %259 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr null, ptr %259, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.else
  %261 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 4
  %tobool3.not.i = icmp eq ptr %263, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !120

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !124
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i198
  %264 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %skb, ptr %arrayidx33, align 4
  br label %if.end86

if.end86:                                         ; preds = %skb_orphan.exit, %if.then80
  %265 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx, align 4
  %add.i200 = add i32 %266, %div21.i
  store i32 %add.i200, ptr %arrayidx, align 4
  %267 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %pidx, align 4
  %add1.i = add i32 %268, %div21.i
  store i32 %add1.i, ptr %pidx, align 4
  %269 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %270)
  %cmp.not.i = icmp ult i32 %add1.i, %270
  br i1 %cmp.not.i, label %if.end86.txq_advance.exit_crit_edge, label %if.then.i203

if.end86.txq_advance.exit_crit_edge:              ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %txq_advance.exit

if.then.i203:                                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i202 = sub i32 %add1.i, %270
  %271 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %sub.i202, ptr %pidx, align 4
  br label %txq_advance.exit

txq_advance.exit:                                 ; preds = %if.then.i203, %if.end86.txq_advance.exit_crit_edge
  tail call void @cxgb4_ring_tx_db(ptr noundef %26, ptr noundef %arrayidx, i32 noundef %div21.i) #9
  br label %cleanup

cleanup:                                          ; preds = %txq_advance.exit, %if.then17, %out_free, %xfrm_input_state.exit.thread.cleanup_crit_edge, %xfrm_input_state.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out_free ], [ 16, %if.then17 ], [ 0, %txq_advance.exit ], [ 16, %xfrm_input_state.exit.cleanup_crit_edge ], [ 16, %xfrm_input_state.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_reclaim_completed_tx(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_map_skb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_inline_tx_skb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_write_sgl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_ring_tx_db(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_ipsec_xfrm_add_state(ptr nocapture noundef %x) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aalgo = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 3
  %0 = ptrtoint ptr %aalgo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aalgo, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug672, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_xfrm_add_state, %if.then4)) #9
          to label %cleanup [label %if.then4], !srcloc !121

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug672, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %calgo = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 5
  %2 = ptrtoint ptr %calgo to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %calgo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8.not = icmp eq i8 %3, 0
  br i1 %cmp8.not, label %if.end27, label %do.body11

do.body11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug673, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_xfrm_add_state, %if.then23)) #9
          to label %cleanup [label %if.then23], !srcloc !121

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug673, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end5
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %family, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %5, label %do.body38 [
    i16 2, label %if.end27.if.end54_crit_edge
    i16 10, label %if.end27.if.end54_crit_edge339
  ]

if.end27.if.end54_crit_edge339:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end27.if.end54_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.body38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug674, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_xfrm_add_state, %if.then50)) #9
          to label %cleanup [label %if.then50], !srcloc !121

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug674, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end27.if.end54_crit_edge, %if.end27.if.end54_crit_edge339
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %switch = icmp ult i8 %8, 2
  br i1 %switch, label %if.end82, label %do.body66

do.body66:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug675, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_xfrm_add_state, %if.then78)) #9
          to label %cleanup [label %if.then78], !srcloc !121

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug675, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end82:                                         ; preds = %if.end54
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %proto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %10)
  %cmp84.not = icmp eq i8 %10, 50
  br i1 %cmp84.not, label %if.end103, label %do.body87

do.body87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_xfrm_add_state, %if.then99)) #9
          to label %cleanup [label %if.then99], !srcloc !121

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug676, ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end103:                                        ; preds = %if.end82
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %11 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %encap, align 8
  %tobool104.not = icmp eq ptr %12, null
  br i1 %tobool104.not, label %if.end122, label %do.body106

do.body106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_xfrm_add_state, %if.then118)) #9
          to label %cleanup [label %if.then118], !srcloc !121

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug677, ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.end122:                                        ; preds = %if.end103
  %aead = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 19
  %13 = ptrtoint ptr %aead to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aead, align 4
  %tobool123.not = icmp eq ptr %14, null
  br i1 %tobool123.not, label %do.body125, label %if.end141

do.body125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_xfrm_add_state, %if.then137)) #9
          to label %cleanup [label %if.then137], !srcloc !121

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug678, ptr noundef nonnull @.str.34) #9
  br label %cleanup

if.end141:                                        ; preds = %if.end122
  %alg_icv_len = getelementptr inbounds %struct.xfrm_algo_aead, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %alg_icv_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %alg_icv_len, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %16, label %do.body151 [
    i32 128, label %if.end141.if.end167_crit_edge
    i32 96, label %if.end141.if.end167_crit_edge340
  ]

if.end141.if.end167_crit_edge340:                 ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

if.end141.if.end167_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

do.body151:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_xfrm_add_state, %if.then163)) #9
          to label %cleanup [label %if.then163], !srcloc !121

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug679, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end167:                                        ; preds = %if.end141.if.end167_crit_edge, %if.end141.if.end167_crit_edge340
  %alg_key_len = getelementptr inbounds %struct.xfrm_algo_aead, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %alg_key_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alg_key_len, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %19, label %do.body177 [
    i32 160, label %if.end167.if.end193_crit_edge
    i32 288, label %if.end167.if.end193_crit_edge341
  ]

if.end167.if.end193_crit_edge341:                 ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end167.if.end193_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

do.body177:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_xfrm_add_state, %if.then189)) #9
          to label %cleanup [label %if.then189], !srcloc !121

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug680, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end193:                                        ; preds = %if.end167.if.end193_crit_edge, %if.end167.if.end193_crit_edge341
  %tfcpad = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 11
  %21 = ptrtoint ptr %tfcpad to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tfcpad, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool194.not = icmp eq i32 %22, 0
  br i1 %tobool194.not, label %if.end212, label %do.body196

do.body196:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_xfrm_add_state, %if.then208)) #9
          to label %cleanup [label %if.then208], !srcloc !121

if.then208:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug681, ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end212:                                        ; preds = %if.end193
  %geniv = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 20
  %23 = ptrtoint ptr %geniv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %geniv, align 8
  %tobool213.not = icmp eq ptr %24, null
  br i1 %tobool213.not, label %do.body215, label %if.end231

do.body215:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_xfrm_add_state, %if.then227)) #9
          to label %cleanup [label %if.then227], !srcloc !121

if.then227:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug682, ptr noundef nonnull @.str.42) #9
  br label %cleanup

if.end231:                                        ; preds = %if.end212
  %call233 = tail call i32 @strcmp(ptr noundef nonnull %24, ptr noundef nonnull dereferenceable(6) @.str.43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end252, label %do.body236

do.body236:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch_ipsec_xfrm_add_state, %if.then248)) #9
          to label %cleanup [label %if.then248], !srcloc !121

if.then248:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug683, ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end252:                                        ; preds = %if.end231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 92) #13
  %tobool254.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool254.not, label %if.end252.cleanup_crit_edge, label %if.end256

if.end252.cleanup_crit_edge:                      ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end256:                                        ; preds = %if.end252
  %26 = ptrtoint ptr %aead to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aead, align 4
  %alg_icv_len.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %alg_icv_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %alg_icv_len.i, align 4
  %div6.i = lshr i32 %29, 3
  %authsize1.i = getelementptr inbounds %struct.ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %authsize1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div6.i, ptr %authsize1.i, align 8
  %31 = zext i32 %div6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %div6.i, label %if.end256.ch_ipsec_setauthsize.exit_crit_edge [
    i32 8, label %if.end256.sw.epilog.i_crit_edge
    i32 12, label %sw.bb2.i
    i32 16, label %sw.bb3.i
  ]

if.end256.sw.epilog.i_crit_edge:                  ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end256.ch_ipsec_setauthsize.exit_crit_edge:    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #11
  br label %ch_ipsec_setauthsize.exit

sw.bb2.i:                                         ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %if.end256.sw.epilog.i_crit_edge
  %hmac_ctrl.0.i = phi i32 [ 1, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 7, %if.end256.sw.epilog.i_crit_edge ]
  br label %ch_ipsec_setauthsize.exit

ch_ipsec_setauthsize.exit:                        ; preds = %sw.epilog.i, %if.end256.ch_ipsec_setauthsize.exit_crit_edge
  %retval.0.i326 = phi i32 [ %hmac_ctrl.0.i, %sw.epilog.i ], [ -22, %if.end256.ch_ipsec_setauthsize.exit_crit_edge ]
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i326, ptr %call7.i.i, align 8
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %tobool260.not = icmp sgt i8 %34, -1
  br i1 %tobool260.not, label %ch_ipsec_setauthsize.exit.if.end262_crit_edge, label %if.then261

ch_ipsec_setauthsize.exit.if.end262_crit_edge:    ; preds = %ch_ipsec_setauthsize.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end262

if.then261:                                       ; preds = %ch_ipsec_setauthsize.exit
  call void @__sanitizer_cov_trace_pc() #11
  %esn = getelementptr inbounds %struct.ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %esn to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %esn, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.then261, %ch_ipsec_setauthsize.exit.if.end262_crit_edge
  tail call fastcc void @ch_ipsec_setkey(ptr noundef %x, ptr noundef nonnull %call7.i.i)
  %36 = ptrtoint ptr %call7.i.i to i32
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 3
  %37 = ptrtoint ptr %offload_handle to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %offload_handle, align 4
  %call264 = tail call zeroext i1 @try_module_get(ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end262, %if.end252.cleanup_crit_edge, %if.then248, %do.body236, %if.then227, %do.body215, %if.then208, %do.body196, %if.then189, %do.body177, %if.then163, %do.body151, %if.then137, %do.body125, %if.then118, %do.body106, %if.then99, %do.body87, %if.then78, %do.body66, %if.then50, %do.body38, %if.then23, %do.body11, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %if.then23 ], [ -22, %if.then50 ], [ -22, %if.then78 ], [ -22, %if.then99 ], [ -22, %if.then118 ], [ -22, %if.then137 ], [ -22, %if.then163 ], [ -22, %if.then189 ], [ -22, %if.then208 ], [ -22, %if.then227 ], [ -22, %if.then248 ], [ 0, %if.end262 ], [ -12, %if.end252.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body11 ], [ -22, %do.body38 ], [ -22, %do.body66 ], [ -22, %do.body87 ], [ -22, %do.body106 ], [ -22, %do.body125 ], [ -22, %do.body151 ], [ -22, %do.body177 ], [ -22, %do.body196 ], [ -22, %do.body215 ], [ -22, %do.body236 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ch_ipsec_xfrm_del_state(ptr nocapture noundef %x) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch_ipsec_xfrm_free_state(ptr nocapture noundef readonly %x) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 3
  %0 = ptrtoint ptr %offload_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offload_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = inttoptr i32 %1 to ptr
  tail call void @kfree(ptr noundef nonnull %2) #9
  tail call void @module_put(ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ch_ipsec_offload_ok(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %x) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp eq i16 %1, 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = and i8 %bf.load, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp3 = icmp ugt i8 %bf.clear, 5
  br i1 %cmp3, label %if.then.return_crit_edge, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else:                                          ; preds = %entry
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nexthdr, align 2
  %call7 = tail call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %8) #9
  br i1 %call7, label %if.else.return_crit_edge, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.then.if.end10_crit_edge
  br label %return

return:                                           ; preds = %if.end10, %if.else.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end10 ], [ false, %if.then.return_crit_edge ], [ false, %if.else.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ch_ipsec_advance_esn_state(ptr nocapture noundef %x) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ch_ipsec_setkey(ptr nocapture noundef readonly %x, ptr nocapture noundef %sa_entry) unnamed_addr #3 align 64 {
entry:
  %ghash_h = alloca [16 x i8], align 1
  %aes = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aead = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 19
  %0 = ptrtoint ptr %aead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aead, align 4
  %alg_key_len = getelementptr inbounds %struct.xfrm_algo_aead, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %alg_key_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alg_key_len, align 4
  %add = add i32 %3, 7
  %div1 = lshr i32 %add, 3
  %alg_key = getelementptr inbounds %struct.xfrm_algo_aead, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ghash_h) #9
  %4 = call ptr @memset(ptr %ghash_h, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes) #9
  %5 = call ptr @memset(ptr %aes, i32 255, i32 484)
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add)
  %cmp = icmp ugt i32 %add, 31
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %div1, -4
  %salt = getelementptr inbounds %struct.ipsec_sa_entry, ptr %sa_entry, i32 0, i32 7
  %add.ptr = getelementptr i8, ptr %alg_key, i32 %sub
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr, align 1
  %8 = ptrtoint ptr %salt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %salt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %keylen.0 = phi i32 [ %sub, %if.then ], [ %div1, %entry.if.end_crit_edge ]
  %9 = zext i32 %keylen.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %keylen.0, label %do.end [
    i32 16, label %if.end.if.end13_crit_edge
    i32 24, label %if.then6
    i32 32, label %if.then9
  ]

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %keylen.0) #12
  br label %out

if.end13:                                         ; preds = %if.then9, %if.then6, %if.end.if.end13_crit_edge
  %ck_size.0 = phi i32 [ 1089, %if.then6 ], [ 1153, %if.then9 ], [ 1025, %if.end.if.end13_crit_edge ]
  %key14 = getelementptr inbounds %struct.ipsec_sa_entry, ptr %sa_entry, i32 0, i32 8
  %10 = call ptr @memcpy(ptr %key14, ptr %alg_key, i32 %keylen.0)
  %enckey_len = getelementptr inbounds %struct.ipsec_sa_entry, ptr %sa_entry, i32 0, i32 3
  %11 = ptrtoint ptr %enckey_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %keylen.0, ptr %enckey_len, align 4
  %div184.lhs.trunc = shl nuw nsw i32 %keylen.0, 20
  %12 = add nuw nsw i32 %div184.lhs.trunc, 15728640
  %13 = and i32 %12, 251658240
  %shl26 = add nuw nsw i32 %13, 33554432
  %or27 = or i32 %ck_size.0, %shl26
  %key_ctx_hdr = getelementptr inbounds %struct.ipsec_sa_entry, ptr %sa_entry, i32 0, i32 6
  %14 = ptrtoint ptr %key_ctx_hdr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or27, ptr %key_ctx_hdr, align 4
  %call28 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %alg_key, i32 noundef %keylen.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %enckey_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %enckey_len, align 4
  br label %out

if.end31:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %16 = call ptr @memset(ptr %ghash_h, i32 0, i32 16)
  call void @aes_encrypt(ptr noundef nonnull %aes, ptr noundef nonnull %ghash_h, ptr noundef nonnull %ghash_h) #9
  %17 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #9, !srcloc !125
  %18 = ptrtoint ptr %enckey_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enckey_len, align 4
  %sub39 = add i32 %19, 15
  %div402 = and i32 %sub39, -16
  %add.ptr41 = getelementptr i8, ptr %key14, i32 %div402
  %20 = call ptr @memcpy(ptr %add.ptr41, ptr %ghash_h, i32 16)
  %21 = load i32, ptr %enckey_len, align 4
  %22 = add i32 %21, 31
  %add48 = and i32 %22, -16
  %kctx_len = getelementptr inbounds %struct.ipsec_sa_entry, ptr %sa_entry, i32 0, i32 4
  %23 = ptrtoint ptr %kctx_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add48, ptr %kctx_len, align 4
  br label %out

out:                                              ; preds = %if.end31, %if.then29, %do.end
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ghash_h) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !108, !109, !110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_ch_ipsec__684_816_ch_ipsec_init6, !1, !"__initcall__kmod_ch_ipsec__684_816_ch_ipsec_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 816, i32 1}
!2 = !{ptr @__exitcall_ch_ipsec_exit, !3, !"__exitcall_ch_ipsec_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 817, i32 1}
!4 = !{ptr @__UNIQUE_ID_description685, !5, !"__UNIQUE_ID_description685", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 819, i32 1}
!6 = !{ptr @__UNIQUE_ID_file686, !7, !"__UNIQUE_ID_file686", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 820, i32 1}
!8 = !{ptr @__UNIQUE_ID_license687, !7, !"__UNIQUE_ID_license687", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author688, !10, !"__UNIQUE_ID_author688", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 821, i32 1}
!11 = !{ptr @__UNIQUE_ID_version689, !12, !"__UNIQUE_ID_version689", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 822, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 74, i32 8}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dev_mutex, !18, !"dev_mutex", i1 false, i1 false}
!21 = !{ptr @uld_ctx_list, !22, !"uld_ctx_list", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 73, i32 8}
!23 = !{ptr @ch_ipsec_uld_info, !24, !"ch_ipsec_uld_info", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 93, i32 30}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 105, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ch_ipsec_uld_add._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @ch_ipsec_uld_add._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 121, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ch_ipsec_uld_state_change.__UNIQUE_ID_ddebug671, !34, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!37 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 124, i32 3}
!40 = !{ptr @ch_ipsec_uld_state_change._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ch_ipsec_uld_state_change._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 132, i32 3}
!44 = !{ptr @ch_ipsec_uld_state_change._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ch_ipsec_uld_state_change._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 742, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ch_ipsec_xmit._entry, !47, !"_entry", i1 false, i1 false}
!52 = !{ptr @ch_ipsec_xmit._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @ch_ipsec_xfrmdev_ops, !54, !"ch_ipsec_xfrmdev_ops", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 85, i32 33}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 235, i32 3}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug672, !56, !"__UNIQUE_ID_ddebug672", i1 false, i1 false}
!59 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 239, i32 3}
!62 = !{ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug673, !61, !"__UNIQUE_ID_ddebug673", i1 false, i1 false}
!63 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 244, i32 3}
!66 = !{ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug674, !65, !"__UNIQUE_ID_ddebug674", i1 false, i1 false}
!67 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 249, i32 3}
!70 = !{ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug675, !69, !"__UNIQUE_ID_ddebug675", i1 false, i1 false}
!71 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 253, i32 3}
!74 = !{ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug676, !73, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!75 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 257, i32 3}
!78 = !{ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug677, !77, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!79 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 261, i32 3}
!82 = !{ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug678, !81, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!83 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 266, i32 3}
!86 = !{ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug679, !85, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!87 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 271, i32 3}
!90 = !{ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug680, !89, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!91 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 275, i32 3}
!94 = !{ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug681, !93, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!95 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 279, i32 3}
!98 = !{ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug682, !97, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!99 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 282, i32 23}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 283, i32 3}
!104 = !{ptr @ch_ipsec_xfrm_add_state.__UNIQUE_ID_ddebug683, !103, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!105 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c", i32 188, i32 3}
!108 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ch_ipsec_setkey._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @ch_ipsec_setkey._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i64 2148711707, i64 2148711712, i64 2148711725, i64 2148711769, i64 2148711803, i64 2148711824}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{i64 2148229892, i64 2148229918, i64 2148229947, i64 2148229981, i64 2148230012, i64 2148230035}
!124 = !{i64 2154631342, i64 2154635891, i64 2154631379, i64 2154631435, i64 2154631469, i64 2154631493, i64 2154631534, i64 2154631555, i64 2154631583, i64 2154631617}
!125 = !{i64 2149030715}
